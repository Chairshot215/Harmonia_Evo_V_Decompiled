.class public Lfr/clockwidget/lpsense/weather/SunriseSunset;
.super Ljava/lang/Object;
.source "SunriseSunset.java"


# instance fields
.field private bDaytime:Z

.field private bGregorian:Z

.field private bSunDownAllDay:Z

.field private bSunUpAllDay:Z

.field private bSunrise:Z

.field private bSunriseToday:Z

.field private bSunset:Z

.field private bSunsetToday:Z

.field private dateInput:Ljava/util/Date;

.field private dateSunrise:Ljava/util/Date;

.field private dateSunset:Ljava/util/Date;

.field private dfA:D

.field private dfA0:D

.field private dfA2:D

.field private dfA5:D

.field private dfAA1:D

.field private dfAA2:D

.field private dfC0:D

.field private dfCosLat:D

.field private dfD0:D

.field private dfD1:D

.field private dfD2:D

.field private dfD5:D

.field private dfDA:D

.field private dfDD:D

.field private dfDD1:D

.field private dfDD2:D

.field private dfH0:D

.field private dfH1:D

.field private dfH2:D

.field private dfHourRise:D

.field private dfHourSet:D

.field private dfJ:D

.field private dfJ3:D

.field private dfK1:D

.field private dfL0:D

.field private dfL2:D

.field private dfLat:D

.field private dfLon:D

.field private dfMinRise:D

.field private dfMinSet:D

.field private dfP:D

.field private dfSinLat:D

.field private dfT:D

.field private dfT0:D

.field private dfTT:D

.field private dfTimeZone:D

.field private dfV0:D

.field private dfV1:D

.field private dfV2:D

.field private dfZenith:D

.field private dfmtDateTime:Ljava/text/SimpleDateFormat;

.field private dfmtDay:Ljava/text/SimpleDateFormat;

.field private dfmtMonth:Ljava/text/SimpleDateFormat;

.field private dfmtYear:Ljava/text/SimpleDateFormat;

.field private iCount:I

.field private iDay:I

.field private iJulian:I

.field private iMonth:I

.field private iSign:I

.field private iYear:I

.field private tz:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>(DDLjava/util/Date;D)V
    .locals 3
    .parameter "dfLatIn"
    .parameter "dfLonIn"
    .parameter "dateInputIn"
    .parameter "dfTimeZoneIn"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-boolean v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunriseToday:Z

    .line 221
    iput-boolean v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunsetToday:Z

    .line 222
    iput-boolean v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunUpAllDay:Z

    .line 223
    iput-boolean v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunDownAllDay:Z

    .line 224
    iput-boolean v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bDaytime:Z

    .line 226
    iput-boolean v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunrise:Z

    .line 227
    iput-boolean v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunset:Z

    .line 228
    iput-boolean v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bGregorian:Z

    .line 246
    iput-wide v1, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfAA1:D

    iput-wide v1, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfAA2:D

    .line 247
    iput-wide v1, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfDD1:D

    iput-wide v1, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfDD2:D

    .line 280
    iput-wide p1, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfLat:D

    .line 281
    iput-wide p3, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfLon:D

    .line 282
    iput-object p5, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dateInput:Ljava/util/Date;

    .line 283
    iput-wide p6, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfTimeZone:D

    .line 285
    return-void
.end method


