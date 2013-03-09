.class public Lcom/htc/htccalendarwidgets/AgendaWidget;
.super Lcom/htc/android/rosie/widget/Widget$Base;
.source "AgendaWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;,
        Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DAY_IN_MINUTES:I = 0x5a0

.field private static final EVENT_SORT_ORDER:Ljava/lang/String; = "startDay ASC, allDay DESC, begin ASC"

.field public static final INDEX_ALL_DAY:I = 0x3

.field public static final INDEX_BEGIN:I = 0x7

.field public static final INDEX_COLOR:I = 0x5

.field public static final INDEX_END:I = 0x8

.field public static final INDEX_END_DAY:I = 0xb

.field public static final INDEX_END_MINUTE:I = 0xd

.field public static final INDEX_EVENT_ID:I = 0x9

.field public static final INDEX_EVENT_LOCATION:I = 0x2

.field public static final INDEX_FACEBOOK_AVATAR_LARGE:I = 0x10

.field public static final INDEX_FACEBOOK_AVATAR_SMALL:I = 0x11

.field public static final INDEX_FACEBOOK_SOURCE_ID:I = 0xe

.field public static final INDEX_FACEBOOK_TYPE:I = 0xf

.field public static final INDEX_HAS_ALARM:I = 0x4

.field public static final INDEX_RRULE:I = 0x6

.field public static final INDEX_START_DAY:I = 0xa

.field public static final INDEX_START_MINUTE:I = 0xc

.field public static final INDEX_TITLE:I = 0x1

.field public static final INSTANCES_PROJ:[Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "HTCWidget_AgendaWidget"

.field private static M10_VIEW_PATH_LAND:Ljava/lang/String; = null

.field private static M10_VIEW_PATH_PORT:Ljava/lang/String; = null

.field private static final QUERY_DAYS:I = 0x3c

.field static final UIMSG_DELAY:J = 0x5dcL

.field private static final sMSG_ADAPTER_LOAD_IMAGE:I = 0x1b5e

.field private static final sMSG_ADAPTER_LOAD_IMAGE_EVENT:I = 0x1b5f

.field private static final sMSG_BASE:I = 0x1b58

.field private static final sMSG_CHECK_TIME:I = 0x1b5d

.field private static final sMSG_CONFIGURATION_CHANGED:I = 0x1b60

.field private static final sMSG_PAUSE:I = 0x1b5a

.field private static final sMSG_QUERY_EVENT:I = 0x1b5c

.field private static final sMSG_RESUME:I = 0x1b59

.field private static final sMSG_RESUME_DELAY:I = 0x1b5b

.field private static final sUIMSG_ADAPTER_UI_UPDATE_IMAGE:I = 0x1f47

.field private static final sUIMSG_BASE:I = 0x1f40

.field private static final sUIMSG_DRAW_TODAY:I = 0x1f43

.field private static final sUIMSG_HIDE_EVENT_VIEW:I = 0x1f48

.field private static final sUIMSG_HIDE_PROGRESS:I = 0x1f45

.field private static final sUIMSG_SHOW_EVENT_VIEW:I = 0x1f42

.field private static final sUIMSG_SHOW_NO_EVENT_VIEW:I = 0x1f41

.field private static final sUIMSG_SHOW_PROGRESS:I = 0x1f44


# instance fields
.field private bNeedRefreshCalendar:Z

.field private lastTime:Landroid/text/format/Time;

.field private mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;

.field private mCalendar:Ljava/util/Calendar;

.field private mCalendarBtn:Lcom/htc/fusion/fx/controls/FxButton;

.field private mCalendarBtnListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

.field private mCurrentEventClickListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

.field private mCurrentEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field private mCurrentEventTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mCurrentEventTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mDateReceiver:Landroid/content/BroadcastReceiver;

.field private mDayTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mEventID:I

.field private mEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field private mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mInfoClickListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;",
            ">;"
        }
    .end annotation
.end field

.field private mIsShow:Z

.field private mMainEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

.field private mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mMonthTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mNextEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

.field private mNextEventClickListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;",
            ">;"
        }
    .end annotation
.end field

.field private mNextEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

.field private mNextEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field private mNextEventTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mNextEventTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mOrientation:I

.field private mOrientationCount:I

.field private mResources:Landroid/content/res/Resources;

.field private mSelectedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTime:J

.field private mStopTime:J

.field private mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mTime:Landroid/text/format/Time;

.field private mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mTomorrow:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mUiHandler:Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;

.field private mWhen:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mWidgetId:I

.field private mWidgetScene:Lcom/htc/fusion/fx/FxScene;

.field private mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

.field private mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

.field private mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

.field private m_nTiltEndFrame:I

.field private m_nTiltStartFrame:I

.field private mbEventChanged:Z

.field private mbInitialize:Z

.field private mbIsFirstOrientation:Z

.field private mbNeedCheckTime:Z

.field private mbNeedGoToToday:Z

