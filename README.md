# physionet2009
## Predicting Acute Hypotensive Episodes: A Survey of Time-Series Prediction Models Used in Financial Forecasting

### ABSTRACT

Acute Hypotensive Episodes are critical ICU events that involve a period of critically low arterial blood pressure. These episodes require immediate attention to prevent the incidence of irreversible organ damage or death. Providing prompt courses of treatment appropriate for the episode may help reduce the extent of the damage. Predicting the incidence of an acute hypotensive episode before its onset can enable medical professionals with the ability to immediately begin administering care to their patients. In this paper, we survey a variety of time-series prediction methods commonly used for forecasting financial data and apply these methods to arterial blood pressure recordings to solve the acute hypotensive episode prediction problem. Our approaches achieve a best score of 10/10 for Test Set A and 32/40 for Test Set B of the PhysioNet 2009 Challenge.

### Introduction
Acute hypotensive episodes (AHE) are significant periods of time during which a patient's blood pressure drops below a threshold value. AHE can be attributed to a wide variety of possible causes, and identifying the root cause of an AHE reduces the risk of irreversible damage by enabling the administration of the most optimal course of treatment. However, the time-critical nature of AHE in ICU patients often results in medical professionals prescribing a more general intervention in order to buy time for proper diagnosis. In the MIMIC II Database [[1](#bibliogrpahy)], out of the 1237 patients with arterial blood pressure (ABP) recordings, the 511 patients who experienced an AHE have a mortality rate more than twice that of the entire database population. 

Predicting the occurrence of AHE in ICU patients reduces the probability of the patient sustaining irreversible damage by both providing medical professionals with sufficient time to properly diagnose AHEs, and potentially allowing the episode to be prevented altogether. For these reasons, the PhysioNet 2009 challenge involved the prediction of AHE through analysis of ABP recordings. In this paper, we present a survey of common time-series prediction models often used in predicting financial data and apply them to the AHE prediction problem. We begin by describing our methodology, including the PhysioNet Challenge in detail, and we introduce selected financial forecasting models and our application of them to the challenge criteria. Finally, we compare our results on the test set data compared to previous work, and comment on possible alterations that could improve our results. 

### Bibliography
1. Saeed, M. et al. Multiparameter intelligent monitoring in intensive care ii (mimic-ii): A public-access icu database. In Critical Care Medicine, vol. 39(5), 952–960 (2011).
2. Henriques, J. & Rocha, T.  Prediction of acute hypotensive episodes using neural network multi-models. In 2009 36th Annual Computers in Cardiology Conference (CinC), 549–552 (2009).
3. Nist/sematech e-handbook of statistical methods. URL http://www.itl.nist.gov/div898/handbook/.
4. Trippi, R. R. & Turban, E. (eds.) Neural Networks in Finance and Investing: Using Artificial Intelligence to Improve Real World Performance (McGraw-Hill, Inc., New York, NY, USA, 1992).
5. Odom, M. D. & Sharda, R.  A neural network model for bankruptcy prediction. In 1990 IJCNN International Joint Conference on Neural Networks, 163–168 vol.2 (1990). DOI 10.1109/IJCNN.1990.137710.
6. Atiya, A. F. Bankruptcy prediction for credit risk using neural networks: A survey and new results. IEEE Transactions on Neural Networks 12, 929–935 (2001). DOI 10.1109/72.935101.
7. Gooijer, J. G. D. & Hyndman, R. J.  25 years of time series forecasting. Int. J. Forecast. 22, 443–473 (2006).  DOI 10.1016/j.ijforecast.2006.01.001.
8. Ruiz, L., Cuellar, M., Calvo-Flores, M. & Jimenez, M.  An application of non-linear autoregressive neural networks to predict energy consumption in public buildings. Energies 9, 684 (2016). DOI 10.3390/en9090684.
9. Cocianu, C. L. & Grigoryan, H. An artificial neural network for data forecasting purposes. Informatica Econ. 20, 34–45 (2015). DOI 10.12948/issn14531305/19.2.2015.04.
10. Reule, S. & Drawz, P. E. Heart rate and blood pressure: Any possible implications for management of hypertension? Curr. Hypertens. Reports 14, 478–484 (2012). DOI 10.1007/s11906-012-0306-3.
11. MathWorks. Bayesian regularization backpropagation, trainbr. URL https://www.mathworks.com/help/nnet/ref/trainbr.html.
12. Morrison, J. Autregressive integrated moving average models (arima). URL http://www.forecastingsolutions.com/arima.html.
13. Adhikari, R. & K. Agrawal, R. An Introductory Study on Time series Modeling and Forecasting (2013).
14. Mneimneh, M. & Povinelli, R.  A rule-based approach for the prediction of acute hypotensive episodes.  In 2009 36th Annual Computers in Cardiology Conference (CinC), 557–560 (2009).
15. Chen, X., Xu, D., Zhang, G. & Mukkamala, R. Forecasting acute hypotensive episodes in intensive care patients based on a peripheral arterial blood pressure waveform. In 2009 36th Annual Computers in Cardiology Conference (CinC), 545–548 (2009).
16. Fournier, P. & Roy, J.  Acute hypotension episode prediction using information divergence for feature selection, and non-parametric methods for classification. In 2009 36th Annual Computers in Cardiology Conference (CinC), 625–628 (2009).
17. Hayn, D., Jammerbund, B., Kollmann, A. & Schreier, G. A biosignal analysis system applied for developing an algorithm predicting critical situations of high risk cardiac patients by hemodynamic monitoring. In 2009 36th Annual Computers in Cardiology Conference (CinC), 629–632 (2009).
18. Jin, K. & Stockbridge, N.  Smoothing and discriminating map data.  In 2009 36th Annual Computers in Cardiology Conference (CinC), 633 – 636 (2009).
19. Chiarugi, F. et al. Predicting the occurrence of acute hypotensive episodes: The physionet challenge. In 2009 36th Annual Computers in Cardiology Conference (CinC), 621–624 (2009).
20. Jousset, F., Lemay, M. & Vesin, J.-M. Predicting acute hypotensive episodes. (2018).
21. Ho, T. & Chen, X.  Utilizing histogram to identify patients using pressors for acute hypotension.  In 2009 36th Annual Computers in Cardiology Conference (CinC), 797–800 (2009).