# virtual methods
.method public doCalculation()Z
    .locals 32

    .prologue
    .line 299
    :try_start_0
    const-string v24, "GMT"

    invoke-static/range {v24 .. v24}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lfr/clockwidget/lpsense/weather/SunriseSunset;->tz:Ljava/util/TimeZone;

    .line 303
    new-instance v24, Ljava/text/SimpleDateFormat;

    const-string v25, "yyyy"

    invoke-direct/range {v24 .. v25}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfmtYear:Ljava/text/SimpleDateFormat;

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfmtYear:Ljava/text/SimpleDateFormat;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfmtYear:Ljava/text/SimpleDateFormat;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->tz:Ljava/util/TimeZone;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 307
    new-instance v24, Ljava/text/SimpleDateFormat;

    const-string v25, "M"

    invoke-direct/range {v24 .. v25}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfmtMonth:Ljava/text/SimpleDateFormat;

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfmtMonth:Ljava/text/SimpleDateFormat;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfmtMonth:Ljava/text/SimpleDateFormat;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->tz:Ljava/util/TimeZone;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 311
    new-instance v24, Ljava/text/SimpleDateFormat;

    const-string v25, "d"

    invoke-direct/range {v24 .. v25}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfmtDay:Ljava/text/SimpleDateFormat;

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfmtDay:Ljava/text/SimpleDateFormat;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfmtDay:Ljava/text/SimpleDateFormat;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->tz:Ljava/util/TimeZone;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfmtYear:Ljava/text/SimpleDateFormat;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dateInput:Ljava/util/Date;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iYear:I

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfmtMonth:Ljava/text/SimpleDateFormat;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dateInput:Ljava/util/Date;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iMonth:I

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfmtDay:Ljava/text/SimpleDateFormat;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dateInput:Ljava/util/Date;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iDay:I

    .line 320
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfTimeZone:D

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4038

    div-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfTimeZone:D

    .line 328
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfTimeZone:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfTimeZone:D

    .line 331
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfLon:D

    move-wide/from16 v24, v0

    const-wide v26, 0x4076800000000000L

    div-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfLon:D

    .line 337
    move-object/from16 v0, p0

    iget v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iYear:I

    move/from16 v24, v0

    const/16 v25, 0x62f

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_0

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bGregorian:Z

    .line 339
    :cond_0
    const-wide/high16 v24, 0x401c

    .line 341
    move-object/from16 v0, p0

    iget v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iMonth:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4022

    add-double v26, v26, v28

    .line 342
    const-wide/high16 v28, 0x4028

    .line 341
    div-double v26, v26, v28

    .line 340
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v26

    .line 343
    move-object/from16 v0, p0

    iget v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iYear:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    .line 340
    add-double v26, v26, v28

    mul-double v24, v24, v26

    .line 344
    const-wide/high16 v26, 0x4010

    div-double v24, v24, v26

    .line 339
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    .line 347
    move-object/from16 v0, p0

    iget v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iMonth:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x4071300000000000L

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x4022

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v26

    add-double v24, v24, v26

    .line 348
    move-object/from16 v0, p0

    iget v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iDay:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    add-double v24, v24, v26

    .line 349
    const-wide v26, 0x413a42c300000000L

    add-double v24, v24, v26

    .line 350
    move-object/from16 v0, p0

    iget v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iYear:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x4076f00000000000L

    mul-double v26, v26, v28

    add-double v24, v24, v26

    .line 339
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfJ:D

    .line 352
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bGregorian:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 355
    move-object/from16 v0, p0

    iget v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iMonth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4022

    sub-double v24, v24, v26

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_6

    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iSign:I

    .line 357
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iMonth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4022

    sub-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfA:D

    .line 362
    move-object/from16 v0, p0

    iget v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iYear:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    .line 363
    move-object/from16 v0, p0

    iget v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iSign:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    .line 364
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfA:D

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x401c

    div-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->floor(D)D

    move-result-wide v28

    .line 363
    mul-double v26, v26, v28

    .line 362
    add-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    .line 366
    const-wide/high16 v26, 0x4059

    .line 362
    div-double v24, v24, v26

    .line 361
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    .line 367
    const-wide/high16 v26, 0x3ff0

    .line 360
    add-double v24, v24, v26

    .line 368
    const-wide/high16 v26, 0x3fe8

    .line 360
    mul-double v24, v24, v26

    .line 359
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfJ3:D

    .line 371
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfJ:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfJ3:D

    move-wide/from16 v26, v0

    add-double v24, v24, v26

    const-wide/high16 v26, 0x4000

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfJ:D

    .line 374
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfJ:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    sub-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iJulian:I

    .line 377
    move-object/from16 v0, p0

    iget v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iJulian:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x4142b42c80000000L

    sub-double v24, v24, v26

    const-wide/high16 v26, 0x3fe0

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfT:D

    .line 378
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfT:D

    move-wide/from16 v24, v0

    const-wide v26, 0x40e1d5a000000000L

    div-double v24, v24, v26

    const-wide/high16 v26, 0x3ff0

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfTT:D

    .line 382
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfT:D

    move-wide/from16 v24, v0

    const-wide v26, 0x41607ad71a041893L

    mul-double v24, v24, v26

    const-wide v26, 0x40e1d5a000000000L

    div-double v24, v24, v26

    .line 383
    const-wide v26, 0x40d78ba000000000L

    add-double v24, v24, v26

    .line 384
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfTimeZone:D

    move-wide/from16 v26, v0

    const-wide v28, 0x40f526c99999999aL

    mul-double v26, v26, v28

    add-double v24, v24, v26

    .line 385
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfLon:D

    move-wide/from16 v26, v0

    const-wide v28, 0x40f5180000000000L

    mul-double v26, v26, v28

    add-double v24, v24, v26

    .line 387
    const-wide v26, 0x40f5180000000000L

    div-double v24, v24, v26

    .line 382
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfT0:D

    .line 388
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfT0:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfT0:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v26

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfT0:D

    .line 389
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfT0:D

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4000

    mul-double v24, v24, v26

    const-wide v26, 0x400921fb54442d18L

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfT0:D

    .line 391
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfT:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfTimeZone:D

    move-wide/from16 v26, v0

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfT:D

    .line 394
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iCount:I

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iCount:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_7

    .line 456
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfAA2:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfAA1:D

    move-wide/from16 v26, v0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfAA2:D

    move-wide/from16 v24, v0

    const-wide v26, 0x401921fb54442d18L

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfAA2:D

    .line 459
    :cond_2
    const-wide v24, 0x3ff95d882604e01bL

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfZenith:D

    .line 460
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfLat:D

    move-wide/from16 v24, v0

    const-wide v26, 0x400921fb54442d18L

    mul-double v24, v24, v26

    const-wide v26, 0x4066800000000000L

    div-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfSinLat:D

    .line 461
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfLat:D

    move-wide/from16 v24, v0

    const-wide v26, 0x400921fb54442d18L

    mul-double v24, v24, v26

    const-wide v26, 0x4066800000000000L

    div-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfCosLat:D

    .line 463
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfAA1:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfA0:D

    .line 464
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfDD1:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfD0:D

    .line 465
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfAA2:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfAA1:D

    move-wide/from16 v26, v0

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfDA:D

    .line 466
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfDD2:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfDD1:D

    move-wide/from16 v26, v0

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfDD:D

    .line 468
    const-wide v24, 0x3fd0cd109d6d157aL

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfK1:D

    .line 472
    const-wide v24, 0x4058c00000000000L

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfHourRise:D

    .line 473
    const-wide v24, 0x4058c00000000000L

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfMinRise:D

    .line 474
    const-wide v24, 0x4058c00000000000L

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfHourSet:D

    .line 475
    const-wide v24, 0x4058c00000000000L

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfMinSet:D

    .line 476
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfV0:D

    .line 477
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfV2:D

    .line 481
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iCount:I

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iCount:I

    move/from16 v24, v0

    const/16 v25, 0x18

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_9

    .line 607
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunriseToday:Z

    move/from16 v24, v0

    if-nez v24, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunsetToday:Z

    move/from16 v24, v0

    if-nez v24, :cond_3

    .line 609
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfV2:D

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_15

    .line 610
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunDownAllDay:Z

    .line 616
    :cond_3
    :goto_3
    new-instance v24, Ljava/text/SimpleDateFormat;

    const-string v25, "d M yyyy HH:mm z"

    invoke-direct/range {v24 .. v25}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfmtDateTime:Ljava/text/SimpleDateFormat;

    .line 617
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunriseToday:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfmtDateTime:Ljava/text/SimpleDateFormat;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iDay:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 620
    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iMonth:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 621
    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iYear:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 622
    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfHourRise:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 623
    const-string v26, ":"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfMinRise:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 624
    const-string v26, " GMT"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 619
    invoke-virtual/range {v24 .. v25}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dateSunrise:Ljava/util/Date;

    .line 628
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunsetToday:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfmtDateTime:Ljava/text/SimpleDateFormat;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iDay:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 631
    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iMonth:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 632
    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iYear:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 633
    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfHourSet:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 634
    const-string v26, ":"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfMinSet:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 635
    const-string v26, " GMT"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 630
    invoke-virtual/range {v24 .. v25}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dateSunset:Ljava/util/Date;

    .line 647
    :cond_5
    const/16 v24, 0x1

    :goto_4
    return v24

    .line 356
    :cond_6
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iSign:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 640
    :catch_0
    move-exception v24

    move-object/from16 v15, v24

    .line 642
    .local v15, e:Ljava/lang/Exception;
    sget-object v24, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v25, "\nCannot parse date"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 643
    sget-object v24, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v24

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 645
    const/16 v24, 0x0

    goto :goto_4

    .line 409
    .end local v15           #e:Ljava/lang/Exception;
    :cond_7
    const-wide v24, 0x3fe8ee2867275686L

    const-wide v26, 0x3f666dcfde44846cL

    :try_start_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfT:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    add-double v5, v24, v26

    .line 410
    .local v5, dfLL:D
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    sub-double v5, v5, v24

    .line 411
    const-wide/high16 v24, 0x4000

    mul-double v24, v24, v5

    const-wide v26, 0x400921fb54442d18L

    mul-double v5, v24, v26

    .line 413
    const-wide v24, 0x3fefc7b02d59d55eL

    const-wide v26, 0x3f666d89a3e0cde9L

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfT:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    add-double v3, v24, v26

    .line 414
    .local v3, dfGG:D
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    sub-double v3, v3, v24

    .line 415
    const-wide/high16 v24, 0x4000

    mul-double v24, v24, v3

    const-wide v26, 0x400921fb54442d18L

    mul-double v3, v24, v26

    .line 417
    const-wide v24, 0x3fd9765fd8adab9fL

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    .line 418
    const-wide v26, 0x3f847ae147ae147bL

    sub-double v28, v5, v3

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    .line 417
    sub-double v24, v24, v26

    .line 419
    const-wide v26, 0x3f6b4784230fcf81L

    add-double v28, v5, v3

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    .line 417
    add-double v24, v24, v26

    .line 420
    const-wide v26, 0x3f2b866e43aa79bcL

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfTT:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    .line 417
    sub-double v11, v24, v26

    .line 422
    .local v11, dfVV:D
    const-wide/high16 v24, 0x3ff0

    .line 423
    const-wide v26, 0x3fa12599ed7c6fbdL

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    .line 422
    sub-double v24, v24, v26

    .line 424
    const-wide v26, 0x3f22599ed7c6fbd2L

    const-wide/high16 v28, 0x4000

    mul-double v28, v28, v5

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    .line 422
    sub-double v24, v24, v26

    .line 425
    const-wide v26, 0x3f14f8b588e368f1L

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    .line 422
    add-double v9, v24, v26

    .line 427
    .local v9, dfUU:D
    const-wide v24, -0x40e5c91d14e3bcd3L

    .line 428
    const-wide v26, 0x3fa523f67f4dbdf9L

    const-wide/high16 v28, 0x4000

    mul-double v28, v28, v5

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    .line 427
    sub-double v24, v24, v26

    .line 429
    const-wide v26, 0x3fa070b8cfbfc654L

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    .line 427
    add-double v24, v24, v26

    .line 430
    const-wide v26, 0x3f510a137f38c543L

    const-wide/high16 v28, 0x4000

    mul-double v28, v28, v5

    sub-double v28, v28, v3

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    .line 427
    sub-double v24, v24, v26

    .line 431
    const-wide v26, 0x3f36f0068db8bac7L

    const-wide/high16 v28, 0x4000

    mul-double v28, v28, v5

    add-double v28, v28, v3

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    .line 427
    sub-double v24, v24, v26

    .line 432
    const-wide v26, 0x3f14f8b588e368f1L

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfTT:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    .line 427
    sub-double v13, v24, v26

    .line 435
    .local v13, dfWW:D
    mul-double v24, v11, v11

    sub-double v24, v9, v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    div-double v7, v13, v24

    .line 437
    .local v7, dfSS:D
    const-wide/high16 v24, 0x3ff0

    mul-double v26, v7, v7

    sub-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    div-double v24, v7, v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->atan(D)D

    move-result-wide v24

    add-double v24, v24, v5

    .line 436
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfA5:D

    .line 439
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    div-double v7, v11, v24

    .line 440
    const-wide/high16 v24, 0x3ff0

    mul-double v26, v7, v7

    sub-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    div-double v24, v7, v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->atan(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfD5:D

    .line 443
    move-object/from16 v0, p0

    iget v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iCount:I

    move/from16 v24, v0

    if-nez v24, :cond_8

    .line 445
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfA5:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfAA1:D

    .line 446
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfD5:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfDD1:D

    .line 453
    :goto_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfT:D

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x3ff0

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfT:D

    .line 394
    move-object/from16 v0, p0

    iget v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iCount:I

    goto/16 :goto_1

    .line 450
    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfA5:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfAA2:D

    .line 451
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfD5:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfDD2:D

    goto :goto_5

    .line 488
    .end local v3           #dfGG:D
    .end local v5           #dfLL:D
    .end local v7           #dfSS:D
    .end local v9           #dfUU:D
    .end local v11           #dfVV:D
    .end local v13           #dfWW:D
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfC0:D

    .line 489
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfC0:D

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x3ff0

    add-double v24, v24, v26

    const-wide/high16 v26, 0x4038

    div-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfP:D

    .line 490
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfAA1:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfP:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfDA:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfA2:D

    .line 491
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfDD1:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfP:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfDD:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfD2:D

    .line 492
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfT0:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfC0:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfK1:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfL0:D

    .line 493
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfL0:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfK1:D

    move-wide/from16 v26, v0

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfL2:D

    .line 494
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfL0:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfA0:D

    move-wide/from16 v26, v0

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfH0:D

    .line 495
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfL2:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfA2:D

    move-wide/from16 v26, v0

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfH2:D

    .line 497
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfH2:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfH0:D

    move-wide/from16 v26, v0

    add-double v24, v24, v26

    const-wide/high16 v26, 0x4000

    div-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfH1:D

    .line 499
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfD2:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfD0:D

    move-wide/from16 v26, v0

    add-double v24, v24, v26

    const-wide/high16 v26, 0x4000

    div-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfD1:D

    .line 503
    move-object/from16 v0, p0

    iget v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iCount:I

    move/from16 v24, v0

    if-nez v24, :cond_c

    .line 505
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfSinLat:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfD0:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    .line 506
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfCosLat:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfD0:D

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfH0:D

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    add-double v24, v24, v26

    .line 507
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfZenith:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    sub-double v24, v24, v26

    .line 505
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfV0:D

    .line 512
    :goto_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfSinLat:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfD2:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    .line 513
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfCosLat:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfD2:D

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfH2:D

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    add-double v24, v24, v26

    .line 514
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfZenith:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    sub-double v24, v24, v26

    .line 512
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfV2:D

    .line 518
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfV0:D

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-ltz v24, :cond_a

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfV2:D

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-gez v24, :cond_b

    .line 520
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfV0:D

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_d

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfV2:D

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_d

    .line 524
    :cond_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfA2:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfA0:D

    .line 525
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfD2:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfD0:D

    .line 481
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lfr/clockwidget/lpsense/weather/SunriseSunset;->iCount:I

    goto/16 :goto_2

    .line 510
    :cond_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfV2:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfV0:D

    goto/16 :goto_6

    .line 529
    :cond_d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfSinLat:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfD1:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    .line 530
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfCosLat:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfD1:D

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfH1:D

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    add-double v24, v24, v26

    .line 531
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfZenith:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    sub-double v24, v24, v26

    .line 529
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfV1:D

    .line 533
    const-wide/high16 v24, 0x4000

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfV2:D

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x4010

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfV1:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    sub-double v24, v24, v26

    const-wide/high16 v26, 0x4000

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfV0:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    add-double v16, v24, v26

    .line 535
    .local v16, tempA:D
    const-wide/high16 v24, 0x4010

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfV1:D

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x4008

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfV0:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    sub-double v24, v24, v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfV2:D

    move-wide/from16 v26, v0

    sub-double v18, v24, v26

    .line 536
    .local v18, tempB:D
    mul-double v24, v18, v18

    const-wide/high16 v26, 0x4010

    mul-double v26, v26, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfV0:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    sub-double v20, v24, v26

    .line 538
    .local v20, tempD:D
    const-wide/16 v24, 0x0

    cmpg-double v24, v20, v24

    if-gez v24, :cond_e

    .line 541
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfA2:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfA0:D

    .line 542
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfD2:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfD0:D

    goto/16 :goto_7

    .line 546
    :cond_e
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    .line 556
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunrise:Z

    .line 557
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunset:Z

    .line 559
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfV0:D

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_f

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfV2:D

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-lez v24, :cond_f

    .line 561
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunrise:Z

    .line 562
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunriseToday:Z

    .line 565
    :cond_f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfV0:D

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-lez v24, :cond_10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfV2:D

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_10

    .line 567
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunset:Z

    .line 568
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunsetToday:Z

    .line 571
    :cond_10
    sub-double v24, v20, v18

    const-wide/high16 v26, 0x4000

    mul-double v26, v26, v16

    div-double v22, v24, v26

    .line 572
    .local v22, tempE:D
    const-wide/high16 v24, 0x3ff0

    cmpl-double v24, v22, v24

    if-gtz v24, :cond_11

    const-wide/16 v24, 0x0

    cmpg-double v24, v22, v24

    if-gez v24, :cond_12

    .line 573
    :cond_11
    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v24, v0

    sub-double v24, v24, v18

    const-wide/high16 v26, 0x4000

    mul-double v26, v26, v16

    div-double v22, v24, v26

    .line 577
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunrise:Z

    move/from16 v24, v0

    if-eqz v24, :cond_13

    .line 579
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfC0:D

    move-wide/from16 v24, v0

    add-double v24, v24, v22

    const-wide v26, 0x3f81111111111111L

    add-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfHourRise:D

    .line 581
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfC0:D

    move-wide/from16 v24, v0

    add-double v24, v24, v22

    const-wide v26, 0x3f81111111111111L

    add-double v24, v24, v26

    .line 582
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfHourRise:D

    move-wide/from16 v26, v0

    .line 581
    sub-double v24, v24, v26

    .line 584
    const-wide/high16 v26, 0x404e

    .line 581
    mul-double v24, v24, v26

    .line 580
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfMinRise:D

    .line 588
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunset:Z

    move/from16 v24, v0

    if-eqz v24, :cond_14

    .line 590
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfC0:D

    move-wide/from16 v24, v0

    add-double v24, v24, v22

    const-wide v26, 0x3f81111111111111L

    add-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfHourSet:D

    .line 592
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfC0:D

    move-wide/from16 v24, v0

    add-double v24, v24, v22

    const-wide v26, 0x3f81111111111111L

    add-double v24, v24, v26

    .line 593
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfHourSet:D

    move-wide/from16 v26, v0

    .line 592
    sub-double v24, v24, v26

    .line 595
    const-wide/high16 v26, 0x404e

    .line 592
    mul-double v24, v24, v26

    .line 591
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfMinSet:D

    .line 600
    :cond_14
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfA2:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfA0:D

    .line 601
    move-object/from16 v0, p0

    iget-wide v0, v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfD2:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dfD0:D

    goto/16 :goto_7

    .line 612
    .end local v16           #tempA:D
    .end local v18           #tempB:D
    .end local v20           #tempD:D
    .end local v22           #tempE:D
    :cond_15
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunUpAllDay:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public getSunrise()Ljava/util/Date;
    .locals 1

    .prologue
    .line 662
    iget-boolean v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunriseToday:Z

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dateSunrise:Ljava/util/Date;

    .line 665
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSunset()Ljava/util/Date;
    .locals 1

    .prologue
    .line 680
    iget-boolean v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunsetToday:Z

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dateSunset:Ljava/util/Date;

    .line 683
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDaytime()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 762
    iget-boolean v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunriseToday:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunsetToday:Z

    if-eqz v0, :cond_5

    .line 764
    iget-object v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dateSunrise:Ljava/util/Date;

    iget-object v1, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dateSunset:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 768
    iget-object v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dateInput:Ljava/util/Date;

    iget-object v1, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dateSunrise:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 770
    iget-object v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dateInput:Ljava/util/Date;

    iget-object v1, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dateSunrise:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 773
    :cond_0
    iget-object v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dateInput:Ljava/util/Date;

    iget-object v1, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dateSunset:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 775
    iput-boolean v3, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bDaytime:Z

    .line 815
    :goto_0
    iget-boolean v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bDaytime:Z

    return v0

    .line 777
    :cond_1
    iput-boolean v2, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bDaytime:Z

    goto :goto_0

    .line 783
    :cond_2
    iget-object v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dateInput:Ljava/util/Date;

    iget-object v1, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dateSunrise:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 785
    iget-object v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dateInput:Ljava/util/Date;

    iget-object v1, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dateSunrise:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 788
    iget-object v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dateInput:Ljava/util/Date;

    iget-object v1, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dateSunset:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 790
    :cond_3
    iput-boolean v3, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bDaytime:Z

    goto :goto_0

    .line 792
    :cond_4
    iput-boolean v2, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bDaytime:Z

    goto :goto_0

    .line 795
    :cond_5
    iget-boolean v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunUpAllDay:Z

    if-eqz v0, :cond_6

    .line 796
    iput-boolean v3, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bDaytime:Z

    goto :goto_0

    .line 797
    :cond_6
    iget-boolean v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunDownAllDay:Z

    if-eqz v0, :cond_7

    .line 798
    iput-boolean v2, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bDaytime:Z

    goto :goto_0

    .line 799
    :cond_7
    iget-boolean v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunriseToday:Z

    if-eqz v0, :cond_9

    .line 801
    iget-object v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dateInput:Ljava/util/Date;

    iget-object v1, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dateSunrise:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 802
    iput-boolean v2, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bDaytime:Z

    goto :goto_0

    .line 804
    :cond_8
    iput-boolean v3, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bDaytime:Z

    goto :goto_0

    .line 806
    :cond_9
    iget-boolean v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunsetToday:Z

    if-eqz v0, :cond_b

    .line 808
    iget-object v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dateInput:Ljava/util/Date;

    iget-object v1, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->dateSunset:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 809
    iput-boolean v3, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bDaytime:Z

    goto :goto_0

    .line 811
    :cond_a
    iput-boolean v2, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bDaytime:Z

    goto :goto_0

    .line 813
    :cond_b
    iput-boolean v2, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bDaytime:Z

    goto :goto_0
.end method

.method public isSunDown()Z
    .locals 1

    .prologue
    .line 743
    iget-boolean v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunDownAllDay:Z

    return v0
.end method

.method public isSunUp()Z
    .locals 1

    .prologue
    .line 728
    iget-boolean v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunUpAllDay:Z

    return v0
.end method

.method public isSunrise()Z
    .locals 1

    .prologue
    .line 698
    iget-boolean v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunriseToday:Z

    return v0
.end method

.method public isSunset()Z
    .locals 1

    .prologue
    .line 713
    iget-boolean v0, p0, Lfr/clockwidget/lpsense/weather/SunriseSunset;->bSunsetToday:Z

    return v0
.end method
