.class public Lcom/htc/widget3d/weather/OptionActivity;
.super Landroid/app/Activity;
.source "OptionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget3d/weather/OptionActivity$CityListAdapter;,
        Lcom/htc/widget3d/weather/OptionActivity$BuildCityList;,
        Lcom/htc/widget3d/weather/OptionActivity$ItemClickListener;,
        Lcom/htc/widget3d/weather/OptionActivity$AddButtonListener;,
        Lcom/htc/widget3d/weather/OptionActivity$UIHandler;
    }
.end annotation


# static fields
.field private static final DIALOG_WAIT:I = 0x1

.field private static final MAX_CITY:I = 0xf

.field private static final MSG_DATA_INIT_READY:I = 0x1

.field public static final TAG:Ljava/lang/String; = "WeatherWidget"


# instance fields
.field private bListInitialized:Z

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/htc/widget3d/weather/OptionActivity$CityListAdapter;

.field private mCityIndex:I

.field private mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

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

.field private mHandler:Landroid/os/Handler;

.field private mLayoutAddCity:Lcom/htc/widget/HeaderBarImage;

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mMaxCityCount:I

.field private mMaxCityCountFromSetting:I

.field private mProgressDlg:Landroid/app/ProgressDialog;

.field private mStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xf

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity;->mProgressDlg:Landroid/app/ProgressDialog;

    .line 57
    iput v1, p0, Lcom/htc/widget3d/weather/OptionActivity;->mMaxCityCount:I

    .line 58
    iput v1, p0, Lcom/htc/widget3d/weather/OptionActivity;->mMaxCityCountFromSetting:I

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget3d/weather/OptionActivity;->bListInitialized:Z

    .line 469
    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget3d/weather/OptionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/widget3d/weather/OptionActivity;->initListView()V

    return-void
.end method

