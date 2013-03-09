.class public Lcom/htc/clock3dwidget/setting/HtcClockSetting;
.super Landroid/app/Activity;
.source "HtcClockSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CITY_LIST_ITEM_FULL:I = 0x61

.field protected static final KEY_DISPLAYNAME:Ljava/lang/String; = "name"

.field protected static final KEY_GMT:Ljava/lang/String; = "gmt"

.field protected static final KEY_ID:Ljava/lang/String; = "id"

.field protected static final KEY_SECONDCITY:Ljava/lang/String; = "second_city"

.field public static final TAG:Ljava/lang/String; = "HtcClockSettings"

.field protected static final XMLTAG_TIMEZONE:Ljava/lang/String; = "timezone"


# instance fields
.field private final ADD_CITY:I

.field private final DUAL_SETTING:I

.field private final WWP_SETTING:I

.field private layoutList:Landroid/widget/LinearLayout;

.field private layoutListCities:Landroid/widget/LinearLayout;

.field private listener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mAllDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCheckImg:Landroid/widget/CheckBox;

.field private mCusFolderId:I

.field private mCusFolderName:Ljava/lang/String;

.field private mDisplayCityName:Landroid/view/View;

.field private mIsCustomer:Z

.field private mLocs:[Lcom/htc/util/weather/WeatherLocation;

.field private mShowCurrentCity:Z

.field private mTimeZoneAdapter:Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;

.field private mTimeZoneList:Lcom/htc/widget/HtcListView;

.field private mWidgetType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    iput v1, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->ADD_CITY:I

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->WWP_SETTING:I

    .line 45
    iput v2, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->DUAL_SETTING:I

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mAllDataList:Ljava/util/List;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mLocs:[Lcom/htc/util/weather/WeatherLocation;

    .line 65
    iput v2, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mWidgetType:I

    .line 66
    iput-boolean v1, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mShowCurrentCity:Z

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mIsCustomer:Z

    .line 74
    new-instance v0, Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;

    invoke-direct {v0, p0}, Lcom/htc/clock3dwidget/setting/HtcClockSetting$1;-><init>(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->listener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mTimeZoneAdapter:Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mDisplayCityName:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mShowCurrentCity:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/clock3dwidget/setting/HtcClockSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mShowCurrentCity:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mCheckImg:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mAllDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mWidgetType:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)[Lcom/htc/util/weather/WeatherLocation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mLocs:[Lcom/htc/util/weather/WeatherLocation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mIsCustomer:Z

    return v0
.end method

.method static synthetic access$800(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mCusFolderName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mCusFolderId:I

    return v0
.end method

.method private action_add_city()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 316
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.android.worldclock"

    invoke-static {v1, v2}, Lcom/htc/util/weather/WeatherUtility;->loadLocations(Landroid/content/ContentResolver;Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mLocs:[Lcom/htc/util/weather/WeatherLocation;

    .line 317
    iget-object v1, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mLocs:[Lcom/htc/util/weather/WeatherLocation;

    array-length v1, v1

    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    .line 318
    const/16 v1, 0x61

    invoke-virtual {p0, v1}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->showDialog(I)V

    .line 327
    :goto_0
    return-void

    .line 321
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 322
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.android.worldclock"

    const-string v2, "com.htc.android.worldclock.TimeZonePicker"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 325
    const-string v1, "search_intention"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 326
    invoke-virtual {p0, v0, v3}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private getWorldClockCity()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 360
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v5, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    .line 376
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 377
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "widget_city_reset"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 378
    .local v1, bCityReset:Z
    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->hasCurrentLocation()Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v1, :cond_0

    .line 379
    new-instance v4, Ljava/util/HashMap;

    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 380
    .restart local v4       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "id"

    invoke-virtual {v4, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v6, "name"

    invoke-virtual {p0}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060005

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_0
    iget v6, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mWidgetType:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    iget v6, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mWidgetType:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_2

    .line 387
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 388
    .restart local v4       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "id"

    invoke-virtual {v4, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string v6, "name"

    invoke-virtual {p0}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06002e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_2
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    const-string v6, "com.htc.android.worldclock"

    aput-object v6, v0, v9

    .line 395
    .local v0, apps:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/htc/util/weather/WeatherUtility;->loadMultiAppLocations(Landroid/content/ContentResolver;[Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mLocs:[Lcom/htc/util/weather/WeatherLocation;

    .line 396
    iget-object v6, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mLocs:[Lcom/htc/util/weather/WeatherLocation;

    array-length v6, v6

    if-lez v6, :cond_4

    .line 397
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mLocs:[Lcom/htc/util/weather/WeatherLocation;

    array-length v6, v6

    if-ge v2, v6, :cond_4

    .line 398
    new-instance v4, Ljava/util/HashMap;

    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 399
    .restart local v4       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "id"

    iget-object v7, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mLocs:[Lcom/htc/util/weather/WeatherLocation;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string v6, "name"

    iget-object v7, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mLocs:[Lcom/htc/util/weather/WeatherLocation;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 402
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 406
    .end local v2           #i:I
    :cond_4
    return-object v5
.end method

.method private loadWorldClockCity()V
    .locals 2

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->getWorldClockCity()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mAllDataList:Ljava/util/List;

    .line 331
    new-instance v0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;

    iget-object v1, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mAllDataList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mTimeZoneAdapter:Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;

    .line 332
    iget-object v0, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mTimeZoneList:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mTimeZoneAdapter:Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 333
    iget-object v0, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mTimeZoneList:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->listener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 334
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    .line 339
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 340
    if-ne p2, v1, :cond_0

    .line 341
    invoke-virtual {p0, v1, p3}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->setResult(ILandroid/content/Intent;)V

    .line 342
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->finish()V

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 346
    if-ne p2, v1, :cond_0

    .line 347
    invoke-virtual {p0, v1, p3}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->setResult(ILandroid/content/Intent;)V

    .line 348
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->finish()V

    goto :goto_0

    .line 351
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 352
    if-ne p2, v1, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->loadWorldClockCity()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->action_add_city()V

    .line 412
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f090004

    const/4 v5, 0x6

    const/4 v4, -0x1

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 214
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 216
    if-eqz p1, :cond_6

    .line 218
    const-string v3, "index"

    invoke-virtual {p1, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mWidgetType:I

    .line 219
    const-string v3, "show_"

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mShowCurrentCity:Z

    .line 220
    iget v3, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mWidgetType:I

    if-ne v3, v5, :cond_0

    .line 221
    iput-boolean v6, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mIsCustomer:Z

    .line 222
    const-string v3, "parent folder id"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mCusFolderId:I

    .line 223
    const-string v3, "folder"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mCusFolderName:Ljava/lang/String;

    .line 241
    :cond_0
    :goto_0
    const/high16 v3, 0x7f03

    const v4, 0x7f060029

    iget v5, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mWidgetType:I

    invoke-static {p0, v3, v8, v4, v5}, Lcom/htc/clock3dwidget/ResUtils;->setupView(Landroid/app/Activity;IIII)V

    .line 244
    invoke-virtual {p0, v8}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView;

    iput-object v3, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mTimeZoneList:Lcom/htc/widget/HtcListView;

    .line 248
    const-string v3, "list_selector_background"

    const v4, 0x208005e

    invoke-static {p0, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 250
    .local v2, list_selector:I
    iget-object v3, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mTimeZoneList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcListView;->setSelector(I)V

    .line 253
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x2090083

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mDisplayCityName:Landroid/view/View;

    .line 255
    iget-object v3, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mDisplayCityName:Landroid/view/View;

    const v4, 0x2020010

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 256
    .local v0, displayCityView:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 257
    const v3, 0x7f06002a

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 259
    :cond_1
    iget-object v3, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mDisplayCityName:Landroid/view/View;

    const v4, 0x202001f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mCheckImg:Landroid/widget/CheckBox;

    .line 261
    iget-object v3, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mCheckImg:Landroid/widget/CheckBox;

    iget-boolean v4, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mShowCurrentCity:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 262
    iget-object v3, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mCheckImg:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 266
    iget v3, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mWidgetType:I

    if-eq v3, v7, :cond_2

    iget v3, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mWidgetType:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_3

    .line 268
    :cond_2
    iget-object v3, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mDisplayCityName:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 305
    :cond_3
    iget-object v3, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mTimeZoneList:Lcom/htc/widget/HtcListView;

    invoke-static {p0, v3, p0}, Lcom/htc/clock3dwidget/ResUtils;->addHeaderView(Landroid/app/Activity;Lcom/htc/widget/HtcListView;Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v3, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mDisplayCityName:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    .line 307
    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->hasSeparateLine2()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 308
    iget-object v3, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mDisplayCityName:Landroid/view/View;

    new-instance v4, Lcom/htc/clock3dwidget/setting/HtcCitySeparable;

    invoke-direct {v4}, Lcom/htc/clock3dwidget/setting/HtcCitySeparable;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 309
    :cond_4
    iget-object v3, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mTimeZoneList:Lcom/htc/widget/HtcListView;

    iget-object v4, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mDisplayCityName:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 311
    :cond_5
    invoke-direct {p0}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->loadWorldClockCity()V

    .line 312
    return-void

    .line 226
    .end local v0           #displayCityView:Landroid/widget/TextView;
    .end local v2           #list_selector:I
    :cond_6
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 227
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "index"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mWidgetType:I

    .line 228
    const-string v3, "show_"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mShowCurrentCity:Z

    .line 229
    iget v3, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mWidgetType:I

    if-ne v3, v5, :cond_0

    .line 230
    iput-boolean v6, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mIsCustomer:Z

    .line 231
    const-string v3, "parent folder id"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mCusFolderId:I

    .line 232
    const-string v3, "folder"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mCusFolderName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 197
    packed-switch p1, :pswitch_data_0

    .line 209
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 199
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060028

    invoke-virtual {p0, v1}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06002d

    invoke-virtual {p0, v1}, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06002b

    new-instance v2, Lcom/htc/clock3dwidget/setting/HtcClockSetting$2;

    invoke-direct {v2, p0}, Lcom/htc/clock3dwidget/setting/HtcClockSetting$2;-><init>(Lcom/htc/clock3dwidget/setting/HtcClockSetting;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 416
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 417
    const-string v0, "show_"

    iget-boolean v1, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mShowCurrentCity:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 418
    const-string v0, "index"

    iget v1, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mWidgetType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 419
    iget v0, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mWidgetType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 420
    const-string v0, "show_"

    iget v1, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mCusFolderId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 421
    const-string v0, "index"

    iget-object v1, p0, Lcom/htc/clock3dwidget/setting/HtcClockSetting;->mCusFolderName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_0
    return-void
.end method
