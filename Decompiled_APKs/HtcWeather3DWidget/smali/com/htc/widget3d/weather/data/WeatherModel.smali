.class public Lcom/htc/widget3d/weather/data/WeatherModel;
.super Ljava/lang/Object;
.source "WeatherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget3d/weather/data/WeatherModel$prepareWeatherProviderRunnable;,
        Lcom/htc/widget3d/weather/data/WeatherModel$RemoveDataRunnable;,
        Lcom/htc/widget3d/weather/data/WeatherModel$WeatherModelListener;,
        Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WeatherModel"

.field public static default_unit:Lcom/htc/widget3d/weather/data/City$UNIT;


# instance fields
.field private mBoolGeocodeCorrected:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentCityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget3d/weather/data/CityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDataRoamingChecked:Z

.field private mModelListener:Lcom/htc/widget3d/weather/data/WeatherModel$WeatherModelListener;

.field private mTerminated:Z

.field private mTotalCityCount:I

.field private mWidgetContext:Landroid/content/Context;

.field private updateTime:Ljava/util/Date;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "widgetContext"
    .parameter "totalcity"

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    .line 23
    iput-boolean v1, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mDataRoamingChecked:Z

    .line 24
    iput-boolean v1, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mBoolGeocodeCorrected:Z

    .line 25
    iput-boolean v1, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mTerminated:Z

    .line 26
    const/16 v0, 0xf

    iput v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mTotalCityCount:I

    .line 36
    iput-object p1, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mWidgetContext:Landroid/content/Context;

    .line 38
    iput p3, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mTotalCityCount:I

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget3d/weather/data/WeatherModel;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/widget3d/weather/data/WeatherModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mTerminated:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/widget3d/weather/data/WeatherModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/htc/widget3d/weather/data/WeatherModel;->prepareWeatherProvider()Z

    move-result v0

    return v0
.end method

.method private correctGeocode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "code"

    .prologue
    .line 357
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 358
    .local v0, pos:I
    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v0, 0x7

    if-le v2, v3, :cond_0

    .line 359
    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x7

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, str:Ljava/lang/String;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mBoolGeocodeCorrected:Z

    .line 364
    :goto_0
    return-object v1

    .line 362
    .end local v1           #str:Ljava/lang/String;
    :cond_0
    move-object v1, p1

    .restart local v1       #str:Ljava/lang/String;
    goto :goto_0
.end method

