.class public Lcom/htc/htccalendarwidgets/AgendaListWidget;
.super Lcom/htc/android/rosie/widget/Widget$Base;
.source "AgendaListWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htccalendarwidgets/AgendaListWidget$MultipleDayInfo;,
        Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;,
        Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;,
        Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;,
        Lcom/htc/htccalendarwidgets/AgendaListWidget$ListItemCallBackHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ACTION_TIME_FORMAT_CHANGED:Ljava/lang/String; = "android.intent.action.TIMEFORMAT_CHANGED"

.field private static M10_VIEW_PATH_LAND:Ljava/lang/String; = null

.field private static M10_VIEW_PATH_PORT:Ljava/lang/String; = null

.field private static final RESUME_DELAYED:J = 0x5dcL

.field private static final sMSG_BASE:I = 0x15b3

.field private static final sMSG_CHECK_TIME:I = 0x15b9

.field private static final sMSG_CONFIGURATION_CHANGED:I = 0x15bb

.field private static final sMSG_EXTRACT_EVENTS:I = 0x15ba

.field private static final sMSG_PAUSE:I = 0x15b5

.field private static final sMSG_QUERY_EVENT:I = 0x15b8

.field private static final sMSG_RESUME:I = 0x15b4

.field private static final sMSG_RESUME_DELAYED:I = 0x15b6

.field private static final sUIMSG_BASE:I = 0x1a0a

.field private static final sUIMSG_EVENT_CHANGED:I = 0x1a0c

.field private static final sUIMSG_HIDE_PROGRESS:I = 0x1a0e

.field private static final sUIMSG_LISTVIEW_UPDATE:I = 0x1a10

.field private static final sUIMSG_SHOW_PROGRESS:I = 0x1a0d

.field private static final sUIMSG_TIME_CHANGED:I = 0x1a0b

.field private static final sUIMSG_UPDATE_HEADER:I = 0x1a11


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private bDoOrientation:Z

.field private bInitCompleted:Z

.field private bLoacteCurrentItemPosition:Z

.field private bNeedCalendarChange:Z

.field private bNeedRefreshCalendar:Z

.field private bNeedRefreshEvent:Z

.field private bNeedToBindWithListViewAgain:Z

.field private bShowUI:Z

.field private bWidgetDestroy:Z

.field private lastTime:Landroid/text/format/Time;

.field private mActionScheduleEvent:Ljava/lang/String;

.field private mAdapter:Lcom/htc/htccalendarwidgets/FxAgendaAdapter;

.field private mAgendaEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccalendarwidgets/AgendaEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mAgendaEventList_temp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccalendarwidgets/AgendaEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

.field private mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

.field private mAppHitboxListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastIntent:Landroid/content/Intent;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCursorCount:I

.field private mDateReceiver:Landroid/content/BroadcastReceiver;

.field private mDayAdapter:Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;

.field private mDayTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mExtractThread:Ljava/lang/Thread;

.field private mFirstVisibleItemIndex:Landroid/graphics/PointF;

.field private mHeaderBtnClickListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

.field private mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mIsShown:Z

.field private mLastQueryTime:Landroid/text/format/Time;

.field private mListItemCallBackHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$ListItemCallBackHandler;

.field private mListItemEventListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxListItemEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxListViewEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mMonthTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mOrientation:I

.field private mProcessIndex:I

.field private mQueryHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;

.field private mResources:Landroid/content/res/Resources;

.field private mRowInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccalendarwidgets/RowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedId:J

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

.field private mSelectedName:Ljava/lang/String;

.field private mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mTime:Landroid/text/format/Time;

.field private mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

.field private mWidgetId:I

.field private mWidgetScene:Lcom/htc/fusion/fx/FxScene;

.field private mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

.field private mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

.field private mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

.field private m_nTiltEndFrame:I

.field private m_nTiltStartFrame:I

.field private mbCalendarChange:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mbEventChanged:Z

.field private mbInitialize:Z

.field private mbNeedCheckTime:Z

.field private mbNeedGoToday:Z

.field private mbNoScene:Z

