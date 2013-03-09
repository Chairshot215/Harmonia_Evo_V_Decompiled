.class public Lcom/htc/Weather/DeleteAndRearrangeCity;
.super Landroid/app/Activity;
.source "DeleteAndRearrangeCity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;,
        Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherProviderObserver;,
        Lcom/htc/Weather/DeleteAndRearrangeCity$btnDeleteOnclicklistener;,
        Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;
    }
.end annotation


# static fields
.field private static final COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "DeleteCity_ListActivity"

.field private static final localLOG:Z


# instance fields
.field private locs:[Lcom/htc/util/weather/WeatherLocation;

.field private mAdapter:Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;

.field private mCancelButton:Landroid/widget/Button;

.field private mCityList:Lcom/htc/widget/HtcReorderListView;

.field private mCurIsIncluded:Z

.field private mDeleteOffColor:I

.field private mDeleteOnColor:I

.field private mDoneButton:Landroid/widget/Button;

.field private mDoneNumber:I

.field private mDoneString:Ljava/lang/String;

.field private mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

.field private weatherProviderChanged:Z

.field private weatherProviderObserver:Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherProviderObserver;

.field private weatherProviderObserverRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "state"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "country"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/Weather/DeleteAndRearrangeCity;->COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->locs:[Lcom/htc/util/weather/WeatherLocation;

    .line 51
    iput-object v1, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    .line 53
    iput-boolean v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mCurIsIncluded:Z

    .line 57
    iput-boolean v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->weatherProviderChanged:Z

    .line 58
    iput-boolean v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->weatherProviderObserverRegistered:Z

    .line 59
    iput-object v1, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->weatherProviderObserver:Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherProviderObserver;

    .line 429
    return-void
.end method

.method private InitCityList()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 112
    iput-boolean v4, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mCurIsIncluded:Z

    .line 113
    iput v4, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mDoneNumber:I

    .line 115
    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mCityList:Lcom/htc/widget/HtcReorderListView;

    if-nez v2, :cond_1

    .line 116
    const v2, 0x7f0c0001

    invoke-virtual {p0, v2}, Lcom/htc/Weather/DeleteAndRearrangeCity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcReorderListView;

    iput-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mCityList:Lcom/htc/widget/HtcReorderListView;

    .line 122
    :goto_0
    invoke-virtual {p0}, Lcom/htc/Weather/DeleteAndRearrangeCity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.Weather.intent.action.REMOVE_ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "com.htc.htclocationservice"

    aput-object v2, v1, v4

    const-string v2, "com.htc.elroy.Weather"

    aput-object v2, v1, v5

    .line 124
    .local v1, pkgname:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/Weather/DeleteAndRearrangeCity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/htc/util/weather/WeatherUtility;->loadMultiAppLocations(Landroid/content/ContentResolver;[Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->locs:[Lcom/htc/util/weather/WeatherLocation;

    .line 132
    :goto_1
    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->locs:[Lcom/htc/util/weather/WeatherLocation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->locs:[Lcom/htc/util/weather/WeatherLocation;

    array-length v2, v2

    if-nez v2, :cond_3

    .line 204
    :cond_0
    :goto_2
    return-void

    .line 118
    .end local v1           #pkgname:[Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mCityList:Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcReorderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mCityList:Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcReorderListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 126
    :cond_2
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "com.htc.elroy.Weather"

    aput-object v2, v1, v4

    .line 127
    .restart local v1       #pkgname:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/Weather/DeleteAndRearrangeCity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/htc/util/weather/WeatherUtility;->loadMultiAppLocations(Landroid/content/ContentResolver;[Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->locs:[Lcom/htc/util/weather/WeatherLocation;

    goto :goto_1

    .line 135
    :cond_3
    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->locs:[Lcom/htc/util/weather/WeatherLocation;

    array-length v2, v2

    new-array v2, v2, [Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    iput-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    .line 137
    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->locs:[Lcom/htc/util/weather/WeatherLocation;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->locs:[Lcom/htc/util/weather/WeatherLocation;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.htclocationservice"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 138
    iput-boolean v5, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mCurIsIncluded:Z

    .line 140
    :cond_4
    invoke-virtual {p0}, Lcom/htc/Weather/DeleteAndRearrangeCity;->newListAdapter()Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mAdapter:Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;

    .line 141
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 142
    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    new-instance v3, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    invoke-direct {v3, p0}, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;-><init>(Lcom/htc/Weather/DeleteAndRearrangeCity;)V

    aput-object v3, v2, v0

    .line 143
    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->locs:[Lcom/htc/util/weather/WeatherLocation;

    aget-object v3, v3, v0

    iput-object v3, v2, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;->loc:Lcom/htc/util/weather/WeatherLocation;

    .line 144
    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    aget-object v2, v2, v0

    iput-boolean v4, v2, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;->isDeletChecked:Z

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 146
    :cond_5
    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mCityList:Lcom/htc/widget/HtcReorderListView;

    iget-object v3, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mAdapter:Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcReorderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mCityList:Lcom/htc/widget/HtcReorderListView;

    new-instance v3, Lcom/htc/Weather/DeleteAndRearrangeCity$2;

    invoke-direct {v3, p0}, Lcom/htc/Weather/DeleteAndRearrangeCity$2;-><init>(Lcom/htc/Weather/DeleteAndRearrangeCity;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcReorderListView;->setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V

    .line 200
    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mDoneButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mDoneButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mDoneString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method static synthetic access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/Weather/DeleteAndRearrangeCity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->weatherProviderChanged:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/Weather/DeleteAndRearrangeCity;)Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mAdapter:Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/Weather/DeleteAndRearrangeCity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/Weather/DeleteAndRearrangeCity;->handleDeleteCount(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/Weather/DeleteAndRearrangeCity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/Weather/DeleteAndRearrangeCity;->unregisterProviderChange()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/Weather/DeleteAndRearrangeCity;)Lcom/htc/widget/HtcReorderListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mCityList:Lcom/htc/widget/HtcReorderListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/Weather/DeleteAndRearrangeCity;[Lcom/htc/util/weather/WeatherLocation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/Weather/DeleteAndRearrangeCity;->writeToDB([Lcom/htc/util/weather/WeatherLocation;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/Weather/DeleteAndRearrangeCity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mDoneNumber:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/Weather/DeleteAndRearrangeCity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mCurIsIncluded:Z

    return v0
.end method

.method static synthetic access$900(Lcom/htc/Weather/DeleteAndRearrangeCity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/Weather/DeleteAndRearrangeCity;->deleteCurrentLocation()V

    return-void
.end method

.method private deleteCurrentLocation()V
    .locals 3

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/htc/Weather/DeleteAndRearrangeCity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 366
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/util/weather/WSPUtility;->disableCurrentLocation(Landroid/content/Context;)V

    .line 367
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.Weather.delete_current_location"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 369
    return-void
.end method

.method private handleDeleteCount(Z)V
    .locals 3
    .parameter "isChecked"

    .prologue
    .line 281
    if-eqz p1, :cond_0

    .line 282
    iget v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mDoneNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mDoneNumber:I

    .line 286
    :goto_0
    iget v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mDoneNumber:I

    if-lez v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mDoneButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mDoneString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mDoneNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 290
    :goto_1
    return-void

    .line 284
    :cond_0
    iget v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mDoneNumber:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mDoneNumber:I

    goto :goto_0

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mDoneButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mDoneString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private registerProviderChange()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 396
    iget-boolean v1, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->weatherProviderObserverRegistered:Z

    if-nez v1, :cond_0

    .line 397
    sget-object v1, Lcom/htc/consts/WeatherConsts;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "location"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 398
    .local v0, uri:Landroid/net/Uri;
    const-string v1, "com.htc.elroy.Weather"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 399
    new-instance v1, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherProviderObserver;

    invoke-direct {v1, p0}, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherProviderObserver;-><init>(Lcom/htc/Weather/DeleteAndRearrangeCity;)V

    iput-object v1, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->weatherProviderObserver:Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherProviderObserver;

    .line 400
    invoke-virtual {p0}, Lcom/htc/Weather/DeleteAndRearrangeCity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->weatherProviderObserver:Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherProviderObserver;

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 403
    iput-boolean v3, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->weatherProviderObserverRegistered:Z

    .line 405
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private setScreenOrientation()V
    .locals 1

    .prologue
    .line 435
    sget v0, Lcom/htc/Weather/util/WeatherUtil;->orientation:I

    invoke-virtual {p0, v0}, Lcom/htc/Weather/DeleteAndRearrangeCity;->setRequestedOrientation(I)V

    .line 436
    return-void
.end method

.method private unregisterProviderChange()V
    .locals 2

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->weatherProviderObserverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->weatherProviderObserver:Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherProviderObserver;

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/htc/Weather/DeleteAndRearrangeCity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->weatherProviderObserver:Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherProviderObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 411
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->weatherProviderObserverRegistered:Z

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->weatherProviderObserver:Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherProviderObserver;

    .line 414
    :cond_0
    return-void
.end method

.method private writeToDB([Lcom/htc/util/weather/WeatherLocation;)V
    .locals 2
    .parameter "locs_"

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/htc/Weather/DeleteAndRearrangeCity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.elroy.Weather"

    invoke-static {v0, v1, p1}, Lcom/htc/util/weather/WeatherUtility;->saveLocations(Landroid/content/ContentResolver;Ljava/lang/String;[Lcom/htc/util/weather/WeatherLocation;)V

    .line 362
    return-void
.end method


# virtual methods
.method protected newListAdapter()Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;

    invoke-virtual {p0}, Lcom/htc/Weather/DeleteAndRearrangeCity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;-><init>(Lcom/htc/Weather/DeleteAndRearrangeCity;Landroid/content/Context;)V

    .line 208
    .local v0, adapter:Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 69
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/Weather/DeleteAndRearrangeCity;->requestWindowFeature(I)Z

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-direct {p0}, Lcom/htc/Weather/DeleteAndRearrangeCity;->setScreenOrientation()V

    .line 75
    const v3, 0x7f030007

    invoke-virtual {p0, v3}, Lcom/htc/Weather/DeleteAndRearrangeCity;->setContentView(I)V

    .line 77
    invoke-direct {p0}, Lcom/htc/Weather/DeleteAndRearrangeCity;->InitCityList()V

    .line 79
    invoke-virtual {p0}, Lcom/htc/Weather/DeleteAndRearrangeCity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mDeleteOffColor:I

    .line 80
    invoke-virtual {p0}, Lcom/htc/Weather/DeleteAndRearrangeCity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mDeleteOnColor:I

    .line 81
    invoke-virtual {p0}, Lcom/htc/Weather/DeleteAndRearrangeCity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20c0150

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mDoneString:Ljava/lang/String;

    .line 87
    new-instance v1, Lcom/htc/Weather/util/SkinUtil;

    invoke-direct {v1, p0}, Lcom/htc/Weather/util/SkinUtil;-><init>(Landroid/content/Context;)V

    .line 88
    .local v1, mySkinUtil:Lcom/htc/Weather/util/SkinUtil;
    const v3, 0x7f0c0019

    invoke-virtual {p0, v3}, Lcom/htc/Weather/DeleteAndRearrangeCity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 89
    .local v2, title:Landroid/view/ViewGroup;
    invoke-virtual {v1, v2}, Lcom/htc/Weather/util/SkinUtil;->setRearrangeTitle(Landroid/view/ViewGroup;)V

    .line 91
    const v3, 0x7f0c001b

    invoke-virtual {p0, v3}, Lcom/htc/Weather/DeleteAndRearrangeCity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 92
    .local v0, footer:Landroid/view/ViewGroup;
    invoke-virtual {v1, v0}, Lcom/htc/Weather/util/SkinUtil;->getRearrangeFooterLeft(Landroid/view/ViewGroup;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mDoneButton:Landroid/widget/Button;

    .line 93
    invoke-virtual {v1, v0}, Lcom/htc/Weather/util/SkinUtil;->getRearrangeFooterRight(Landroid/view/ViewGroup;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mCancelButton:Landroid/widget/Button;

    .line 95
    iget-object v3, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mDoneButton:Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 96
    iget-object v3, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mDoneButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mDoneString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v3, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mDoneButton:Landroid/widget/Button;

    new-instance v4, Lcom/htc/Weather/DeleteAndRearrangeCity$btnDeleteOnclicklistener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/htc/Weather/DeleteAndRearrangeCity$btnDeleteOnclicklistener;-><init>(Lcom/htc/Weather/DeleteAndRearrangeCity;Lcom/htc/Weather/DeleteAndRearrangeCity$1;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    :cond_0
    iget-object v3, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mCancelButton:Landroid/widget/Button;

    if-eqz v3, :cond_1

    .line 100
    iget-object v3, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mCancelButton:Landroid/widget/Button;

    const v4, 0x20c0151

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 101
    iget-object v3, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mCancelButton:Landroid/widget/Button;

    new-instance v4, Lcom/htc/Weather/DeleteAndRearrangeCity$1;

    invoke-direct {v4, p0}, Lcom/htc/Weather/DeleteAndRearrangeCity$1;-><init>(Lcom/htc/Weather/DeleteAndRearrangeCity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    :cond_1
    invoke-direct {p0}, Lcom/htc/Weather/DeleteAndRearrangeCity;->registerProviderChange()V

    .line 109
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 373
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 374
    invoke-direct {p0}, Lcom/htc/Weather/DeleteAndRearrangeCity;->unregisterProviderChange()V

    .line 375
    iput-object v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mDoneButton:Landroid/widget/Button;

    .line 376
    iput-object v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mCancelButton:Landroid/widget/Button;

    .line 377
    iput-object v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->mAdapter:Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;

    .line 378
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 382
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 384
    invoke-direct {p0}, Lcom/htc/Weather/DeleteAndRearrangeCity;->setScreenOrientation()V

    .line 386
    iget-boolean v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->weatherProviderChanged:Z

    if-eqz v0, :cond_0

    .line 388
    invoke-direct {p0}, Lcom/htc/Weather/DeleteAndRearrangeCity;->InitCityList()V

    .line 389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity;->weatherProviderChanged:Z

    .line 391
    :cond_0
    return-void
.end method