.method private prepareWeatherProvider()Z
    .locals 15

    .prologue
    .line 210
    const-string v0, "WeatherModel"

    const-string v1, "WeatherActivity prepareWeatherProvider"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mBoolGeocodeCorrected:Z

    .line 215
    const/4 v7, 0x0

    .line 216
    .local v7, extra:I
    const/4 v9, 0x0

    .line 218
    .local v9, loc:Lcom/htc/util/weather/WeatherLocation;
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 220
    const/4 v0, 0x2

    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "com.htc.htclocationservice"

    aput-object v1, v11, v0

    const/4 v0, 0x1

    const-string v1, "com.htc.elroy.Weather"

    aput-object v1, v11, v0

    .line 223
    .local v11, pkgname:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/htc/util/weather/WeatherUtility;->loadMultiAppLocationsFilterByApp(Landroid/content/ContentResolver;[Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v10

    .line 228
    .local v10, locs:[Lcom/htc/util/weather/WeatherLocation;
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 230
    const-string v0, "WeatherModel"

    const-string v1, " CHS build"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_0
    :goto_0
    if-eqz v10, :cond_c

    array-length v0, v10

    if-lez v0, :cond_c

    .line 252
    array-length v12, v10

    .line 254
    .local v12, size:I
    const/4 v0, 0x0

    aget-object v0, v10, v0

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    aget-object v0, v10, v0

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.htclocationservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    const/4 v7, 0x1

    .line 257
    :cond_1
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v12, :cond_4

    .line 258
    iget-boolean v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mTerminated:Z

    if-eqz v0, :cond_3

    .line 259
    const/4 v0, 0x0

    .line 324
    .end local v8           #i:I
    .end local v12           #size:I
    :goto_2
    return v0

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/widget3d/weather/util/WeatherUtil;->isLocationSettingChecked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    if-eqz v10, :cond_0

    array-length v0, v10

    if-lez v0, :cond_0

    .line 235
    const/4 v0, 0x0

    aget-object v0, v10, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, v10, v0

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.htclocationservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    const-string v0, "WeatherModel"

    const-string v1, "not CHS, Current location flag on but no weather data avalible"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v14, Lcom/htc/util/weather/WeatherLocation;

    invoke-direct {v14}, Lcom/htc/util/weather/WeatherLocation;-><init>()V

    .line 238
    .local v14, wl:Lcom/htc/util/weather/WeatherLocation;
    const-string v0, "com.htc.htclocationservice"

    invoke-virtual {v14, v0}, Lcom/htc/util/weather/WeatherLocation;->setApp(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/htc/util/weather/WSPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/util/weather/WSPRequest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/htc/util/weather/WeatherLocation;->setCode(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mWidgetContext:Landroid/content/Context;

    const v1, 0x7f060068

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/htc/util/weather/WeatherLocation;->setName(Ljava/lang/String;)V

    .line 242
    new-instance v6, Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-direct {v6}, Lcom/htc/widget3d/weather/data/CityInfo;-><init>()V

    .line 243
    .local v6, cityinfo:Lcom/htc/widget3d/weather/data/CityInfo;
    const/4 v0, 0x0

    iput v0, v6, Lcom/htc/widget3d/weather/data/CityInfo;->index:I

    .line 244
    invoke-virtual {v6, v14}, Lcom/htc/widget3d/weather/data/CityInfo;->setLocationInfo(Lcom/htc/util/weather/WeatherLocation;)V

    .line 245
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 261
    .end local v6           #cityinfo:Lcom/htc/widget3d/weather/data/CityInfo;
    .end local v14           #wl:Lcom/htc/util/weather/WeatherLocation;
    .restart local v8       #i:I
    .restart local v12       #size:I
    :cond_3
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mTotalCityCount:I

    add-int/2addr v1, v7

    if-lt v0, v1, :cond_6

    .line 311
    :cond_4
    const-string v0, "WeatherModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeatherActivity prepareWeatherProvider(), mCurrentCityList is ready now, mCurrentCityList.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mModelListener:Lcom/htc/widget3d/weather/data/WeatherModel$WeatherModelListener;

    if-eqz v0, :cond_5

    .line 315
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mModelListener:Lcom/htc/widget3d/weather/data/WeatherModel$WeatherModelListener;

    invoke-interface {v0}, Lcom/htc/widget3d/weather/data/WeatherModel$WeatherModelListener;->onModelInitialized()V

    .line 318
    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 264
    :cond_6
    new-instance v6, Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-direct {v6}, Lcom/htc/widget3d/weather/data/CityInfo;-><init>()V

    .line 266
    .restart local v6       #cityinfo:Lcom/htc/widget3d/weather/data/CityInfo;
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v6, Lcom/htc/widget3d/weather/data/CityInfo;->index:I

    .line 267
    aget-object v9, v10, v8

    .line 269
    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 270
    const-string v0, ""

    invoke-virtual {v9, v0}, Lcom/htc/util/weather/WeatherLocation;->setState(Ljava/lang/String;)V

    .line 272
    :cond_7
    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 273
    const-string v0, ""

    invoke-virtual {v9, v0}, Lcom/htc/util/weather/WeatherLocation;->setCountry(Ljava/lang/String;)V

    .line 275
    :cond_8
    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 277
    :cond_9
    sget-object v0, Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;->GOOGLE_GEOCODE:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    iput-object v0, v6, Lcom/htc/widget3d/weather/data/CityInfo;->type_:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    .line 280
    iget-boolean v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mBoolGeocodeCorrected:Z

    if-eqz v0, :cond_a

    .line 282
    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.htclocationservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 285
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/htc/util/weather/WeatherUtility;->deleteLocation(Landroid/content/ContentResolver;Ljava/lang/String;DD)I

    .line 289
    const/4 v0, 0x1

    new-array v13, v0, [Lcom/htc/util/weather/WeatherLocation;

    .line 290
    .local v13, tloc:[Lcom/htc/util/weather/WeatherLocation;
    const/4 v0, 0x0

    new-instance v1, Lcom/htc/util/weather/WeatherLocation;

    invoke-direct {v1}, Lcom/htc/util/weather/WeatherLocation;-><init>()V

    aput-object v1, v13, v0

    .line 291
    const/4 v0, 0x0

    aput-object v9, v13, v0

    .line 292
    const/4 v0, 0x0

    aget-object v0, v13, v0

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/widget3d/weather/data/WeatherModel;->correctGeocode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/util/weather/WeatherLocation;->setLatitude(Ljava/lang/String;)V

    .line 293
    const/4 v0, 0x0

    aget-object v0, v13, v0

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/widget3d/weather/data/WeatherModel;->correctGeocode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/util/weather/WeatherLocation;->setLongitude(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.htclocationservice"

    invoke-static {v0, v1, v13}, Lcom/htc/util/weather/WeatherUtility;->insertOBLocations(Landroid/content/ContentResolver;Ljava/lang/String;[Lcom/htc/util/weather/WeatherLocation;)V

    .line 299
    .end local v13           #tloc:[Lcom/htc/util/weather/WeatherLocation;
    :cond_a
    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/widget3d/weather/data/WeatherModel;->correctGeocode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/htc/util/weather/WeatherLocation;->setLatitude(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/widget3d/weather/data/WeatherModel;->correctGeocode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/htc/util/weather/WeatherLocation;->setLongitude(Ljava/lang/String;)V

    .line 306
    :goto_3
    invoke-virtual {v6, v9}, Lcom/htc/widget3d/weather/data/CityInfo;->setLocationInfo(Lcom/htc/util/weather/WeatherLocation;)V

    .line 308
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 304
    :cond_b
    sget-object v0, Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;->QUERY_CODE_ACCU_WEATHER:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    iput-object v0, v6, Lcom/htc/widget3d/weather/data/CityInfo;->type_:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    goto :goto_3

    .line 321
    .end local v6           #cityinfo:Lcom/htc/widget3d/weather/data/CityInfo;
    .end local v8           #i:I
    .end local v12           #size:I
    :cond_c
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mModelListener:Lcom/htc/widget3d/weather/data/WeatherModel$WeatherModelListener;

    if-eqz v0, :cond_d

    .line 322
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mModelListener:Lcom/htc/widget3d/weather/data/WeatherModel$WeatherModelListener;

    invoke-interface {v0}, Lcom/htc/widget3d/weather/data/WeatherModel$WeatherModelListener;->onModelInitialized()V

    .line 324
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_2
.end method


# virtual methods
.method public add(ILcom/htc/widget3d/weather/data/CityInfo;)I
    .locals 1
    .parameter "index"
    .parameter "info"

    .prologue
    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local p1
    :goto_0
    return p1

    .line 94
    .restart local p1
    :catch_0
    move-exception v0

    .line 96
    const/4 p1, -0x1

    goto :goto_0
.end method

.method public add(Lcom/htc/widget3d/weather/data/CityInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 80
    return-void
.end method

.method public get(I)Lcom/htc/widget3d/weather/data/CityInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 68
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget3d/weather/data/CityInfo;

    .line 71
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCityList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget3d/weather/data/CityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initialModel()V
    .locals 2

    .prologue
    .line 45
    iget-boolean v1, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mTerminated:Z

    if-eqz v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    new-instance v0, Lcom/htc/widget3d/weather/data/WeatherModel$prepareWeatherProviderRunnable;

    invoke-direct {v0, p0}, Lcom/htc/widget3d/weather/data/WeatherModel$prepareWeatherProviderRunnable;-><init>(Lcom/htc/widget3d/weather/data/WeatherModel;)V

    .line 49
    .local v0, newRunnable:Lcom/htc/widget3d/weather/data/WeatherModel$prepareWeatherProviderRunnable;
    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/WeatherModel$prepareWeatherProviderRunnable;->run()V

    .line 51
    iget-object v1, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->updateTime:Ljava/util/Date;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->updateTime:Ljava/util/Date;

    goto :goto_0
.end method

.method public remove(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 105
    iget-object v2, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-virtual {v2}, Lcom/htc/widget3d/weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v1

    .line 106
    .local v1, weatherLocation:Lcom/htc/util/weather/WeatherLocation;
    const-string v2, "WeatherModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentCityLsit.remove("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 108
    const-string v2, "WeatherModel"

    const-string v3, "initial remove data from DB"

    invoke-static {v2, v3}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v0, Lcom/htc/widget3d/weather/data/WeatherModel$RemoveDataRunnable;

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/htc/widget3d/weather/data/WeatherModel$RemoveDataRunnable;-><init>(Lcom/htc/widget3d/weather/data/WeatherModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .local v0, removeData:Lcom/htc/widget3d/weather/data/WeatherModel$RemoveDataRunnable;
    const-string v2, "WeatherModel"

    const-string v3, "start remove data from DB"

    invoke-static {v2, v3}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/WeatherModel$RemoveDataRunnable;->run()V

    .line 114
    const-string v2, "WeatherModel"

    const-string v3, "After start remove data from DB"

    invoke-static {v2, v3}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 83
    iget-object v2, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 85
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 86
    iget-object v2, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-virtual {v2}, Lcom/htc/widget3d/weather/data/CityInfo;->removeCity()V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method public setCityList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget3d/weather/data/CityInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget3d/weather/data/CityInfo;>;"
    iput-object p1, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    .line 56
    return-void
.end method

.method public setModelListener(Lcom/htc/widget3d/weather/data/WeatherModel$WeatherModelListener;)V
    .locals 0
    .parameter "modelListener"

    .prologue
    .line 328
    iput-object p1, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mModelListener:Lcom/htc/widget3d/weather/data/WeatherModel$WeatherModelListener;

    .line 329
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mTerminated:Z

    .line 61
    return-void
.end method

.method public updateWeatherCityList()Z
    .locals 15

    .prologue
    .line 122
    const/4 v7, 0x0

    .line 123
    .local v7, extra:I
    const/4 v9, 0x0

    .line 125
    .local v9, loc:Lcom/htc/util/weather/WeatherLocation;
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 127
    const/4 v13, 0x0

    .line 129
    .local v13, status:Z
    const/4 v0, 0x2

    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "com.htc.htclocationservice"

    aput-object v1, v11, v0

    const/4 v0, 0x1

    const-string v1, "com.htc.elroy.Weather"

    aput-object v1, v11, v0

    .line 130
    .local v11, pkgname:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/htc/util/weather/WeatherUtility;->loadMultiAppLocationsFilterByApp(Landroid/content/ContentResolver;[Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v10

    .line 132
    .local v10, locs:[Lcom/htc/util/weather/WeatherLocation;
    array-length v0, v10

    if-lez v0, :cond_3

    .line 133
    array-length v12, v10

    .line 135
    .local v12, size:I
    const/4 v0, 0x0

    aget-object v0, v10, v0

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, v10, v0

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.htclocationservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const/4 v7, 0x1

    .line 139
    :cond_0
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v12, :cond_2

    .line 140
    iget-boolean v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mTerminated:Z

    if-eqz v0, :cond_1

    .line 141
    const/4 v13, 0x0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mTotalCityCount:I

    add-int/2addr v1, v7

    if-lt v0, v1, :cond_5

    .line 194
    :cond_2
    const/4 v13, 0x1

    .line 198
    .end local v8           #i:I
    .end local v12           #size:I
    :cond_3
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mModelListener:Lcom/htc/widget3d/weather/data/WeatherModel$WeatherModelListener;

    if-eqz v0, :cond_4

    .line 199
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mModelListener:Lcom/htc/widget3d/weather/data/WeatherModel$WeatherModelListener;

    invoke-interface {v0}, Lcom/htc/widget3d/weather/data/WeatherModel$WeatherModelListener;->onModelUpdated()V

    .line 202
    :cond_4
    return v13

    .line 146
    .restart local v8       #i:I
    .restart local v12       #size:I
    :cond_5
    new-instance v6, Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-direct {v6}, Lcom/htc/widget3d/weather/data/CityInfo;-><init>()V

    .line 148
    .local v6, cityinfo:Lcom/htc/widget3d/weather/data/CityInfo;
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v6, Lcom/htc/widget3d/weather/data/CityInfo;->index:I

    .line 149
    aget-object v9, v10, v8

    .line 151
    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 152
    const-string v0, ""

    invoke-virtual {v9, v0}, Lcom/htc/util/weather/WeatherLocation;->setState(Ljava/lang/String;)V

    .line 154
    :cond_6
    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 155
    const-string v0, ""

    invoke-virtual {v9, v0}, Lcom/htc/util/weather/WeatherLocation;->setCountry(Ljava/lang/String;)V

    .line 157
    :cond_7
    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 159
    :cond_8
    sget-object v0, Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;->GOOGLE_GEOCODE:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    iput-object v0, v6, Lcom/htc/widget3d/weather/data/CityInfo;->type_:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    .line 162
    iget-boolean v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mBoolGeocodeCorrected:Z

    if-eqz v0, :cond_9

    .line 164
    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.htclocationservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 167
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/htc/util/weather/WeatherUtility;->deleteLocation(Landroid/content/ContentResolver;Ljava/lang/String;DD)I

    .line 171
    const/4 v0, 0x1

    new-array v14, v0, [Lcom/htc/util/weather/WeatherLocation;

    .line 172
    .local v14, tloc:[Lcom/htc/util/weather/WeatherLocation;
    const/4 v0, 0x0

    new-instance v1, Lcom/htc/util/weather/WeatherLocation;

    invoke-direct {v1}, Lcom/htc/util/weather/WeatherLocation;-><init>()V

    aput-object v1, v14, v0

    .line 173
    const/4 v0, 0x0

    aput-object v9, v14, v0

    .line 174
    const/4 v0, 0x0

    aget-object v0, v14, v0

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/widget3d/weather/data/WeatherModel;->correctGeocode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/util/weather/WeatherLocation;->setLatitude(Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x0

    aget-object v0, v14, v0

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/widget3d/weather/data/WeatherModel;->correctGeocode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/util/weather/WeatherLocation;->setLongitude(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.htclocationservice"

    invoke-static {v0, v1, v14}, Lcom/htc/util/weather/WeatherUtility;->insertOBLocations(Landroid/content/ContentResolver;Ljava/lang/String;[Lcom/htc/util/weather/WeatherLocation;)V

    .line 181
    .end local v14           #tloc:[Lcom/htc/util/weather/WeatherLocation;
    :cond_9
    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/widget3d/weather/data/WeatherModel;->correctGeocode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/htc/util/weather/WeatherLocation;->setLatitude(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/widget3d/weather/data/WeatherModel;->correctGeocode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/htc/util/weather/WeatherLocation;->setLongitude(Ljava/lang/String;)V

    .line 188
    :goto_1
    invoke-virtual {v6, v9}, Lcom/htc/widget3d/weather/data/CityInfo;->setLocationInfo(Lcom/htc/util/weather/WeatherLocation;)V

    .line 190
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 186
    :cond_a
    sget-object v0, Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;->QUERY_CODE_ACCU_WEATHER:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    iput-object v0, v6, Lcom/htc/widget3d/weather/data/CityInfo;->type_:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    goto :goto_1
.end method