.method static synthetic access$202(Lcom/htc/widget3d/weather/OptionActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/htc/widget3d/weather/OptionActivity;->mCityIndex:I

    return p1
.end method

.method static synthetic access$302(Lcom/htc/widget3d/weather/OptionActivity;Lcom/htc/widget3d/weather/data/CityInfo;)Lcom/htc/widget3d/weather/data/CityInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/htc/widget3d/weather/OptionActivity;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/widget3d/weather/OptionActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity;->mCurrentCityList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/widget3d/weather/OptionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/widget3d/weather/OptionActivity;->backtoLauncher()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/widget3d/weather/OptionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/widget3d/weather/OptionActivity;->launchAddCityActivity()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/widget3d/weather/OptionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/widget3d/weather/OptionActivity;->prepareWeatherProvider()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget3d/weather/OptionActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/widget3d/weather/OptionActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity;->mStrings:Ljava/util/ArrayList;

    return-object v0
.end method

.method private backtoLauncher()V
    .locals 4

    .prologue
    .line 285
    iget-object v2, p0, Lcom/htc/widget3d/weather/OptionActivity;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget3d/weather/OptionActivity;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-virtual {v2}, Lcom/htc/widget3d/weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 287
    iget-object v2, p0, Lcom/htc/widget3d/weather/OptionActivity;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-virtual {v2}, Lcom/htc/widget3d/weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v1

    .line 288
    .local v1, loc:Lcom/htc/util/weather/WeatherLocation;
    iget-object v2, p0, Lcom/htc/widget3d/weather/OptionActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 289
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 290
    const-string v2, "select_city"

    iget v3, p0, Lcom/htc/widget3d/weather/OptionActivity;->mCityIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v2, "name_"

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v2, "state_"

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v2, "country_"

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string v2, "code_"

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string v2, "timezone_"

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getTimezone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const-string v2, "timezoneid_"

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string v2, "latitude_"

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const-string v2, "longitude_"

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string v2, "app_"

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const-string v2, "index_"

    iget v3, p0, Lcom/htc/widget3d/weather/OptionActivity;->mCityIndex:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/htc/widget3d/weather/OptionActivity;->setResult(ILandroid/content/Intent;)V

    .line 304
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/OptionActivity;->finish()V

    .line 307
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #loc:Lcom/htc/util/weather/WeatherLocation;
    :cond_0
    return-void
.end method

.method private initListView()V
    .locals 4

    .prologue
    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget3d/weather/OptionActivity;->bListInitialized:Z

    .line 137
    new-instance v0, Lcom/htc/widget3d/weather/OptionActivity$CityListAdapter;

    iget-object v1, p0, Lcom/htc/widget3d/weather/OptionActivity;->mActivity:Landroid/app/Activity;

    const/high16 v2, 0x7f03

    iget-object v3, p0, Lcom/htc/widget3d/weather/OptionActivity;->mStrings:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/htc/widget3d/weather/OptionActivity$CityListAdapter;-><init>(Lcom/htc/widget3d/weather/OptionActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity;->mAdapter:Lcom/htc/widget3d/weather/OptionActivity$CityListAdapter;

    .line 138
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity;->mListView:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/widget3d/weather/OptionActivity;->mAdapter:Lcom/htc/widget3d/weather/OptionActivity$CityListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->requestFocus()Z

    .line 142
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity;->mListView:Lcom/htc/widget/HtcListView;

    new-instance v1, Lcom/htc/widget3d/weather/OptionActivity$1;

    invoke-direct {v1, p0}, Lcom/htc/widget3d/weather/OptionActivity$1;-><init>(Lcom/htc/widget3d/weather/OptionActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 165
    :cond_0
    return-void
.end method

.method private isCityViewExist(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    .line 369
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/htc/widget3d/weather/OptionActivity;->mCurrentCityList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 370
    iget-object v2, p0, Lcom/htc/widget3d/weather/OptionActivity;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 371
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 372
    iget-object v2, p0, Lcom/htc/widget3d/weather/OptionActivity;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-virtual {v2}, Lcom/htc/widget3d/weather/data/CityInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    const/4 v2, 0x1

    .line 376
    .end local v0           #i:I
    .end local v1           #size:I
    :goto_1
    return v2

    .line 371
    .restart local v0       #i:I
    .restart local v1       #size:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private launchAddCityActivity()V
    .locals 5

    .prologue
    .line 242
    iget-object v2, p0, Lcom/htc/widget3d/weather/OptionActivity;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/htc/widget3d/weather/OptionActivity;->mMaxCityCount:I

    if-lt v2, v3, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/OptionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06006b

    const/16 v4, 0x1f4

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.Weather.intent.action.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 249
    const-string v2, "com.htc.Weather"

    const-string v3, "com.htc.Weather.AddCity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const/16 v2, 0x1001

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/htc/widget3d/weather/OptionActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private prepareWeatherProvider()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 382
    const/4 v5, 0x0

    .line 384
    .local v5, size:I
    const/4 v2, 0x0

    .line 385
    .local v2, loc:Lcom/htc/util/weather/WeatherLocation;
    const/4 v8, 0x2

    new-array v4, v8, [Ljava/lang/String;

    const-string v8, "com.htc.htclocationservice"

    aput-object v8, v4, v7

    const-string v8, "com.htc.elroy.Weather"

    aput-object v8, v4, v6

    .line 388
    .local v4, pkgname:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/OptionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/htc/util/weather/WeatherUtility;->loadMultiAppLocationsFilterByApp(Landroid/content/ContentResolver;[Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v3

    .line 391
    .local v3, locs:[Lcom/htc/util/weather/WeatherLocation;
    array-length v8, v3

    if-lez v8, :cond_9

    .line 393
    aget-object v8, v3, v7

    invoke-virtual {v8}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    aget-object v7, v3, v7

    invoke-virtual {v7}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.htc.htclocationservice"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 396
    iget v7, p0, Lcom/htc/widget3d/weather/OptionActivity;->mMaxCityCountFromSetting:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/htc/widget3d/weather/OptionActivity;->mMaxCityCount:I

    .line 401
    :goto_0
    array-length v5, v3

    .line 403
    iget-object v7, p0, Lcom/htc/widget3d/weather/OptionActivity;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 404
    iget-object v7, p0, Lcom/htc/widget3d/weather/OptionActivity;->mStrings:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 406
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_8

    .line 407
    aget-object v2, v3, v1

    .line 409
    if-nez v2, :cond_1

    .line 406
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 398
    .end local v1           #i:I
    :cond_0
    iget v7, p0, Lcom/htc/widget3d/weather/OptionActivity;->mMaxCityCountFromSetting:I

    iput v7, p0, Lcom/htc/widget3d/weather/OptionActivity;->mMaxCityCount:I

    goto :goto_0

    .line 412
    .restart local v1       #i:I
    :cond_1
    new-instance v0, Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-direct {v0}, Lcom/htc/widget3d/weather/data/CityInfo;-><init>()V

    .line 414
    .local v0, cityinfo:Lcom/htc/widget3d/weather/data/CityInfo;
    invoke-virtual {v0, v2}, Lcom/htc/widget3d/weather/data/CityInfo;->setLocationInfo(Lcom/htc/util/weather/WeatherLocation;)V

    .line 416
    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.htc.htclocationservice"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 420
    iget-object v7, p0, Lcom/htc/widget3d/weather/OptionActivity;->mStrings:Ljava/util/ArrayList;

    const v8, 0x7f060068

    invoke-virtual {p0, v8}, Lcom/htc/widget3d/weather/OptionActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    :goto_3
    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_7

    .line 437
    :cond_2
    sget-object v7, Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;->GOOGLE_GEOCODE:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    iput-object v7, v0, Lcom/htc/widget3d/weather/data/CityInfo;->type_:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    .line 446
    :goto_4
    iget-object v7, p0, Lcom/htc/widget3d/weather/OptionActivity;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 423
    :cond_3
    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_6

    .line 426
    :cond_4
    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 428
    iget-object v7, p0, Lcom/htc/widget3d/weather/OptionActivity;->mStrings:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 430
    :cond_5
    iget-object v7, p0, Lcom/htc/widget3d/weather/OptionActivity;->mStrings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/CityInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 433
    :cond_6
    iget-object v7, p0, Lcom/htc/widget3d/weather/OptionActivity;->mStrings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/CityInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 439
    :cond_7
    sget-object v7, Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;->QUERY_CODE_ACCU_WEATHER:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    iput-object v7, v0, Lcom/htc/widget3d/weather/data/CityInfo;->type_:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    goto :goto_4

    .line 448
    .end local v0           #cityinfo:Lcom/htc/widget3d/weather/data/CityInfo;
    :cond_8
    const/4 v3, 0x0

    .line 449
    const/4 v2, 0x0

    .line 453
    .end local v1           #i:I
    :goto_5
    return v6

    :cond_9
    move v6, v7

    goto :goto_5
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f06006a

    const/16 v8, 0x1f4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 310
    if-nez p3, :cond_0

    .line 365
    :goto_0
    return-void

    .line 313
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 362
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 316
    :pswitch_0
    if-ne p2, v7, :cond_3

    .line 320
    const-string v4, "status"

    invoke-virtual {p3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 321
    invoke-static {p0, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 324
    :cond_1
    iput-boolean v6, p0, Lcom/htc/widget3d/weather/OptionActivity;->bListInitialized:Z

    .line 325
    new-instance v0, Lcom/htc/widget3d/weather/OptionActivity$BuildCityList;

    invoke-direct {v0, p0, v10}, Lcom/htc/widget3d/weather/OptionActivity$BuildCityList;-><init>(Lcom/htc/widget3d/weather/OptionActivity;Lcom/htc/widget3d/weather/OptionActivity$1;)V

    .line 326
    .local v0, data_process:Lcom/htc/widget3d/weather/OptionActivity$BuildCityList;
    invoke-virtual {v0}, Lcom/htc/widget3d/weather/OptionActivity$BuildCityList;->start()V

    .line 357
    .end local v0           #data_process:Lcom/htc/widget3d/weather/OptionActivity$BuildCityList;
    :cond_2
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.htc.Weather.add_location_changed"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "com.htc.Weather.add_location_changed"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 359
    invoke-virtual {p0, v2}, Lcom/htc/widget3d/weather/OptionActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 327
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    .line 329
    new-array v3, v7, [Lcom/htc/util/weather/WeatherLocation;

    .line 330
    .local v3, loc:[Lcom/htc/util/weather/WeatherLocation;
    new-instance v4, Lcom/htc/util/weather/WeatherLocation;

    invoke-direct {v4}, Lcom/htc/util/weather/WeatherLocation;-><init>()V

    aput-object v4, v3, v6

    .line 332
    aget-object v4, v3, v6

    const-string v5, "latitude"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/util/weather/WeatherLocation;->setLatitude(Ljava/lang/String;)V

    .line 333
    aget-object v4, v3, v6

    const-string v5, "longitude"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/util/weather/WeatherLocation;->setLongitude(Ljava/lang/String;)V

    .line 334
    aget-object v4, v3, v6

    const-string v5, "name"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/util/weather/WeatherLocation;->setName(Ljava/lang/String;)V

    .line 335
    aget-object v4, v3, v6

    const-string v5, "state"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/util/weather/WeatherLocation;->setState(Ljava/lang/String;)V

    .line 336
    aget-object v4, v3, v6

    const-string v5, "country"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/util/weather/WeatherLocation;->setCountry(Ljava/lang/String;)V

    .line 337
    aget-object v4, v3, v6

    const-string v5, "com.htc.elroy.Weather"

    invoke-virtual {v4, v5}, Lcom/htc/util/weather/WeatherLocation;->setApp(Ljava/lang/String;)V

    .line 339
    new-instance v1, Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-direct {v1}, Lcom/htc/widget3d/weather/data/CityInfo;-><init>()V

    .line 340
    .local v1, info:Lcom/htc/widget3d/weather/data/CityInfo;
    aget-object v4, v3, v6

    invoke-virtual {v1, v4}, Lcom/htc/widget3d/weather/data/CityInfo;->setLocationInfo(Lcom/htc/util/weather/WeatherLocation;)V

    .line 341
    sget-object v4, Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;->GOOGLE_GEOCODE:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    iput-object v4, v1, Lcom/htc/widget3d/weather/data/CityInfo;->type_:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    .line 343
    invoke-virtual {v1}, Lcom/htc/widget3d/weather/data/CityInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/widget3d/weather/OptionActivity;->isCityViewExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 344
    invoke-static {p0, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 348
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/OptionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.htc.elroy.Weather"

    invoke-static {v4, v5, v3}, Lcom/htc/util/weather/WeatherUtility;->addLocation(Landroid/content/ContentResolver;Ljava/lang/String;[Lcom/htc/util/weather/WeatherLocation;)V

    .line 351
    iput-boolean v6, p0, Lcom/htc/widget3d/weather/OptionActivity;->bListInitialized:Z

    .line 352
    new-instance v0, Lcom/htc/widget3d/weather/OptionActivity$BuildCityList;

    invoke-direct {v0, p0, v10}, Lcom/htc/widget3d/weather/OptionActivity$BuildCityList;-><init>(Lcom/htc/widget3d/weather/OptionActivity;Lcom/htc/widget3d/weather/OptionActivity$1;)V

    .line 353
    .restart local v0       #data_process:Lcom/htc/widget3d/weather/OptionActivity$BuildCityList;
    invoke-virtual {v0}, Lcom/htc/widget3d/weather/OptionActivity$BuildCityList;->start()V

    goto/16 :goto_1

    .line 313
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 65
    invoke-virtual {p0, v6}, Lcom/htc/widget3d/weather/OptionActivity;->requestWindowFeature(I)Z

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v4, 0x7f030002

    invoke-virtual {p0, v4}, Lcom/htc/widget3d/weather/OptionActivity;->setContentView(I)V

    .line 69
    invoke-virtual {p0, v6}, Lcom/htc/widget3d/weather/OptionActivity;->showWaitCursor(Z)V

    .line 72
    const-string v4, "common_app_bkg"

    const v5, 0x20806b7

    invoke-static {p0, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 74
    .local v0, bgId:I
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/OptionActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 78
    const/4 v3, 0x0

    .line 79
    .local v3, headerbar:Lcom/htc/widget/HeaderBar;
    const/4 v2, 0x0

    .line 80
    .local v2, headerText:Lcom/htc/widget/HeaderBarText;
    new-instance v3, Lcom/htc/widget/HeaderBarMiddle;

    .end local v3           #headerbar:Lcom/htc/widget/HeaderBar;
    invoke-direct {v3, p0}, Lcom/htc/widget/HeaderBarMiddle;-><init>(Landroid/content/Context;)V

    .line 81
    .restart local v3       #headerbar:Lcom/htc/widget/HeaderBar;
    const v4, 0x7f080002

    invoke-virtual {p0, v4}, Lcom/htc/widget3d/weather/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    new-instance v2, Lcom/htc/widget/HeaderBarText;

    .end local v2           #headerText:Lcom/htc/widget/HeaderBarText;
    invoke-direct {v2, p0}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    .line 85
    .restart local v2       #headerText:Lcom/htc/widget/HeaderBarText;
    invoke-virtual {v3, v2}, Lcom/htc/widget/HeaderBar;->addCenterView(Landroid/view/View;)V

    .line 87
    const v4, 0x7f060057

    invoke-virtual {v2, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 88
    invoke-virtual {v2, v7}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 91
    new-instance v4, Lcom/htc/widget/HeaderBarImage;

    invoke-direct {v4, p0}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/widget3d/weather/OptionActivity;->mLayoutAddCity:Lcom/htc/widget/HeaderBarImage;

    .line 92
    iget-object v4, p0, Lcom/htc/widget3d/weather/OptionActivity;->mLayoutAddCity:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBar;->addRightView(Landroid/view/View;)V

    .line 94
    iget-object v4, p0, Lcom/htc/widget3d/weather/OptionActivity;->mLayoutAddCity:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 95
    iget-object v4, p0, Lcom/htc/widget3d/weather/OptionActivity;->mLayoutAddCity:Lcom/htc/widget/HeaderBarImage;

    const v5, 0x7f06006d

    invoke-virtual {v4, v5}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 96
    iget-object v4, p0, Lcom/htc/widget3d/weather/OptionActivity;->mLayoutAddCity:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {p0}, Lcom/htc/widget3d/weather/OptionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x208087c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HeaderBarImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object v4, p0, Lcom/htc/widget3d/weather/OptionActivity;->mLayoutAddCity:Lcom/htc/widget/HeaderBarImage;

    new-instance v5, Lcom/htc/widget3d/weather/OptionActivity$AddButtonListener;

    invoke-direct {v5, p0}, Lcom/htc/widget3d/weather/OptionActivity$AddButtonListener;-><init>(Lcom/htc/widget3d/weather/OptionActivity;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v4, 0x7f080003

    invoke-virtual {p0, v4}, Lcom/htc/widget3d/weather/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListView;

    iput-object v4, p0, Lcom/htc/widget3d/weather/OptionActivity;->mListView:Lcom/htc/widget/HtcListView;

    .line 104
    iput-object p0, p0, Lcom/htc/widget3d/weather/OptionActivity;->mActivity:Landroid/app/Activity;

    .line 105
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/widget3d/weather/OptionActivity;->mStrings:Ljava/util/ArrayList;

    .line 106
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/widget3d/weather/OptionActivity;->mCurrentCityList:Ljava/util/ArrayList;

    .line 108
    new-instance v4, Lcom/htc/widget3d/weather/OptionActivity$UIHandler;

    invoke-direct {v4, p0}, Lcom/htc/widget3d/weather/OptionActivity$UIHandler;-><init>(Lcom/htc/widget3d/weather/OptionActivity;)V

    iput-object v4, p0, Lcom/htc/widget3d/weather/OptionActivity;->mHandler:Landroid/os/Handler;

    .line 111
    iput-boolean v7, p0, Lcom/htc/widget3d/weather/OptionActivity;->bListInitialized:Z

    .line 112
    new-instance v1, Lcom/htc/widget3d/weather/OptionActivity$BuildCityList;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/htc/widget3d/weather/OptionActivity$BuildCityList;-><init>(Lcom/htc/widget3d/weather/OptionActivity;Lcom/htc/widget3d/weather/OptionActivity$1;)V

    .line 113
    .local v1, data_process:Lcom/htc/widget3d/weather/OptionActivity$BuildCityList;
    invoke-virtual {v1}, Lcom/htc/widget3d/weather/OptionActivity$BuildCityList;->start()V

    .line 115
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    .line 194
    if-ne p1, v3, :cond_1

    .line 195
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity;->mProgressDlg:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity;->mProgressDlg:Landroid/app/ProgressDialog;

    .line 197
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/htc/widget3d/weather/OptionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 200
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity;->mProgressDlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity;->mProgressDlg:Landroid/app/ProgressDialog;

    .line 204
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 221
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity;->mProgressDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 223
    iput-object v1, p0, Lcom/htc/widget3d/weather/OptionActivity;->mProgressDlg:Landroid/app/ProgressDialog;

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity;->mLayoutAddCity:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity;->mLayoutAddCity:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity;->mStrings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 233
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity;->mCurrentCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 236
    iput-object v1, p0, Lcom/htc/widget3d/weather/OptionActivity;->mHandler:Landroid/os/Handler;

    .line 238
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 239
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 211
    iget-boolean v1, p0, Lcom/htc/widget3d/weather/OptionActivity;->bListInitialized:Z

    if-eqz v1, :cond_0

    .line 213
    new-instance v0, Lcom/htc/widget3d/weather/OptionActivity$BuildCityList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/widget3d/weather/OptionActivity$BuildCityList;-><init>(Lcom/htc/widget3d/weather/OptionActivity;Lcom/htc/widget3d/weather/OptionActivity$1;)V

    .line 214
    .local v0, data_process:Lcom/htc/widget3d/weather/OptionActivity$BuildCityList;
    invoke-virtual {v0}, Lcom/htc/widget3d/weather/OptionActivity$BuildCityList;->start()V

    .line 216
    .end local v0           #data_process:Lcom/htc/widget3d/weather/OptionActivity$BuildCityList;
    :cond_0
    return-void
.end method

.method public showWaitCursor(Z)V
    .locals 2
    .parameter "bShow"

    .prologue
    const/4 v1, 0x1

    .line 181
    if-eqz p1, :cond_1

    .line 182
    invoke-virtual {p0, v1}, Lcom/htc/widget3d/weather/OptionActivity;->showDialog(I)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity;->mProgressDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 186
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 187
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity;->mProgressDlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0
.end method
