<div align="center">

# 📈 Financial Stock Market Analysis & Quantitative Dashboard

### *End-to-End Financial Analytics, Econometric Hypothesis Testing, Technical Indicators & Machine Learning Price Forecasting*

[![Python](https://img.shields.io/badge/Python-3.10+-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
[![Jupyter](https://img.shields.io/badge/Jupyter-Colab-F37626?style=for-the-badge&logo=jupyter&logoColor=white)](https://colab.research.google.com/)
[![Pandas](https://img.shields.io/badge/Pandas-Time_Series-150458?style=for-the-badge&logo=pandas&logoColor=white)](https://pandas.pydata.org/)
[![Plotly](https://img.shields.io/badge/Plotly-Interactive_Charts-3F4F75?style=for-the-badge&logo=plotly&logoColor=white)](https://plotly.com/)
[![Scikit-Learn](https://img.shields.io/badge/scikit--learn-ML_Baselines-F7931E?style=for-the-badge&logo=scikit-learn&logoColor=white)](https://scikit-learn.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)

<p align="center">
  <a href="#-executive-summary">Executive Summary</a> •
  <a href="#-visual-gallery--output-index">Visual Gallery (Output Index)</a> •
  <a href="#-quantitative-findings--metrics">Quantitative Findings</a> •
  <a href="#-technical-indicators-engine">Technical Indicators</a> •
  <a href="#-machine-learning-baseline-models">Machine Learning</a> •
  <a href="#-repository-structure">Repository Structure</a> •
  <a href="#-getting-started">Getting Started</a>
</p>

---

</div>

## 📌 Executive Summary

This repository delivers an institutional-grade **Financial Stock Market Analysis & Quantitative Analytics Dashboard** built in Python and Jupyter Notebook / Google Colab. Operating over a 1-year historical trading window for **Microsoft Corporation (NASDAQ: MSFT)**, this project demonstrates an end-to-end data pipeline spanning:

- **Automated Data Ingestion & Resilient Fallback**: Automated Yahoo Finance API ingestion via `yfinance` with interactive local CSV fallback parser.
- **Descriptive & Distributional Econometrics**: Parametric and non-parametric statistical evaluation, Jarque-Bera normality verification, and Augmented Dickey-Fuller (ADF) unit-root stationarity testing.
- **Quantitative Risk & Tail-Risk Modeling**: Parametric and historical Value at Risk (VaR 95%), Conditional Value at Risk (CVaR 95% / Expected Shortfall), 20-period rolling annualized volatility, and maximum drawdown (MDD).
- **Algorithmic Technical Indicator Engine**: Precision calculation of Simple Moving Averages (`SMA20`, `SMA50`), Exponential Moving Averages (`EMA12`, `EMA26`), Moving Average Convergence Divergence (`MACD`), 14-period Relative Strength Index (`RSI14`), and 2-standard-deviation Bollinger Bands.
- **Out-of-Sample Machine Learning Baselines**: Strict walk-forward chronological train/test split (80/20) evaluating **Ordinary Least Squares (OLS) Linear Regression** and **Random Forest Regressor** using autoregressive lag features (`Lag1`, `Lag2`, `Lag3`) and rolling moving averages (`MA5`, `MA10`).
- **Data Persistence**: Consolidated export of cleansed prices, returns, and engineered technical indicators into a standardized CSV dataset.

---

## 📊 Quantitative Findings & Metrics

### 1. Primary Market & Risk Summary (MSFT 1-Year Horizon)

| Metric Category | Metric Name | Metric Value | Analytical Interpretation |
| :--- | :--- | :---: | :--- |
| **Price Action** | Latest Closing Price | **$525.665** | Benchmark closing value at period termination |
| **Price Action** | Previous Closing Price | **$532.950** | Immediate prior trading session close |
| **Return** | Single-Day Change (%) | **-1.367%** | Daily closing return variation |
| **Return** | 1-Year Cumulative Period Return | **+0.985%** | Net capital appreciation over 252 sessions |
| **Volatility** | Annualized Volatility | **32.941% - 33.003%** | $\sigma_{\text{daily}} \times \sqrt{252}$; substantial regime volatility |
| **Drawdown** | Maximum Drawdown (MDD) | **-34.911%** | Peak-to-trough maximum decline experienced |
| **Sample Size** | Trading Days Sampled | **252 observations** | Complete 1-year daily equity trading calendar |

---

### 2. Descriptive Distribution & Tail-Risk Statistics

| Statistical Parameter | Value | Risk Dimension | Value |
| :--- | :---: | :--- | :---: |
| **Mean Daily Return (%)** | `+0.0247%` | **Historical VaR (95% Daily)** | `-2.8108%` |
| **Daily Return Std Dev (%)** | `2.0790%` | **Historical CVaR / Expected Shortfall (95%)** | `-4.0493%` |
| **Sample Count** | `251 returns` | **Jarque-Bera Test Statistic** | `1898.4071` |
| **Minimum Close Price** | `$352.83` | **Jarque-Bera $p$-Value** | `0.0000` *(Non-normal)* |
| **25th Percentile ($Q_1$)** | `$400.28` | **ADF Unit Root Test Statistic** | `-1.4662` |
| **50th Percentile (Median)** | `$451.10` | **ADF Test $p$-Value** | `0.5501` *(Non-stationary)* |
| **75th Percentile ($Q_3$)** | `$493.29` | **Autocorrelation ($\text{Lag}_1$)** | `+0.0940` *(Near-efficient)* |
| **Maximum Close Price** | `$543.45` | **Skewness** | `+0.0268` *(Mild positive)* |
| **Interquartile Range (IQR)** | `$93.01` | **Kurtosis** | `-1.4169` *(Platykurtic)* |

---

### 3. Machine Learning Model Benchmark (Out-of-Sample Evaluation)

> **Evaluation Methodology:** Strict chronological train-test split (80% training / 20% out-of-sample testing). No random shuffling; features use only information available at prediction time.

| **Model Architecture** | **MAE ($)** | **RMSE ($)** | **R² Score** | **Predictive Characteristics** |
|---|---:|---:|---:|---|
| **Naive Baseline (Persistence Model)** | `TBD` | `TBD` | `TBD` | Assumes the next trading day's closing price will equal the current day's closing price; serves as the benchmark. |
| **Linear Regression (Autoregressive OLS)** | `TBD` | `TBD` | `TBD` | Models the linear relationship between recent closing prices, lagged values, and moving averages to forecast the next trading day's close. |

**Key Finding:** Model performance is assessed against the Naive Baseline. Linear Regression is considered an improvement only if its out-of-sample results demonstrate better predictive performance on the selected evaluation metrics.

---

## 🖼️ Visual Gallery & Output Index

All outputs generated by `stock_analysis_colab.ipynb` have been cataloged with proper horizontal alignment, descriptive context, and analytical takeaways.

---

### Category A: Trend Analysis & Price Discovery

#### 1. MSFT Closing Price and Moving Averages (`SMA20` & `SMA50`)
<div align="center">
  <img src="output%20index/Screenshot%202026-10-22%20210336.png" alt="Closing Price and Moving Averages" width="85%" />
  <p><em>Figure 1: 1-Year closing price trajectory of MSFT plotted against 20-day (orange) and 50-day (green) Simple Moving Averages.</em></p>
</div>

* **Technical Insight**: Displays the major cyclical dip between February and July 2026 where price fell below both moving averages, followed by a robust Golden Cross / trend breakout recovery exceeding $540 by Q4 2026.

---

#### 2. Interactive Price Point & Moving Average Hover Inspection
<div align="center">
  <table>
    <tr>
      <td align="center" width="33%">
        <img src="output%20index/Screenshot%202026-10-22%20210359.png" alt="Close Price Hover Tooltip" width="100%"/><br/>
        <b>Hover Tooltip: Close Price</b><br/>
        <em>Jan 30, 2026: $430.29</em>
      </td>
      <td align="center" width="33%">
        <img src="output%20index/Screenshot%202026-10-22%20210422.png" alt="SMA20 Hover Tooltip" width="100%"/><br/>
        <b>Hover Tooltip: SMA 20-Day</b><br/>
        <em>Feb 20, 2026: $421.618</em>
      </td>
      <td align="center" width="33%">
        <img src="output%20index/Screenshot%202026-10-22%20210442.png" alt="SMA50 Hover Tooltip" width="100%"/><br/>
        <b>Hover Tooltip: SMA 50-Day</b><br/>
        <em>Mar 06, 2026: $437.753</em>
      </td>
    </tr>
  </table>
  <p><em>Figure 2: Plotly interactive vector telemetry enabling millisecond-accurate price and moving average crossover examination.</em></p>
</div>

---

#### 3. High-Definition OHLC Candlestick Charting
<div align="center">
  <img src="output%20index/Screenshot%202026-10-22%20210530.png" alt="Candlestick Chart Overview" width="85%" />
  <p><em>Figure 3: Interactive Open-High-Low-Close (OHLC) Candlestick visualization tracking daily market sentiment.</em></p>
</div>

<div align="center">
  <img src="output%20index/Screenshot%202026-10-22%20210544.png" alt="Candlestick Inspection Detail" width="85%" />
  <p><em>Figure 4: Intraday price discovery inspection (Jan 27, 2026 — Open: $473.70 | High: $482.87 | Low: $473.16 | Close: $480.58).</em></p>
</div>

---

### Category B: Econometric Distributions & Risk Analysis

#### 4. Daily Return Distribution & Volatility Clustering
<div align="center">
  <img src="output%20index/Screenshot%202026-10-22%20210612.png" alt="Daily Return Distribution" width="85%" />
  <p><em>Figure 5: 40-bin frequency histogram of daily returns revealing central clustering around 0% with extreme tail anomalies.</em></p>
</div>

* **Technical Insight**: Modal daily return is centered in the `[-1.5%, -0.5%]` interval ($n=52$). Notable outlier returns stretch beyond $\pm 10\%$, demonstrating standard normal distribution violations.

---

#### 5. Quantitative Risk & Descriptive Statistical Matrices
<div align="center">
  <img src="output%20index/Screenshot%202026-10-22%20210703.png" alt="Risk Metrics Table" width="60%" />
  <p><em>Figure 6: Formatted quantitative output showing central tendency, distribution percentiles, VaR 95% (-2.81%), CVaR 95% (-4.05%), and Maximum Drawdown (-34.91%).</em></p>
</div>

---

#### 6. Econometric Hypothesis Tests & 20-Period Rolling Annualized Volatility
<div align="center">
  <img src="output%20index/Screenshot%202026-10-22%20210729.png" alt="Rolling Volatility and Hypothesis Tests" width="85%" />
  <p><em>Figure 7: 20-period rolling annualized volatility dynamics alongside Jarque-Bera ($p=0.0$) and ADF stationarity ($p=0.55$) test outputs.</em></p>
</div>

* **Econometric Takeaways**:
  - **Jarque-Bera Normality Test**: Statistic = `1898.4071`, $p$-value = `0.0`. Null hypothesis of normality is decisively rejected.
  - **Augmented Dickey-Fuller Test**: Statistic = `-1.4662`, $p$-value = `0.5501`. Fails to reject unit-root null; raw closing prices are non-stationary and exhibit random-walk behavior.
  - **Volatility Spike**: Peak volatility reached **61.09%** during August 2026 market realignment.

---

### Category C: Technical Indicators & Algorithmic Signals

#### 7. 20-Day Bollinger Bands ($\pm 2\sigma$)
<div align="center">
  <img src="output%20index/Screenshot%202026-10-22%20210804.png" alt="Bollinger Bands" width="85%" />
  <p><em>Figure 8: 20-day Bollinger Bands enclosing MSFT close prices within a $\pm 2$ standard deviation volatility envelope.</em></p>
</div>

* **Technical Insight**: Identifies volatility compression phases ("Bollinger Squeeze") prior to explosive breakouts, such as the July-August 2026 rapid price expansion.

---

#### 8. Relative Strength Index (`RSI 14`) & Momentum Cycles
<div align="center">
  <img src="output%20index/Screenshot%202026-10-22%20210831.png" alt="Relative Strength Index" width="85%" />
  <p><em>Figure 9: 14-period Relative Strength Index (RSI) oscillating across overbought (>70) and oversold (<30) thresholds.</em></p>
</div>

* **Technical Insight**: Deep oversold conditions ($\text{RSI} < 15$) in March and July 2026 precisely identified high-conviction mean-reversion buying opportunities.

---

#### 9. Moving Average Convergence Divergence (`MACD`)
<div align="center">
  <img src="output%20index/Screenshot%202026-10-22%20210848.png" alt="MACD Plot" width="85%" />
  <p><em>Figure 10: MACD Line (12-26 EMA difference) and Signal Line (9 EMA) capturing momentum acceleration and divergence.</em></p>
</div>

---

#### 10. Consolidated Technical Indicator Dataset
<div align="center">
  <img src="output%20index/Screenshot%202026-10-22%20210916.png" alt="Technical Indicators Dataset Table" width="85%" />
  <p><em>Figure 11: Final tabular preview of enriched multi-feature financial dataset prepared for export and machine learning ingestion.</em></p>
</div>

---

### Category D: Machine Learning Predictive Modeling

#### 11. Out-of-Sample Price Forecast: Linear Regression vs Random Forest vs Actual
<div align="center">
  <img src="output%20index/Screenshot%202026-10-22%20210952.png" alt="Model Predictions vs Actual Price" width="85%" />
  <p><em>Figure 12: Chronological test evaluation charting Actual Close against Linear Regression ($R^2=0.956$) and Random Forest ($R^2=0.860$).</em></p>
</div>

* **Machine Learning Analysis**:
  - **Linear Regression** exhibits tight tracking alongside actual price discovery ($R^2 = 0.9558, \text{MAE} = \$18.39$), exploiting autoregressive lag correlation.
  - **Random Forest** exhibits horizontal plateauing past October 4, 2026 ($R^2 = 0.8598, \text{MAE} = \$35.49$) — an inherent limitation of tree-based models that cannot extrapolate outside the boundary of training target values.

---

## 🧮 Mathematical Formulations

```latex
1. Simple Daily Return:
   R_t = (P_t - P_{t-1}) / P_{t-1}

2. Annualized Volatility:
   \sigma_{\text{ann}} = \sigma_{\text{daily}} \times \sqrt{252}

3. Historical Value at Risk (VaR 95%):
   \text{VaR}_{0.95} = \text{Quantile}(R, 0.05)

4. Historical Conditional Value at Risk (CVaR / Expected Shortfall):
   \text{CVaR}_{0.95} = \mathbb{E}[R \mid R \le \text{VaR}_{0.95}]

5. Relative Strength Index (RSI 14):
   \text{RS} = \frac{\text{EMA}_{14}(\text{Gain})}{\text{EMA}_{14}(\text{Loss})}, \quad \text{RSI} = 100 - \left(\frac{100}{1 + \text{RS}}\right)

6. Bollinger Bands:
   \text{Upper} = \text{SMA}_{20} + 2\sigma_{20}, \quad \text{Lower} = \text{SMA}_{20} - 2\sigma_{20}
```

---

## 📂 Repository Structure

```text
├── output index/
│   ├── Screenshot 2026-10-22 210336.png   # MSFT Closing Price with SMA20 & SMA50 overview
│   ├── Screenshot 2026-10-22 210359.png   # Interactive Close price hover tooltip
│   ├── Screenshot 2026-10-22 210422.png   # Interactive SMA20 hover tooltip
│   ├── Screenshot 2026-10-22 210442.png   # Interactive SMA50 hover tooltip
│   ├── Screenshot 2026-10-22 210530.png   # Full 1-Year Candlestick (OHLC) chart
│   ├── Screenshot 2026-10-22 210544.png   # Candlestick hover inspection detail
│   ├── Screenshot 2026-10-22 210612.png   # Daily return distribution 40-bin histogram
│   ├── Screenshot 2026-10-22 210703.png   # Descriptive statistics & risk metrics table
│   ├── Screenshot 2026-10-22 210729.png   # Jarque-Bera, ADF test & 20-period rolling volatility
│   ├── Screenshot 2026-10-22 210804.png   # 20-day Bollinger Bands (±2 std dev)
│   ├── Screenshot 2026-10-22 210831.png   # Relative Strength Index (RSI 14) momentum
│   ├── Screenshot 2026-10-22 210848.png   # Moving Average Convergence Divergence (MACD)
│   ├── Screenshot 2026-10-22 210916.png   # Enriched technical features table preview
│   └── Screenshot 2026-10-22 210952.png   # ML model forecast: Linear Regression vs Random Forest
├── stock_analysis_colab.ipynb             # Full analysis pipeline notebook
├── requirements.txt                       # Project dependencies
├── push_to_github.bat                     # Windows batch 1-click push script
├── push_to_github.ps1                     # Windows PowerShell automated push script
├── .gitignore                             # Git exclusion configuration
└── README.md                              # Institutional-grade documentation
```

---

## 🚀 Getting Started

### 1. Clone the Repository
```bash
git clone https://github.com/Kalilakshman/data-analysis-stock-.git
cd data-analysis-stock-
```

### 2. Set Up Virtual Environment & Dependencies
```bash
# Create Python virtual environment
python -m venv venv

# Activate environment
# On Windows:
venv\Scripts\activate
# On macOS/Linux:
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt
```

### 3. Run in Jupyter Notebook
```bash
jupyter notebook stock_analysis_colab.ipynb
```

### 4. Run in Google Colab
1. Navigate to [Google Colab](https://colab.research.google.com/).
2. Click **Upload** and select `stock_analysis_colab.ipynb`.
3. Set your target ticker symbol (default: `MSFT`) in Section 1.
4. Execute `Runtime -> Run all`.

---

## 🔄 Automated GitHub Push

To sync this codebase with the remote GitHub repository:

### Option A: 1-Click Windows Batch Script
Double-click `push_to_github.bat` or run:
```cmd
push_to_github.bat
```

### Option B: PowerShell Script
```powershell
.\push_to_github.ps1
```

### Option C: Standard Git Commands
```bash
git init
git remote add origin https://github.com/Kalilakshman/data-analysis-stock-.git
git add .
git commit -m "feat: complete stock analysis dashboard, visual output index, and documentation"
git branch -M main
git push -u origin main
```

---

## 📜 License & Acknowledgments

- **License**: [MIT License](LICENSE)
- **Data Source**: [Yahoo Finance](https://finance.yahoo.com/) via `yfinance`
- **Visualization Library**: [Plotly Technologies](https://plotly.com/)
- **Author**: [N Kalilakshman](https://github.com/Kalilakshman)
