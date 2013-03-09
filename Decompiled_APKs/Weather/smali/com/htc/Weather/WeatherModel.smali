.class public Lcom/htc/Weather/WeatherModel;
.super Ljava/lang/Object;
.source "WeatherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/Weather/WeatherModel$prepareWeatherProvider_thread;,
        Lcom/htc/Weather/WeatherModel$RemoveDataThread;,
        Lcom/htc/Weather/WeatherModel$WeatherModelListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WeatherModel"


# instance fields
.field private mBoolGeocodeCorrected:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentCityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/Weather/data/CityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDataRoamingChecked:Z

.field private mModelListener:Lcom/htc/Weather/WeatherModel$WeatherModelListener;

.field private mTerminated:Z

.field private mTotalCityCount:I

.field private updateTime:Ljava/util/Date;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "totalcity"

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/Weather/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    .line 23
    iput-boolean v1, p0, Lcom/htc/Weather/WeatherModel;->mDataRoamingChecked:Z

    .line 24
    iput-boolean v1, p0, Lcom/htc/Weather/WeatherModel;->mBoolGeocodeCorrected:Z

    .line 25
    iput-boolean v1, p0, Lcom/htc/Weather/WeatherModel;->mTerminated:Z

    .line 26
    const/16 v0, 0xf

    iput v0, p0, Lcom/htc/Weather/WeatherModel;->mTotalCityCount:I

    .line 29
    iput-object p1, p0, Lcom/htc/Weather/WeatherModel;->mContext:Landroid/content/Context;

    .line 30
    iput p2, p0, Lcom/htc/Weather/WeatherModel;->mTotalCityCount:I

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/htc/Weather/WeatherModel;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/Weather/WeatherModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/Weather/WeatherModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/htc/Weather/WeatherModel;->mTerminated:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/Weather/WeatherModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/htc/Weather/WeatherModel;->prepareWeatherProvider()Z

    move-result v0

    return v0
.end method

.method private correctGeocode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "code"

    .prologue
    .line 321
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 322
    .local v0, pos:I
    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v0, 0x7

    if-le v2, v3, :cond_0

    .line 323
    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x7

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, str:Ljava/lang/String;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/Weather/WeatherModel;->mBoolGeocodeCorrected:Z

    .line 328
    :goto_0
    return-object v1

    .line 326
    .end local v1           #str:Ljava/lang/String;
    :cond_0
    move-object v1, p1

    .restart local v1       #str:Ljava/lang/String;
    goto :goto_0
.end method