.field private mbTimeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    const-class v0, Lcom/htc/htccalendarwidgets/AgendaListWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->$assertionsDisabled:Z

    .line 124
    sput-object v1, Lcom/htc/htccalendarwidgets/AgendaListWidget;->M10_VIEW_PATH_PORT:Ljava/lang/String;

    .line 125
    sput-object v1, Lcom/htc/htccalendarwidgets/AgendaListWidget;->M10_VIEW_PATH_LAND:Ljava/lang/String;

    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;-><init>()V

    .line 65
    const-string v0, "HTCWidget_AgendaListWidget"

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;

    .line 75
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mLastQueryTime:Landroid/text/format/Time;

    .line 79
    iput-boolean v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mIsShown:Z

    .line 80
    iput-boolean v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbTimeChanged:Z

    .line 81
    iput-boolean v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbEventChanged:Z

    .line 82
    iput-boolean v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbInitialize:Z

    .line 83
    iput-boolean v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbNeedGoToday:Z

    .line 84
    iput-boolean v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbNeedCheckTime:Z

    .line 105
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mSelectedId:J

    .line 107
    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mSelectedList:Ljava/util/ArrayList;

    .line 109
    iput v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mCursorCount:I

    .line 110
    iput v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mProcessIndex:I

    .line 112
    iput-boolean v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->bNeedRefreshEvent:Z

    .line 113
    iput-boolean v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->bWidgetDestroy:Z

    .line 114
    iput-boolean v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->bNeedCalendarChange:Z

    .line 115
    iput-boolean v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->bNeedRefreshCalendar:Z

    .line 116
    iput-boolean v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->bShowUI:Z

    .line 117
    iput-boolean v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->bNeedToBindWithListViewAgain:Z

    .line 118
    iput-boolean v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->bLoacteCurrentItemPosition:Z

    .line 120
    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;

    .line 121
    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList_temp:Ljava/util/ArrayList;

    .line 122
    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mRowInfoList:Ljava/util/ArrayList;

    .line 144
    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mContext:Landroid/content/Context;

    .line 148
    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mListItemCallBackHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$ListItemCallBackHandler;

    .line 150
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetId:I

    .line 152
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mFirstVisibleItemIndex:Landroid/graphics/PointF;

    .line 154
    iput-boolean v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbNoScene:Z

    .line 155
    iput-boolean v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->bInitCompleted:Z

    .line 156
    iput v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->m_nTiltStartFrame:I

    .line 157
    iput v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->m_nTiltEndFrame:I

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbCalendarChange:Ljava/util/HashMap;

    .line 708
    new-instance v0, Lcom/htc/htccalendarwidgets/AgendaListWidget$1;

    invoke-direct {v0, p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget$1;-><init>(Lcom/htc/htccalendarwidgets/AgendaListWidget;)V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mHeaderBtnClickListener:Lcom/htc/fusion/fx/MessageListener;

    .line 718
    new-instance v0, Lcom/htc/htccalendarwidgets/AgendaListWidget$2;

    invoke-direct {v0, p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget$2;-><init>(Lcom/htc/htccalendarwidgets/AgendaListWidget;)V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAppHitboxListener:Lcom/htc/fusion/fx/MessageListener;

    .line 725
    new-instance v0, Lcom/htc/htccalendarwidgets/AgendaListWidget$3;

    invoke-direct {v0, p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget$3;-><init>(Lcom/htc/htccalendarwidgets/AgendaListWidget;)V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mListItemEventListener:Lcom/htc/fusion/fx/MessageListener;

    .line 772
    new-instance v0, Lcom/htc/htccalendarwidgets/AgendaListWidget$4;

    invoke-direct {v0, p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget$4;-><init>(Lcom/htc/htccalendarwidgets/AgendaListWidget;)V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;

    .line 1188
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->lastTime:Landroid/text/format/Time;

    .line 1546
    new-instance v0, Lcom/htc/htccalendarwidgets/AgendaListWidget$5;

    invoke-direct {v0, p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget$5;-><init>(Lcom/htc/htccalendarwidgets/AgendaListWidget;)V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mDateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->surpressHostSlide(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/htccalendarwidgets/AgendaListWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mOrientation:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mIsShown:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mIsShown:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->bWidgetDestroy:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbInitialize:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbInitialize:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->bNeedRefreshCalendar:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->bNeedRefreshCalendar:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbCalendarChange:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/fusion/fx/controls/FxListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->bNeedToBindWithListViewAgain:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbEventChanged:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbEventChanged:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->bInitCompleted:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->bInitCompleted:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->bDoOrientation:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbTimeChanged:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbTimeChanged:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbNeedGoToday:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbNeedGoToday:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->bNeedRefreshEvent:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbNeedCheckTime:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbNeedCheckTime:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->bShowUI:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->bShowUI:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/htc/htccalendarwidgets/AgendaListWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->renewCursor()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/android/rosie/widget/Widget$Host;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mExtractThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/htc/htccalendarwidgets/AgendaListWidget;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mExtractThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/htc/htccalendarwidgets/AgendaListWidget;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->extract(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/htccalendarwidgets/AgendaListWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->releaseControl()V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/htccalendarwidgets/AgendaListWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->initLayout()V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/htc/htccalendarwidgets/AgendaListWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->showLoadMessages()V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/htccalendarwidgets/AgendaListWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->hideLoadMessage()V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList_temp:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/htc/htccalendarwidgets/AgendaListWidget;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList_temp:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->showListView(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/android/rosie/widget/Widget$Host;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mDayAdapter:Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/android/rosie/widget/Widget$Host;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->surpressHostSlide(Z)V

    return-void
.end method

.method private checkEventChange(Lcom/htc/htccalendarwidgets/AgendaEvent;I)Lcom/htc/htccalendarwidgets/AgendaEvent;
    .locals 9
    .parameter "e"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 1020
    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 1021
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;

    move-object v1, v4

    .line 1074
    :goto_0
    return-object v1

    .line 1025
    :cond_0
    move-object v1, p1

    .line 1026
    .local v1, e_:Lcom/htc/htccalendarwidgets/AgendaEvent;
    const/4 v0, 0x0

    .line 1027
    .local v0, bChanged:Z
    if-gez p2, :cond_5

    .line 1029
    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htccalendarwidgets/AgendaEvent;

    .line 1030
    .local v2, ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    iget-wide v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->eventId_:J

    iget-wide v7, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->eventId_:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 1031
    iget-object v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->title_:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->title_:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 1032
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1033
    :cond_3
    iget-boolean v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->allDay_:Z

    iget-boolean v6, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->allDay_:Z

    if-ne v5, v6, :cond_4

    iget v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->color_:I

    iget v6, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->color_:I

    if-ne v5, v6, :cond_4

    iget-wide v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->begin_:J

    iget-wide v7, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->begin_:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    iget-wide v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->end_:J

    iget-wide v7, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->end_:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    iget-wide v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->startDay_:J

    iget-wide v7, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->startDay_:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    iget-wide v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->endDay_:J

    iget-wide v7, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->endDay_:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    iget-object v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->title_:Ljava/lang/String;

    iget-object v6, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->title_:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1037
    const/4 v0, 0x0

    goto :goto_1

    .line 1039
    :cond_4
    const/4 v0, 0x1

    .line 1040
    move-object v1, v2

    goto :goto_1

    .line 1045
    .end local v2           #ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_5
    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v5, p2, :cond_6

    iget-boolean v5, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbTimeChanged:Z

    if-nez v5, :cond_6

    move-object v1, v4

    .line 1046
    goto :goto_0

    .line 1048
    :cond_6
    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htccalendarwidgets/AgendaEvent;

    .line 1049
    .restart local v2       #ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    iget-wide v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->eventId_:J

    iget-wide v7, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->eventId_:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_8

    .line 1050
    iget-object v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->title_:Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-object v5, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->title_:Ljava/lang/String;

    if-nez v5, :cond_9

    .line 1051
    :cond_7
    const/4 v0, 0x0

    .line 1064
    .end local v2           #ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    :cond_8
    :goto_2
    if-nez v0, :cond_b

    iget-boolean v5, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbTimeChanged:Z

    if-nez v5, :cond_b

    move-object v1, v4

    .line 1065
    goto/16 :goto_0

    .line 1052
    .restart local v2       #ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    :cond_9
    iget-boolean v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->allDay_:Z

    iget-boolean v6, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->allDay_:Z

    if-ne v5, v6, :cond_a

    iget v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->color_:I

    iget v6, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->color_:I

    if-ne v5, v6, :cond_a

    iget-wide v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->begin_:J

    iget-wide v7, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->begin_:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_a

    iget-wide v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->end_:J

    iget-wide v7, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->end_:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_a

    iget-wide v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->startDay_:J

    iget-wide v7, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->startDay_:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_a

    iget-wide v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->endDay_:J

    iget-wide v7, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->endDay_:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_a

    iget-object v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->title_:Ljava/lang/String;

    iget-object v6, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->title_:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1056
    const/4 v0, 0x0

    goto :goto_2

    .line 1058
    :cond_a
    const/4 v0, 0x1

    .line 1059
    move-object v1, v2

    goto :goto_2

    .line 1067
    .end local v2           #ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    :cond_b
    iget-boolean v4, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->allDay_:Z

    iput-boolean v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->allDay_:Z

    .line 1068
    iget v4, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->color_:I

    iput v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->color_:I

    .line 1069
    iget-wide v4, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->begin_:J

    iput-wide v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->begin_:J

    .line 1070
    iget-wide v4, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->end_:J

    iput-wide v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->end_:J

    .line 1071
    iget-wide v4, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->startDay_:J

    iput-wide v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->startDay_:J

    .line 1072
    iget-wide v4, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->endDay_:J

    iput-wide v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->endDay_:J

    .line 1073
    iget-object v4, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->title_:Ljava/lang/String;

    iput-object v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->title_:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private clearLastQueryTime()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 803
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mLastQueryTime:Landroid/text/format/Time;

    iput v1, v0, Landroid/text/format/Time;->year:I

    .line 804
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mLastQueryTime:Landroid/text/format/Time;

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 805
    return-void
.end method

.method private extract(Landroid/database/Cursor;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 857
    invoke-virtual {p0, p1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->buildArray(Landroid/database/Cursor;)V

    .line 858
    return-void
.end method

.method private extractEvent(Landroid/database/Cursor;)Lcom/htc/htccalendarwidgets/AgendaEvent;
    .locals 8
    .parameter "cursor"

    .prologue
    const/16 v7, 0x3a

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x7

    .line 897
    new-instance v0, Lcom/htc/htccalendarwidgets/AgendaEvent;

    invoke-direct {v0}, Lcom/htc/htccalendarwidgets/AgendaEvent;-><init>()V

    .line 898
    .local v0, e:Lcom/htc/htccalendarwidgets/AgendaEvent;
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->eventId_:J

    .line 899
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->color_:I

    .line 900
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->begin_:J

    .line 901
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->end_:J

    .line 902
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->startDay_:J

    .line 903
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->endDay_:J

    .line 904
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->allDay_:Z

    .line 905
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->title_:Ljava/lang/String;

    .line 906
    iget v1, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->color_:I

    invoke-static {v6, v7, v1}, Lcom/htc/htccalendarwidgets/CalendarConstants;->getColorChipBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->bitmap_:Landroid/graphics/Bitmap;

    .line 907
    iget-object v1, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->bitmap_:Landroid/graphics/Bitmap;

    invoke-static {v1, v6, v7, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->bitmap_:Landroid/graphics/Bitmap;

    .line 908
    invoke-direct {p0, v0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->getEventDayInfo(Lcom/htc/htccalendarwidgets/AgendaEvent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->date_:Ljava/lang/String;

    .line 910
    return-object v0

    :cond_0
    move v1, v3

    .line 904
    goto :goto_0
.end method

.method private extractEvent(Landroid/database/Cursor;I)Lcom/htc/htccalendarwidgets/AgendaEvent;
    .locals 11
    .parameter "cursor"
    .parameter "position"

    .prologue
    const/16 v10, 0x3a

    const/4 v9, 0x7

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 914
    new-instance v1, Lcom/htc/htccalendarwidgets/AgendaEvent;

    invoke-direct {v1}, Lcom/htc/htccalendarwidgets/AgendaEvent;-><init>()V

    .line 915
    .local v1, e:Lcom/htc/htccalendarwidgets/AgendaEvent;
    const/16 v4, 0x9

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->eventId_:J

    .line 916
    const/4 v4, 0x5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->color_:I

    .line 917
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->begin_:J

    .line 918
    const/16 v4, 0x8

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->end_:J

    .line 919
    const/16 v4, 0xa

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->startDay_:J

    .line 920
    const/16 v4, 0xb

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->endDay_:J

    .line 921
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->allDay_:Z

    .line 922
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->title_:Ljava/lang/String;

    .line 923
    iget v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->color_:I

    invoke-static {v9, v10, v4}, Lcom/htc/htccalendarwidgets/CalendarConstants;->getColorChipBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->bitmap_:Landroid/graphics/Bitmap;

    .line 924
    iget-object v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->bitmap_:Landroid/graphics/Bitmap;

    invoke-static {v4, v9, v10, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->bitmap_:Landroid/graphics/Bitmap;

    .line 927
    iget-wide v7, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->eventId_:J

    invoke-direct {p0, v7, v8, p2}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->isEventExist(JI)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 928
    invoke-direct {p0, v1, p2}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->checkEventChange(Lcom/htc/htccalendarwidgets/AgendaEvent;I)Lcom/htc/htccalendarwidgets/AgendaEvent;

    move-result-object v2

    .line 929
    .local v2, ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    if-nez v2, :cond_1

    .line 930
    const/4 v1, 0x0

    .line 931
    const/4 v2, 0x0

    .line 964
    .end local v2           #ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    :goto_1
    return-object v2

    :cond_0
    move v4, v6

    .line 921
    goto :goto_0

    .line 933
    .restart local v2       #ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    :cond_1
    invoke-direct {p0, v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->getEventDayInfo(Lcom/htc/htccalendarwidgets/AgendaEvent;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->date_:Ljava/lang/String;

    goto :goto_1

    .line 938
    .end local v2           #ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    :cond_2
    const/16 v4, 0xe

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->sourceId_:Ljava/lang/String;

    .line 940
    const/4 v3, -0x1

    .line 941
    .local v3, pos:I
    iget-object v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->sourceId_:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 942
    iget-object v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->sourceId_:Ljava/lang/String;

    const-string v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 943
    if-lez v3, :cond_3

    .line 944
    iget-object v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->sourceId_:Ljava/lang/String;

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->sourceId_:Ljava/lang/String;

    .line 947
    :cond_3
    const/16 v4, 0xf

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->fType_:Ljava/lang/String;

    .line 948
    const/16 v4, 0x11

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->avatarSmallURL_:Ljava/lang/String;

    .line 949
    const/16 v4, 0x10

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->avatarLargeURL_:Ljava/lang/String;

    .line 951
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v7, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->fType_:Ljava/lang/String;

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 952
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->sourceId_:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/htc/util/calendar/FacebookUtils;->getRawContactUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 953
    .local v0, contactUri:Landroid/net/Uri;
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 954
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->contactId_:J

    .line 955
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mContext:Landroid/content/Context;

    iget-wide v6, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->contactId_:J

    invoke-static {v4, v6, v7}, Lcom/htc/htccalendarwidgets/CalendarConstants;->getSpecifiedContactInfo(Landroid/content/Context;J)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->photoId_:J

    .line 958
    :cond_4
    iput-boolean v5, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->birthday_:Z

    .line 962
    .end local v0           #contactUri:Landroid/net/Uri;
    :goto_2
    invoke-direct {p0, v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->getEventDayInfo(Lcom/htc/htccalendarwidgets/AgendaEvent;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->date_:Ljava/lang/String;

    move-object v2, v1

    .line 964
    goto :goto_1

    .line 960
    :cond_5
    iput-boolean v6, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->birthday_:Z

    goto :goto_2
.end method

.method private getEventDayInfo(Lcom/htc/htccalendarwidgets/AgendaEvent;)Ljava/lang/String;
    .locals 11
    .parameter "e"

    .prologue
    .line 968
    iget-wide v1, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->begin_:J

    .line 969
    .local v1, begin:J
    iget-wide v3, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->end_:J

    .line 970
    .local v3, end:J
    const/16 v5, 0x2000

    .line 971
    .local v5, flags:I
    iget-boolean v0, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->allDay_:Z

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0a000d

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->date_:Ljava/lang/String;

    .line 973
    iget-object v0, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->date_:Ljava/lang/String;

    .line 988
    :goto_0
    return-object v0

    .line 975
    :cond_0
    const v5, 0x10001

    .line 977
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 978
    or-int/lit16 v5, v5, 0x80

    .line 981
    :cond_1
    iget-wide v7, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->startDay_:J

    iget-wide v9, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->endDay_:J

    iget-boolean v0, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->allDay_:Z

    invoke-static {v7, v8, v9, v10, v0}, Lcom/htc/htccalendarwidgets/CalendarConstants;->isRegularMeeting(JJZ)Z

    move-result v6

    .line 983
    .local v6, isRegular:Z
    sub-long v7, v3, v1

    const-wide/32 v9, 0x5265c00

    div-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_2

    if-nez v6, :cond_2

    .line 984
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mContext:Landroid/content/Context;

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->date_:Ljava/lang/String;

    .line 988
    :goto_1
    iget-object v0, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->date_:Ljava/lang/String;

    goto :goto_0

    .line 986
    :cond_2
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/htccalendarwidgets/CalendarConstants;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->date_:Ljava/lang/String;

    goto :goto_1
.end method

.method private getFxObjects()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 592
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    invoke-static {v3}, Lcom/htc/htccalendarwidgets/Components;->getWidgetSceneObjectMap(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    .line 595
    .local v0, fxControlObj:[Lcom/htc/fusion/fx/FxObject;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 596
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AgendaListWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 597
    :cond_0
    aget-object v1, v0, v3

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 598
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AgendaListWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 599
    :cond_1
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mMonthTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 600
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AgendaListWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mMonthTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 601
    :cond_2
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mDayTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 602
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AgendaListWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mDayTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 603
    :cond_3
    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    .line 604
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AgendaListWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 605
    :cond_4
    const/4 v1, 0x5

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 606
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AgendaListWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 607
    :cond_5
    const/4 v1, 0x6

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 608
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AgendaListWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 609
    :cond_6
    const/4 v1, 0x7

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 610
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AgendaListWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 611
    :cond_7
    const/16 v1, 0x8

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxListView;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    .line 612
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AgendaListWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 613
    :cond_8
    return-void
.end method

.method private getWidgetID()I
    .locals 4

    .prologue
    .line 424
    const/4 v1, -0x1

    .line 425
    .local v1, ret:I
    new-instance v0, Ljava/util/Random;

    const-wide/16 v2, 0x2710

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 426
    .local v0, r:Ljava/util/Random;
    :goto_0
    if-gez v1, :cond_0

    .line 427
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    goto :goto_0

    .line 430
    :cond_0
    return v1
.end method

.method private hideLoadMessage()V
    .locals 2

    .prologue
    .line 699
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mIsShown:Z

    if-nez v0, :cond_1

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private initLayout()V
    .locals 1

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 509
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v0, :cond_0

    .line 510
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbNoScene:Z

    .line 518
    :goto_0
    return-void

    .line 513
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbNoScene:Z

    .line 515
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 517
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->initPanel()V

    goto :goto_0
.end method

.method private initPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 562
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "initPanel()"

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->getFxObjects()V

    .line 566
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mSelectedName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mSelectedName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 570
    :goto_0
    iput-boolean v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->bWidgetDestroy:Z

    .line 572
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mHeaderBtnClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 574
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 575
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 576
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAppHitboxListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 577
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/controls/FxHitbox;->setVisibility(Z)Ljava/util/ArrayList;

    .line 579
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->initTilt()V

    .line 581
    iput-boolean v3, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->bNeedToBindWithListViewAgain:Z

    .line 583
    sget-boolean v0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_0

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    iget v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mOrientation:I

    invoke-static {v1, v3}, Lcom/htc/htccalendarwidgets/Components;->getWidgetItemPath(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxListView;->setDefaultItemPath(Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mListItemEventListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 586
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 588
    iput-boolean v3, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->bInitCompleted:Z

    .line 589
    return-void
.end method

.method private initTilt()V
    .locals 3

    .prologue
    .line 492
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "tilt"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    .line 494
    .local v0, marker:Lcom/htc/fusion/fx/Marker;
    if-eqz v0, :cond_0

    .line 495
    iget v1, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iput v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->m_nTiltStartFrame:I

    .line 496
    iget v1, v0, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    iput v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->m_nTiltEndFrame:I

    .line 499
    .end local v0           #marker:Lcom/htc/fusion/fx/Marker;
    :cond_0
    return-void
.end method

.method private isEventExist(JI)Z
    .locals 6
    .parameter "eId"
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 992
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 993
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;

    .line 1016
    :cond_0
    :goto_0
    return v2

    .line 997
    :cond_1
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1000
    if-gez p3, :cond_3

    .line 1002
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccalendarwidgets/AgendaEvent;

    .line 1003
    .local v0, ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    iget-wide v4, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->eventId_:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    move v2, v3

    .line 1004
    goto :goto_0

    .line 1007
    .end local v0           #ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, p3, :cond_0

    .line 1010
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccalendarwidgets/AgendaEvent;

    .line 1011
    .restart local v0       #ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    iget-wide v4, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->eventId_:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    move v2, v3

    .line 1012
    goto :goto_0
.end method

.method private preloadScene()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 477
    invoke-static {v2, v2}, Lcom/htc/htccalendarwidgets/Components;->getWidgetScenePath(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->M10_VIEW_PATH_PORT:Ljava/lang/String;

    .line 478
    sget-object v0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->M10_VIEW_PATH_PORT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    if-nez v0, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->getWidgetHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    sget-object v1, Lcom/htc/htccalendarwidgets/AgendaListWidget;->M10_VIEW_PATH_PORT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    .line 483
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0, v2}, Lcom/htc/htccalendarwidgets/Components;->getWidgetScenePath(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->M10_VIEW_PATH_LAND:Ljava/lang/String;

    .line 484
    sget-object v0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->M10_VIEW_PATH_LAND:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    if-nez v0, :cond_1

    .line 486
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->getWidgetHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    sget-object v1, Lcom/htc/htccalendarwidgets/AgendaListWidget;->M10_VIEW_PATH_LAND:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    .line 489
    :cond_1
    return-void
.end method

.method private prepareInstanceData(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1226
    if-nez p1, :cond_1

    .line 1266
    :cond_0
    :goto_0
    return-void

    .line 1230
    :cond_1
    const-string v4, "selected_id"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mSelectedList:Ljava/util/ArrayList;

    .line 1231
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 1235
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->loadInstanceData()Ljava/util/Properties;

    move-result-object v0

    .line 1236
    .local v0, originalProps:Ljava/util/Properties;
    const-string v1, ""

    .line 1237
    .local v1, originalStrId:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1238
    const-string v4, "selected_id"

    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1243
    :cond_2
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 1244
    .local v2, props:Ljava/util/Properties;
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1245
    .local v3, strId:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1247
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;

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

    .line 1248
    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    .line 1249
    iput-boolean v7, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->bNeedRefreshCalendar:Z

    .line 1250
    iput-boolean v7, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbEventChanged:Z

    .line 1251
    iget v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mOrientation:I

    if-ne v4, v9, :cond_4

    .line 1252
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbCalendarChange:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbCalendarChange:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    :goto_1
    const-string v4, "selected_id"

    invoke-virtual {v2, v4, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1260
    invoke-virtual {p0, v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->storeInstanceData(Ljava/util/Properties;)V

    .line 1263
    :cond_3
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 1264
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mSelectedId:J

    goto/16 :goto_0

    .line 1255
    :cond_4
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbCalendarChange:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbCalendarChange:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private releaseControl()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 521
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "releaseControl()"

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mHeaderBtnClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 524
    :cond_0
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    .line 526
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 528
    :cond_1
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 530
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_2

    .line 531
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 532
    :cond_2
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 534
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v0, :cond_3

    .line 535
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAppHitboxListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 536
    :cond_3
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 538
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_4

    .line 539
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mListItemEventListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 540
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 542
    :cond_4
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    .line 544
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_5

    .line 545
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 548
    :cond_5
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_6

    .line 549
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 552
    :cond_6
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mMonthTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_7

    .line 553
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mMonthTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 556
    :cond_7
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mDayTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_8

    .line 557
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mDayTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 559
    :cond_8
    return-void
.end method

.method private removeAllMsg()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1272
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "removeAllMsg(), Clear all messages in queue."

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mQueryHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;

    if-eqz v0, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mQueryHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;->cancelOperation(I)V

    .line 1276
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mQueryHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;

    invoke-virtual {v0, v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1277
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mQueryHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;

    .line 1280
    :cond_0
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_1

    .line 1281
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancelAll()V

    .line 1282
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 1285
    :cond_1
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    if-eqz v0, :cond_2

    .line 1286
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    invoke-virtual {v0, v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1287
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    .line 1289
    :cond_2
    return-void
.end method

.method private renewCursor()V
    .locals 15

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 810
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mTime:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 811
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v6

    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mTime:Landroid/text/format/Time;

    iget-wide v13, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7, v13, v14}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v12

    .line 813
    .local v12, startDay:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 814
    .local v11, path:Ljava/lang/StringBuilder;
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 815
    const/16 v0, 0x2f

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 816
    add-int/lit8 v0, v12, 0x3c

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 818
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 819
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query uri : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const/4 v5, 0x0

    .line 823
    .local v5, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 824
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 825
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    iput-wide v6, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mSelectedId:J

    .line 826
    iget-wide v6, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mSelectedId:J

    const-wide/16 v13, 0x0

    cmp-long v0, v6, v13

    if-eqz v0, :cond_1

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calendar_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mSelectedId:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 850
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mQueryHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;->cancelOperation(I)V

    .line 851
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query uri : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mQueryHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;

    sget-object v4, Lcom/htc/htccalendarwidgets/CalendarConstants;->INSTANCES_PROJ:[Ljava/lang/String;

    const-string v7, "startDay ASC, begin ASC, title ASC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbEventChanged:Z

    .line 854
    return-void

    .line 829
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 831
    :cond_2
    const-string v5, "("

    .line 832
    const/4 v10, 0x1

    .line 833
    .local v10, index:I
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 834
    .local v8, i:I
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v10, v0, :cond_3

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "calendar_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " OR "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 838
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 837
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "calendar_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 843
    .end local v8           #i:I
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #index:I
    :cond_4
    const-string v5, "visible=1"

    goto/16 :goto_0
.end method

.method private showListView(Z)V
    .locals 4
    .parameter "bShow"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 672
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxListView;->setVisibility(Z)Ljava/util/ArrayList;

    .line 674
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_2

    .line 675
    if-nez p1, :cond_1

    .line 676
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->hideLoadMessage()V

    .line 677
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 678
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->setVisibility(Z)Ljava/util/ArrayList;

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 682
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0

    .line 685
    :cond_2
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->hideLoadMessage()V

    goto :goto_0
.end method

.method private showLoadMessages()V
    .locals 3

    .prologue
    .line 690
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 692
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20c00a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 695
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 696
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized buildArray(Landroid/database/Cursor;)V
    .locals 8
    .parameter "cursor"

    .prologue
    .line 861
    monitor-enter p0

    if-nez p1, :cond_1

    .line 894
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 864
    :cond_1
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 867
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 871
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>>>>>>>>>>>>>>>> Extract cursor, cursor size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " <<<<<<<<<<<<<<<<<<<<<<<<<<<<<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->extractEvent(Landroid/database/Cursor;)Lcom/htc/htccalendarwidgets/AgendaEvent;

    move-result-object v1

    .line 874
    .local v1, ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mExtractThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_2

    .line 880
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v3, ">>>>>>>>>>>>>>>>>>> Extract cursor end <<<<<<<<<<<<<<<<<<<<<<<<<<<<<"

    invoke-static {v2, v3}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 882
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 883
    :cond_4
    const/4 p1, 0x0

    .line 885
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mExtractThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_9

    .line 886
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    const/16 v4, 0x1a10

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 890
    :goto_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mProcessIndex:I

    .line 891
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbTimeChanged:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 861
    .end local v1           #ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 876
    :catch_0
    move-exception v0

    .line 878
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v3, "buildArray(), "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 880
    :try_start_4
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v3, ">>>>>>>>>>>>>>>>>>> Extract cursor end <<<<<<<<<<<<<<<<<<<<<<<<<<<<<"

    invoke-static {v2, v3}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 882
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 883
    :cond_5
    const/4 p1, 0x0

    .line 885
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mExtractThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_8

    .line 886
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    const/16 v4, 0x1a10

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 890
    :goto_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mProcessIndex:I

    .line 891
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbTimeChanged:Z

    goto/16 :goto_0

    .line 880
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v4, ">>>>>>>>>>>>>>>>>>> Extract cursor end <<<<<<<<<<<<<<<<<<<<<<<<<<<<<"

    invoke-static {v3, v4}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 882
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 883
    :cond_6
    const/4 p1, 0x0

    .line 885
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mExtractThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_7

    .line 886
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    const/16 v5, 0x1a10

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 890
    :goto_3
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mProcessIndex:I

    .line 891
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbTimeChanged:Z

    .line 880
    throw v2

    .line 888
    :cond_7
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Thread has been interrupted, do not send msg to update UI"

    invoke-static {v3, v4}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .restart local v0       #e:Ljava/lang/Exception;
    :cond_8
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Thread has been interrupted, do not send msg to update UI"

    invoke-static {v2, v3}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    :cond_9
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Thread has been interrupted, do not send msg to update UI"

    invoke-static {v2, v3}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method public calculateDays(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 28
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccalendarwidgets/AgendaEvent;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccalendarwidgets/RowInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1078
    .local p1, elist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htccalendarwidgets/AgendaEvent;>;"
    if-nez p1, :cond_1

    .line 1079
    const/16 v24, 0x0

    .line 1182
    :cond_0
    return-object v24

    .line 1082
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 1083
    .local v17, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htccalendarwidgets/AgendaEvent;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1084
    .local v24, rowInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htccalendarwidgets/RowInfo;>;"
    const/16 v23, -0x1

    .line 1085
    .local v23, prevStartDay:I
    new-instance v26, Landroid/text/format/Time;

    invoke-direct/range {v26 .. v26}, Landroid/text/format/Time;-><init>()V

    .line 1086
    .local v26, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 1087
    .local v21, now:J
    move-object/from16 v0, v26

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1088
    move-object/from16 v0, v26

    iget-wide v6, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, v21

    invoke-static {v0, v1, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v27

    .line 1090
    .local v27, todayJulianDay:I
    new-instance v20, Ljava/util/LinkedList;

    invoke-direct/range {v20 .. v20}, Ljava/util/LinkedList;-><init>()V

    .line 1091
    .local v20, multipleDayList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/htccalendarwidgets/AgendaListWidget$MultipleDayInfo;>;"
    const/4 v4, 0x0

    .line 1092
    .local v4, position:I
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/htccalendarwidgets/AgendaEvent;

    .line 1094
    .local v12, e:Lcom/htc/htccalendarwidgets/AgendaEvent;
    iget-wide v6, v12, Lcom/htc/htccalendarwidgets/AgendaEvent;->startDay_:J

    long-to-int v3, v6

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1095
    .local v25, startDay:I
    iget-wide v6, v12, Lcom/htc/htccalendarwidgets/AgendaEvent;->endDay_:J

    long-to-int v5, v6

    .line 1097
    .local v5, endDay:I
    move/from16 v0, v25

    move/from16 v1, v23

    if-eq v0, v1, :cond_3

    .line 1099
    const/4 v3, -0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_5

    .line 1100
    new-instance v3, Lcom/htc/htccalendarwidgets/RowInfo;

    const/4 v6, 0x0

    move/from16 v0, v25

    invoke-direct {v3, v6, v0}, Lcom/htc/htccalendarwidgets/RowInfo;-><init>(II)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1134
    :cond_2
    :goto_1
    move/from16 v23, v25

    .line 1138
    :cond_3
    new-instance v3, Lcom/htc/htccalendarwidgets/RowInfo;

    const/4 v6, 0x1

    invoke-direct {v3, v6, v4}, Lcom/htc/htccalendarwidgets/RowInfo;-><init>(II)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1142
    move/from16 v0, v25

    if-le v5, v0, :cond_4

    .line 1143
    new-instance v3, Lcom/htc/htccalendarwidgets/AgendaListWidget$MultipleDayInfo;

    iget-wide v6, v12, Lcom/htc/htccalendarwidgets/AgendaEvent;->begin_:J

    iget-wide v8, v12, Lcom/htc/htccalendarwidgets/AgendaEvent;->end_:J

    invoke-direct/range {v3 .. v9}, Lcom/htc/htccalendarwidgets/AgendaListWidget$MultipleDayInfo;-><init>(IIJJ)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1146
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 1147
    goto :goto_0

    .line 1105
    :cond_5
    const/4 v11, 0x0

    .line 1106
    .local v11, dayHeaderAdded:Z
    add-int/lit8 v10, v23, 0x1

    .local v10, currentDay:I
    :goto_2
    move/from16 v0, v25

    if-gt v10, v0, :cond_9

    .line 1107
    const/4 v11, 0x0

    .line 1108
    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 1109
    .local v15, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/htccalendarwidgets/AgendaListWidget$MultipleDayInfo;>;"
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1110
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/htccalendarwidgets/AgendaListWidget$MultipleDayInfo;

    .line 1113
    .local v14, info:Lcom/htc/htccalendarwidgets/AgendaListWidget$MultipleDayInfo;
    iget v3, v14, Lcom/htc/htccalendarwidgets/AgendaListWidget$MultipleDayInfo;->mEndDay:I

    if-ge v3, v10, :cond_6

    .line 1114
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 1120
    :cond_6
    if-nez v11, :cond_7

    .line 1121
    new-instance v3, Lcom/htc/htccalendarwidgets/RowInfo;

    const/4 v6, 0x0

    invoke-direct {v3, v6, v10}, Lcom/htc/htccalendarwidgets/RowInfo;-><init>(II)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    const/4 v11, 0x1

    .line 1124
    :cond_7
    new-instance v3, Lcom/htc/htccalendarwidgets/RowInfo;

    const/4 v6, 0x1

    iget v7, v14, Lcom/htc/htccalendarwidgets/AgendaListWidget$MultipleDayInfo;->mPosition:I

    invoke-direct {v3, v6, v7}, Lcom/htc/htccalendarwidgets/RowInfo;-><init>(II)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1106
    .end local v14           #info:Lcom/htc/htccalendarwidgets/AgendaListWidget$MultipleDayInfo;
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1130
    .end local v15           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/htccalendarwidgets/AgendaListWidget$MultipleDayInfo;>;"
    :cond_9
    if-nez v11, :cond_2

    .line 1131
    new-instance v3, Lcom/htc/htccalendarwidgets/RowInfo;

    const/4 v6, 0x0

    move/from16 v0, v25

    invoke-direct {v3, v6, v0}, Lcom/htc/htccalendarwidgets/RowInfo;-><init>(II)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1151
    .end local v5           #endDay:I
    .end local v10           #currentDay:I
    .end local v11           #dayHeaderAdded:Z
    .end local v12           #e:Lcom/htc/htccalendarwidgets/AgendaEvent;
    .end local v25           #startDay:I
    :cond_a
    if-lez v23, :cond_0

    .line 1155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide v8, 0x134fd9000L

    add-long/2addr v6, v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 1156
    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v18

    .line 1157
    .local v18, millis:J
    move-object/from16 v0, v26

    iget-wide v6, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v16

    .line 1159
    .local v16, lastDayOfMonth:I
    add-int/lit8 v10, v23, 0x1

    .restart local v10       #currentDay:I
    :goto_4
    move/from16 v0, v16

    if-gt v10, v0, :cond_0

    .line 1160
    const/4 v11, 0x0

    .line 1161
    .restart local v11       #dayHeaderAdded:Z
    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 1162
    .restart local v15       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/htccalendarwidgets/AgendaListWidget$MultipleDayInfo;>;"
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1163
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/htccalendarwidgets/AgendaListWidget$MultipleDayInfo;

    .line 1166
    .restart local v14       #info:Lcom/htc/htccalendarwidgets/AgendaListWidget$MultipleDayInfo;
    iget v3, v14, Lcom/htc/htccalendarwidgets/AgendaListWidget$MultipleDayInfo;->mEndDay:I

    if-ge v3, v10, :cond_b

    .line 1167
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 1173
    :cond_b
    if-nez v11, :cond_c

    .line 1174
    new-instance v3, Lcom/htc/htccalendarwidgets/RowInfo;

    const/4 v6, 0x0

    invoke-direct {v3, v6, v10}, Lcom/htc/htccalendarwidgets/RowInfo;-><init>(II)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1175
    const/4 v11, 0x1

    .line 1177
    :cond_c
    new-instance v3, Lcom/htc/htccalendarwidgets/RowInfo;

    const/4 v6, 0x1

    iget v7, v14, Lcom/htc/htccalendarwidgets/AgendaListWidget$MultipleDayInfo;->mPosition:I

    invoke-direct {v3, v6, v7}, Lcom/htc/htccalendarwidgets/RowInfo;-><init>(II)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1159
    .end local v14           #info:Lcom/htc/htccalendarwidgets/AgendaListWidget$MultipleDayInfo;
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_4
.end method

.method public checkTime()V
    .locals 2

    .prologue
    .line 1204
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->isDateChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkTime, date changed."

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    const/16 v1, 0x1a0c

    invoke-virtual {v0, v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->sendEmptyMessage(I)Z

    .line 1208
    :cond_0
    return-void
.end method

.method public getHostContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 467
    iget v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 468
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 470
    :cond_0
    iget v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 471
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method public getSettingIntent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 420
    new-instance v0, Ljava/lang/String;

    const-string v1, "#Intent;action=CalendarOption;component=com.htc.htccalendarwidgets/.ManageCalendarsActivity;end"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getWidgetBase()Lcom/htc/android/rosie/widget/Widget$Base;
    .locals 0

    .prologue
    .line 446
    return-object p0
.end method

.method public getWidgetContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetHost()Lcom/htc/android/rosie/widget/Widget$Host;
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetScene()Lcom/htc/fusion/fx/FxScene;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method public getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "callback"

    .prologue
    .line 434
    if-nez p1, :cond_0

    .line 435
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 437
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v0

    goto :goto_0
.end method

.method public goToToday()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1211
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1212
    .local v0, mTimeToday:Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 1213
    iget v4, v0, Landroid/text/format/Time;->month:I

    const/16 v5, 0x14

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 1214
    .local v1, month:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mMonthTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v4, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1215
    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1216
    .local v3, today:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mDayTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v4, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1217
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mMonthTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v4, v6}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1218
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mDayTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v4, v6}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1220
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 1221
    .local v2, now:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 1222
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mTime:Landroid/text/format/Time;

    .line 1223
    return-void
.end method

.method public isDateChanged()Z
    .locals 3

    .prologue
    .line 1191
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1192
    .local v0, now:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1194
    iget v1, v0, Landroid/text/format/Time;->year:I

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->lastTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->year:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/text/format/Time;->month:I

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->lastTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->month:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->lastTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->monthDay:I

    if-ne v1, v2, :cond_0

    .line 1195
    const/4 v1, 0x0

    .line 1200
    :goto_0
    return v1

    .line 1199
    :cond_0
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->lastTime:Landroid/text/format/Time;

    invoke-virtual {v1, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1200
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v3, -0x1

    .line 381
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;

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

    .line 383
    if-ne p2, v3, :cond_0

    if-nez p3, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    invoke-direct {p0, p3}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->prepareInstanceData(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfiguration"

    .prologue
    const/16 v5, 0x15b6

    const/4 v4, 0x1

    .line 362
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 363
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    const-string v0, "Landscape"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_3

    .line 365
    iput-boolean v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->bDoOrientation:Z

    .line 368
    :goto_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mOrientation:I

    .line 369
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getScrollOffset()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mFirstVisibleItemIndex:Landroid/graphics/PointF;

    .line 372
    :cond_0
    iput-boolean v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->bLoacteCurrentItemPosition:Z

    .line 374
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v5}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v5}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 377
    :cond_1
    return-void

    .line 363
    :cond_2
    const-string v0, "Protrait"

    goto :goto_0

    .line 367
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->bDoOrientation:Z

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 165
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onCreate(Landroid/os/Bundle;)V

    .line 166
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->preloadScene()V

    .line 175
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->getWidgetContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mContext:Landroid/content/Context;

    .line 177
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mOrientation:I

    .line 178
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbCalendarChange:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbCalendarChange:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iput-boolean v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbInitialize:Z

    .line 181
    iput-boolean v5, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbEventChanged:Z

    .line 183
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->releaseControl()V

    .line 184
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->initLayout()V

    .line 186
    iget-boolean v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbNoScene:Z

    if-eqz v1, :cond_0

    .line 220
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v1

    new-instance v2, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;

    invoke-direct {v2, p0, v6}, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;-><init>(Lcom/htc/htccalendarwidgets/AgendaListWidget;Lcom/htc/htccalendarwidgets/AgendaListWidget$1;)V

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 190
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    if-nez v1, :cond_1

    .line 191
    new-instance v1, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    invoke-direct {v1, p0, v6}, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;-><init>(Lcom/htc/htccalendarwidgets/AgendaListWidget;Lcom/htc/htccalendarwidgets/AgendaListWidget$1;)V

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mResources:Landroid/content/res/Resources;

    .line 194
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mContentResolver:Landroid/content/ContentResolver;

    .line 196
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;

    .line 199
    :cond_2
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mQueryHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;

    if-nez v1, :cond_3

    .line 200
    new-instance v1, Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v1, p0, v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;-><init>(Lcom/htc/htccalendarwidgets/AgendaListWidget;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mQueryHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;

    .line 202
    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 203
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    const-string v1, "com.htc.calendar.event_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string v1, "android.intent.action.TIMEFORMAT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mDateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->goToToday()V

    .line 213
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->clearLastQueryTime()V

    .line 215
    iget v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetId:I

    if-gez v1, :cond_4

    .line 216
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->getWidgetID()I

    move-result v1

    iput v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetId:I

    .line 217
    :cond_4
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWidgetId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/htccalendarwidgets/CalendarConstants;->fetchSystemDateFormat(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 251
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onDestroy"

    invoke-static {v2, v3}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->bWidgetDestroy:Z

    .line 253
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mDateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 254
    iput-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mDateReceiver:Landroid/content/BroadcastReceiver;

    .line 256
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mExtractThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 257
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mExtractThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 259
    :cond_0
    iput-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mExtractThread:Ljava/lang/Thread;

    .line 261
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->removeAllMsg()V

    .line 262
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->releaseControl()V

    .line 264
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mDayAdapter:Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;

    if-eqz v2, :cond_1

    .line 265
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mDayAdapter:Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;

    invoke-virtual {v2}, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->clear()V

    .line 266
    iput-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mDayAdapter:Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;

    .line 269
    :cond_1
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAdapter:Lcom/htc/htccalendarwidgets/FxAgendaAdapter;

    if-eqz v2, :cond_2

    .line 270
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAdapter:Lcom/htc/htccalendarwidgets/FxAgendaAdapter;

    invoke-virtual {v2}, Lcom/htc/htccalendarwidgets/FxAgendaAdapter;->clear()V

    .line 271
    iput-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAdapter:Lcom/htc/htccalendarwidgets/FxAgendaAdapter;

    .line 274
    :cond_2
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAppHitboxListener:Lcom/htc/fusion/fx/MessageListener;

    if-eqz v2, :cond_3

    .line 275
    iput-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAppHitboxListener:Lcom/htc/fusion/fx/MessageListener;

    .line 278
    :cond_3
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mListItemCallBackHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$ListItemCallBackHandler;

    if-eqz v2, :cond_4

    .line 279
    iput-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mListItemCallBackHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$ListItemCallBackHandler;

    .line 282
    :cond_4
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mListItemEventListener:Lcom/htc/fusion/fx/MessageListener;

    if-eqz v2, :cond_5

    .line 283
    iput-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mListItemEventListener:Lcom/htc/fusion/fx/MessageListener;

    .line 285
    :cond_5
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;

    if-eqz v2, :cond_6

    .line 286
    iput-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;

    .line 289
    :cond_6
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mHeaderBtnClickListener:Lcom/htc/fusion/fx/MessageListener;

    if-eqz v2, :cond_7

    .line 290
    iput-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mHeaderBtnClickListener:Lcom/htc/fusion/fx/MessageListener;

    .line 292
    :cond_7
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v2, :cond_8

    .line 293
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    invoke-interface {v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host;->destroyScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 294
    iput-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 297
    :cond_8
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    if-eqz v2, :cond_9

    .line 298
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    invoke-interface {v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host;->destroyScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 299
    iput-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    .line 302
    :cond_9
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    if-eqz v2, :cond_a

    .line 303
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    invoke-interface {v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host;->destroyScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 304
    iput-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    .line 308
    :cond_a
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;

    if-eqz v2, :cond_d

    .line 309
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccalendarwidgets/AgendaEvent;

    .line 310
    .local v0, e:Lcom/htc/htccalendarwidgets/AgendaEvent;
    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->bitmap_:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_b

    .line 311
    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->bitmap_:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 312
    iput-object v4, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->bitmap_:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 315
    .end local v0           #e:Lcom/htc/htccalendarwidgets/AgendaEvent;
    :cond_c
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 318
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_d
    iput-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;

    .line 320
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mRowInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_e

    .line 321
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mRowInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 322
    :cond_e
    iput-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mRowInfoList:Ljava/util/ArrayList;

    .line 324
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v2, :cond_f

    .line 325
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 326
    :cond_f
    iput-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mSelectedList:Ljava/util/ArrayList;

    .line 328
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbCalendarChange:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 329
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbCalendarChange:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 331
    :cond_10
    iput-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbCalendarChange:Ljava/util/HashMap;

    .line 333
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_11

    .line 334
    iput-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mContext:Landroid/content/Context;

    .line 337
    :cond_11
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v2, :cond_12

    .line 338
    iput-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mContentResolver:Landroid/content/ContentResolver;

    .line 341
    :cond_12
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onDestroy()V

    .line 342
    return-void
.end method

.method public onEdit()V
    .locals 4

    .prologue
    .line 410
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->getSettingIntent()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 411
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "selected_id"

    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 412
    iget v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetId:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onHostMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 393
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 399
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onHostMessage(Landroid/os/Message;)V

    .line 400
    return-void

    .line 395
    :pswitch_0
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "HOST_ORIENTATION_CHANGE_COMPLETE"

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15bb

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto :goto_0

    .line 393
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 346
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onPause()V

    .line 347
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mIsShown:Z

    .line 349
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b5

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 350
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedState"

    .prologue
    .line 224
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onPostCreate(Landroid/os/Bundle;)V

    .line 225
    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v6, "onPostCreate"

    invoke-static {v5, v6}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mSelectedList:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 227
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mSelectedList:Ljava/util/ArrayList;

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->loadInstanceData()Ljava/util/Properties;

    move-result-object v4

    .line 230
    .local v4, originalProps:Ljava/util/Properties;
    if-eqz v4, :cond_3

    .line 231
    const-string v5, "selected_id"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, instr:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/CalendarConstants;->stringToArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 233
    .local v3, l:Ljava/util/ArrayList;
    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 234
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 235
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_1
    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 239
    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mSelectedList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mSelectedId:J

    .line 247
    .end local v0           #i:I
    .end local v1           #instr:Ljava/lang/String;
    .end local v3           #l:Ljava/util/ArrayList;
    :cond_2
    :goto_1
    return-void

    .line 241
    :cond_3
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 242
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 243
    invoke-direct {p0, v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->prepareInstanceData(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 354
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onResume()V

    .line 355
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mIsShown:Z

    .line 357
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x15b4

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 358
    return-void
.end method

.method public onTiltChanged(F)V
    .locals 3
    .parameter "tilt"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->m_nTiltStartFrame:I

    iget v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->m_nTiltEndFrame:I

    invoke-static {p1, v1, v2}, Lcom/htc/android/rosie/widget/WidgetHelper;->convertTiltAngleToFrame(FII)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 504
    :cond_0
    return-void
.end method

.method public setAdapter(Ljava/util/ArrayList;Z)V
    .locals 6
    .parameter
    .parameter "bChanged"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccalendarwidgets/AgendaEvent;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 617
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htccalendarwidgets/AgendaEvent;>;"
    if-nez p1, :cond_0

    .line 618
    :try_start_0
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 619
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    const/16 v3, 0x1a11

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 669
    :goto_0
    return-void

    .line 623
    :cond_0
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAdapter:Lcom/htc/htccalendarwidgets/FxAgendaAdapter;

    if-nez v1, :cond_1

    .line 624
    new-instance v1, Lcom/htc/htccalendarwidgets/FxAgendaAdapter;

    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->getWidgetContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/htc/htccalendarwidgets/FxAgendaAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAdapter:Lcom/htc/htccalendarwidgets/FxAgendaAdapter;

    .line 626
    :cond_1
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAdapter:Lcom/htc/htccalendarwidgets/FxAgendaAdapter;

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/htc/htccalendarwidgets/FxAgendaAdapter;->changeAdapter(Ljava/util/Collection;)V

    .line 628
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mListItemCallBackHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$ListItemCallBackHandler;

    if-nez v1, :cond_2

    .line 629
    new-instance v1, Lcom/htc/htccalendarwidgets/AgendaListWidget$ListItemCallBackHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget$ListItemCallBackHandler;-><init>(Lcom/htc/htccalendarwidgets/AgendaListWidget;Lcom/htc/htccalendarwidgets/AgendaListWidget$1;)V

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mListItemCallBackHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$ListItemCallBackHandler;

    .line 632
    :cond_2
    if-eqz p2, :cond_3

    .line 633
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->calculateDays(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mRowInfoList:Ljava/util/ArrayList;

    .line 634
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mListItemCallBackHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$ListItemCallBackHandler;

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mRowInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget$ListItemCallBackHandler;->setRowInfo(Ljava/util/ArrayList;)V

    .line 637
    :cond_3
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mListItemCallBackHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$ListItemCallBackHandler;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxListView;->setListViewItemCallbackHandler(Lcom/htc/fusion/fx/controls/FxListViewItemCallbackHandler;)V

    .line 639
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mDayAdapter:Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;

    if-nez v1, :cond_6

    .line 640
    new-instance v1, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mRowInfoList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAdapter:Lcom/htc/htccalendarwidgets/FxAgendaAdapter;

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/htc/htccalendarwidgets/FxAgendaAdapter;)V

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mDayAdapter:Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;

    .line 642
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v1, :cond_4

    .line 643
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mDayAdapter:Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    const/16 v3, 0x28

    invoke-virtual {v1, v2, v3}, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->bindListView(Lcom/htc/fusion/fx/controls/FxListView;I)V

    .line 656
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v1, :cond_5

    .line 657
    iget-boolean v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->bLoacteCurrentItemPosition:Z

    if-eqz v1, :cond_5

    .line 658
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mFirstVisibleItemIndex:Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/fusion/fx/controls/FxListView;->setScrollOffset(Landroid/graphics/PointF;I)V

    .line 659
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->bLoacteCurrentItemPosition:Z

    .line 664
    :cond_5
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const/high16 v2, 0x4120

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 647
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mDayAdapter:Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;

    invoke-virtual {v1}, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->clear()V

    .line 648
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v1, :cond_7

    .line 649
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mDayAdapter:Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    const/16 v3, 0x28

    invoke-virtual {v1, v2, v3}, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->bindListView(Lcom/htc/fusion/fx/controls/FxListView;I)V

    .line 651
    :cond_7
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mDayAdapter:Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget;->mRowInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/htc/htccalendarwidgets/FxAgendaByDayAdapter;->changeAdapter(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
