# Calendar regressors

The files contain calendar regressors used by the [Central Statistical Bureau of Latvia](https://www.csb.gov.lv/) for the seasonal and calendar adjustment of time series.

Regressors are computed according to:

- the [Law on holiday, remembrance and celebratable days](http://likumi.lv/doc.php?id=72608) (in Latvian only),
- the [JDemetra+ Methodlogy](jd__calendars_0.pdf).

The regressors are computed to be used by the software [JDemetra+](https://github.com/jdemetra/jdemetra-app).

Four types of regressors are available:

- TD_M - traiding day and leap year regressors for monthly time series,
- TD_Q - traiding day and leap year regressors for quarterly time series,
- WD_M - working day and leap year regressors for monthly time series,
- WD_M - working day and leap year regressors for quarterly time series.

The time span covered by the regressors is from 1995 to 2022.

Regressors are available in the `xlsx` and `csv` formats.

For more information:

- [Seasonal Adjustment](https://ec.europa.eu/eurostat/cros/content/seasonal-adjustment_en)
- [JDemetra+ Documentation](https://jdemetradocumentation.github.io/JDemetra-documentation/)