.method private prepareWeatherProvider()Z
    .locals 14

    .prologue
    .line 199
    const-string v0, "WeatherModel"

    const-string v1, "WeatherActivity prepareWeatherProvider"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/Weather/WeatherModel;->mBoolGeocodeCorrected:Z

    .line 204
    const/4 v7, 0x0

    .line 205
    .local v7, extra:I
    const/4 v9, 0x0

    .line 207
    .local v9, loc:Lcom/htc/util/weather/WeatherLocation;
    iget-object v0, p0, Lcom/htc/Weather/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 209
    const/4 v0, 0x2

    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "com.htc.htclocationservice"

    aput-object v1, v11, v0

    const/4 v0, 0x1

    const-string v1, "com.htc.elroy.Weather"

    aput-object v1, v11, v0

    .line 212
    .local v11, pkgname:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/Weather/WeatherModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/htc/util/weather/WeatherUtility;->loadMultiAppLocationsFilterByApp(Landroid/content/ContentResolver;[Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v10

    .line 214
    .local v10, locs:[Lcom/htc/util/weather/WeatherLocation;
    const-string v0, "WeatherModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeatherActivity prepareWeatherProvider(), locs.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    array-length v0, v10

    if-lez v0, :cond_a

    .line 217
    array-length v12, v10

    .line 218
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

    .line 219
    const/4 v7, 0x1

    .line 221
    :cond_0
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v12, :cond_2

    .line 222
    iget-boolean v0, p0, Lcom/htc/Weather/WeatherModel;->mTerminated:Z

    if-eqz v0, :cond_1

    .line 223
    const/4 v0, 0x0

    .line 288
    .end local v8           #i:I
    .end local v12           #size:I
    :goto_1
    return v0

    .line 225
    .restart local v8       #i:I
    .restart local v12       #size:I
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/htc/Weather/WeatherModel;->mTotalCityCount:I

    add-int/2addr v1, v7

    if-lt v0, v1, :cond_4

    .line 275
    :cond_2
    const-string v0, "WeatherModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeatherActivity prepareWeatherProvider(), mCurrentCityList is ready now, mCurrentCityList.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/Weather/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/htc/Weather/WeatherModel;->mModelListener:Lcom/htc/Weather/WeatherModel$WeatherModelListener;

    if-eqz v0, :cond_3

    .line 279
    iget-object v0, p0, Lcom/htc/Weather/WeatherModel;->mModelListener:Lcom/htc/Weather/WeatherModel$WeatherModelListener;

    invoke-interface {v0}, Lcom/htc/Weather/WeatherModel$WeatherModelListener;->onModelInitialized()V

    .line 282
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 228
    :cond_4
    new-instance v6, Lcom/htc/Weather/data/CityInfo;

    iget-object v0, p0, Lcom/htc/Weather/WeatherModel;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0}, Lcom/htc/Weather/data/CityInfo;-><init>(Landroid/content/Context;)V

    .line 230
    .local v6, cityinfo:Lcom/htc/Weather/data/CityInfo;
    add-int/lit8 v0, v8, 0x1

    iput v0, v6, Lcom/htc/Weather/data/CityInfo;->index:I

    .line 231
    aget-object v9, v10, v8

    .line 233
    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 234
    const-string v0, ""

    invoke-virtual {v9, v0}, Lcom/htc/util/weather/WeatherLocation;->setState(Ljava/lang/String;)V

    .line 236
    :cond_5
    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 237
    const-string v0, ""

    invoke-virtual {v9, v0}, Lcom/htc/util/weather/WeatherLocation;->setCountry(Ljava/lang/String;)V

    .line 239
    :cond_6
    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 241
    :cond_7
    sget-object v0, Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;->GOOGLE_GEOCODE:Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;

    iput-object v0, v6, Lcom/htc/Weather/data/CityInfo;->type_:Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;

    .line 244
    iget-boolean v0, p0, Lcom/htc/Weather/WeatherModel;->mBoolGeocodeCorrected:Z

    if-eqz v0, :cond_8

    .line 246
    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.htclocationservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 249
    iget-object v0, p0, Lcom/htc/Weather/WeatherModel;->mContext:Landroid/content/Context;

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

    .line 253
    const/4 v0, 0x1

    new-array v13, v0, [Lcom/htc/util/weather/WeatherLocation;

    .line 254
    .local v13, tloc:[Lcom/htc/util/weather/WeatherLocation;
    const/4 v0, 0x0

    new-instance v1, Lcom/htc/util/weather/WeatherLocation;

    invoke-direct {v1}, Lcom/htc/util/weather/WeatherLocation;-><init>()V

    aput-object v1, v13, v0

    .line 255
    const/4 v0, 0x0

    aput-object v9, v13, v0

    .line 256
    const/4 v0, 0x0

    aget-object v0, v13, v0

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/Weather/WeatherModel;->correctGeocode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/util/weather/WeatherLocation;->setLatitude(Ljava/lang/String;)V

    .line 257
    const/4 v0, 0x0

    aget-object v0, v13, v0

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/Weather/WeatherModel;->correctGeocode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/util/weather/WeatherLocation;->setLongitude(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/htc/Weather/WeatherModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.htclocationservice"

    invoke-static {v0, v1, v13}, Lcom/htc/util/weather/WeatherUtility;->insertOBLocations(Landroid/content/ContentResolver;Ljava/lang/String;[Lcom/htc/util/weather/WeatherLocation;)V

    .line 263
    .end local v13           #tloc:[Lcom/htc/util/weather/WeatherLocation;
    :cond_8
    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/WeatherModel;->correctGeocode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/htc/util/weather/WeatherLocation;->setLatitude(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/WeatherModel;->correctGeocode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/htc/util/weather/WeatherLocation;->setLongitude(Ljava/lang/String;)V

    .line 270
    :goto_2
    invoke-virtual {v6, v9}, Lcom/htc/Weather/data/CityInfo;->setLocationInfo(Lcom/htc/util/weather/WeatherLocation;)V

    .line 272
    iget-object v0, p0, Lcom/htc/Weather/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 268
    :cond_9
    sget-object v0, Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;->QUERY_CODE_ACCU_WEATHER:Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;

    iput-object v0, v6, Lcom/htc/Weather/data/CityInfo;->type_:Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;

    goto :goto_2

    .line 285
    .end local v6           #cityinfo:Lcom/htc/Weather/data/CityInfo;
    .end local v8           #i:I
    .end local v12           #size:I
    :cond_a
    iget-object v0, p0, Lcom/htc/Weather/WeatherModel;->mModelListener:Lcom/htc/Weather/WeatherModel$WeatherModelListener;

    if-eqz v0, :cond_b

    .line 286
    iget-object v0, p0, Lcom/htc/Weather/WeatherModel;->mModelListener:Lcom/htc/Weather/WeatherModel$WeatherModelListener;

    invoke-interface {v0}, Lcom/htc/Weather/WeatherModel$WeatherModelListener;->onModelInitialized()V

    .line 288
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public add(ILcom/htc/Weather/data/CityInfo;)I
    .locals 1
    .parameter "index"
    .parameter "info"

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/htc/Weather/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local p1
    :goto_0
    return p1

    .line 86
    .restart local p1
    :catch_0
    move-exception v0

    .line 88
    const/4 p1, -0x1

    goto :goto_0
.end method

.method public add(Lcom/htc/Weather/data/CityInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/Weather/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/Weather/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 72
    return-void
.end method

.method public get(I)Lcom/htc/Weather/data/CityInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 60
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/htc/Weather/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/Weather/data/CityInfo;

    .line 63
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
            "Lcom/htc/Weather/data/CityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/Weather/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initialModel()V
    .locals 2

    .prologue
    .line 37
    iget-boolean v1, p0, Lcom/htc/Weather/WeatherModel;->mTerminated:Z

    if-eqz v1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    new-instance v0, Lcom/htc/Weather/WeatherModel$prepareWeatherProvider_thread;

    invoke-direct {v0, p0}, Lcom/htc/Weather/WeatherModel$prepareWeatherProvider_thread;-><init>(Lcom/htc/Weather/WeatherModel;)V

    .line 41
    .local v0, newThread:Lcom/htc/Weather/WeatherModel$prepareWeatherProvider_thread;
    invoke-virtual {v0}, Lcom/htc/Weather/WeatherModel$prepareWeatherProvider_thread;->start()V

    .line 43
    iget-object v1, p0, Lcom/htc/Weather/WeatherModel;->updateTime:Ljava/util/Date;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/htc/Weather/WeatherModel;->updateTime:Ljava/util/Date;

    goto :goto_0
.end method

.method public remove(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 96
    iget-object v2, p0, Lcom/htc/Weather/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/Weather/data/CityInfo;

    invoke-virtual {v2}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v1

    .line 97
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

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v2, p0, Lcom/htc/Weather/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 99
    const-string v2, "WeatherModel"

    const-string v3, "initial remove data from DB"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, Lcom/htc/Weather/WeatherModel$RemoveDataThread;

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/htc/Weather/WeatherModel$RemoveDataThread;-><init>(Lcom/htc/Weather/WeatherModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .local v0, removeData:Lcom/htc/Weather/WeatherModel$RemoveDataThread;
    const-string v2, "WeatherModel"

    const-string v3, "start remove data from DB"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {v0}, Lcom/htc/Weather/WeatherModel$RemoveDataThread;->start()V

    .line 105
    const-string v2, "WeatherModel"

    const-string v3, "After start remove data from DB"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 75
    iget-object v2, p0, Lcom/htc/Weather/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 77
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 78
    iget-object v2, p0, Lcom/htc/Weather/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/Weather/data/CityInfo;

    invoke-virtual {v2}, Lcom/htc/Weather/data/CityInfo;->removeCity()V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
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
            "Lcom/htc/Weather/data/CityInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/Weather/data/CityInfo;>;"
    iput-object p1, p0, Lcom/htc/Weather/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method public setModelListener(Lcom/htc/Weather/WeatherModel$WeatherModelListener;)V
    .locals 0
    .parameter "modelListener"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/htc/Weather/WeatherModel;->mModelListener:Lcom/htc/Weather/WeatherModel$WeatherModelListener;

    .line 293
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/Weather/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/Weather/WeatherModel;->mTerminated:Z

    .line 53
    return-void
.end method

.method public updateWeatherCityList()Z
    .locals 15

    .prologue
    .line 110
    sget-boolean v0, Lcom/htc/Weather/WeatherActivity;->isAppDestroy:Z

    if-eqz v0, :cond_1

    const/4 v13, 0x0

    .line 191
    :cond_0
    :goto_0
    return v13

    .line 113
    :cond_1
    const/4 v7, 0x0

    .line 114
    .local v7, extra:I
    const/4 v9, 0x0

    .line 116
    .local v9, loc:Lcom/htc/util/weather/WeatherLocation;
    iget-object v0, p0, Lcom/htc/Weather/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 118
    const/4 v13, 0x0

    .line 120
    .local v13, status:Z
    const/4 v0, 0x2

    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "com.htc.htclocationservice"

    aput-object v1, v11, v0

    const/4 v0, 0x1

    const-string v1, "com.htc.elroy.Weather"

    aput-object v1, v11, v0

    .line 121
    .local v11, pkgname:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/Weather/WeatherModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/htc/util/weather/WeatherUtility;->loadMultiAppLocationsFilterByApp(Landroid/content/ContentResolver;[Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v10

    .line 123
    .local v10, locs:[Lcom/htc/util/weather/WeatherLocation;
    array-length v0, v10

    if-lez v0, :cond_5

    .line 124
    array-length v12, v10

    .line 125
    .local v12, size:I
    const/4 v0, 0x0

    aget-object v0, v10, v0

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    aget-object v0, v10, v0

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.htclocationservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    const/4 v7, 0x1

    .line 128
    :cond_2
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v12, :cond_4

    .line 129
    iget-boolean v0, p0, Lcom/htc/Weather/WeatherModel;->mTerminated:Z

    if-eqz v0, :cond_3

    .line 130
    const/4 v13, 0x0

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/htc/Weather/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/htc/Weather/WeatherModel;->mTotalCityCount:I

    add-int/2addr v1, v7

    if-lt v0, v1, :cond_6

    .line 183
    :cond_4
    const/4 v13, 0x1

    .line 187
    .end local v8           #i:I
    .end local v12           #size:I
    :cond_5
    iget-object v0, p0, Lcom/htc/Weather/WeatherModel;->mModelListener:Lcom/htc/Weather/WeatherModel$WeatherModelListener;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/htc/Weather/WeatherModel;->mModelListener:Lcom/htc/Weather/WeatherModel$WeatherModelListener;

    invoke-interface {v0}, Lcom/htc/Weather/WeatherModel$WeatherModelListener;->onModelUpdated()V

    goto :goto_0

    .line 135
    .restart local v8       #i:I
    .restart local v12       #size:I
    :cond_6
    new-instance v6, Lcom/htc/Weather/data/CityInfo;

    iget-object v0, p0, Lcom/htc/Weather/WeatherModel;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0}, Lcom/htc/Weather/data/CityInfo;-><init>(Landroid/content/Context;)V

    .line 137
    .local v6, cityinfo:Lcom/htc/Weather/data/CityInfo;
    add-int/lit8 v0, v8, 0x1

    iput v0, v6, Lcom/htc/Weather/data/CityInfo;->index:I

    .line 138
    aget-object v9, v10, v8

    .line 140
    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 141
    const-string v0, ""

    invoke-virtual {v9, v0}, Lcom/htc/util/weather/WeatherLocation;->setState(Ljava/lang/String;)V

    .line 143
    :cond_7
    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 144
    const-string v0, ""

    invoke-virtual {v9, v0}, Lcom/htc/util/weather/WeatherLocation;->setCountry(Ljava/lang/String;)V

    .line 146
    :cond_8
    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 148
    :cond_9
    sget-object v0, Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;->GOOGLE_GEOCODE:Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;

    iput-object v0, v6, Lcom/htc/Weather/data/CityInfo;->type_:Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;

    .line 151
    iget-boolean v0, p0, Lcom/htc/Weather/WeatherModel;->mBoolGeocodeCorrected:Z

    if-eqz v0, :cond_a

    .line 153
    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.htclocationservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 156
    iget-object v0, p0, Lcom/htc/Weather/WeatherModel;->mContext:Landroid/content/Context;

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

    .line 160
    const/4 v0, 0x1

    new-array v14, v0, [Lcom/htc/util/weather/WeatherLocation;

    .line 161
    .local v14, tloc:[Lcom/htc/util/weather/WeatherLocation;
    const/4 v0, 0x0

    new-instance v1, Lcom/htc/util/weather/WeatherLocation;

    invoke-direct {v1}, Lcom/htc/util/weather/WeatherLocation;-><init>()V

    aput-object v1, v14, v0

    .line 162
    const/4 v0, 0x0

    aput-object v9, v14, v0

    .line 163
    const/4 v0, 0x0

    aget-object v0, v14, v0

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/Weather/WeatherModel;->correctGeocode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/util/weather/WeatherLocation;->setLatitude(Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x0

    aget-object v0, v14, v0

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/Weather/WeatherModel;->correctGeocode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/util/weather/WeatherLocation;->setLongitude(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/htc/Weather/WeatherModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.htclocationservice"

    invoke-static {v0, v1, v14}, Lcom/htc/util/weather/WeatherUtility;->insertOBLocations(Landroid/content/ContentResolver;Ljava/lang/String;[Lcom/htc/util/weather/WeatherLocation;)V

    .line 170
    .end local v14           #tloc:[Lcom/htc/util/weather/WeatherLocation;
    :cond_a
    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/WeatherModel;->correctGeocode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/htc/util/weather/WeatherLocation;->setLatitude(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/Weather/WeatherModel;->correctGeocode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/htc/util/weather/WeatherLocation;->setLongitude(Ljava/lang/String;)V

    .line 177
    :goto_2
    invoke-virtual {v6, v9}, Lcom/htc/Weather/data/CityInfo;->setLocationInfo(Lcom/htc/util/weather/WeatherLocation;)V

    .line 179
    iget-object v0, p0, Lcom/htc/Weather/WeatherModel;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 175
    :cond_b
    sget-object v0, Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;->QUERY_CODE_ACCU_WEATHER:Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;

    iput-object v0, v6, Lcom/htc/Weather/data/CityInfo;->type_:Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;

    goto :goto_2
.end method
