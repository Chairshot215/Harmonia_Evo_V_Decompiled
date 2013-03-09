.class public Lcom/htc/android/worldclock/WorldClock;
.super Lcom/htc/android/worldclock/CloseMenuIME;
.source "WorldClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/WorldClock$FormatChangeObserver;,
        Lcom/htc/android/worldclock/WorldClock$CityChangeObserver;,
        Lcom/htc/android/worldclock/WorldClock$MinuteTask;,
        Lcom/htc/android/worldclock/WorldClock$IntentReceiver;,
        Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;,
        Lcom/htc/android/worldclock/WorldClock$UIHandler;
    }
.end annotation


# static fields
.field protected static final ADD_CITY_ID:I = 0x1

.field public static final APP_LOCATION_SERVICE:Ljava/lang/String; = "com.htc.htclocationservice"

.field protected static CURRENT:Ljava/lang/String; = null

.field protected static CURRENT_POSITION:I = 0x0

.field protected static final CURRENT_SETTINGS_ID:I = 0x2

.field protected static DAYOFWEEK:[Ljava/lang/CharSequence; = null

.field protected static final DELAY_TIME_WAIT_DATA_INIT:I = 0x64

.field public static final DELETED_INDEX:Ljava/lang/String; = "deleted_index"

.field protected static final DELETE_ID:I = 0x5

.field private static final GMT:Ljava/lang/String; = "GMT"

.field protected static HOME:Ljava/lang/String; = null

.field protected static HOME_POSITION:I = 0x0

.field protected static final HOME_SETTINGS_ID:I = 0x3

.field public static final HOURS_1:I = 0x36ee80

.field public static final MAX_CITY_COUNT:I = 0xf

.field protected static MONTH:[Ljava/lang/CharSequence; = null

.field protected static final REARRANGE_ID:I = 0x4

.field protected static final REQUEST_ADD_TIMEZONE:I = 0x1

.field protected static final REQUEST_CURRENT_SETTINGS:I = 0x5

.field protected static final REQUEST_DEL:I = 0x8

.field protected static final REQUEST_DELETE_TIMEZONE:I = 0x2

.field protected static final REQUEST_HOME_TIMEZONE:I = 0x4

.field protected static final REQUEST_REARRANGE:I = 0x7

.field protected static final REQUEST_REARRANGE_TIMEZONE:I = 0x3

.field public static final SEARCH_FOR_ADD:I = 0x1

.field public static final SEARCH_FOR_HOME_SETTINGS:I = 0x2

.field public static final SEARCH_INTENTION:Ljava/lang/String; = "search_intention"

.field protected static TODAY:Ljava/lang/String;

.field protected static TOMORROW:Ljava/lang/String;

.field protected static YESTERDAY:Ljava/lang/String;


# instance fields
.field private final NONUI_ACTION_CITY:I

.field private final NONUI_ACTION_TIMETICK:I

.field private final UI_ACTION_CITY:I

.field private final UI_ACTION_ENTER_ADD_CITY:I

.field private final UI_ACTION_TIMETICK:I

.field private final WHAT_ON_CITY_UPDATE:I

.field private final WHAT_ON_INIT:I

.field private final WHAT_ON_NONUI_ACTION:I

.field private final WHAT_ON_UI_ACTION:I

.field private m24HourMode:Z

.field protected mChildMode:Z

.field protected mCityChangeObserver:Lcom/htc/android/worldclock/WorldClock$CityChangeObserver;

.field private mCityChanged:Z

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mCurrentDay:I

.field protected mFormatChangeObserver:Lcom/htc/android/worldclock/WorldClock$FormatChangeObserver;

.field private mHandler:Landroid/os/Handler;

.field protected mHandlerThread:Landroid/os/HandlerThread;

.field protected mHeaderView:Landroid/view/View;

.field protected mIntentReceiver:Lcom/htc/android/worldclock/WorldClock$IntentReceiver;

.field private mIsDataReady:Z

.field protected mIsRegistered:Z

.field protected mListView:Lcom/htc/widget/HtcListView;

.field protected mLooper:Landroid/os/Looper;

.field private mMinuteTask:Lcom/htc/android/worldclock/WorldClock$MinuteTask;

.field private mMinuteTimer:Ljava/util/Timer;

.field private mNetworkTimeZoneCity:Ljava/lang/String;

.field private mNetworkTimeZoneId:Ljava/lang/String;

.field protected mStationarySize:I

.field private mStopped:Z

.field private mTabCallback:Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;

.field private mTimeChanged:Z

.field protected mTimeZone:Ljava/util/TimeZone;

.field private final mUIHandler:Landroid/os/Handler;

.field protected mWorldClockAdapter:Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;

.field public myList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/worldclock/CityTime;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput v0, Lcom/htc/android/worldclock/WorldClock;->CURRENT_POSITION:I

    .line 81
    const/4 v0, 0x1

    sput v0, Lcom/htc/android/worldclock/WorldClock;->HOME_POSITION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lcom/htc/android/worldclock/CloseMenuIME;-><init>()V

    .line 98
    iput v1, p0, Lcom/htc/android/worldclock/WorldClock;->mStationarySize:I

    .line 112
    iput-boolean v1, p0, Lcom/htc/android/worldclock/WorldClock;->mIsRegistered:Z

    .line 113
    iput-boolean v1, p0, Lcom/htc/android/worldclock/WorldClock;->mChildMode:Z

    .line 115
    iput-object v2, p0, Lcom/htc/android/worldclock/WorldClock;->mHandlerThread:Landroid/os/HandlerThread;

    .line 116
    iput-object v2, p0, Lcom/htc/android/worldclock/WorldClock;->mLooper:Landroid/os/Looper;

    .line 117
    iput-object v2, p0, Lcom/htc/android/worldclock/WorldClock;->mHandler:Landroid/os/Handler;

    .line 119
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/android/worldclock/WorldClock;->WHAT_ON_INIT:I

    .line 120
    const/16 v0, 0x65

    iput v0, p0, Lcom/htc/android/worldclock/WorldClock;->WHAT_ON_CITY_UPDATE:I

    .line 122
    const/16 v0, 0x6e

    iput v0, p0, Lcom/htc/android/worldclock/WorldClock;->WHAT_ON_NONUI_ACTION:I

    .line 123
    const/16 v0, 0x6f

    iput v0, p0, Lcom/htc/android/worldclock/WorldClock;->NONUI_ACTION_CITY:I

    .line 124
    const/16 v0, 0x70

    iput v0, p0, Lcom/htc/android/worldclock/WorldClock;->NONUI_ACTION_TIMETICK:I

    .line 126
    const/16 v0, 0x78

    iput v0, p0, Lcom/htc/android/worldclock/WorldClock;->WHAT_ON_UI_ACTION:I

    .line 127
    const/16 v0, 0x79

    iput v0, p0, Lcom/htc/android/worldclock/WorldClock;->UI_ACTION_CITY:I

    .line 128
    const/16 v0, 0x7a

    iput v0, p0, Lcom/htc/android/worldclock/WorldClock;->UI_ACTION_TIMETICK:I

    .line 129
    const/16 v0, 0x7b

    iput v0, p0, Lcom/htc/android/worldclock/WorldClock;->UI_ACTION_ENTER_ADD_CITY:I

    .line 135
    iput-boolean v1, p0, Lcom/htc/android/worldclock/WorldClock;->mStopped:Z

    .line 136
    iput-boolean v1, p0, Lcom/htc/android/worldclock/WorldClock;->mTimeChanged:Z

    .line 137
    iput-boolean v1, p0, Lcom/htc/android/worldclock/WorldClock;->mCityChanged:Z

    .line 138
    new-instance v0, Lcom/htc/android/worldclock/WorldClock$UIHandler;

    invoke-direct {v0, p0, v2}, Lcom/htc/android/worldclock/WorldClock$UIHandler;-><init>(Lcom/htc/android/worldclock/WorldClock;Lcom/htc/android/worldclock/WorldClock$1;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->mUIHandler:Landroid/os/Handler;

    .line 143
    iput-boolean v1, p0, Lcom/htc/android/worldclock/WorldClock;->m24HourMode:Z

    .line 144
    iput-object v2, p0, Lcom/htc/android/worldclock/WorldClock;->mIntentReceiver:Lcom/htc/android/worldclock/WorldClock$IntentReceiver;

    .line 1153
    iput-boolean v1, p0, Lcom/htc/android/worldclock/WorldClock;->mIsDataReady:Z

    .line 1155
    new-instance v0, Lcom/htc/android/worldclock/WorldClock$4;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/WorldClock$4;-><init>(Lcom/htc/android/worldclock/WorldClock;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->mTabCallback:Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/worldclock/WorldClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/android/worldclock/WorldClock;->onInitParent()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/android/worldclock/WorldClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/htc/android/worldclock/WorldClock;->m24HourMode:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/android/worldclock/WorldClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/android/worldclock/WorldClock;->refreshTime()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/android/worldclock/WorldClock;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/htc/android/worldclock/WorldClock;->sendNonUIMessage(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/android/worldclock/WorldClock;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/WorldClock;->sendNonUIMessage(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/android/worldclock/WorldClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/htc/android/worldclock/WorldClock;->mIsDataReady:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/android/worldclock/WorldClock;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/htc/android/worldclock/WorldClock;->mIsDataReady:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/android/worldclock/WorldClock;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/WorldClock;->onNonUIAction(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/worldclock/WorldClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/android/worldclock/WorldClock;->onCityUpdate()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/android/worldclock/WorldClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/htc/android/worldclock/WorldClock;->mStopped:Z

    return v0
.end method

.method static synthetic access$602(Lcom/htc/android/worldclock/WorldClock;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/htc/android/worldclock/WorldClock;->mCityChanged:Z

    return p1
.end method

.method static synthetic access$702(Lcom/htc/android/worldclock/WorldClock;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/htc/android/worldclock/WorldClock;->mTimeChanged:Z

    return p1
.end method

.method static synthetic access$800(Lcom/htc/android/worldclock/WorldClock;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/htc/android/worldclock/WorldClock;->sendUIMessage(II)V

    return-void
.end method

.method static synthetic access$900(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-static {p0}, Lcom/htc/android/worldclock/WorldClock;->getDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addCityName(Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/weather/WeatherLocation;)V
    .locals 2
    .parameter "tz"
    .parameter "id"
    .parameter "name"
    .parameter "w"

    .prologue
    .line 656
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 657
    new-instance v0, Lcom/htc/android/worldclock/CityTime;

    invoke-direct {v0}, Lcom/htc/android/worldclock/CityTime;-><init>()V

    .line 658
    .local v0, ct:Lcom/htc/android/worldclock/CityTime;
    invoke-virtual {v0, p1}, Lcom/htc/android/worldclock/CityTime;->setTimeZone(Ljava/util/TimeZone;)V

    .line 659
    invoke-virtual {v0, p2}, Lcom/htc/android/worldclock/CityTime;->setCityId(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v0, p3}, Lcom/htc/android/worldclock/CityTime;->setCityName(Ljava/lang/String;)V

    .line 661
    invoke-virtual {v0, p4}, Lcom/htc/android/worldclock/CityTime;->setWeatherLocation(Lcom/htc/util/weather/WeatherLocation;)V

    .line 662
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 663
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    :cond_0
    return-void
.end method

.method private checkCityAndTimeChange()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 882
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 883
    iget-boolean v0, p0, Lcom/htc/android/worldclock/WorldClock;->mChildMode:Z

    if-eqz v0, :cond_1

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 886
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkCityAndTimeChange,mCityChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/android/worldclock/WorldClock;->mCityChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimeChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/android/worldclock/WorldClock;->mTimeChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 888
    iget-boolean v0, p0, Lcom/htc/android/worldclock/WorldClock;->mCityChanged:Z

    if-eqz v0, :cond_2

    .line 889
    iput-boolean v2, p0, Lcom/htc/android/worldclock/WorldClock;->mCityChanged:Z

    .line 890
    iput-boolean v2, p0, Lcom/htc/android/worldclock/WorldClock;->mTimeChanged:Z

    .line 892
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->mWorldClockAdapter:Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;

    if-eqz v0, :cond_0

    .line 893
    const/16 v0, 0x6f

    invoke-direct {p0, v0}, Lcom/htc/android/worldclock/WorldClock;->sendNonUIMessage(I)V

    goto :goto_0

    .line 895
    :cond_2
    iget-boolean v0, p0, Lcom/htc/android/worldclock/WorldClock;->mTimeChanged:Z

    if-eqz v0, :cond_0

    .line 896
    iput-boolean v2, p0, Lcom/htc/android/worldclock/WorldClock;->mTimeChanged:Z

    .line 897
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->mWorldClockAdapter:Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;

    if-eqz v0, :cond_0

    .line 898
    const/16 v0, 0x70

    invoke-direct {p0, v0}, Lcom/htc/android/worldclock/WorldClock;->sendNonUIMessage(I)V

    goto :goto_0
.end method

.method private exchangeCurrentHomeTime()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 462
    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 463
    iget v2, p0, Lcom/htc/android/worldclock/WorldClock;->mStationarySize:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 464
    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/CityTime;

    .line 465
    .local v0, currentCityTime:Lcom/htc/android/worldclock/CityTime;
    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/worldclock/CityTime;

    .line 466
    .local v1, homeCityTime:Lcom/htc/android/worldclock/CityTime;
    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    .end local v0           #currentCityTime:Lcom/htc/android/worldclock/CityTime;
    .end local v1           #homeCityTime:Lcom/htc/android/worldclock/CityTime;
    :cond_0
    return-void
.end method

.method private formatOffset(I)[C
    .locals 6
    .parameter "off"

    .prologue
    const/4 v5, 0x3

    .line 544
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 545
    div-int/lit16 v3, p1, 0x3e8

    div-int/lit8 p1, v3, 0x3c

    .line 547
    const/16 v3, 0x9

    new-array v0, v3, [C

    .line 548
    .local v0, buf:[C
    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v0, v3

    .line 549
    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v0, v3

    .line 550
    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v0, v3

    .line 552
    if-gez p1, :cond_0

    .line 553
    const/16 v3, 0x2d

    aput-char v3, v0, v5

    .line 554
    neg-int p1, p1

    .line 559
    :goto_0
    div-int/lit8 v1, p1, 0x3c

    .line 560
    .local v1, hours:I
    rem-int/lit8 v2, p1, 0x3c

    .line 562
    .local v2, minutes:I
    const/4 v3, 0x4

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 563
    const/4 v3, 0x5

    rem-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 565
    const/4 v3, 0x6

    const/16 v4, 0x3a

    aput-char v4, v0, v3

    .line 567
    const/4 v3, 0x7

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 568
    const/16 v3, 0x8

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 570
    return-object v0

    .line 556
    .end local v1           #hours:I
    .end local v2           #minutes:I
    :cond_0
    const/16 v3, 0x2b

    aput-char v3, v0, v5

    goto :goto_0
.end method

.method private static getDateFormat(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "ctx"

    .prologue
    .line 792
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 793
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNetworkTimeZoneCity()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 281
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 283
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.htc.htclocationservice"

    invoke-static {v3, v4}, Lcom/htc/util/weather/WeatherUtility;->loadLocationsForWorldClock(Landroid/content/ContentResolver;Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v1

    .line 284
    .local v1, locs:[Lcom/htc/util/weather/WeatherLocation;
    array-length v3, v1

    if-eqz v3, :cond_1

    .line 285
    aget-object v3, v1, v5

    invoke-virtual {v3}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, name:Ljava/lang/String;
    aget-object v3, v1, v5

    invoke-virtual {v3}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, id:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 288
    iput-object v2, p0, Lcom/htc/android/worldclock/WorldClock;->mNetworkTimeZoneCity:Ljava/lang/String;

    .line 290
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    iput-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->mNetworkTimeZoneId:Ljava/lang/String;

    .line 294
    .end local v0           #id:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private getTimeZoneName(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 4
    .parameter "tz"

    .prologue
    .line 535
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 536
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    .line 537
    .local v0, daylight:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    :goto_0
    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/htc/android/worldclock/WorldClock;->formatOffset(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 538
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initHandler()V
    .locals 3

    .prologue
    .line 204
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 205
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WorldClock"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->mHandlerThread:Landroid/os/HandlerThread;

    .line 206
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 207
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->mLooper:Landroid/os/Looper;

    .line 208
    new-instance v0, Lcom/htc/android/worldclock/WorldClock$2;

    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/htc/android/worldclock/WorldClock$2;-><init>(Lcom/htc/android/worldclock/WorldClock;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->mHandler:Landroid/os/Handler;

    .line 230
    return-void
.end method

.method private initRegister()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 254
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 256
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClock;->needRegister()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 257
    new-instance v1, Lcom/htc/android/worldclock/WorldClock$CityChangeObserver;

    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClock;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/htc/android/worldclock/WorldClock$CityChangeObserver;-><init>(Lcom/htc/android/worldclock/WorldClock;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mCityChangeObserver:Lcom/htc/android/worldclock/WorldClock$CityChangeObserver;

    .line 258
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mCityChangeObserver:Lcom/htc/android/worldclock/WorldClock$CityChangeObserver;

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/consts/WeatherConsts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/htc/android/worldclock/WorldClock;->mCityChangeObserver:Lcom/htc/android/worldclock/WorldClock$CityChangeObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 261
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/htc/android/worldclock/WorldClock;->mCityChangeObserver:Lcom/htc/android/worldclock/WorldClock$CityChangeObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 264
    sget-object v1, Lcom/htc/consts/WeatherConsts;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "location"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 265
    .local v0, uri:Landroid/net/Uri;
    const-string v1, "com.htc.htclocationservice"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClock;->mCityChangeObserver:Lcom/htc/android/worldclock/WorldClock$CityChangeObserver;

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 270
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    new-instance v1, Lcom/htc/android/worldclock/WorldClock$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/WorldClock$FormatChangeObserver;-><init>(Lcom/htc/android/worldclock/WorldClock;)V

    iput-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mFormatChangeObserver:Lcom/htc/android/worldclock/WorldClock$FormatChangeObserver;

    .line 272
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mFormatChangeObserver:Lcom/htc/android/worldclock/WorldClock$FormatChangeObserver;

    if-eqz v1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/htc/android/worldclock/WorldClock;->mFormatChangeObserver:Lcom/htc/android/worldclock/WorldClock$FormatChangeObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 276
    :cond_1
    iput-boolean v4, p0, Lcom/htc/android/worldclock/WorldClock;->mIsRegistered:Z

    .line 278
    :cond_2
    return-void
.end method

.method private onCityUpdate()V
    .locals 1

    .prologue
    .line 318
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 319
    iget-boolean v0, p0, Lcom/htc/android/worldclock/WorldClock;->mStopped:Z

    if-eqz v0, :cond_0

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/WorldClock;->mCityChanged:Z

    .line 328
    :goto_0
    return-void

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClock;->getAllDisplayTimeZone()V

    .line 326
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClock;->setCurrentDay()V

    .line 327
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClock;->updateWorldClockAdapter()V

    goto :goto_0
.end method

.method private onInitParent()V
    .locals 0

    .prologue
    .line 234
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 235
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClock;->getAllDisplayTimeZone()V

    .line 236
    return-void
.end method

.method private onNonUIAction(I)V
    .locals 1
    .parameter "message"

    .prologue
    .line 239
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 240
    packed-switch p1, :pswitch_data_0

    .line 251
    :goto_0
    return-void

    .line 242
    :pswitch_0
    const-string v0, "NONUI_ACTION_CITY"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 243
    invoke-direct {p0}, Lcom/htc/android/worldclock/WorldClock;->updateCity()V

    goto :goto_0

    .line 246
    :pswitch_1
    const-string v0, "NONUI_ACTION_TIMETICK"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 247
    invoke-direct {p0}, Lcom/htc/android/worldclock/WorldClock;->updateTimeTick()V

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private refreshTime()V
    .locals 1

    .prologue
    .line 1051
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1052
    iget-boolean v0, p0, Lcom/htc/android/worldclock/WorldClock;->mStopped:Z

    if-eqz v0, :cond_0

    .line 1053
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/WorldClock;->mTimeChanged:Z

    .line 1061
    :goto_0
    return-void

    .line 1056
    :cond_0
    const-string v0, "refreshTime +"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 1057
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->mWorldClockAdapter:Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;

    if-eqz v0, :cond_1

    .line 1058
    const/16 v0, 0x70

    invoke-direct {p0, v0}, Lcom/htc/android/worldclock/WorldClock;->sendNonUIMessage(I)V

    .line 1060
    :cond_1
    const-string v0, "refreshTime -"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendNonUIMessage(I)V
    .locals 1
    .parameter "message"

    .prologue
    .line 1114
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/worldclock/WorldClock;->sendNonUIMessage(II)V

    .line 1116
    return-void
.end method

.method private sendNonUIMessage(II)V
    .locals 4
    .parameter "message"
    .parameter "delay"

    .prologue
    const/16 v2, 0x6e

    .line 1119
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1120
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1121
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 1122
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1124
    const/16 v1, 0x6f

    if-ne p1, v1, :cond_0

    .line 1125
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1127
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1131
    :goto_0
    return-void

    .line 1129
    :cond_0
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private sendUIMessage(I)V
    .locals 1
    .parameter "message"

    .prologue
    .line 352
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/worldclock/WorldClock;->sendUIMessage(II)V

    .line 353
    return-void
.end method

.method private sendUIMessage(II)V
    .locals 4
    .parameter "message"
    .parameter "delay"

    .prologue
    .line 343
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 344
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 345
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x78

    iput v1, v0, Landroid/os/Message;->what:I

    .line 346
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 347
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mUIHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 348
    const-string v1, "mUIHandler sendMessageDelayed done"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method private unInitRegister()V
    .locals 3

    .prologue
    .line 980
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 981
    iget-boolean v1, p0, Lcom/htc/android/worldclock/WorldClock;->mIsRegistered:Z

    if-eqz v1, :cond_3

    .line 983
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mIntentReceiver:Lcom/htc/android/worldclock/WorldClock$IntentReceiver;

    if-eqz v1, :cond_0

    .line 984
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mIntentReceiver:Lcom/htc/android/worldclock/WorldClock$IntentReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/WorldClock;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 985
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mIntentReceiver:Lcom/htc/android/worldclock/WorldClock$IntentReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mCityChangeObserver:Lcom/htc/android/worldclock/WorldClock$CityChangeObserver;

    if-eqz v1, :cond_1

    .line 992
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClock;->mCityChangeObserver:Lcom/htc/android/worldclock/WorldClock$CityChangeObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 995
    :cond_1
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mFormatChangeObserver:Lcom/htc/android/worldclock/WorldClock$FormatChangeObserver;

    if-eqz v1, :cond_2

    .line 996
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClock;->mFormatChangeObserver:Lcom/htc/android/worldclock/WorldClock$FormatChangeObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 998
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/worldclock/WorldClock;->mIsRegistered:Z

    .line 1000
    :cond_3
    return-void

    .line 987
    :catch_0
    move-exception v0

    .line 988
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "not registered"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateCity()V
    .locals 2

    .prologue
    .line 307
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 308
    const-string v0, "updateCity"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 310
    return-void
.end method

.method private updateTimeTick()V
    .locals 1

    .prologue
    .line 331
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 332
    iget-boolean v0, p0, Lcom/htc/android/worldclock/WorldClock;->mStopped:Z

    if-eqz v0, :cond_0

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/WorldClock;->mTimeChanged:Z

    .line 340
    :goto_0
    return-void

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClock;->setCurrentDay()V

    .line 339
    const/16 v0, 0x7a

    invoke-direct {p0, v0}, Lcom/htc/android/worldclock/WorldClock;->sendUIMessage(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getAllDisplayTimeZone()V
    .locals 10

    .prologue
    .line 424
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 425
    invoke-direct {p0}, Lcom/htc/android/worldclock/WorldClock;->getNetworkTimeZoneCity()V

    .line 427
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClock;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/util/weather/WeatherUtility;->loadLocationsForWorldClock(Landroid/content/ContentResolver;Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v7

    .line 428
    .local v7, w:[Lcom/htc/util/weather/WeatherLocation;
    if-eqz v7, :cond_3

    .line 430
    iget-object v8, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    .line 431
    iget-object v8, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 436
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClock;->setCurrentHomeTime()V

    .line 437
    sget-boolean v8, Lcom/htc/android/worldclock/Global;->CT_SKU:Z

    if-eqz v8, :cond_0

    .line 439
    invoke-direct {p0}, Lcom/htc/android/worldclock/WorldClock;->exchangeCurrentHomeTime()V

    .line 441
    :cond_0
    array-length v4, v7

    .line 443
    .local v4, length:I
    const/4 v3, 0x0

    .line 444
    .local v3, id:Ljava/lang/String;
    const/4 v5, 0x0

    .line 445
    .local v5, name:Ljava/lang/String;
    const/4 v0, 0x0

    .line 447
    .local v0, code:Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 448
    .local v1, codeSet:Ljava/util/Set;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 449
    aget-object v8, v7, v2

    invoke-virtual {v8}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 450
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 451
    aget-object v8, v7, v2

    invoke-virtual {v8}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v3

    .line 452
    aget-object v8, v7, v2

    invoke-virtual {v8}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v5

    .line 453
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 454
    .local v6, tz:Ljava/util/TimeZone;
    aget-object v8, v7, v2

    invoke-direct {p0, v6, v3, v5, v8}, Lcom/htc/android/worldclock/WorldClock;->addCityName(Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/weather/WeatherLocation;)V

    .line 455
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 448
    .end local v6           #tz:Ljava/util/TimeZone;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 433
    .end local v0           #code:Ljava/lang/String;
    .end local v1           #codeSet:Ljava/util/Set;
    .end local v2           #i:I
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #length:I
    .end local v5           #name:Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    goto :goto_0

    .line 459
    :cond_3
    return-void
.end method

.method protected needRegister()Z
    .locals 1

    .prologue
    .line 1170
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1171
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0x7b

    .line 411
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 413
    iget-boolean v0, p0, Lcom/htc/android/worldclock/WorldClock;->mIsDataReady:Z

    if-eqz v0, :cond_0

    .line 414
    invoke-direct {p0, v1}, Lcom/htc/android/worldclock/WorldClock;->sendUIMessage(I)V

    .line 418
    :goto_0
    return-void

    .line 416
    :cond_0
    const/16 v0, 0x64

    invoke-direct {p0, v1, v0}, Lcom/htc/android/worldclock/WorldClock;->sendUIMessage(II)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 148
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 149
    invoke-super {p0, p1}, Lcom/htc/android/worldclock/CloseMenuIME;->onCreate(Landroid/os/Bundle;)V

    .line 151
    const v6, 0x7f03001e

    invoke-virtual {p0, v6}, Lcom/htc/android/worldclock/WorldClock;->setContentView(I)V

    .line 152
    iget-boolean v6, p0, Lcom/htc/android/worldclock/WorldClock;->mChildMode:Z

    if-nez v6, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClock;->getParent()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/htc/android/worldclock/WorldClockTabControl;

    invoke-virtual {v6}, Lcom/htc/android/worldclock/WorldClockTabControl;->initBackground()V

    .line 156
    :cond_0
    const v6, 0x7f0b0006

    invoke-virtual {p0, v6}, Lcom/htc/android/worldclock/WorldClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarText;

    .line 157
    .local v1, headerText:Lcom/htc/widget/HeaderBarText;
    const v6, 0x7f08002b

    invoke-virtual {v1, v6}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 158
    invoke-virtual {v1, v7}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 159
    const v6, 0x7f0b0007

    invoke-virtual {p0, v6}, Lcom/htc/android/worldclock/WorldClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    .line 160
    .local v0, headerBarAddImage:Lcom/htc/widget/HeaderBarImage;
    invoke-virtual {v0, v9}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 161
    const v6, 0x7f08008b

    invoke-virtual {v0, v6}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 162
    const v6, 0x208087b

    invoke-virtual {v0, v6}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 163
    invoke-virtual {v0, p0}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-virtual {v0, v7}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 166
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClock;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 168
    .local v4, res:Landroid/content/res/Resources;
    const v6, 0x7f080033

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/htc/android/worldclock/WorldClock;->CURRENT:Ljava/lang/String;

    .line 169
    const v6, 0x7f080015

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/htc/android/worldclock/WorldClock;->HOME:Ljava/lang/String;

    .line 170
    const v6, 0x7f080030

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/htc/android/worldclock/WorldClock;->TODAY:Ljava/lang/String;

    .line 171
    const v6, 0x7f080032

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/htc/android/worldclock/WorldClock;->TOMORROW:Ljava/lang/String;

    .line 172
    const v6, 0x7f080031

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/htc/android/worldclock/WorldClock;->YESTERDAY:Ljava/lang/String;

    .line 173
    const v6, 0x7f090002

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    sput-object v6, Lcom/htc/android/worldclock/WorldClock;->MONTH:[Ljava/lang/CharSequence;

    .line 174
    new-array v6, v10, [Ljava/lang/CharSequence;

    sput-object v6, Lcom/htc/android/worldclock/WorldClock;->DAYOFWEEK:[Ljava/lang/CharSequence;

    .line 175
    const/high16 v6, 0x7f09

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    .line 176
    .local v5, tempDay:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v6, 0x5

    if-gt v2, v6, :cond_1

    .line 177
    sget-object v6, Lcom/htc/android/worldclock/WorldClock;->DAYOFWEEK:[Ljava/lang/CharSequence;

    add-int/lit8 v7, v2, 0x2

    aget-object v8, v5, v2

    aput-object v8, v6, v7

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    :cond_1
    sget-object v6, Lcom/htc/android/worldclock/WorldClock;->DAYOFWEEK:[Ljava/lang/CharSequence;

    const/4 v7, 0x6

    aget-object v7, v5, v7

    aput-object v7, v6, v9

    .line 181
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/worldclock/WorldClock;->mContentResolver:Landroid/content/ContentResolver;

    .line 183
    const v6, 0x102000a

    invoke-virtual {p0, v6}, Lcom/htc/android/worldclock/WorldClock;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcListView;

    iput-object v6, p0, Lcom/htc/android/worldclock/WorldClock;->mListView:Lcom/htc/widget/HtcListView;

    .line 185
    new-instance v6, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;

    iget-object v7, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-direct {v6, p0, v7}, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;-><init>(Lcom/htc/android/worldclock/WorldClock;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/htc/android/worldclock/WorldClock;->mWorldClockAdapter:Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;

    .line 186
    iget-object v6, p0, Lcom/htc/android/worldclock/WorldClock;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v7, p0, Lcom/htc/android/worldclock/WorldClock;->mWorldClockAdapter:Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 187
    iget-object v6, p0, Lcom/htc/android/worldclock/WorldClock;->mListView:Lcom/htc/widget/HtcListView;

    new-instance v7, Lcom/htc/android/worldclock/WorldClock$1;

    invoke-direct {v7, p0}, Lcom/htc/android/worldclock/WorldClock$1;-><init>(Lcom/htc/android/worldclock/WorldClock;)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 196
    const v6, 0x7f0b001e

    invoke-virtual {p0, v6}, Lcom/htc/android/worldclock/WorldClock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 197
    .local v3, ll:Landroid/view/View;
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 199
    invoke-direct {p0}, Lcom/htc/android/worldclock/WorldClock;->initHandler()V

    .line 200
    iget-object v6, p0, Lcom/htc/android/worldclock/WorldClock;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 201
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 1135
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1136
    packed-switch p1, :pswitch_data_0

    .line 1149
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1138
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08006d

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/WorldClock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08006e

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/WorldClock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080016

    new-instance v2, Lcom/htc/android/worldclock/WorldClock$3;

    invoke-direct {v2, p0}, Lcom/htc/android/worldclock/WorldClock$3;-><init>(Lcom/htc/android/worldclock/WorldClock;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 821
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 822
    invoke-super {p0, p1}, Lcom/htc/android/worldclock/CloseMenuIME;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 824
    const v1, 0x7f08002c

    invoke-interface {p1, v4, v5, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 825
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x208031d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 826
    const/4 v1, 0x2

    const v2, 0x7f080039

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 827
    const v1, 0x2080a28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 828
    const/4 v1, 0x3

    const v2, 0x7f080038

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 829
    const v1, 0x2080a1b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 830
    const/4 v1, 0x7

    const/4 v2, 0x4

    const v3, 0x7f080037

    invoke-interface {p1, v1, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 831
    const v1, 0x2080324

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 833
    return v5
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1004
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1005
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1006
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1009
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1010
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1012
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1016
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/worldclock/WorldClock;->unInitRegister()V

    .line 1018
    iput-object v2, p0, Lcom/htc/android/worldclock/WorldClock;->mContentResolver:Landroid/content/ContentResolver;

    .line 1019
    iput-object v2, p0, Lcom/htc/android/worldclock/WorldClock;->mCityChangeObserver:Lcom/htc/android/worldclock/WorldClock$CityChangeObserver;

    .line 1020
    iput-object v2, p0, Lcom/htc/android/worldclock/WorldClock;->mFormatChangeObserver:Lcom/htc/android/worldclock/WorldClock$FormatChangeObserver;

    .line 1021
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->mWorldClockAdapter:Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;->onDestroy()V

    .line 1022
    iput-object v2, p0, Lcom/htc/android/worldclock/WorldClock;->mWorldClockAdapter:Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;

    .line 1023
    iput-object v2, p0, Lcom/htc/android/worldclock/WorldClock;->mTimeZone:Ljava/util/TimeZone;

    .line 1024
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1025
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1026
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1027
    iput-object v2, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    .line 1030
    :cond_1
    invoke-super {p0}, Lcom/htc/android/worldclock/CloseMenuIME;->onDestroy()V

    .line 1031
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1032
    return-void
.end method

.method protected onInitChild()V
    .locals 2

    .prologue
    .line 298
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 299
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClock;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/WorldClockTabControl;

    .line 300
    .local v0, tabs:Lcom/htc/android/worldclock/WorldClockTabControl;
    if-eqz v0, :cond_0

    .line 301
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mTabCallback:Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/WorldClockTabControl;->setTabCallback(Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;)V

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClock;->updateWorldClockAdapter()V

    .line 304
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 838
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 840
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 841
    .local v1, intent:Landroid/content/Intent;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 878
    :goto_0
    return v4

    .line 843
    :pswitch_0
    const-string v2, "ANALYTIC_WorldClock"

    const-string v3, "[WorldClock]REARRANGE_ID"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    const-class v2, Lcom/htc/android/worldclock/RearrangeTimeZone;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 845
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/worldclock/WorldClock;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 848
    :pswitch_1
    const-string v2, "ANALYTIC_WorldClock"

    const-string v3, "[WorldClock]ADD_CITY_ID"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/htc/android/worldclock/WorldClock;->mStationarySize:I

    sub-int/2addr v2, v3

    const/16 v3, 0xf

    if-lt v2, v3, :cond_1

    .line 850
    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/android/worldclock/WorldClock;->showDialog(I)V

    goto :goto_0

    .line 852
    :cond_1
    const-class v2, Lcom/htc/android/worldclock/TimeZonePicker;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 853
    const-string v2, "search_intention"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 854
    invoke-virtual {p0, v1, v4}, Lcom/htc/android/worldclock/WorldClock;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 858
    :pswitch_2
    const-string v2, "ANALYTIC_WorldClock"

    const-string v3, "[WorldClock]HOME_SETTINGS_ID"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const-class v2, Lcom/htc/android/worldclock/TimeZonePicker;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 860
    const-string v2, "search_intention"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 861
    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/worldclock/WorldClock;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 864
    :pswitch_3
    const-string v2, "ANALYTIC_WorldClock"

    const-string v3, "[WorldClock]CURRENT_SETTINGS_ID"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :try_start_0
    const-string v2, "android.settings.DATE_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 867
    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/worldclock/WorldClock;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 868
    :catch_0
    move-exception v0

    .line 869
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DateTimeSettings is not found"

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 873
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_4
    const-string v2, "ANALYTIC_WorldClock"

    const-string v3, "[WorldClock]DELETE_ID"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const-class v2, Lcom/htc/android/worldclock/DeleteTimeZone;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 875
    invoke-virtual {p0, v1, v5}, Lcom/htc/android/worldclock/WorldClock;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 841
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 942
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 943
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/worldclock/WorldClock;->mStopped:Z

    .line 944
    invoke-static {}, Lcom/htc/android/worldclock/ToastMaster;->cancelToast()V

    .line 947
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mIntentReceiver:Lcom/htc/android/worldclock/WorldClock$IntentReceiver;

    if-eqz v1, :cond_0

    .line 948
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mIntentReceiver:Lcom/htc/android/worldclock/WorldClock$IntentReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/WorldClock;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 949
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mIntentReceiver:Lcom/htc/android/worldclock/WorldClock$IntentReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mMinuteTask:Lcom/htc/android/worldclock/WorldClock$MinuteTask;

    invoke-virtual {v1}, Lcom/htc/android/worldclock/WorldClock$MinuteTask;->cancel()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 959
    :goto_1
    iput-object v2, p0, Lcom/htc/android/worldclock/WorldClock;->mMinuteTask:Lcom/htc/android/worldclock/WorldClock$MinuteTask;

    .line 962
    :try_start_2
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mMinuteTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 965
    :goto_2
    iput-object v2, p0, Lcom/htc/android/worldclock/WorldClock;->mMinuteTimer:Ljava/util/Timer;

    .line 967
    invoke-super {p0}, Lcom/htc/android/worldclock/CloseMenuIME;->onPause()V

    .line 968
    return-void

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "not registered"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 963
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_2

    .line 957
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x7

    const/4 v0, 0x0

    .line 799
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 801
    iget-boolean v1, p0, Lcom/htc/android/worldclock/WorldClock;->mIsDataReady:Z

    if-nez v1, :cond_0

    .line 816
    :goto_0
    return v0

    .line 805
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStationarySize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/worldclock/WorldClock;->mStationarySize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 806
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "myList.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 810
    :cond_1
    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/htc/android/worldclock/WorldClock;->mStationarySize:I

    sub-int/2addr v1, v2

    if-gtz v1, :cond_3

    .line 811
    :cond_2
    invoke-interface {p1, v3, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 816
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/android/worldclock/CloseMenuIME;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0

    .line 813
    :cond_3
    const/4 v0, 0x1

    invoke-interface {p1, v3, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const-wide/32 v8, 0xea60

    const/4 v1, 0x0

    .line 912
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 913
    invoke-super {p0}, Lcom/htc/android/worldclock/CloseMenuIME;->onResume()V

    .line 914
    invoke-static {p0}, Lcom/htc/android/worldclock/HtcStorageChecker;->checkStorageFull(Landroid/app/Activity;)V

    .line 917
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->mIntentReceiver:Lcom/htc/android/worldclock/WorldClock$IntentReceiver;

    if-nez v0, :cond_0

    .line 918
    new-instance v0, Lcom/htc/android/worldclock/WorldClock$IntentReceiver;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/WorldClock$IntentReceiver;-><init>(Lcom/htc/android/worldclock/WorldClock;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->mIntentReceiver:Lcom/htc/android/worldclock/WorldClock$IntentReceiver;

    .line 919
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 920
    .local v7, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 921
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->mIntentReceiver:Lcom/htc/android/worldclock/WorldClock$IntentReceiver;

    invoke-virtual {p0, v0, v7, v1, v1}, Lcom/htc/android/worldclock/WorldClock;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 925
    .end local v7           #filter:Landroid/content/IntentFilter;
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->mMinuteTimer:Ljava/util/Timer;

    .line 926
    new-instance v0, Lcom/htc/android/worldclock/WorldClock$MinuteTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/android/worldclock/WorldClock$MinuteTask;-><init>(Lcom/htc/android/worldclock/WorldClock;Lcom/htc/android/worldclock/WorldClock$1;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->mMinuteTask:Lcom/htc/android/worldclock/WorldClock$MinuteTask;

    .line 927
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock;->mMinuteTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/htc/android/worldclock/WorldClock;->mMinuteTask:Lcom/htc/android/worldclock/WorldClock$MinuteTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    rem-long/2addr v2, v4

    sub-long v2, v8, v2

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/WorldClock;->mTimeChanged:Z

    .line 936
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/worldclock/WorldClock;->mStopped:Z

    .line 937
    invoke-direct {p0}, Lcom/htc/android/worldclock/WorldClock;->checkCityAndTimeChange()V

    .line 938
    return-void

    .line 931
    :catch_0
    move-exception v6

    .line 932
    .local v6, e:Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initialiaze timer fail,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 905
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 906
    invoke-super {p0}, Lcom/htc/android/worldclock/CloseMenuIME;->onStart()V

    .line 907
    invoke-direct {p0}, Lcom/htc/android/worldclock/WorldClock;->initRegister()V

    .line 908
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 972
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 973
    iput-boolean v0, p0, Lcom/htc/android/worldclock/WorldClock;->mStopped:Z

    .line 974
    invoke-direct {p0}, Lcom/htc/android/worldclock/WorldClock;->unInitRegister()V

    .line 975
    iput-boolean v0, p0, Lcom/htc/android/worldclock/WorldClock;->mCityChanged:Z

    .line 976
    invoke-super {p0}, Lcom/htc/android/worldclock/CloseMenuIME;->onStop()V

    .line 977
    return-void
.end method

.method protected queryTimeZoneName(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "timezoneId"

    .prologue
    .line 580
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timezoneId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 582
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v11, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 583
    .local v11, systemLocale:Ljava/util/Locale;
    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    .line 584
    .local v10, systemLang:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    .line 585
    .local v9, systemCountry:Ljava/lang/String;
    const-string v0, "zh"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    const-string v0, "CN"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 587
    const-string v10, "zh"

    .line 597
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 600
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/worldclock/CityInfo$LocationColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 606
    :goto_1
    const/4 v12, 0x0

    .line 608
    .local v12, timeZoneName:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 609
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 610
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 611
    .local v8, index:I
    if-gez v8, :cond_1

    const-string v0, "en"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 613
    :cond_1
    if-ltz v8, :cond_2

    .line 614
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 619
    .end local v8           #index:I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 620
    const/4 v6, 0x0

    .line 624
    :cond_3
    if-nez v12, :cond_4

    .line 625
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v13

    .line 626
    .local v13, tz:Ljava/util/TimeZone;
    invoke-virtual {v13}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    .line 628
    .end local v13           #tz:Ljava/util/TimeZone;
    :cond_4
    return-object v12

    .line 588
    .end local v6           #c:Landroid/database/Cursor;
    .end local v12           #timeZoneName:Ljava/lang/String;
    :cond_5
    const-string v0, "TW"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 589
    const-string v10, "zhTW"

    goto :goto_0

    .line 590
    :cond_6
    const-string v0, "HK"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 591
    const-string v10, "zhTW"

    goto :goto_0

    .line 592
    :cond_7
    const-string v0, "SG"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    const-string v10, "zh"

    goto :goto_0

    .line 602
    .restart local v6       #c:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 603
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "queryTimeZoneName fail"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected setCurrentDay()V
    .locals 2

    .prologue
    .line 1035
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1036
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1037
    .local v0, calNow:Ljava/util/Calendar;
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/worldclock/WorldClock;->mCurrentDay:I

    .line 1038
    invoke-static {p0}, Lcom/htc/android/worldclock/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/worldclock/WorldClock;->m24HourMode:Z

    .line 1039
    return-void
.end method

.method protected setCurrentHomeTime()V
    .locals 13

    .prologue
    .line 476
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 477
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClock;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".home"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/util/weather/WeatherUtility;->loadLocationsForWorldClock(Landroid/content/ContentResolver;Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v8

    .line 478
    .local v8, w:[Lcom/htc/util/weather/WeatherLocation;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 479
    .local v0, calNow:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v7

    .line 480
    .local v7, tzNow:Ljava/util/TimeZone;
    iput-object v7, p0, Lcom/htc/android/worldclock/WorldClock;->mTimeZone:Ljava/util/TimeZone;

    .line 481
    const/4 v9, 0x7

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lcom/htc/android/worldclock/WorldClock;->mCurrentDay:I

    .line 484
    iget-object v9, p0, Lcom/htc/android/worldclock/WorldClock;->mNetworkTimeZoneCity:Ljava/lang/String;

    if-eqz v9, :cond_1

    const/4 v2, 0x1

    .line 486
    .local v2, locationExist:Z
    :goto_0
    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    .line 487
    .local v5, systemTimeZoneId:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/htc/android/worldclock/WorldClock;->queryTimeZoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 489
    .local v4, systemTimeZoneCityName:Ljava/lang/String;
    const/4 v9, 0x1

    iput v9, p0, Lcom/htc/android/worldclock/WorldClock;->mStationarySize:I

    .line 490
    if-eqz v8, :cond_6

    array-length v9, v8

    if-lez v9, :cond_6

    .line 492
    const/4 v9, 0x0

    aget-object v9, v8, v9

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, idHome:Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v8, v9

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v3

    .line 494
    .local v3, nameHome:Ljava/lang/String;
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 496
    .local v6, tzHome:Ljava/util/TimeZone;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 497
    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/WorldClock;->queryTimeZoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 498
    const-string v9, "Case : has home setting from OOBE but no city name found"

    invoke-static {v9}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 501
    :cond_0
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-nez v2, :cond_2

    .line 504
    invoke-virtual {p0, v6, v3}, Lcom/htc/android/worldclock/WorldClock;->setHomeTime(Ljava/util/TimeZone;Ljava/lang/String;)V

    .line 505
    const-string v9, "Case : has home record, and equals system"

    invoke-static {v9}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 532
    .end local v1           #idHome:Ljava/lang/String;
    .end local v3           #nameHome:Ljava/lang/String;
    .end local v6           #tzHome:Ljava/util/TimeZone;
    :goto_1
    return-void

    .line 484
    .end local v2           #locationExist:Z
    .end local v4           #systemTimeZoneCityName:Ljava/lang/String;
    .end local v5           #systemTimeZoneId:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 508
    .restart local v1       #idHome:Ljava/lang/String;
    .restart local v2       #locationExist:Z
    .restart local v3       #nameHome:Ljava/lang/String;
    .restart local v4       #systemTimeZoneCityName:Ljava/lang/String;
    .restart local v5       #systemTimeZoneId:Ljava/lang/String;
    .restart local v6       #tzHome:Ljava/util/TimeZone;
    :cond_2
    if-eqz v2, :cond_5

    .line 509
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClock;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/android/worldclock/DeskClock;->isUseWirelessNetworks(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 510
    iget-object v9, p0, Lcom/htc/android/worldclock/WorldClock;->mNetworkTimeZoneId:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 511
    iget-object v9, p0, Lcom/htc/android/worldclock/WorldClock;->mNetworkTimeZoneId:Ljava/lang/String;

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/worldclock/WorldClock;->mNetworkTimeZoneCity:Ljava/lang/String;

    sget-object v11, Lcom/htc/android/worldclock/WorldClock;->CURRENT:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/htc/android/worldclock/WorldClock;->addCityName(Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/weather/WeatherLocation;)V

    .line 515
    :goto_2
    const/4 v9, 0x2

    iput v9, p0, Lcom/htc/android/worldclock/WorldClock;->mStationarySize:I

    .line 524
    :cond_3
    :goto_3
    invoke-virtual {p0, v6, v3}, Lcom/htc/android/worldclock/WorldClock;->setHomeTime(Ljava/util/TimeZone;Ljava/lang/String;)V

    .line 525
    const-string v9, "Case : has home record, but diff from current"

    invoke-static {v9}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 513
    :cond_4
    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/worldclock/WorldClock;->mNetworkTimeZoneCity:Ljava/lang/String;

    sget-object v11, Lcom/htc/android/worldclock/WorldClock;->CURRENT:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/htc/android/worldclock/WorldClock;->addCityName(Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/weather/WeatherLocation;)V

    goto :goto_2

    .line 519
    :cond_5
    invoke-virtual {p0}, Lcom/htc/android/worldclock/WorldClock;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/android/worldclock/DeskClock;->isUseWirelessNetworks(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 520
    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/htc/android/worldclock/WorldClock;->queryTimeZoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/htc/android/worldclock/WorldClock;->CURRENT:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {p0, v7, v9, v10, v11}, Lcom/htc/android/worldclock/WorldClock;->addCityName(Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/weather/WeatherLocation;)V

    .line 521
    const/4 v9, 0x2

    iput v9, p0, Lcom/htc/android/worldclock/WorldClock;->mStationarySize:I

    goto :goto_3

    .line 529
    .end local v1           #idHome:Ljava/lang/String;
    .end local v3           #nameHome:Ljava/lang/String;
    .end local v6           #tzHome:Ljava/util/TimeZone;
    :cond_6
    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/htc/android/worldclock/WorldClock;->queryTimeZoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/htc/android/worldclock/WorldClock;->HOME:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {p0, v7, v9, v10, v11}, Lcom/htc/android/worldclock/WorldClock;->addCityName(Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/weather/WeatherLocation;)V

    .line 530
    const-string v9, "Case : no home record, same as current"

    invoke-static {v9}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected setHomeTime(Ljava/util/TimeZone;Ljava/lang/String;)V
    .locals 2
    .parameter "tz"
    .parameter "cityName"

    .prologue
    .line 637
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 638
    const-string v0, "GMT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/WorldClock;->getTimeZoneName(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p2

    .line 643
    :cond_0
    sget-object v0, Lcom/htc/android/worldclock/WorldClock;->HOME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/htc/android/worldclock/WorldClock;->addCityName(Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/weather/WeatherLocation;)V

    .line 644
    return-void
.end method

.method protected updateWorldClockAdapter()V
    .locals 1

    .prologue
    .line 313
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 314
    const/16 v0, 0x79

    invoke-direct {p0, v0}, Lcom/htc/android/worldclock/WorldClock;->sendUIMessage(I)V

    .line 315
    return-void
.end method
