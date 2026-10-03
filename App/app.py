import os
import joblib
import matplotlib.pyplot as plt
import pandas as pd
import seaborn as sns
import streamlit as st

# Page Configuration
st.set_page_config(
    page_title="AI-Powered Customer Churn Dashboard",
    page_icon="📺",
    layout="wide",
)

# Custom Styling
st.markdown(
    """
    <style>
    .main-header {font-size: 2.5rem; color: #FF4B4B; font-weight: 700;}
    .sub-header {font-size: 1.2rem; color: #4A4A4A;}
    </style>
""",
    unsafe_allow_html=True,
)


@st.cache_data
def load_data():
  # Load dataset
  df = pd.read_csv("OTT_Customer_Churn_5000.csv")
  return df


df = load_data()

# Sidebar Navigation
st.sidebar.title("Navigation")
app_mode = st.sidebar.selectbox(
    "Choose a Section",
    [
        "Overview & KPIs",
        "Exploratory Data Analysis",
        "Customer Churn Predictor",
    ],
)

if app_mode == "Overview & KPIs":
  st.markdown(
      '<p class="main-header">📺 OTT Customer Churn Analytics Dashboard</p>',
      unsafe_allow_html=True,
  )
  st.markdown(
      "Monitor subscriber retention, analyze churn drivers, and predict"
      " potential churners."
  )

  # Calculate KPIs
  total_customers = len(df)
  churned_customers = len(df[df["Churn_Status"] == "Churned"])
  active_customers = len(df[df["Churn_Status"] == "Active"])
  overall_churn_rate = (churned_customers / total_customers) * 100

  # Display Metric Cards
  col1, col2, col3, col4 = st.columns(4)
  col1.metric("Total Customers", f"{total_customers:,}")
  col2.metric("Active Customers", f"{active_customers:,}")
  col3.metric("Churned Customers", f"{churned_customers:,}")
  col4.metric("Overall Churn Rate", f"{overall_churn_rate:.2f}%")

  st.markdown("---")

  # Quick Preview
  st.subheader("Subscriber Data Preview")
  st.dataframe(df.head(10), use_container_width=True)

elif app_mode == "Exploratory Data Analysis":
  st.markdown(
      '<p class="main-header">📊 Exploratory Data Analysis</p>',
      unsafe_allow_html=True,
  )

  feature_choice = st.selectbox(
      "Select Feature to Analyze Churn Rate",
      [
          "Subscription_Plan",
          "Contract_Length",
          "Region",
          "Payment_Method",
          "Gender",
          "Auto_Renewal",
      ],
  )

  # Groupby analysis
  grouped = (
      df.groupby(feature_choice)
      .agg(
          Total_Customers=("Customer_ID", "count"),
          Churned_Customers=(
              "Churn_Status",
              lambda x: (x == "Churned").sum(),
          ),
      )
      .reset_index()
  )
  grouped["Churn_Rate"] = (
      grouped["Churned_Customers"] / grouped["Total_Customers"]
  ) * 100

  col1, col2 = st.columns([1, 1])

  with col1:
    st.subheader(f"Churn Rate by {feature_choice}")
    st.dataframe(grouped, use_container_width=True)

  with col2:
    st.subheader("Visual Breakdown")
    fig, ax = plt.subplots(figsize=(8, 5))
    sns.barplot(
        data=grouped,
        x=feature_choice,
        y="Churn_Rate",
        palette="Reds_r",
        ax=ax,
    )
    plt.xticks(rotation=30)
    plt.ylabel("Churn Rate (%)")
    plt.title(f"Churn Rate across {feature_choice}")
    st.pyplot(fig)

elif app_mode == "Customer Churn Predictor":
  st.markdown(
      '<p class="main-header">🤖 Real-Time Churn Prediction</p>',
      unsafe_allow_html=True,
  )
  st.markdown("Input customer parameters to evaluate their churn risk.")

  with st.form("prediction_form"):
    col1, col2, col3 = st.columns(3)

    with col1:
      age = st.slider("Age", 18, 80, 30)
      gender = st.selectbox("Gender", ["Male", "Female"])
      region = st.selectbox(
          "Region",
          ["North America", "Europe", "Middle East & Africa", "Asia", "Latin America"],
      )
      sub_plan = st.selectbox(
          "Subscription Plan", ["Basic", "Standard", "Premium"]
      )

    with col2:
      monthly_charges = st.number_input(
          "Monthly Charges ($)", 5.0, 150.0, 15.0
      )
      contract_length = st.selectbox(
          "Contract Length", ["Monthly", "Quarterly", "Annual"]
      )
      payment_method = st.selectbox(
          "Payment Method",
          ["Credit Card", "PayPal", "Bank Transfer", "Carrier Billing"],
      )
      auto_renewal = st.selectbox("Auto Renewal", ["Yes", "No"])

    with col3:
      watch_hours = st.number_input(
          "Avg Watch Hours/Week", 0.0, 80.0, 10.0
      )
      support_calls = st.number_input("Customer Support Calls", 0, 10, 1)
      quality_issues = st.number_input("Streaming Quality Issues", 0, 10, 0)
      days_last_login = st.number_input("Days Since Last Login", 0, 90, 5)

    submit_button = st.form_submit_button(label="Predict Churn Risk")

  if submit_button:
    # Rule-based fallback/demo prediction logic if model file isn't uploaded yet,
    # or you can load your trained model using joblib.load('model.pkl')
    risk_score = 0.1
    if contract_length == "Monthly":
      risk_score += 0.3
    if support_calls > 2:
      risk_score += 0.25
    if days_last_login > 15:
      risk_score += 0.2
    if quality_issues > 2:
      risk_score += 0.15

    risk_score = min(risk_score, 0.95)

    st.markdown("---")
    st.subheader("Prediction Result")
    if risk_score > 0.5:
      st.error(
          f"🚨 **High Risk of Churn!** (Estimated Churn Probability:"
          f" {risk_score*100:.1f}%)"
      )
      st.warning(
          "Recommended Action: Offer a retention discount or prompt customer"
          " support outreach."
      )
    else:
      st.success(
          f"✅ **Low Risk of Churn (Active Subscriber)** (Estimated Churn"
          f" Probability: {risk_score*100:.1f}%)"
      )