.field private mbNoScene:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    const-class v0, Lcom/htc/htccalendarwidgets/AgendaWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/htccalendarwidgets/AgendaWidget;->$assertionsDisabled:Z

    .line 131
    sput-object v3, Lcom/htc/htccalendarwidgets/AgendaWidget;->M10_VIEW_PATH_PORT:Ljava/lang/String;

    .line 132
    sput-object v3, Lcom/htc/htccalendarwidgets/AgendaWidget;->M10_VIEW_PATH_LAND:Ljava/lang/String;

    .line 1342
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "end"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "startMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "endMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "facebook_source_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "facebook_type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "facebook_avatar_large"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "facebook_avatar_small"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/htccalendarwidgets/AgendaWidget;->INSTANCES_PROJ:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 53
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;-><init>()V

    .line 77
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mTime:Landroid/text/format/Time;

    .line 78
    iput v3, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mEventID:I

    .line 79
    iput-wide v4, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mStartTime:J

    .line 80
    iput-wide v4, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mStopTime:J

    .line 84
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mIsShow:Z

    .line 85
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mbInitialize:Z

    .line 86
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mbNeedGoToToday:Z

    .line 87
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mbNeedCheckTime:Z

    .line 88
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mbIsFirstOrientation:Z

    .line 89
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->bNeedRefreshCalendar:Z

    .line 90
    iput v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mOrientationCount:I

    .line 92
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mSelectedList:Ljava/util/ArrayList;

    .line 95
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    .line 96
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    .line 97
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;

    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCalendar:Ljava/util/Calendar;

    .line 119
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 120
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 121
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 122
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 130
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mContext:Landroid/content/Context;

    .line 134
    iput v3, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetId:I

    .line 136
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mbNoScene:Z

    .line 137
    iput v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->m_nTiltStartFrame:I

    .line 138
    iput v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->m_nTiltEndFrame:I

    .line 139
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mbEventChanged:Z

    .line 639
    new-instance v0, Lcom/htc/htccalendarwidgets/AgendaWidget$1;

    invoke-direct {v0, p0}, Lcom/htc/htccalendarwidgets/AgendaWidget$1;-><init>(Lcom/htc/htccalendarwidgets/AgendaWidget;)V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCalendarBtnListener:Lcom/htc/fusion/fx/MessageListener;

    .line 651
    new-instance v0, Lcom/htc/htccalendarwidgets/AgendaWidget$2;

    invoke-direct {v0, p0}, Lcom/htc/htccalendarwidgets/AgendaWidget$2;-><init>(Lcom/htc/htccalendarwidgets/AgendaWidget;)V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mInfoClickListener:Lcom/htc/fusion/fx/MessageListener;

    .line 671
    new-instance v0, Lcom/htc/htccalendarwidgets/AgendaWidget$3;

    invoke-direct {v0, p0}, Lcom/htc/htccalendarwidgets/AgendaWidget$3;-><init>(Lcom/htc/htccalendarwidgets/AgendaWidget;)V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventClickListener:Lcom/htc/fusion/fx/MessageListener;

    .line 687
    new-instance v0, Lcom/htc/htccalendarwidgets/AgendaWidget$4;

    invoke-direct {v0, p0}, Lcom/htc/htccalendarwidgets/AgendaWidget$4;-><init>(Lcom/htc/htccalendarwidgets/AgendaWidget;)V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventClickListener:Lcom/htc/fusion/fx/MessageListener;

    .line 762
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->lastTime:Landroid/text/format/Time;

    .line 1303
    new-instance v0, Lcom/htc/htccalendarwidgets/AgendaWidget$5;

    invoke-direct {v0, p0}, Lcom/htc/htccalendarwidgets/AgendaWidget$5;-><init>(Lcom/htc/htccalendarwidgets/AgendaWidget;)V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mDateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/htccalendarwidgets/AgendaWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mIsShow:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/htccalendarwidgets/AgendaWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mIsShow:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/htccalendarwidgets/AgendaWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mbInitialize:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/htccalendarwidgets/AgendaWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mbInitialize:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/htccalendarwidgets/AgendaWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mbIsFirstOrientation:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/htccalendarwidgets/AgendaWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mbIsFirstOrientation:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/htccalendarwidgets/AgendaWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->bNeedRefreshCalendar:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/htc/htccalendarwidgets/AgendaWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->bNeedRefreshCalendar:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/htccalendarwidgets/AgendaWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mbNeedCheckTime:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/htccalendarwidgets/AgendaWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mbNeedCheckTime:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/htccalendarwidgets/AgendaWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mbEventChanged:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/htc/htccalendarwidgets/AgendaWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mbEventChanged:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/htc/htccalendarwidgets/AgendaWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mbNeedGoToToday:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/htc/htccalendarwidgets/AgendaWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mbNeedGoToToday:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/htc/htccalendarwidgets/AgendaWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/android/rosie/widget/Widget$Host;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/htccalendarwidgets/AgendaWidget;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mSelectedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/htccalendarwidgets/AgendaWidget;Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->startQuery(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/htccalendarwidgets/AgendaWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->releaseControl()V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/htccalendarwidgets/AgendaWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->initLayout()V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/htccalendarwidgets/AgendaWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mOrientationCount:I

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mTomorrow:Lcom/htc/fusion/fx/controls/FxTextLabel;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWhen:Lcom/htc/fusion/fx/controls/FxTextLabel;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxDynamicImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/htccalendarwidgets/AgendaWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->hideLoadMessage()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/htccalendarwidgets/AgendaWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mEventID:I

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/htccalendarwidgets/AgendaWidget;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mEventID:I

    return p1
.end method

.method static synthetic access$3100(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxHitbox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mMainEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxHitbox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxHitbox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/FxTimelineControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/htccalendarwidgets/AgendaEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/htc/htccalendarwidgets/AgendaWidget;Lcom/htc/htccalendarwidgets/AgendaEvent;)Lcom/htc/htccalendarwidgets/AgendaEvent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/htc/htccalendarwidgets/AgendaWidget;Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/htc/htccalendarwidgets/AgendaWidget;->getTitle(Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/htccalendarwidgets/AgendaWidget;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/htccalendarwidgets/AgendaWidget;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$4000(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/htccalendarwidgets/AgendaWidget;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$4100(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxDynamicImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxDynamicImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/htc/htccalendarwidgets/AgendaWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->drawDate()V

    return-void
.end method

.method static synthetic access$4500(Lcom/htc/htccalendarwidgets/AgendaWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->showLoadMessages()V

    return-void
.end method

.method static synthetic access$4600(Lcom/htc/htccalendarwidgets/AgendaWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->updateUI()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/htccalendarwidgets/AgendaWidget;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mStopTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/htc/htccalendarwidgets/AgendaWidget;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mStopTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/htc/htccalendarwidgets/AgendaWidget;JJJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p6}, Lcom/htc/htccalendarwidgets/AgendaWidget;->launchEventInfoActivity(JJJ)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/android/rosie/widget/Widget$Host;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/htccalendarwidgets/AgendaWidget;Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/htccalendarwidgets/AgendaWidget;Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    return-object p1
.end method

.method private checkCloseEvent()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 902
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    if-nez v2, :cond_1

    .line 921
    :cond_0
    :goto_0
    return v1

    .line 905
    :cond_1
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    if-eqz v2, :cond_0

    .line 908
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    iget-boolean v2, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-nez v2, :cond_0

    .line 911
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    iget-wide v2, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 913
    .local v0, diffMins:I
    if-ltz v0, :cond_0

    .line 916
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    iget-object v2, v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->category_:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    sget-object v3, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    if-ne v2, v3, :cond_0

    const/16 v2, 0x78

    if-gt v0, v2, :cond_0

    .line 918
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkEventLegal(Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;I)Z
    .locals 5
    .parameter "e"
    .parameter "today"

    .prologue
    const/4 v0, 0x0

    .line 1587
    iget-boolean v1, p1, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->crossday_:Z

    if-eqz v1, :cond_1

    .line 1592
    :cond_0
    :goto_0
    return v0

    .line 1589
    :cond_1
    iget-boolean v1, p1, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-eqz v1, :cond_2

    iget-wide v1, p1, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->startday_:J

    int-to-long v3, p2

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 1592
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private convertUtcToLocal(Landroid/text/format/Time;J)J
    .locals 2
    .parameter "recycle"
    .parameter "utcTime"

    .prologue
    .line 1597
    if-nez p1, :cond_0

    .line 1598
    new-instance p1, Landroid/text/format/Time;

    .end local p1
    invoke-direct {p1}, Landroid/text/format/Time;-><init>()V

    .line 1600
    .restart local p1
    :cond_0
    const-string v0, "UTC"

    iput-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1601
    invoke-virtual {p1, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 1602
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1603
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private drawDate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 752
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 753
    .local v0, mTimeToday:Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 754
    iget v3, v0, Landroid/text/format/Time;->month:I

    const/16 v4, 0x14

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 755
    .local v1, month:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mMonthTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v3, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 756
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 757
    .local v2, today:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mDayTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 758
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mMonthTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 759
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mDayTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 760
    return-void
.end method

.method private getEventCategory(IJ)Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;
    .locals 4
    .parameter "today"
    .parameter "startDay"

    .prologue
    .line 1577
    int-to-long v0, p1

    cmp-long v0, v0, p2

    if-nez v0, :cond_0

    .line 1578
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    .line 1582
    :goto_0
    return-object v0

    .line 1579
    :cond_0
    int-to-long v0, p1

    sub-long v0, p2, v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1580
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TOMORROW:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    goto :goto_0

    .line 1582
    :cond_1
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_OTHER:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    goto :goto_0
.end method

.method private getEvents(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 14
    .parameter "c"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1491
    if-nez p1, :cond_1

    .line 1492
    const/4 v6, 0x0

    .line 1573
    :cond_0
    :goto_0
    return-object v6

    .line 1495
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 1496
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1497
    const/4 p1, 0x0

    .line 1498
    const/4 v6, 0x0

    goto :goto_0

    .line 1501
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1504
    .local v6, appointmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1506
    const/4 v11, 0x0

    .line 1507
    .local v11, start_mins:I
    const/4 v9, 0x0

    .line 1508
    .local v9, end_mins:I
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 1509
    .local v13, tnow:Landroid/text/format/Time;
    invoke-virtual {v13}, Landroid/text/format/Time;->setToNow()V

    .line 1510
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    iget-wide v2, v13, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v10

    .line 1513
    .local v10, julianDay:I
    :cond_3
    new-instance v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    invoke-direct {v8}, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;-><init>()V

    .line 1514
    .local v8, e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    long-to-int v11, v0

    .line 1515
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    long-to-int v9, v0

    .line 1516
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->id_:I

    .line 1517
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->color_:I

    .line 1518
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    .line 1519
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    .line 1521
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    .line 1523
    iget-boolean v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-eqz v0, :cond_4

    .line 1524
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 1525
    .local v12, t:Landroid/text/format/Time;
    iget-wide v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    invoke-direct {p0, v12, v0, v1}, Lcom/htc/htccalendarwidgets/AgendaWidget;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    .line 1526
    iget-wide v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    invoke-direct {p0, v12, v0, v1}, Lcom/htc/htccalendarwidgets/AgendaWidget;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    .line 1529
    .end local v12           #t:Landroid/text/format/Time;
    :cond_4
    div-int/lit8 v0, v11, 0x3c

    int-to-long v0, v0

    iput-wide v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    .line 1530
    rem-int/lit8 v0, v11, 0x3c

    int-to-long v0, v0

    iput-wide v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->minutes_:J

    .line 1531
    div-int/lit8 v0, v9, 0x3c

    int-to-long v0, v0

    iput-wide v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    .line 1532
    rem-int/lit8 v0, v9, 0x3c

    int-to-long v0, v0

    iput-wide v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->eminutes_:J

    .line 1533
    iget-wide v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    iget-wide v2, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->hour_:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 1534
    iget-wide v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    const-wide/16 v2, 0x18

    add-long/2addr v0, v2

    iput-wide v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    .line 1535
    :cond_5
    iget-wide v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    const-wide/16 v2, 0x18

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6

    .line 1536
    iget-wide v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    const-wide/16 v2, 0x18

    sub-long/2addr v0, v2

    iput-wide v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->ehour_:J

    .line 1538
    :cond_6
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->startday_:J

    .line 1539
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->endday_:J

    .line 1540
    iget-wide v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->endday_:J

    iget-wide v2, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->startday_:J

    sub-long/2addr v0, v2

    long-to-int v7, v0

    .line 1541
    .local v7, duration:I
    const/4 v0, 0x1

    if-ge v7, v0, :cond_9

    .line 1542
    sub-int v0, v9, v11

    int-to-long v0, v0

    iput-wide v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->period_:J

    .line 1543
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->crossday_:Z

    .line 1549
    :goto_2
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->title_:Ljava/lang/String;

    .line 1550
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->location_:Ljava/lang/String;

    .line 1551
    iget-wide v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->startday_:J

    invoke-direct {p0, v10, v0, v1}, Lcom/htc/htccalendarwidgets/AgendaWidget;->getEventCategory(IJ)Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    move-result-object v0

    iput-object v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->category_:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    .line 1554
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iget-boolean v5, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/htccalendarwidgets/AgendaWidget;->isRegularMeeting(JJZ)Z

    move-result v0

    iput-boolean v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->regular_:Z

    .line 1555
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_source_id_:Ljava/lang/String;

    .line 1556
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_type_:Ljava/lang/String;

    .line 1557
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_avatar_large_:Ljava/lang/String;

    .line 1558
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_avatar_small_:Ljava/lang/String;

    .line 1560
    invoke-direct {p0, v8, v10}, Lcom/htc/htccalendarwidgets/AgendaWidget;->checkEventLegal(Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1561
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1563
    :cond_7
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 1567
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1568
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1569
    .end local v7           #duration:I
    .end local v8           #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    .end local v9           #end_mins:I
    .end local v10           #julianDay:I
    .end local v11           #start_mins:I
    .end local v13           #tnow:Landroid/text/format/Time;
    :goto_3
    const/4 p1, 0x0

    goto/16 :goto_0

    .line 1521
    .restart local v8       #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    .restart local v9       #end_mins:I
    .restart local v10       #julianDay:I
    .restart local v11       #start_mins:I
    .restart local v13       #tnow:Landroid/text/format/Time;
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1545
    .restart local v7       #duration:I
    :cond_9
    add-int/lit8 v0, v7, -0x1

    mul-int/lit16 v0, v0, 0x5a0

    rsub-int v1, v11, 0x5a0

    add-int/2addr v0, v1

    add-int/2addr v0, v9

    int-to-long v0, v0

    :try_start_1
    iput-wide v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->period_:J

    .line 1546
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->crossday_:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1564
    .end local v7           #duration:I
    .end local v8           #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    .end local v9           #end_mins:I
    .end local v10           #julianDay:I
    .end local v11           #start_mins:I
    .end local v13           #tnow:Landroid/text/format/Time;
    :catch_0
    move-exception v8

    .line 1565
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1567
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1568
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1567
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz p1, :cond_a

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1568
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1569
    const/4 p1, 0x0

    .line 1567
    :cond_a
    throw v0
.end method

.method private getFxObjects()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 578
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    invoke-static {v3}, Lcom/htc/htccalendarwidgets/Components;->getWidgetSceneObjectMap(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    .line 580
    .local v0, fxControlObj:[Lcom/htc/fusion/fx/FxObject;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCalendarBtn:Lcom/htc/fusion/fx/controls/FxButton;

    .line 581
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AgendaWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCalendarBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 582
    :cond_0
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 583
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AgendaWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 584
    :cond_1
    aget-object v1, v0, v3

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mTomorrow:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 585
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AgendaWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mTomorrow:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 586
    :cond_2
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 587
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AgendaWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 588
    :cond_3
    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWhen:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 589
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AgendaWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWhen:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 590
    :cond_4
    const/4 v1, 0x5

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 591
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AgendaWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 592
    :cond_5
    const/4 v1, 0x6

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 593
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AgendaWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 594
    :cond_6
    const/4 v1, 0x7

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 595
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AgendaWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 596
    :cond_7
    const/16 v1, 0x8

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 597
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AgendaWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 598
    :cond_8
    const/16 v1, 0x9

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mMonthTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 599
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AgendaWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mMonthTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 600
    :cond_9
    const/16 v1, 0xa

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mDayTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 601
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AgendaWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mDayTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 602
    :cond_a
    const/16 v1, 0xb

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 603
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AgendaWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-nez v1, :cond_b

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 604
    :cond_b
    const/16 v1, 0xc

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 605
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AgendaWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-nez v1, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 606
    :cond_c
    const/16 v1, 0xd

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 607
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AgendaWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-nez v1, :cond_d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 608
    :cond_d
    const/16 v1, 0xe

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mMainEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 609
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AgendaWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mMainEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 610
    :cond_e
    const/16 v1, 0xf

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 611
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AgendaWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v1, :cond_f

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 612
    :cond_f
    const/16 v1, 0x10

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 613
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AgendaWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v1, :cond_10

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 614
    :cond_10
    const/16 v1, 0x11

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 615
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AgendaWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-nez v1, :cond_11

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 616
    :cond_11
    const/16 v1, 0x12

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 617
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AgendaWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-nez v1, :cond_12

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 618
    :cond_12
    return-void
.end method

.method private getTitle(Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;)Ljava/lang/String;
    .locals 3
    .parameter "e"

    .prologue
    .line 925
    iget-object v0, p1, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->title_:Ljava/lang/String;

    .line 926
    .local v0, titleString:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 927
    :cond_0
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 929
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p1, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->title_:Ljava/lang/String;

    goto :goto_0
.end method

.method private getWidgetID()I
    .locals 4

    .prologue
    .line 347
    const/4 v1, -0x1

    .line 348
    .local v1, ret:I
    new-instance v0, Ljava/util/Random;

    const-wide/16 v2, 0x2710

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 349
    .local v0, r:Ljava/util/Random;
    :goto_0
    if-gez v1, :cond_0

    .line 350
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    goto :goto_0

    .line 353
    :cond_0
    return v1
.end method

.method private hideLoadMessage()V
    .locals 2

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mIsShow:Z

    if-nez v0, :cond_1

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private initLayout()V
    .locals 1

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 438
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v0, :cond_0

    .line 439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mbNoScene:Z

    .line 447
    :goto_0
    return-void

    .line 442
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mbNoScene:Z

    .line 444
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 446
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->initPanel()V

    goto :goto_0
.end method

.method private initPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 535
    const-string v0, "HTCWidget_AgendaWidget"

    const-string v1, "initPanel"

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->getFxObjects()V

    .line 538
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCalendarBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCalendarBtnListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 540
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_1

    .line 541
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mbIsFirstOrientation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mbInitialize:Z

    if-eqz v0, :cond_1

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 543
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20c00a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mMainEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 548
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mMainEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 549
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mMainEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mInfoClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 550
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mMainEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/controls/FxHitbox;->setVisibility(Z)Ljava/util/ArrayList;

    .line 552
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 553
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 554
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 555
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/controls/FxHitbox;->setVisibility(Z)Ljava/util/ArrayList;

    .line 557
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 558
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 559
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 560
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/controls/FxHitbox;->setVisibility(Z)Ljava/util/ArrayList;

    .line 562
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->initTilt()V

    .line 564
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mbIsFirstOrientation:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mbInitialize:Z

    if-nez v0, :cond_3

    .line 565
    :cond_2
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mTomorrow:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 566
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 575
    :cond_3
    return-void
.end method

.method private initTilt()V
    .locals 3

    .prologue
    .line 420
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "tilt"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    .line 422
    .local v0, marker:Lcom/htc/fusion/fx/Marker;
    if-eqz v0, :cond_0

    .line 423
    iget v1, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iput v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->m_nTiltStartFrame:I

    .line 424
    iget v1, v0, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    iput v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->m_nTiltEndFrame:I

    .line 427
    .end local v0           #marker:Lcom/htc/fusion/fx/Marker;
    :cond_0
    return-void
.end method

.method private isRegularMeeting(JJZ)Z
    .locals 6
    .parameter "startday"
    .parameter "endday"
    .parameter "allday"

    .prologue
    .line 1607
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1608
    .local v0, now:J
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 1609
    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1611
    if-eqz p5, :cond_0

    .line 1612
    const-string v4, "UTC"

    iput-object v4, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1617
    :goto_0
    iget-wide v4, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 1619
    .local v2, startday_:I
    int-to-long v4, v2

    cmp-long v4, v4, p1

    if-lez v4, :cond_1

    int-to-long v4, v2

    cmp-long v4, v4, p3

    if-gez v4, :cond_1

    .line 1620
    const/4 v4, 0x1

    .line 1623
    :goto_1
    return v4

    .line 1614
    .end local v2           #startday_:I
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    goto :goto_0

    .line 1623
    .restart local v2       #startday_:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private launchEventInfoActivity(JJJ)V
    .locals 9
    .parameter "id"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 707
    sget-object v0, Lcom/htc/htccalendarwidgets/CalendarConstants$LaunchType;->DETAIL_EVENT:Lcom/htc/htccalendarwidgets/CalendarConstants$LaunchType;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lcom/htc/htccalendarwidgets/CalendarConstants;->parseUri(Lcom/htc/htccalendarwidgets/CalendarConstants$LaunchType;JJJ)Landroid/net/Uri;

    move-result-object v8

    .line 709
    .local v8, uri:Landroid/net/Uri;
    if-nez v8, :cond_0

    .line 715
    :goto_0
    return-void

    .line 712
    :cond_0
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v7, v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 713
    .local v7, intent:Landroid/content/Intent;
    const/high16 v0, 0x1000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 714
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/htc/android/rosie/widget/Widget$Host;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private preloadScene()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 406
    invoke-static {v2, v3}, Lcom/htc/htccalendarwidgets/Components;->getWidgetScenePath(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/htccalendarwidgets/AgendaWidget;->M10_VIEW_PATH_PORT:Ljava/lang/String;

    .line 407
    sget-object v0, Lcom/htc/htccalendarwidgets/AgendaWidget;->M10_VIEW_PATH_PORT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    if-nez v0, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->getWidgetHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    sget-object v1, Lcom/htc/htccalendarwidgets/AgendaWidget;->M10_VIEW_PATH_PORT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    .line 412
    :cond_0
    invoke-static {v3, v3}, Lcom/htc/htccalendarwidgets/Components;->getWidgetScenePath(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/htccalendarwidgets/AgendaWidget;->M10_VIEW_PATH_LAND:Ljava/lang/String;

    .line 413
    sget-object v0, Lcom/htc/htccalendarwidgets/AgendaWidget;->M10_VIEW_PATH_LAND:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    if-nez v0, :cond_1

    .line 415
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->getWidgetHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    sget-object v1, Lcom/htc/htccalendarwidgets/AgendaWidget;->M10_VIEW_PATH_LAND:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    .line 417
    :cond_1
    return-void
.end method

.method private prepareInstanceData(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    .line 718
    if-nez p1, :cond_1

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    const-string v4, "selected_id"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mSelectedList:Ljava/util/ArrayList;

    .line 723
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 727
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->loadInstanceData()Ljava/util/Properties;

    move-result-object v0

    .line 728
    .local v0, originalProps:Ljava/util/Properties;
    const-string v1, ""

    .line 729
    .local v1, originalStrId:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 730
    const-string v4, "selected_id"

    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 734
    :cond_2
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 735
    .local v2, props:Ljava/util/Properties;
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    .line 736
    .local v3, strId:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 738
    const-string v4, "HTCWidget_AgendaWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareInstanceData, originalStrId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", strId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 740
    iput-boolean v7, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->bNeedRefreshCalendar:Z

    .line 741
    iput-boolean v7, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mbEventChanged:Z

    .line 742
    iput-boolean v7, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mIsShow:Z

    .line 743
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;

    const/16 v5, 0x1f41

    invoke-virtual {v4, v5}, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->sendEmptyMessage(I)Z

    .line 744
    const-string v4, "selected_id"

    invoke-virtual {v2, v4, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 745
    invoke-virtual {p0, v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->storeInstanceData(Ljava/util/Properties;)V

    .line 746
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->resetEventUI()V

    goto :goto_0
.end method

.method private query(Landroid/content/Context;Landroid/text/format/Time;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12
    .parameter "context"
    .parameter "begin"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/text/format/Time;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1449
    .local p3, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v10, p2

    .line 1450
    .local v10, queryBegin:Landroid/text/format/Time;
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11, p2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1451
    .local v11, queryEnd:Landroid/text/format/Time;
    iget v0, v10, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, 0x3c

    iput v0, v11, Landroid/text/format/Time;->monthDay:I

    .line 1452
    const/16 v0, 0x17

    iput v0, v11, Landroid/text/format/Time;->hour:I

    .line 1453
    const/16 v0, 0x3b

    iput v0, v11, Landroid/text/format/Time;->minute:I

    .line 1454
    const/4 v0, 0x0

    iput v0, v11, Landroid/text/format/Time;->second:I

    .line 1456
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 1457
    .local v6, builder:Landroid/net/Uri$Builder;
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1458
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1460
    const/4 v3, 0x0

    .line 1463
    .local v3, selection:Ljava/lang/String;
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1464
    monitor-enter p1

    .line 1465
    :try_start_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 1466
    const/4 v3, 0x0

    .line 1475
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1480
    :goto_1
    const-string v0, "HTCWidget_AgendaWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query Today\'s Events begin time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", selection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    const-string v0, "HTCWidget_AgendaWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/htccalendarwidgets/AgendaWidget;->INSTANCES_PROJ:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "startDay ASC, allDay DESC, begin ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1486
    .local v7, c:Landroid/database/Cursor;
    invoke-direct {p0, v7}, Lcom/htc/htccalendarwidgets/AgendaWidget;->getEvents(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 1469
    .end local v7           #c:Landroid/database/Cursor;
    :cond_0
    :try_start_1
    const-string v3, "calendar_id in ( "

    .line 1470
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1471
    .local v8, i:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1473
    .end local v8           #i:I
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-1 )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1475
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1477
    :cond_2
    const-string v3, "visible=1"

    goto/16 :goto_1
.end method

.method private releaseControl()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 451
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCalendarBtn:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCalendarBtn:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCalendarBtnListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 453
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCalendarBtn:Lcom/htc/fusion/fx/controls/FxButton;

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mMainEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mMainEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mInfoClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 458
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mMainEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 463
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 466
    :cond_2
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v0, :cond_3

    .line 467
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 468
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 471
    :cond_3
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_4

    .line 472
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 473
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 476
    :cond_4
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_5

    .line 477
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 478
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 481
    :cond_5
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_6

    .line 482
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 485
    :cond_6
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mTomorrow:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_7

    .line 486
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mTomorrow:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 489
    :cond_7
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_8

    .line 490
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 493
    :cond_8
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWhen:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_9

    .line 494
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWhen:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 497
    :cond_9
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_a

    .line 498
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 501
    :cond_a
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_b

    .line 502
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 505
    :cond_b
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_c

    .line 506
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 509
    :cond_c
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_d

    .line 510
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 513
    :cond_d
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mMonthTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_e

    .line 514
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mMonthTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 517
    :cond_e
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mDayTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_f

    .line 518
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mDayTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 521
    :cond_f
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v0, :cond_10

    .line 522
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 525
    :cond_10
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v0, :cond_11

    .line 526
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 529
    :cond_11
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v0, :cond_12

    .line 530
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 532
    :cond_12
    return-void
.end method

.method private removeAllMsg()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 268
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancelAll()V

    .line 270
    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;

    invoke-virtual {v0, v1}, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 275
    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;

    .line 277
    :cond_1
    return-void
.end method

.method private showLoadMessages()V
    .locals 3

    .prologue
    .line 621
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 623
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20c00a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 627
    :cond_1
    return-void
.end method

.method private startQuery(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 13
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1386
    .local p2, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p1, :cond_1

    .line 1387
    const/4 v8, 0x0

    .line 1445
    :cond_0
    :goto_0
    return-object v8

    .line 1390
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1392
    .local v0, appointmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;>;"
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 1393
    .local v7, queryBegin:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 1394
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    .line 1396
    .local v1, begin:J
    invoke-direct {p0, p1, v7, p2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->query(Landroid/content/Context;Landroid/text/format/Time;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1398
    const/4 v3, 0x0

    .line 1399
    .local v3, currentEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    const/4 v6, 0x0

    .line 1401
    .local v6, nextEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    if-eqz v0, :cond_5

    .line 1402
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    .line 1403
    .local v4, e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    iget-boolean v9, v4, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    if-nez v9, :cond_8

    .line 1404
    iget-wide v9, v4, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    cmp-long v9, v9, v1

    if-gez v9, :cond_7

    iget-wide v9, v4, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    cmp-long v9, v9, v1

    if-lez v9, :cond_7

    .line 1405
    if-nez v3, :cond_3

    .line 1406
    move-object v3, v4

    .line 1407
    const-string v9, "HTCWidget_AgendaWidget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "currentEvent, begin : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v3, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", end : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v3, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    if-nez v6, :cond_5

    :cond_4
    if-eqz v6, :cond_2

    .line 1431
    .end local v4           #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1432
    .local v8, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;>;"
    if-eqz v3, :cond_6

    .line 1433
    if-eqz v6, :cond_6

    .line 1434
    iget-wide v9, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    sub-long/2addr v9, v1

    const-wide/32 v11, 0x6ddd00

    cmp-long v9, v9, v11

    if-gtz v9, :cond_6

    .line 1435
    const-string v9, "HTCWidget_AgendaWidget"

    const-string v10, "currentEvent, nextEvent is within 2 Hours!"

    invoke-static {v9, v10}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1441
    :cond_6
    if-eqz v6, :cond_0

    .line 1442
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1411
    .end local v8           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;>;"
    .restart local v4       #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_7
    if-nez v6, :cond_3

    .line 1412
    move-object v6, v4

    .line 1413
    const-string v9, "HTCWidget_AgendaWidget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "nextEvent, begin : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", end : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1418
    :cond_8
    if-nez v6, :cond_3

    .line 1419
    move-object v6, v4

    .line 1420
    const-string v9, "HTCWidget_AgendaWidget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "allDayEvent, begin : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", end : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v6, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateUI()V
    .locals 0

    .prologue
    .line 794
    return-void
.end method


# virtual methods
.method public checkTime()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    .line 778
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->isDateChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->goToToday()V

    .line 780
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;

    const/16 v1, 0x1f43

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1b5c

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    .line 783
    return-void
.end method

.method public getCountDownInfo(J)Ljava/lang/String;
    .locals 15
    .parameter "begin"

    .prologue
    .line 845
    const-wide/16 v8, 0x0

    .line 846
    .local v8, now:J
    const-wide/16 v0, 0x0

    .line 847
    .local v0, diff:D
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 848
    sub-long v12, p1, v8

    long-to-double v0, v12

    .line 850
    const-wide v12, 0x40ed4c0000000000L

    div-double v12, v0, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v11, v12

    .line 851
    .local v11, total_minutes:I
    div-int/lit8 v12, v11, 0x3c

    int-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v2, v12

    .line 852
    .local v2, hour:I
    rem-int/lit8 v6, v11, 0x3c

    .line 853
    .local v6, minutes:I
    const-string v12, "HTCWidget_AgendaWidget"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "total_minutes : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", hour : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", minutes : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    iget-object v12, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mContext:Landroid/content/Context;

    const v13, 0x1040384

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 855
    .local v3, hourString:Ljava/lang/String;
    iget-object v12, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mContext:Landroid/content/Context;

    const v13, 0x1040385

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 856
    .local v4, hoursString:Ljava/lang/String;
    iget-object v12, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mContext:Landroid/content/Context;

    const v13, 0x1040386

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 857
    .local v5, minuteString:Ljava/lang/String;
    iget-object v12, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mContext:Landroid/content/Context;

    const v13, 0x1040387

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 859
    .local v7, minutessString:Ljava/lang/String;
    const-string v10, ""

    .line 860
    .local v10, retString:Ljava/lang/String;
    if-lez v2, :cond_1

    .line 861
    const/4 v12, 0x1

    if-ne v2, v12, :cond_0

    .line 862
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 875
    :goto_0
    return-object v10

    .line 864
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 866
    :cond_1
    if-lez v6, :cond_3

    .line 867
    const/4 v12, 0x1

    if-ne v6, v12, :cond_2

    .line 868
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 870
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 872
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mResources:Landroid/content/res/Resources;

    const v14, 0x7f0a0009

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0
.end method

.method public getDateString(JZ)Ljava/lang/CharSequence;
    .locals 6
    .parameter "date"
    .parameter "allday"

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    .line 884
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 885
    .local v1, today:Ljava/util/Calendar;
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 887
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format_short"

    invoke-static {v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 888
    .local v0, currentFormat:Ljava/lang/CharSequence;
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 890
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 892
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method

.method public getHostContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 395
    iget v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 396
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 398
    :cond_0
    iget v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 399
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method public getSettingIntent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 386
    new-instance v0, Ljava/lang/String;

    const-string v1, "#Intent;action=CalendarOption;component=com.htc.htccalendarwidgets/.ManageCalendarsActivity;end"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getWidgetBase()Lcom/htc/android/rosie/widget/Widget$Base;
    .locals 0

    .prologue
    .line 369
    return-object p0
.end method

.method public getWidgetContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetHost()Lcom/htc/android/rosie/widget/Widget$Host;
    .locals 1

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetScene()Lcom/htc/fusion/fx/FxScene;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method public getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "callback"

    .prologue
    .line 357
    if-nez p1, :cond_0

    .line 358
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 360
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/htccalendarwidgets/AgendaWidget;->getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v0

    goto :goto_0
.end method

.method public goToToday()V
    .locals 3

    .prologue
    .line 786
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 787
    .local v0, now:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 788
    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mTime:Landroid/text/format/Time;

    .line 789
    return-void
.end method

.method public isDateChanged()Z
    .locals 3

    .prologue
    .line 765
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 766
    .local v0, now:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 768
    iget v1, v0, Landroid/text/format/Time;->year:I

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->lastTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->year:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/text/format/Time;->month:I

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->lastTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->month:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->lastTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->monthDay:I

    if-ne v1, v2, :cond_0

    .line 769
    const/4 v1, 0x0

    .line 774
    :goto_0
    return v1

    .line 773
    :cond_0
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->lastTime:Landroid/text/format/Time;

    invoke-virtual {v1, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 774
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public isLeapYear(I)Z
    .locals 1
    .parameter "year"

    .prologue
    .line 896
    rem-int/lit16 v0, p1, 0x190

    if-nez v0, :cond_0

    rem-int/lit8 v0, p1, 0x64

    if-eqz v0, :cond_0

    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    .line 897
    const/4 v0, 0x1

    .line 898
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowPhoto()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 797
    const/4 v0, 0x0

    .line 798
    .local v0, bShowPhoto:Z
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;

    iget-object v5, v6, Lcom/htc/htccalendarwidgets/AgendaEvent;->sourceId_:Ljava/lang/String;

    .line 799
    .local v5, sourceId:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;

    iget-object v2, v6, Lcom/htc/htccalendarwidgets/AgendaEvent;->fType_:Ljava/lang/String;

    .line 800
    .local v2, ftype:Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 801
    :cond_0
    const/4 v0, 0x0

    .line 810
    :cond_1
    :goto_0
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 811
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/htc/util/calendar/FacebookUtils;->getRawContactUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 812
    .local v1, contactUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/htc/htccalendarwidgets/AgendaEvent;->contactId_:J

    .line 813
    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 814
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;

    iget-object v6, v6, Lcom/htc/htccalendarwidgets/AgendaEvent;->photo_:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_2

    .line 815
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 816
    .local v3, msg:Landroid/os/Message;
    const/16 v6, 0x1b5e

    iput v6, v3, Landroid/os/Message;->what:I

    .line 817
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;

    iget-wide v6, v6, Lcom/htc/htccalendarwidgets/AgendaEvent;->contactId_:J

    long-to-int v6, v6

    iput v6, v3, Landroid/os/Message;->arg1:I

    .line 818
    iput v9, v3, Landroid/os/Message;->arg2:I

    .line 820
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v6, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    .line 841
    .end local v1           #contactUri:Landroid/net/Uri;
    .end local v3           #msg:Landroid/os/Message;
    :cond_2
    :goto_1
    return v0

    .line 803
    :cond_3
    const/4 v0, 0x1

    .line 804
    const/4 v4, -0x1

    .line 805
    .local v4, pos:I
    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 806
    if-lez v4, :cond_1

    .line 807
    invoke-virtual {v5, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 827
    .end local v4           #pos:I
    :cond_4
    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 828
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;

    iget-object v6, v6, Lcom/htc/htccalendarwidgets/AgendaEvent;->photo_:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_2

    .line 829
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 830
    .restart local v3       #msg:Landroid/os/Message;
    const/16 v6, 0x1b5f

    iput v6, v3, Landroid/os/Message;->what:I

    .line 831
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;

    iget-wide v6, v6, Lcom/htc/htccalendarwidgets/AgendaEvent;->eventId_:J

    long-to-int v6, v6

    iput v6, v3, Landroid/os/Message;->arg1:I

    .line 832
    iput v9, v3, Landroid/os/Message;->arg2:I

    .line 834
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v6, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v3, -0x1

    .line 310
    const-string v0, "HTCWidget_AgendaWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", RESULT_OK = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    if-ne p2, v3, :cond_0

    if-nez p3, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    invoke-direct {p0, p3}, Lcom/htc/htccalendarwidgets/AgendaWidget;->prepareInstanceData(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfiguration"

    .prologue
    const/16 v4, 0x1b5b

    .line 297
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 298
    const-string v1, "HTCWidget_AgendaWidget"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const-string v0, "Landscape"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mOrientation:I

    .line 301
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 304
    :cond_0
    iget v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mOrientationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mOrientationCount:I

    .line 306
    return-void

    .line 298
    :cond_1
    const-string v0, "Protrait"

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedState"

    .prologue
    const/4 v3, 0x0

    .line 143
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->preloadScene()V

    .line 147
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->getWidgetContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mContext:Landroid/content/Context;

    .line 149
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mOrientation:I

    .line 151
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v1

    new-instance v2, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;

    invoke-direct {v2, p0, v3}, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;-><init>(Lcom/htc/htccalendarwidgets/AgendaWidget;Lcom/htc/htccalendarwidgets/AgendaWidget$1;)V

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 152
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;

    if-nez v1, :cond_0

    .line 153
    new-instance v1, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;

    invoke-direct {v1, p0, v3}, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;-><init>(Lcom/htc/htccalendarwidgets/AgendaWidget;Lcom/htc/htccalendarwidgets/AgendaWidget$1;)V

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mResources:Landroid/content/res/Resources;

    .line 157
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->releaseControl()V

    .line 158
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->initLayout()V

    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v1, "com.htc.calendar.event_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mDateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->goToToday()V

    .line 170
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->drawDate()V

    .line 172
    iget v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetId:I

    if-gez v1, :cond_1

    .line 173
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->getWidgetID()I

    move-result v1

    iput v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetId:I

    .line 174
    :cond_1
    const-string v1, "HTCWidget_AgendaWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWidgetId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 202
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onDestroy()V

    .line 203
    const-string v1, "HTCWidget_AgendaWidget"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mDateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 205
    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mDateReceiver:Landroid/content/BroadcastReceiver;

    .line 207
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->removeAllMsg()V

    .line 208
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->releaseControl()V

    .line 210
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->destroyScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 212
    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    if-eqz v1, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->destroyScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 217
    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    if-eqz v1, :cond_2

    .line 221
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->destroyScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 222
    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    .line 225
    :cond_2
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mInfoClickListener:Lcom/htc/fusion/fx/MessageListener;

    if-eqz v1, :cond_3

    .line 226
    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mInfoClickListener:Lcom/htc/fusion/fx/MessageListener;

    .line 229
    :cond_3
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCalendarBtnListener:Lcom/htc/fusion/fx/MessageListener;

    if-eqz v1, :cond_4

    .line 230
    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCalendarBtnListener:Lcom/htc/fusion/fx/MessageListener;

    .line 233
    :cond_4
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventClickListener:Lcom/htc/fusion/fx/MessageListener;

    if-eqz v1, :cond_5

    .line 234
    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventClickListener:Lcom/htc/fusion/fx/MessageListener;

    .line 237
    :cond_5
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventClickListener:Lcom/htc/fusion/fx/MessageListener;

    if-eqz v1, :cond_6

    .line 238
    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventClickListener:Lcom/htc/fusion/fx/MessageListener;

    .line 241
    :cond_6
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    .line 242
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 243
    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mSelectedList:Ljava/util/ArrayList;

    .line 247
    :cond_7
    :try_start_0
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;

    if-eqz v1, :cond_8

    .line 248
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;

    iget-object v1, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->bitmap_:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_8

    .line 249
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;

    iget-object v1, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->bitmap_:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 250
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->bitmap_:Landroid/graphics/Bitmap;

    .line 253
    :cond_8
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    .line 260
    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    .line 261
    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mCalendar:Ljava/util/Calendar;

    .line 263
    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mResources:Landroid/content/res/Resources;

    .line 264
    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mContext:Landroid/content/Context;

    .line 265
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HTCWidget_AgendaWidget"

    const-string v2, "Error when clear mAgendaEvent!"

    invoke-static {v1, v2}, Lcom/htc/htccalendarwidgets/Debug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onEdit()V
    .locals 4

    .prologue
    .line 338
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->getSettingIntent()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 339
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "selected_id"

    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 340
    iget v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetId:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onHostMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 321
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 327
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onHostMessage(Landroid/os/Message;)V

    .line 328
    return-void

    .line 323
    :pswitch_0
    const-string v0, "HTCWidget_AgendaWidget"

    const-string v1, "onHostMessage - HOST_ORIENTATION_CHANGE_COMPLETE"

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1b60

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto :goto_0

    .line 321
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 281
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onPause()V

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mIsShow:Z

    .line 284
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;

    const/16 v1, 0x1f45

    invoke-virtual {v0, v1}, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->sendEmptyMessage(I)Z

    .line 285
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1b5a

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 286
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedState"

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onPostCreate(Landroid/os/Bundle;)V

    .line 180
    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mSelectedList:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 181
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mSelectedList:Ljava/util/ArrayList;

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->loadInstanceData()Ljava/util/Properties;

    move-result-object v4

    .line 184
    .local v4, props:Ljava/util/Properties;
    if-eqz v4, :cond_1

    .line 185
    const-string v5, "selected_id"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, instr:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/CalendarConstants;->stringToArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 187
    .local v3, l:Ljava/util/ArrayList;
    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 188
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 189
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    .end local v0           #i:I
    .end local v1           #instr:Ljava/lang/String;
    .end local v3           #l:Ljava/util/ArrayList;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaWidget;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 194
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 195
    invoke-direct {p0, v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->prepareInstanceData(Landroid/content/Intent;)V

    .line 198
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 290
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onResume()V

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mIsShow:Z

    .line 292
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1b59

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 293
    return-void
.end method

.method public onTiltChanged(F)V
    .locals 3
    .parameter "tilt"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->m_nTiltStartFrame:I

    iget v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->m_nTiltEndFrame:I

    invoke-static {p1, v1, v2}, Lcom/htc/android/rosie/widget/WidgetHelper;->convertTiltAngleToFrame(FII)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 432
    :cond_0
    return-void
.end method

.method public resetEventUI()V
    .locals 1

    .prologue
    .line 880
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/htccalendarwidgets/AgendaWidget;->mEventID:I

    .line 881
    return-void
.end method
