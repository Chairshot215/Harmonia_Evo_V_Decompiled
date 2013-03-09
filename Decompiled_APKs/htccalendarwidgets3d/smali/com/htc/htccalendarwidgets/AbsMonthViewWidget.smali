.class public abstract Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;
.super Lcom/htc/android/rosie/widget/Widget$Base;
.source "AbsMonthViewWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;,
        Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$EventLoaderRunnable;,
        Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;,
        Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;,
        Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;,
        Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final ACTION_CALENDAR_PICKER_CHANGED:Ljava/lang/String; = "action.calendars.picker.changed"

.field protected static final ACTION_CALENDAR_START_DAY_CHANGED:Ljava/lang/String; = "action.start.week.day.changed"

.field protected static final ACTION_LUNAR_SHOW_CHANGED:Ljava/lang/String; = "action.lunar.show.changed"

.field protected static final ACTION_TIME_FORMAT_CHANGED:Ljava/lang/String; = "android.intent.action.TIMEFORMAT_CHANGED"

.field protected static final CHEESBOARD_COUNTS:I = 0x2a

.field protected static final EVENT_NUM_DAYS:I = 0x1f

.field protected static LOG_TAG:Ljava/lang/String; = null

.field protected static M10_VIEW_PATH_LAND:Ljava/lang/String; = null

.field protected static M10_VIEW_PATH_PORT:Ljava/lang/String; = null

.field protected static final MAX_ITEMS:I = 0x3e9

.field protected static final MSG_DELAY:J = 0x5dcL

.field public static final SEPARATE_SYMBOL:Ljava/lang/String; = "#"

.field protected static lunar:Lcom/htc/htccalendarwidgets/LunarUtils; = null

.field protected static final sMSG_BASE:I = 0x13880

.field protected static final sMSG_CHECK_TIME:I = 0x13884

.field protected static final sMSG_CONFIGURATION_CHANGED:I = 0x13888

.field protected static final sMSG_EXTRACT_EVENTS:I = 0x13887

.field protected static final sMSG_PAUSE:I = 0x13882

.field protected static final sMSG_QUERY_AGENDA:I = 0x13886

.field protected static final sMSG_QUERY_MONTH:I = 0x13885

.field protected static final sMSG_RESUME:I = 0x13881

.field protected static final sMSG_RESUME_DELAY:I = 0x13883

.field protected static final sMSG_UPDATE_MONTH_DATA:I = 0x13889

.field protected static final sUIMSG_BASE:I = 0x11170

.field protected static final sUIMSG_DRAW_HEADER:I = 0x11173

.field protected static final sUIMSG_EVENT_CHANGED:I = 0x11177

.field protected static final sUIMSG_GOTO_TODAY:I = 0x11174

.field protected static final sUIMSG_HIDE_PROGRESS:I = 0x11179

.field protected static final sUIMSG_PREPARE_SWITCHER:I = 0x11175

.field protected static final sUIMSG_SHOW_DEFAUT_MONTH:I = 0x1117d

.field protected static final sUIMSG_SHOW_EVENT_VIEW:I = 0x11171

.field protected static final sUIMSG_SHOW_LISTVIEW:I = 0x1117c

.field protected static final sUIMSG_SHOW_NO_EVENT_VIEW:I = 0x11170

.field protected static final sUIMSG_SHOW_PROGRESS:I = 0x11178

.field protected static final sUIMSG_STOP_PROGRESS:I = 0x1117a

.field protected static final sUIMSG_TIME_CHANGED:I = 0x11176

.field protected static final sUIMSG_UPDATE_LISTVIEW:I = 0x1117b

.field protected static final sUIMSG_UPDATE_MONTH:I = 0x1117e


# instance fields
.field protected bDoOrientation:Z

.field protected bHaveLunarSetting:Z

.field protected bInitCompleted:Z

.field protected bNeedDrawHeader:Z

.field protected bNeedRefreshEvent:Z

.field protected bNeedToBindWithListViewAgain:Z

.field protected bShowLunar:Z

.field protected inForColor:Landroid/text/style/ForegroundColorSpan;

.field protected inForNormalColor:Landroid/text/style/ForegroundColorSpan;

.field protected inString:Landroid/text/SpannableStringBuilder;

.field protected inStyle:Landroid/text/style/StyleSpan;

.field private lastTime:Landroid/text/format/Time;

.field protected mActionScheduleEvent:Ljava/lang/String;

.field protected mBroadcastIntent:Landroid/content/Intent;

.field protected mBusyEventOtherDays:Landroid/graphics/drawable/Drawable;

.field protected mBusyEventToday:Landroid/graphics/drawable/Drawable;

.field protected mCollection_land:Lcom/htc/fusion/fx/controls/FxListViewCollection;

.field protected mCollection_port:Lcom/htc/fusion/fx/controls/FxListViewCollection;

.field protected mConcurrentPosition:I

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentSelectedTime:Landroid/text/format/Time;

.field protected mDay0:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mDay1:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mDay2:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mDay3:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mDay4:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mDay5:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mDay6:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mDaySelected:Landroid/graphics/Bitmap;

.field protected mDayTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mDayView:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mEventLoader:Lcom/htc/htccalendarwidgets/EventLoader;

.field protected mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccalendarwidgets/Event;",
            ">;"
        }
    .end annotation
.end field

.field protected mFirstJulianDay:I

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

.field protected mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

.field protected mInitialize:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mIsShow:Z

.field protected mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mMainPageTimeline_child:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mMonthList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;",
            ">;"
        }
    .end annotation
.end field

.field protected mMonthListItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mMonthTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mMonthViewList:Lcom/htc/fusion/fx/controls/FxListView;

.field private mMonthViewListItemEvent:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxListItemEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mMonthViewListViewEvent:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxListViewEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected mNeedUpdateMonthData:Z

.field protected mOrientation:I

.field protected mOrientationCount:I

.field protected mResources:Landroid/content/res/Resources;

.field protected mSavedTime:Landroid/text/format/Time;

.field protected mStartDay:I

.field private mSuccessRunnable:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$EventLoaderRunnable;

.field protected mTempTime:Landroid/text/format/Time;

.field protected mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mTime:Landroid/text/format/Time;

.field protected mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mToday:Landroid/text/format/Time;

.field protected mTodayBtn:Landroid/graphics/Bitmap;

.field protected mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

.field protected mViewCalendar:Landroid/text/format/Time;

.field protected mWeekdayView:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mWidgetId:I

.field protected mWidgetScene:Lcom/htc/fusion/fx/FxScene;

.field protected mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

.field protected mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

.field protected mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

.field protected m_nTiltEndFrame:I

.field protected m_nTiltStartFrame:I

.field protected mbIsFirstOrientation:Z

.field protected mbNeedCheckTime:Z

.field protected mbNeedGoToToday:Z

.field protected mbNeedLocateDefaultMonth:Z

.field protected mbNeedShowTodayEvents:Z

.field protected mbNeedUpdateEvents:Z

.field protected mbNoScene:Z

.field protected mbSetCollectionDone:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mbTimeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    const-class v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->$assertionsDisabled:Z

    .line 60
    const-string v0, "HTCWidget_MonthViewWidget"

    sput-object v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    .line 129
    sput-object v1, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->M10_VIEW_PATH_PORT:Ljava/lang/String;

    .line 130
    sput-object v1, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->M10_VIEW_PATH_LAND:Ljava/lang/String;

    .line 210
    sput-object v1, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->lunar:Lcom/htc/htccalendarwidgets/LunarUtils;

    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;-><init>()V

    .line 104
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mTime:Landroid/text/format/Time;

    .line 114
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mIsShow:Z

    .line 115
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mInitialize:Z

    .line 116
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedUpdateEvents:Z

    .line 117
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedGoToToday:Z

    .line 118
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedCheckTime:Z

    .line 119
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbTimeChanged:Z

    .line 120
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedShowTodayEvents:Z

    .line 122
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bNeedDrawHeader:Z

    .line 125
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bShowLunar:Z

    .line 126
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bHaveLunarSetting:Z

    .line 162
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mContext:Landroid/content/Context;

    .line 166
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mSavedTime:Landroid/text/format/Time;

    .line 168
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mCurrentSelectedTime:Landroid/text/format/Time;

    .line 172
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mTempTime:Landroid/text/format/Time;

    .line 176
    iput v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mConcurrentPosition:I

    .line 177
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedLocateDefaultMonth:Z

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mEvents:Ljava/util/ArrayList;

    .line 192
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNoScene:Z

    .line 195
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bNeedRefreshEvent:Z

    .line 196
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bNeedToBindWithListViewAgain:Z

    .line 197
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bInitCompleted:Z

    .line 199
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mNeedUpdateMonthData:Z

    .line 201
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetId:I

    .line 202
    iput v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->m_nTiltStartFrame:I

    .line 203
    iput v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->m_nTiltEndFrame:I

    .line 205
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inString:Landroid/text/SpannableStringBuilder;

    .line 206
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inStyle:Landroid/text/style/StyleSpan;

    .line 207
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inForColor:Landroid/text/style/ForegroundColorSpan;

    .line 208
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inForNormalColor:Landroid/text/style/ForegroundColorSpan;

    .line 212
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthListItem:Ljava/util/ArrayList;

    .line 214
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbIsFirstOrientation:Z

    .line 215
    iput v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mOrientationCount:I

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbSetCollectionDone:Ljava/util/ArrayList;

    .line 720
    new-instance v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$1;

    invoke-direct {v0, p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$1;-><init>(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;)V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mHeaderBtnClickListener:Lcom/htc/fusion/fx/MessageListener;

    .line 730
    new-instance v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$2;

    invoke-direct {v0, p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$2;-><init>(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;)V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthViewListViewEvent:Lcom/htc/fusion/fx/MessageListener;

    .line 768
    new-instance v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$3;

    invoke-direct {v0, p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$3;-><init>(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;)V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthViewListItemEvent:Lcom/htc/fusion/fx/MessageListener;

    .line 1301
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->lastTime:Landroid/text/format/Time;

    .line 1780
    new-instance v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$4;

    invoke-direct {v0, p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$4;-><init>(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;)V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;)Lcom/htc/android/rosie/widget/Widget$Host;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->checkLunarCalendar(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;Landroid/text/format/Time;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->updateMonthData(Landroid/text/format/Time;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->surpressHostSlide(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->surpressHostSlide(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->setGridItem(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;II)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->refreshGridItem(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;II)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->setCollection()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->updateMonth()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->isSupportLunarResolution()Z

    move-result v0

    return v0
.end method

.method private checkLunarCalendar(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/4 v0, 0x0

    .line 1230
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->isSupportLunarCalendar()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1231
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getLunarCalendarSetting()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->isSupportLunarResolution()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bShowLunar:Z

    .line 1232
    new-instance v0, Lcom/htc/htccalendarwidgets/LunarUtils;

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1}, Lcom/htc/htccalendarwidgets/LunarUtils;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->lunar:Lcom/htc/htccalendarwidgets/LunarUtils;

    .line 1234
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bHaveLunarSetting:Z

    if-nez v0, :cond_1

    .line 1235
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->isSupportLunarResolution()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bShowLunar:Z

    .line 1236
    :cond_1
    if-eqz p1, :cond_2

    .line 1237
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    const v1, 0x11173

    invoke-virtual {v0, v1}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->sendEmptyMessage(I)Z

    .line 1241
    :cond_2
    :goto_0
    sget-object v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bShowLunar : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bShowLunar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    return-void

    .line 1239
    :cond_3
    iput-boolean v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bShowLunar:Z

    goto :goto_0
.end method

.method private createMonth(ILandroid/text/format/Time;Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;)Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;
    .locals 10
    .parameter "index"
    .parameter "t_"
    .parameter "m_"

    .prologue
    const/16 v8, 0xb

    .line 836
    if-nez p3, :cond_1

    .line 837
    new-instance v3, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;

    invoke-direct {v3, p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;-><init>(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;)V

    .line 843
    .local v3, m:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;
    :goto_0
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 844
    .local v5, t:Landroid/text/format/Time;
    if-nez p2, :cond_2

    .line 845
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mViewCalendar:Landroid/text/format/Time;

    iget v6, v6, Landroid/text/format/Time;->year:I

    iput v6, v5, Landroid/text/format/Time;->year:I

    .line 846
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mViewCalendar:Landroid/text/format/Time;

    iget v6, v6, Landroid/text/format/Time;->month:I

    iput v6, v5, Landroid/text/format/Time;->month:I

    .line 851
    :goto_1
    iget v6, v5, Landroid/text/format/Time;->month:I

    add-int/lit8 v7, p1, -0x1

    add-int/2addr v6, v7

    iput v6, v5, Landroid/text/format/Time;->month:I

    .line 853
    iget v6, v5, Landroid/text/format/Time;->month:I

    if-gez v6, :cond_3

    .line 854
    iget v6, v5, Landroid/text/format/Time;->year:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Landroid/text/format/Time;->year:I

    .line 855
    iput v8, v5, Landroid/text/format/Time;->month:I

    .line 860
    :cond_0
    :goto_2
    iput-object v5, v3, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->time_:Landroid/text/format/Time;

    .line 861
    invoke-static {v5}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->formatMonthYear(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->title_:Ljava/lang/String;

    .line 863
    new-instance v0, Landroid/util/DayOfMonthCursor;

    iget-object v6, v3, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->time_:Landroid/text/format/Time;

    iget v6, v6, Landroid/text/format/Time;->year:I

    iget-object v7, v3, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->time_:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->month:I

    iget-object v8, v3, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->time_:Landroid/text/format/Time;

    iget v8, v8, Landroid/text/format/Time;->monthDay:I

    iget v9, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mStartDay:I

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/util/DayOfMonthCursor;-><init>(IIII)V

    .line 865
    .local v0, c:Landroid/util/DayOfMonthCursor;
    invoke-virtual {v0}, Landroid/util/DayOfMonthCursor;->getOffset()I

    move-result v6

    iput v6, v3, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->offset_:I

    .line 866
    invoke-virtual {v0}, Landroid/util/DayOfMonthCursor;->getYear()I

    move-result v6

    iput v6, v3, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->year_:I

    .line 867
    invoke-virtual {v0}, Landroid/util/DayOfMonthCursor;->getMonth()I

    move-result v6

    iput v6, v3, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->month_:I

    .line 868
    invoke-virtual {v0}, Landroid/util/DayOfMonthCursor;->getNumberOfDaysInMonth()I

    move-result v6

    iput v6, v3, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->numDayOfMonth_:I

    .line 872
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    const/16 v6, 0x2a

    if-ge v2, v6, :cond_4

    .line 873
    rem-int/lit8 v1, v2, 0x7

    .line 874
    .local v1, column:I
    div-int/lit8 v4, v2, 0x7

    .line 875
    .local v4, row:I
    iget-object v6, v3, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->listener:[Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;

    new-instance v7, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;

    invoke-virtual {v0, v4, v1}, Landroid/util/DayOfMonthCursor;->getDayAt(II)I

    move-result v8

    invoke-virtual {v0, v4, v1}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v9

    invoke-direct {v7, p0, v2, v8, v9}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;-><init>(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;IIZ)V

    aput-object v7, v6, v2

    .line 877
    sget-object v6, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createMonth(), listener["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]-->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->listener:[Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 839
    .end local v0           #c:Landroid/util/DayOfMonthCursor;
    .end local v1           #column:I
    .end local v2           #i:I
    .end local v3           #m:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;
    .end local v4           #row:I
    .end local v5           #t:Landroid/text/format/Time;
    :cond_1
    move-object v3, p3

    .line 840
    .restart local v3       #m:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;
    invoke-virtual {v3}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->clear()V

    goto/16 :goto_0

    .line 848
    .restart local v5       #t:Landroid/text/format/Time;
    :cond_2
    iget v6, p2, Landroid/text/format/Time;->year:I

    iput v6, v5, Landroid/text/format/Time;->year:I

    .line 849
    iget v6, p2, Landroid/text/format/Time;->month:I

    iput v6, v5, Landroid/text/format/Time;->month:I

    goto/16 :goto_1

    .line 856
    :cond_3
    iget v6, v5, Landroid/text/format/Time;->month:I

    if-le v6, v8, :cond_0

    .line 857
    iget v6, v5, Landroid/text/format/Time;->year:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroid/text/format/Time;->year:I

    .line 858
    const/4 v6, 0x0

    iput v6, v5, Landroid/text/format/Time;->month:I

    goto/16 :goto_2

    .line 881
    .restart local v0       #c:Landroid/util/DayOfMonthCursor;
    .restart local v2       #i:I
    :cond_4
    const/4 v0, 0x0

    .line 882
    return-object v3
.end method

.method private createMonthData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 886
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 887
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    .line 889
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 890
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v4, v4}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->createMonth(ILandroid/text/format/Time;Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;)Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 892
    :cond_1
    return-void
.end method

.method public static formatMonthYear(Landroid/text/format/Time;)Ljava/lang/String;
    .locals 1
    .parameter "time"

    .prologue
    .line 1215
    const-string v0, "%B %Y"

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLunarCalendarSetting()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1220
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "calendar_show_lunar"

    invoke-static {v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1221
    .local v0, show_lunar:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1222
    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bHaveLunarSetting:Z

    .line 1226
    :goto_0
    return v1

    .line 1225
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bHaveLunarSetting:Z

    .line 1226
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private getLunarString(ZIIILandroid/text/format/Time;)Ljava/lang/String;
    .locals 5
    .parameter "isWithinCurrentMonth"
    .parameter "row"
    .parameter "column"
    .parameter "monthDay"
    .parameter "time"

    .prologue
    const/4 v2, 0x0

    .line 1245
    iget-boolean v4, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bShowLunar:Z

    if-nez v4, :cond_1

    .line 1267
    :cond_0
    :goto_0
    return-object v2

    .line 1249
    :cond_1
    iget v1, p5, Landroid/text/format/Time;->month:I

    .line 1250
    .local v1, month:I
    iget v3, p5, Landroid/text/format/Time;->year:I

    .line 1252
    .local v3, year:I
    if-nez p1, :cond_2

    .line 1253
    if-nez p2, :cond_3

    .line 1254
    add-int/lit8 v1, v1, -0x1

    .line 1260
    :cond_2
    :goto_1
    sget-object v4, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->lunar:Lcom/htc/htccalendarwidgets/LunarUtils;

    if-eqz v4, :cond_0

    .line 1261
    sget-object v4, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->lunar:Lcom/htc/htccalendarwidgets/LunarUtils;

    invoke-virtual {v4, v3, v1, p4}, Lcom/htc/htccalendarwidgets/LunarUtils;->set(III)V

    .line 1262
    sget-object v4, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->lunar:Lcom/htc/htccalendarwidgets/LunarUtils;

    invoke-virtual {v4}, Lcom/htc/htccalendarwidgets/LunarUtils;->getLunarDate()Ljava/lang/String;

    move-result-object v0

    .line 1263
    .local v0, lunarString:Ljava/lang/String;
    sget-object v4, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->lunar:Lcom/htc/htccalendarwidgets/LunarUtils;

    invoke-virtual {v4}, Lcom/htc/htccalendarwidgets/LunarUtils;->getSolarHoliday()Ljava/lang/String;

    move-result-object v2

    .line 1265
    .local v2, solarHolidays:Ljava/lang/String;
    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    .line 1256
    .end local v0           #lunarString:Ljava/lang/String;
    .end local v2           #solarHolidays:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initTilt()V
    .locals 3

    .prologue
    .line 518
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "tilt"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    .line 520
    .local v0, marker:Lcom/htc/fusion/fx/Marker;
    if-eqz v0, :cond_0

    .line 521
    iget v1, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iput v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->m_nTiltStartFrame:I

    .line 522
    iget v1, v0, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    iput v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->m_nTiltEndFrame:I

    .line 525
    .end local v0           #marker:Lcom/htc/fusion/fx/Marker;
    :cond_0
    return-void
.end method

.method private isSupportLunarResolution()Z
    .locals 1

    .prologue
    .line 1272
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v0, :sswitch_data_0

    .line 1296
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1294
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1272
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x24 -> :sswitch_0
        0x3e -> :sswitch_0
        0x50 -> :sswitch_0
        0x61 -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
        0x88 -> :sswitch_0
        0x89 -> :sswitch_0
        0x8a -> :sswitch_0
        0x94 -> :sswitch_0
        0x95 -> :sswitch_0
        0x96 -> :sswitch_0
        0x97 -> :sswitch_0
        0xa9 -> :sswitch_0
        0xaa -> :sswitch_0
        0xad -> :sswitch_0
        0xdc -> :sswitch_0
        0xe0 -> :sswitch_0
    .end sparse-switch
.end method

.method private preloadScene()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 503
    invoke-static {v2, v3}, Lcom/htc/htccalendarwidgets/Components;->getWidgetScenePath(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->M10_VIEW_PATH_PORT:Ljava/lang/String;

    .line 504
    sget-object v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->M10_VIEW_PATH_PORT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    if-nez v0, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getWidgetHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    sget-object v1, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->M10_VIEW_PATH_PORT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    .line 509
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0, v3}, Lcom/htc/htccalendarwidgets/Components;->getWidgetScenePath(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->M10_VIEW_PATH_LAND:Ljava/lang/String;

    .line 510
    sget-object v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->M10_VIEW_PATH_LAND:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    if-nez v0, :cond_1

    .line 512
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getWidgetHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    sget-object v1, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->M10_VIEW_PATH_LAND:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    .line 515
    :cond_1
    return-void
.end method

.method private refreshGridItem(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;II)V
    .locals 23
    .parameter "monthListItem"
    .parameter "index"
    .parameter "child_index"

    .prologue
    .line 1022
    const/4 v9, 0x0

    .line 1023
    .local v9, c_day:Lcom/htc/fusion/fx/controls/FxTextLabel;
    const/4 v11, 0x0

    .line 1024
    .local v11, c_lunar:Lcom/htc/fusion/fx/controls/FxTextLabel;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bShowLunar:Z

    if-eqz v2, :cond_0

    .line 1026
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mTextLabelsLunarDay:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v9, v2, p3

    .line 1027
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mTextLabelsLunar:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v11, v2, p3

    .line 1028
    sget-boolean v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v11, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1030
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mTextLabels:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v9, v2, p3

    .line 1032
    :cond_1
    sget-boolean v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez v9, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1033
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mBtns:[Lcom/htc/fusion/fx/controls/FxButton;

    aget-object v8, v2, p3

    .line 1034
    .local v8, c_btn:Lcom/htc/fusion/fx/controls/FxButton;
    sget-boolean v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    if-nez v8, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1035
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mTodayImg:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v12, v2, p3

    .line 1036
    .local v12, c_today:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    sget-boolean v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    if-nez v12, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1037
    :cond_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mIndImg:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v10, v2, p3

    .line 1038
    .local v10, c_ind:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    sget-boolean v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->$assertionsDisabled:Z

    if-nez v2, :cond_5

    if-nez v10, :cond_5

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1039
    :cond_5
    const/16 v21, 0x0

    .line 1040
    .local v21, s:Landroid/text/Spannable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;

    .line 1042
    .local v19, m:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;
    const/16 v16, 0x0

    .line 1043
    .local v16, isToday:Z
    const/4 v15, 0x0

    .line 1045
    .local v15, isSelected:Z
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->listener:[Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;

    aget-object v17, v2, p3

    .line 1047
    .local v17, listener:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;
    if-nez v17, :cond_6

    .line 1048
    const/4 v3, 0x1

    .line 1049
    .local v3, withinCurrentMonth:Z
    sget-object v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Impossible!!!!!mMonthList index : "

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v22, ", child_index"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/htc/htccalendarwidgets/Debug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    const/16 v2, 0x2a

    if-ge v14, v2, :cond_7

    .line 1051
    sget-object v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " listener["

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v22, "]-->"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->listener:[Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;

    move-object/from16 v22, v0

    aget-object v22, v22, v14

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/htc/htccalendarwidgets/Debug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1054
    .end local v3           #withinCurrentMonth:Z
    .end local v14           #i:I
    :cond_6
    move-object/from16 v0, v17

    iget-boolean v3, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;->bWithinCurrentMonth:Z

    .line 1056
    .restart local v3       #withinCurrentMonth:Z
    :cond_7
    move-object/from16 v0, v17

    iget v6, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;->dateInfo:I

    .line 1057
    .local v6, dayOfBox:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mToday:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->monthDay:I

    if-ne v6, v2, :cond_8

    move-object/from16 v0, v19

    iget v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->year_:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mToday:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->year:I

    if-ne v2, v7, :cond_8

    move-object/from16 v0, v19

    iget v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->month_:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mToday:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->month:I

    if-ne v2, v7, :cond_8

    .line 1058
    const/16 v16, 0x1

    .line 1061
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mCurrentSelectedTime:Landroid/text/format/Time;

    if-eqz v2, :cond_9

    .line 1062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mCurrentSelectedTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->monthDay:I

    if-ne v6, v2, :cond_9

    move-object/from16 v0, v19

    iget v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->year_:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mCurrentSelectedTime:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->year:I

    if-ne v2, v7, :cond_9

    move-object/from16 v0, v19

    iget v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->month_:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mCurrentSelectedTime:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->month:I

    if-ne v2, v7, :cond_9

    .line 1063
    const/4 v15, 0x1

    .line 1067
    :cond_9
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 1068
    .local v13, d:Ljava/lang/String;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;->dayIndex:I

    div-int/lit8 v4, v2, 0x7

    .line 1069
    .local v4, row:I
    move-object/from16 v0, v17

    iget v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;->dayIndex:I

    rem-int/lit8 v5, v2, 0x7

    .line 1070
    .local v5, column:I
    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->time_:Landroid/text/format/Time;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getLunarString(ZIIILandroid/text/format/Time;)Ljava/lang/String;

    move-result-object v18

    .line 1072
    .local v18, lunarString:Ljava/lang/String;
    if-eqz v16, :cond_e

    if-eqz v3, :cond_e

    .line 1073
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mTodayBtn:Landroid/graphics/Bitmap;

    invoke-virtual {v12, v2}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 1074
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1081
    :goto_1
    if-nez v3, :cond_10

    .line 1082
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inStyle:Landroid/text/style/StyleSpan;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inForColor:Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2, v7}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getSpanString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v21

    .line 1083
    if-eqz v21, :cond_a

    .line 1084
    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 1086
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bShowLunar:Z

    if-eqz v2, :cond_b

    .line 1087
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inStyle:Landroid/text/style/StyleSpan;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inForColor:Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2, v7}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getSpanString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v21

    .line 1088
    if-eqz v21, :cond_b

    .line 1089
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 1099
    :cond_b
    :goto_2
    invoke-virtual {v8}, Lcom/htc/fusion/fx/controls/FxButton;->getClickEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 1100
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->listener:[Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;

    aget-object v2, v2, p3

    if-eqz v2, :cond_11

    .line 1101
    invoke-virtual {v8}, Lcom/htc/fusion/fx/controls/FxButton;->getClickEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v2

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->listener:[Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;

    aget-object v7, v7, p3

    invoke-interface {v2, v7}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 1107
    :goto_3
    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->offset_:I

    move/from16 v20, v0

    .line 1108
    .local v20, offset:I
    sub-int v2, p3, v20

    if-ltz v2, :cond_c

    sub-int v2, p3, v20

    move-object/from16 v0, v19

    iget v7, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->numDayOfMonth_:I

    if-lt v2, v7, :cond_12

    .line 1109
    :cond_c
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1131
    :cond_d
    :goto_4
    return-void

    .line 1075
    .end local v20           #offset:I
    :cond_e
    if-nez v16, :cond_f

    if-eqz v15, :cond_f

    if-eqz v3, :cond_f

    .line 1076
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDaySelected:Landroid/graphics/Bitmap;

    invoke-virtual {v12, v2}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 1077
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_1

    .line 1079
    :cond_f
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_1

    .line 1092
    :cond_10
    invoke-virtual {v9, v13}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1094
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bShowLunar:Z

    if-eqz v2, :cond_b

    .line 1095
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_2

    .line 1103
    :cond_11
    sget-object v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    const-string v7, "bind grid listner null!!!"

    invoke-static {v2, v7}, Lcom/htc/htccalendarwidgets/Debug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1113
    .restart local v20       #offset:I
    :cond_12
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->eventDay:[Z

    sub-int v7, p3, v20

    aget-boolean v2, v2, v7

    if-eqz v2, :cond_14

    .line 1114
    if-eqz v16, :cond_13

    .line 1115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mBusyEventToday:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v2}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 1119
    :goto_5
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1124
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bShowLunar:Z

    if-eqz v2, :cond_15

    .line 1125
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mDayTimeline:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v2, v2, p3

    const-string v7, "day_lunar"

    invoke-virtual {v2, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto :goto_4

    .line 1117
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mBusyEventOtherDays:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v2}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 1122
    :cond_14
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_6

    .line 1127
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->isSupportLunarResolution()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1128
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mDayTimeline:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v2, v2, p3

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto :goto_4
.end method

.method private removeAllMsg()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1393
    sget-object v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "removeAllMsg(), Clear all messages in queue."

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancelAll()V

    .line 1397
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 1400
    :cond_0
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    if-eqz v0, :cond_1

    .line 1401
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    invoke-virtual {v0, v2}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1402
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    .line 1404
    :cond_1
    return-void
.end method

.method private schedularTomorrowEventRepeatly()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 1325
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 1326
    .local v7, tomorrow:Landroid/text/format/Time;
    invoke-virtual {v7}, Landroid/text/format/Time;->setToNow()V

    .line 1327
    iget v2, v7, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v7, Landroid/text/format/Time;->monthDay:I

    .line 1328
    iput v1, v7, Landroid/text/format/Time;->hour:I

    .line 1329
    iput v1, v7, Landroid/text/format/Time;->minute:I

    .line 1330
    const/4 v2, 0x1

    iput v2, v7, Landroid/text/format/Time;->second:I

    .line 1333
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1334
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v7, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mBroadcastIntent:Landroid/content/Intent;

    invoke-static {v6, v1, v8, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1337
    sget-object v1, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "using alarm to schedule repeatly at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    return-void
.end method

.method private setCollection()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 649
    sget-object v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setCollection()"

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthViewList:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/controls/FxListView;->setVisibility(Z)Ljava/util/ArrayList;

    .line 652
    iget v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mOrientation:I

    if-ne v0, v5, :cond_2

    .line 653
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthViewList:Lcom/htc/fusion/fx/controls/FxListView;

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mCollection_port:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxListView;->setCollection(Lcom/htc/fusion/fx/controls/FxListViewCollection;)V

    .line 658
    :cond_0
    :goto_0
    iget v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mConcurrentPosition:I

    if-nez v0, :cond_1

    .line 659
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mConcurrentPosition:I

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthViewList:Lcom/htc/fusion/fx/controls/FxListView;

    iget v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mConcurrentPosition:I

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1, v2, v4}, Lcom/htc/fusion/fx/controls/FxListView;->setScrollOffsetByItem(ILandroid/graphics/PointF;I)V

    .line 662
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbSetCollectionDone:Ljava/util/ArrayList;

    iget v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mOrientation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthViewList:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0, v5}, Lcom/htc/fusion/fx/controls/FxListView;->setVisibility(Z)Ljava/util/ArrayList;

    .line 664
    return-void

    .line 654
    :cond_2
    iget v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 655
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthViewList:Lcom/htc/fusion/fx/controls/FxListView;

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mCollection_land:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxListView;->setCollection(Lcom/htc/fusion/fx/controls/FxListViewCollection;)V

    goto :goto_0
.end method

.method private setGridItem(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;II)V
    .locals 17
    .parameter "monthListItem"
    .parameter "index"
    .parameter "child_index"

    .prologue
    .line 954
    const/4 v8, 0x0

    .line 955
    .local v8, c_day:Lcom/htc/fusion/fx/controls/FxTextLabel;
    const/4 v9, 0x0

    .line 956
    .local v9, c_lunar:Lcom/htc/fusion/fx/controls/FxTextLabel;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bShowLunar:Z

    if-eqz v1, :cond_0

    .line 957
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mTextLabelsLunarDay:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v8, v1, p3

    .line 958
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mTextLabelsLunar:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v9, v1, p3

    .line 959
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v9, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 961
    :cond_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mTextLabels:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v8, v1, p3

    .line 963
    :cond_1
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez v8, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 964
    :cond_2
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mBtns:[Lcom/htc/fusion/fx/controls/FxButton;

    aget-object v7, v1, p3

    .line 965
    .local v7, c_btn:Lcom/htc/fusion/fx/controls/FxButton;
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    if-nez v7, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 966
    :cond_3
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mTodayImg:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v10, v1, p3

    .line 967
    .local v10, c_today:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    sget-boolean v1, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    if-nez v10, :cond_4

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 969
    :cond_4
    const/16 v16, 0x0

    .line 970
    .local v16, s:Landroid/text/Spannable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;

    .line 972
    .local v15, m:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;
    const/4 v12, 0x0

    .line 974
    .local v12, isToday:Z
    iget-object v1, v15, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->listener:[Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;

    aget-object v13, v1, p3

    .line 975
    .local v13, listener:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;
    iget-boolean v2, v13, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;->bWithinCurrentMonth:Z

    .line 976
    .local v2, withinCurrentMonth:Z
    iget v5, v13, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;->dateInfo:I

    .line 977
    .local v5, dayOfBox:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mToday:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->monthDay:I

    if-ne v5, v1, :cond_5

    iget v1, v15, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->year_:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mToday:Landroid/text/format/Time;

    iget v6, v6, Landroid/text/format/Time;->year:I

    if-ne v1, v6, :cond_5

    iget v1, v15, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->month_:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mToday:Landroid/text/format/Time;

    iget v6, v6, Landroid/text/format/Time;->month:I

    if-ne v1, v6, :cond_5

    .line 978
    const/4 v12, 0x1

    .line 981
    :cond_5
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 982
    .local v11, d:Ljava/lang/String;
    iget v1, v13, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;->dayIndex:I

    div-int/lit8 v3, v1, 0x7

    .line 983
    .local v3, row:I
    iget v1, v13, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;->dayIndex:I

    rem-int/lit8 v4, v1, 0x7

    .line 984
    .local v4, column:I
    iget-object v6, v15, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->time_:Landroid/text/format/Time;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getLunarString(ZIIILandroid/text/format/Time;)Ljava/lang/String;

    move-result-object v14

    .line 986
    .local v14, lunarString:Ljava/lang/String;
    if-eqz v12, :cond_6

    if-eqz v2, :cond_6

    .line 987
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mTodayBtn:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 988
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 991
    :cond_6
    if-nez v2, :cond_a

    .line 992
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inStyle:Landroid/text/style/StyleSpan;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inForColor:Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v1, v6}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getSpanString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v16

    .line 993
    if-eqz v16, :cond_7

    .line 994
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 996
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bShowLunar:Z

    if-eqz v1, :cond_8

    .line 997
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inStyle:Landroid/text/style/StyleSpan;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inForColor:Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v1, v6}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getSpanString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v16

    .line 998
    if-eqz v16, :cond_8

    .line 999
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 1009
    :cond_8
    :goto_0
    invoke-virtual {v7}, Lcom/htc/fusion/fx/controls/FxButton;->getClickEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 1010
    invoke-virtual {v7}, Lcom/htc/fusion/fx/controls/FxButton;->getClickEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v6, v15, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->listener:[Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$GridItemClickListener;

    aget-object v6, v6, p3

    invoke-interface {v1, v6}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 1012
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bShowLunar:Z

    if-eqz v1, :cond_b

    .line 1013
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mDayTimeline:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v1, v1, p3

    const-string v6, "day_lunar"

    invoke-virtual {v1, v6}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1019
    :cond_9
    :goto_1
    return-void

    .line 1002
    :cond_a
    invoke-virtual {v8, v11}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1004
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bShowLunar:Z

    if-eqz v1, :cond_8

    .line 1005
    invoke-virtual {v9, v14}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_0

    .line 1015
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->isSupportLunarResolution()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1016
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mDayTimeline:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v1, v1, p3

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto :goto_1
.end method

.method private updateMonth()V
    .locals 3

    .prologue
    .line 942
    const/4 v0, 0x0

    .line 944
    .local v0, collection_p:Lcom/htc/fusion/fx/controls/FxListViewCollection;
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthViewList:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v1, :cond_0

    .line 946
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthViewList:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxListView;->getCollection()Lcom/htc/fusion/fx/controls/FxListViewCollection;

    move-result-object v0

    .line 948
    if-eqz v0, :cond_0

    .line 949
    iget v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mConcurrentPosition:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->refreshItems(II)V

    .line 951
    :cond_0
    return-void
.end method

.method private updateMonthData(Landroid/text/format/Time;)V
    .locals 6
    .parameter "t"

    .prologue
    .line 895
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 896
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->createMonthData()V

    .line 913
    :cond_0
    :goto_0
    return-void

    .line 900
    :cond_1
    const/4 v2, 0x0

    .line 901
    .local v2, m:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 902
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 903
    :try_start_0
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 905
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v3, 0x3

    if-ge v1, v3, :cond_2

    .line 906
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;

    move-object v2, v0

    .line 907
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1, v2}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->createMonth(ILandroid/text/format/Time;Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;)Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 905
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 911
    .end local v1           #i:I
    :cond_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public checkTime()V
    .locals 2

    .prologue
    .line 1317
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->isDateChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1318
    sget-object v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkTime, date changed."

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    const v1, 0x11174

    invoke-virtual {v0, v1}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->sendEmptyMessage(I)Z

    .line 1320
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    const v1, 0x11177

    invoke-virtual {v0, v1}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->sendEmptyMessage(I)Z

    .line 1322
    :cond_0
    return-void
.end method

.method drawCalendarHeader()V
    .locals 6

    .prologue
    .line 667
    iget v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mStartDay:I

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v1, v3, -0x1

    .line 668
    .local v1, diff:I
    const/16 v2, 0x14

    .line 670
    .local v2, dpyLen:I
    add-int/lit8 v3, v1, 0x1

    rem-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, dayString:Ljava/lang/String;
    iget v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mStartDay:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 673
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay0:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_0

    .line 674
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay0:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inStyle:Landroid/text/style/StyleSpan;

    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inForColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v0, v4, v5}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getSpanString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 675
    :cond_0
    add-int/lit8 v3, v1, 0x2

    rem-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 676
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay1:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_1

    .line 677
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay1:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inStyle:Landroid/text/style/StyleSpan;

    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inForNormalColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v0, v4, v5}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getSpanString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 678
    :cond_1
    add-int/lit8 v3, v1, 0x3

    rem-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 679
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_2

    .line 680
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inStyle:Landroid/text/style/StyleSpan;

    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inForNormalColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v0, v4, v5}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getSpanString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 681
    :cond_2
    add-int/lit8 v3, v1, 0x4

    rem-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 682
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay3:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_3

    .line 683
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay3:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inStyle:Landroid/text/style/StyleSpan;

    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inForNormalColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v0, v4, v5}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getSpanString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 684
    :cond_3
    add-int/lit8 v3, v1, 0x5

    rem-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 685
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay4:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_4

    .line 686
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay4:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inStyle:Landroid/text/style/StyleSpan;

    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inForNormalColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v0, v4, v5}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getSpanString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 687
    :cond_4
    add-int/lit8 v3, v1, 0x6

    rem-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 688
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay5:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_5

    .line 689
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay5:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inStyle:Landroid/text/style/StyleSpan;

    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inForNormalColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v0, v4, v5}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getSpanString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 690
    :cond_5
    add-int/lit8 v3, v1, 0x7

    rem-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 691
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay6:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_6

    .line 692
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay6:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inStyle:Landroid/text/style/StyleSpan;

    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inForColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v0, v4, v5}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getSpanString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 715
    :cond_6
    :goto_0
    return-void

    .line 693
    :cond_7
    iget v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mStartDay:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 694
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay0:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_8

    .line 695
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay0:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inStyle:Landroid/text/style/StyleSpan;

    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inForNormalColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v0, v4, v5}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getSpanString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 696
    :cond_8
    add-int/lit8 v3, v1, 0x2

    rem-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 697
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay1:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_9

    .line 698
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay1:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inStyle:Landroid/text/style/StyleSpan;

    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inForNormalColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v0, v4, v5}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getSpanString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 699
    :cond_9
    add-int/lit8 v3, v1, 0x3

    rem-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 700
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_a

    .line 701
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inStyle:Landroid/text/style/StyleSpan;

    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inForNormalColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v0, v4, v5}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getSpanString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 702
    :cond_a
    add-int/lit8 v3, v1, 0x4

    rem-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 703
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay3:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_b

    .line 704
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay3:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inStyle:Landroid/text/style/StyleSpan;

    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inForNormalColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v0, v4, v5}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getSpanString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 705
    :cond_b
    add-int/lit8 v3, v1, 0x5

    rem-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 706
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay4:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_c

    .line 707
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay4:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inStyle:Landroid/text/style/StyleSpan;

    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inForNormalColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v0, v4, v5}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getSpanString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 708
    :cond_c
    add-int/lit8 v3, v1, 0x6

    rem-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 709
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay5:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_d

    .line 710
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay5:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inStyle:Landroid/text/style/StyleSpan;

    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inForColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v0, v4, v5}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getSpanString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 711
    :cond_d
    add-int/lit8 v3, v1, 0x7

    rem-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 712
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay6:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_6

    .line 713
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay6:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inStyle:Landroid/text/style/StyleSpan;

    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inForColor:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v0, v4, v5}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getSpanString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected abstract extractEvents(Landroid/database/Cursor;)V
.end method

.method public getDateString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 21
    .parameter "context"
    .parameter "jDay"

    .prologue
    .line 1163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1164
    .local v16, now:J
    new-instance v20, Landroid/text/format/Time;

    invoke-direct/range {v20 .. v20}, Landroid/text/format/Time;-><init>()V

    .line 1165
    .local v20, time:Landroid/text/format/Time;
    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1166
    move-object/from16 v0, v20

    iget-wide v6, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v15

    .line 1169
    .local v15, mTodayJulianDay:I
    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v4

    .line 1171
    .local v4, millis:J
    const/16 v14, 0x14

    .line 1172
    .local v14, rightFlags:I
    const/4 v8, 0x2

    .line 1174
    .local v8, leftFlag:I
    const-string v18, ""

    .line 1175
    .local v18, strLeft:Ljava/lang/String;
    const-string v19, ""

    .line 1177
    .local v19, strRight:Ljava/lang/String;
    move/from16 v0, p2

    if-ne v0, v15, :cond_0

    .line 1178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0a0009

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v3, p1

    move-wide v6, v4

    invoke-static/range {v3 .. v8}, Lcom/htc/htccalendarwidgets/CalendarConstants;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v9, p1

    move-wide v10, v4

    move-wide v12, v4

    .line 1181
    invoke-static/range {v9 .. v14}, Lcom/htc/htccalendarwidgets/CalendarConstants;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "#"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1187
    :goto_0
    return-object v3

    :cond_0
    move-object/from16 v3, p1

    move-wide v6, v4

    .line 1184
    invoke-static/range {v3 .. v8}, Lcom/htc/htccalendarwidgets/CalendarConstants;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v9, p1

    move-wide v10, v4

    move-wide v12, v4

    .line 1186
    invoke-static/range {v9 .. v14}, Lcom/htc/htccalendarwidgets/CalendarConstants;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "#"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected abstract getFxObjects()V
.end method

.method public getHostContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 492
    iget v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 493
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 495
    :cond_0
    iget v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 496
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method protected getSelectedMillisFor(II)J
    .locals 2
    .parameter "row"
    .parameter "column"

    .prologue
    .line 1346
    invoke-virtual {p0, p1, p2}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getSelectedTimeFor(II)Landroid/text/format/Time;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getSelectedTimeFor(II)Landroid/text/format/Time;
    .locals 5
    .parameter "row"
    .parameter "column"

    .prologue
    .line 1350
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;

    .line 1351
    .local v0, m:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mTempTime:Landroid/text/format/Time;

    .line 1353
    .local v1, time:Landroid/text/format/Time;
    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->time_:Landroid/text/format/Time;

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1355
    mul-int/lit8 v2, p1, 0x7

    add-int/2addr v2, p2

    iget v3, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->offset_:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    .line 1356
    sget-object v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Row:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Col:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", monthday:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    return-object v1
.end method

.method public getSpanString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;
    .locals 4
    .parameter "in"
    .parameter "style"
    .parameter "color"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1361
    if-nez p1, :cond_1

    .line 1374
    :cond_0
    :goto_0
    return-object v0

    .line 1364
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1367
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1371
    .local v0, inString_:Landroid/text/Spannable;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x12

    invoke-interface {v0, p2, v3, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1372
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-interface {v0, p3, v3, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public getWidgetBase()Lcom/htc/android/rosie/widget/Widget$Base;
    .locals 0

    .prologue
    .line 471
    return-object p0
.end method

.method public getWidgetContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetHost()Lcom/htc/android/rosie/widget/Widget$Host;
    .locals 1

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetScene()Lcom/htc/fusion/fx/FxScene;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method public getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "callback"

    .prologue
    .line 459
    if-nez p1, :cond_0

    .line 460
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 462
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v0

    goto :goto_0
.end method

.method protected goToToday()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1192
    iget-boolean v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bInitCompleted:Z

    if-nez v3, :cond_0

    .line 1212
    :goto_0
    return-void

    .line 1195
    :cond_0
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 1196
    .local v1, now:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 1197
    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mTime:Landroid/text/format/Time;

    .line 1198
    sget-object v3, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Today is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    iget v3, v1, Landroid/text/format/Time;->month:I

    const/16 v4, 0x14

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1201
    .local v0, month:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_1

    .line 1202
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v3, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1203
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v3, v6}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1205
    :cond_1
    iget v3, v1, Landroid/text/format/Time;->monthDay:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1206
    .local v2, today:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDayTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_2

    .line 1207
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDayTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1208
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDayTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v3, v6}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1211
    :cond_2
    invoke-virtual {p0, v1}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->setToday(Landroid/text/format/Time;)V

    goto :goto_0
.end method

.method protected abstract hideLoadMessage()V
.end method

.method protected initLayout()V
    .locals 5

    .prologue
    const/16 v4, 0x3e9

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 533
    sget-object v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "initLayout"

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 536
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v0, :cond_0

    .line 537
    iput-boolean v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNoScene:Z

    .line 569
    :goto_0
    return-void

    .line 540
    :cond_0
    iput-boolean v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNoScene:Z

    .line 542
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 544
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getFxObjects()V

    .line 546
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->drawCalendarHeader()V

    .line 548
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mHeaderBtnClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 549
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;

    iget-object v0, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->time_:Landroid/text/format/Time;

    invoke-static {v0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->formatMonthYear(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 552
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->initTilt()V

    .line 554
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthViewList:Lcom/htc/fusion/fx/controls/FxListView;

    iget v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mOrientation:I

    invoke-static {v1, v3}, Lcom/htc/htccalendarwidgets/Components;->getWidgetHeaderPath(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxListView;->setDefaultItemPath(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthViewList:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthViewListItemEvent:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 556
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthViewList:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthViewListViewEvent:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 557
    sget-object v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Monthlist.bind() called"

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthViewList:Lcom/htc/fusion/fx/controls/FxListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxListView;->enableVirtualization(I)V

    .line 560
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthViewList:Lcom/htc/fusion/fx/controls/FxListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxListView;->enableRecycling(I)V

    .line 562
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mCollection_port:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    if-nez v0, :cond_1

    .line 563
    invoke-static {v4}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->create(I)Lcom/htc/fusion/fx/controls/FxListViewCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mCollection_port:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mCollection_land:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    if-nez v0, :cond_2

    .line 565
    invoke-static {v4}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->create(I)Lcom/htc/fusion/fx/controls/FxListViewCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mCollection_land:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    .line 567
    :cond_2
    iput-boolean v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bInitCompleted:Z

    .line 568
    iput-boolean v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedLocateDefaultMonth:Z

    goto :goto_0
.end method

.method public isDateChanged()Z
    .locals 3

    .prologue
    .line 1304
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1305
    .local v0, now:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1307
    iget v1, v0, Landroid/text/format/Time;->year:I

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->lastTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->year:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/text/format/Time;->month:I

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->lastTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->month:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->lastTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->monthDay:I

    if-ne v1, v2, :cond_0

    .line 1308
    const/4 v1, 0x0

    .line 1313
    :goto_0
    return v1

    .line 1312
    :cond_0
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->lastTime:Landroid/text/format/Time;

    invoke-virtual {v1, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1313
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected isSupportLunarCalendar()Z
    .locals 4

    .prologue
    .line 1379
    const/4 v0, 0x0

    .line 1380
    .local v0, bLocaleChinese:Z
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1381
    .local v1, locale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1383
    :cond_0
    const/4 v0, 0x1

    .line 1386
    :cond_1
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfiguration"

    .prologue
    .line 430
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 431
    sget-object v1, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

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

    .line 432
    iget v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_2

    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bDoOrientation:Z

    .line 436
    :goto_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mOrientation:I

    .line 438
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->removeAllMsg()V

    .line 440
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mEventLoader:Lcom/htc/htccalendarwidgets/EventLoader;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mEventLoader:Lcom/htc/htccalendarwidgets/EventLoader;

    invoke-virtual {v0}, Lcom/htc/htccalendarwidgets/EventLoader;->release()V

    .line 444
    :cond_0
    iget v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mOrientationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mOrientationCount:I

    .line 445
    return-void

    .line 431
    :cond_1
    const-string v0, "Protrait"

    goto :goto_0

    .line 435
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bDoOrientation:Z

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedState"

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 223
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onCreate(Landroid/os/Bundle;)V

    .line 224
    sget-object v8, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    const-string v9, "onCreate"

    invoke-static {v8, v9}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 227
    .local v0, WinManager:Landroid/view/WindowManager;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 228
    .local v3, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 230
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->preloadScene()V

    .line 232
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getWidgetContext()Landroid/content/Context;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mContext:Landroid/content/Context;

    .line 234
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    iput v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mOrientation:I

    .line 236
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v8

    new-instance v9, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;-><init>(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$1;)V

    invoke-interface {v8, v9}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 237
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    if-nez v8, :cond_0

    .line 238
    new-instance v8, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    invoke-direct {v8, p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;-><init>(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;)V

    iput-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    .line 240
    :cond_0
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mResources:Landroid/content/res/Resources;

    .line 241
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mContentResolver:Landroid/content/ContentResolver;

    .line 243
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mEventLoader:Lcom/htc/htccalendarwidgets/EventLoader;

    if-nez v8, :cond_1

    .line 244
    new-instance v8, Lcom/htc/htccalendarwidgets/EventLoader;

    iget-object v9, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/htc/htccalendarwidgets/EventLoader;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mEventLoader:Lcom/htc/htccalendarwidgets/EventLoader;

    .line 246
    :cond_1
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mEventLoader:Lcom/htc/htccalendarwidgets/EventLoader;

    invoke-virtual {v8, v12}, Lcom/htc/htccalendarwidgets/EventLoader;->startBackgroundThread(Z)V

    .line 248
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mActionScheduleEvent:Ljava/lang/String;

    if-nez v8, :cond_2

    .line 249
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mActionScheduleEvent:Ljava/lang/String;

    .line 251
    :cond_2
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mBroadcastIntent:Landroid/content/Intent;

    if-nez v8, :cond_3

    .line 252
    new-instance v8, Landroid/content/Intent;

    iget-object v9, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mActionScheduleEvent:Ljava/lang/String;

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mBroadcastIntent:Landroid/content/Intent;

    .line 254
    :cond_3
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->schedularTomorrowEventRepeatly()V

    .line 257
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "calendar_start_weekday"

    invoke-static {v8, v9, v13}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mStartDay:I

    .line 260
    invoke-direct {p0, v11}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->checkLunarCalendar(Z)V

    .line 263
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    iput-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mViewCalendar:Landroid/text/format/Time;

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 265
    .local v6, now:J
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v8, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 266
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mViewCalendar:Landroid/text/format/Time;

    iput v12, v8, Landroid/text/format/Time;->monthDay:I

    .line 267
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v8, v12}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    .line 268
    .local v4, millis:J
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mViewCalendar:Landroid/text/format/Time;

    iget-wide v8, v8, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v8

    iput v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mFirstJulianDay:I

    .line 269
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v8, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 271
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    iput-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mToday:Landroid/text/format/Time;

    .line 272
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mToday:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 274
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mTime:Landroid/text/format/Time;

    invoke-virtual {v8}, Landroid/text/format/Time;->setToNow()V

    .line 276
    iget v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mStartDay:I

    if-ne v8, v13, :cond_4

    .line 277
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.htc.calendar.ACTION_CUSTOMIZATION"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .local v2, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 279
    iput v12, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mStartDay:I

    .line 284
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    if-nez v8, :cond_5

    .line 285
    new-instance v8, Ljava/util/ArrayList;

    const/4 v9, 0x3

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    .line 286
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->createMonthData()V

    .line 289
    :cond_5
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mBusyEventToday:Landroid/graphics/drawable/Drawable;

    .line 291
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020003

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mBusyEventOtherDays:Landroid/graphics/drawable/Drawable;

    .line 293
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020004

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mTodayBtn:Landroid/graphics/Bitmap;

    .line 294
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mTodayBtn:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mTodayBtn:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mTodayBtn:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mTodayBtn:Landroid/graphics/Bitmap;

    .line 296
    invoke-static {}, Lcom/htc/htccalendarwidgets/CalendarConstants;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 297
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f02

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDaySelected:Landroid/graphics/Bitmap;

    .line 298
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDaySelected:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDaySelected:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDaySelected:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDaySelected:Landroid/graphics/Bitmap;

    .line 301
    :cond_6
    new-instance v8, Landroid/text/SpannableStringBuilder;

    const-string v9, ""

    invoke-direct {v8, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inString:Landroid/text/SpannableStringBuilder;

    .line 302
    new-instance v8, Landroid/text/style/StyleSpan;

    invoke-direct {v8, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inStyle:Landroid/text/style/StyleSpan;

    .line 303
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    const v9, -0x3b3b3c

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inForColor:Landroid/text/style/ForegroundColorSpan;

    .line 304
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v8, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->inForNormalColor:Landroid/text/style/ForegroundColorSpan;

    .line 306
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->releaseControl()V

    .line 307
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->initLayout()V

    .line 308
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->setCollection()V

    .line 309
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->goToToday()V

    .line 311
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 312
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    const-string v8, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    const-string v8, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    const-string v8, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    const-string v8, "action.calendars.picker.changed"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    const-string v8, "action.start.week.day.changed"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mActionScheduleEvent:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    const-string v8, "com.htc.calendar.event_changed"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    const-string v8, "android.intent.action.TIMEFORMAT_CHANGED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    const-string v8, "action.lunar.show.changed"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 327
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/htc/htccalendarwidgets/CalendarConstants;->fetchSystemDateFormat(Landroid/content/Context;)V

    .line 329
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 333
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onDestroy()V

    .line 334
    sget-object v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 336
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 338
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->removeAllMsg()V

    .line 339
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->releaseData()V

    .line 341
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mCollection_port:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    if-eqz v0, :cond_0

    .line 342
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mCollection_port:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mCollection_land:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    if-eqz v0, :cond_1

    .line 346
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mCollection_land:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthViewListItemEvent:Lcom/htc/fusion/fx/MessageListener;

    if-eqz v0, :cond_2

    .line 350
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthViewListItemEvent:Lcom/htc/fusion/fx/MessageListener;

    .line 353
    :cond_2
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthViewListViewEvent:Lcom/htc/fusion/fx/MessageListener;

    if-eqz v0, :cond_3

    .line 354
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthViewListViewEvent:Lcom/htc/fusion/fx/MessageListener;

    .line 357
    :cond_3
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mHeaderBtnClickListener:Lcom/htc/fusion/fx/MessageListener;

    if-eqz v0, :cond_4

    .line 358
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mHeaderBtnClickListener:Lcom/htc/fusion/fx/MessageListener;

    .line 361
    :cond_4
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_5

    .line 362
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host;->destroyScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 363
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 366
    :cond_5
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_6

    .line 367
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host;->destroyScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 368
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    .line 371
    :cond_6
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_7

    .line 372
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host;->destroyScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 373
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    .line 376
    :cond_7
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mBusyEventToday:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 377
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mBusyEventToday:Landroid/graphics/drawable/Drawable;

    .line 379
    :cond_8
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mBusyEventOtherDays:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 380
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mBusyEventOtherDays:Landroid/graphics/drawable/Drawable;

    .line 382
    :cond_9
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mTodayBtn:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    .line 383
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mTodayBtn:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 385
    :cond_a
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mTodayBtn:Landroid/graphics/Bitmap;

    .line 387
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 388
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    .line 391
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :cond_b
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    .line 395
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthListItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 396
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthListItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 398
    :cond_c
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthListItem:Ljava/util/ArrayList;

    .line 400
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbSetCollectionDone:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    .line 401
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbSetCollectionDone:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 403
    :cond_d
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbSetCollectionDone:Ljava/util/ArrayList;

    .line 405
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mEvents:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    .line 406
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 408
    :cond_e
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mEvents:Ljava/util/ArrayList;

    .line 410
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mSuccessRunnable:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$EventLoaderRunnable;

    .line 412
    return-void

    .line 391
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected abstract onGridItemClick(III)V
.end method

.method protected onHostMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 449
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 455
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onHostMessage(Landroid/os/Message;)V

    .line 456
    return-void

    .line 451
    :pswitch_0
    sget-object v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onHostMessage - HOST_ORIENTATION_CHANGE_COMPLETE"

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const v1, 0x13888

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto :goto_0

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 416
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onPause()V

    .line 417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mIsShow:Z

    .line 418
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const v1, 0x13882

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 419
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 423
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onResume()V

    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mIsShow:Z

    .line 425
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const v1, 0x13881

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 426
    return-void
.end method

.method public onTiltChanged(F)V
    .locals 3
    .parameter "tilt"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->m_nTiltStartFrame:I

    iget v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->m_nTiltEndFrame:I

    invoke-static {p1, v1, v2}, Lcom/htc/android/rosie/widget/WidgetHelper;->convertTiltAngleToFrame(FII)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 530
    :cond_0
    return-void
.end method

.method protected releaseControl()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 572
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthViewList:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthViewList:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthViewListItemEvent:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 574
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthViewList:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthViewListViewEvent:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 575
    sget-object v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Monthlist.unbind() called"

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    :cond_0
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthViewList:Lcom/htc/fusion/fx/controls/FxListView;

    .line 579
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_1

    .line 580
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mHeaderBtnClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 581
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_2

    .line 585
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 586
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 589
    :cond_2
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMainPageTimeline_child:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_3

    .line 590
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMainPageTimeline_child:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 591
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMainPageTimeline_child:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 594
    :cond_3
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_4

    .line 595
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 596
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 599
    :cond_4
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_5

    .line 600
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 603
    :cond_5
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_6

    .line 604
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 607
    :cond_6
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDayTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_7

    .line 608
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDayTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 611
    :cond_7
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWeekdayView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_8

    .line 612
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWeekdayView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 615
    :cond_8
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDayView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_9

    .line 616
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDayView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 619
    :cond_9
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay0:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_a

    .line 620
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay0:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 623
    :cond_a
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay1:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_b

    .line 624
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay1:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 627
    :cond_b
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_c

    .line 628
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 631
    :cond_c
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay3:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_d

    .line 632
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay3:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 635
    :cond_d
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay4:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_e

    .line 636
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay4:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 639
    :cond_e
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay5:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_f

    .line 640
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay5:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 643
    :cond_f
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay6:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_10

    .line 644
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDay6:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 646
    :cond_10
    return-void
.end method

.method protected releaseData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1138
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mBroadcastIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 1139
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1140
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mBroadcastIntent:Landroid/content/Intent;

    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1143
    .end local v0           #am:Landroid/app/AlarmManager;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->releaseControl()V

    .line 1145
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mEvents:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1146
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1147
    :cond_1
    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mEvents:Ljava/util/ArrayList;

    .line 1149
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mEventLoader:Lcom/htc/htccalendarwidgets/EventLoader;

    if-eqz v1, :cond_2

    .line 1150
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mEventLoader:Lcom/htc/htccalendarwidgets/EventLoader;

    invoke-virtual {v1}, Lcom/htc/htccalendarwidgets/EventLoader;->release()V

    .line 1152
    :cond_2
    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mEventLoader:Lcom/htc/htccalendarwidgets/EventLoader;

    .line 1154
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDaySelected:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 1155
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDaySelected:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1157
    :cond_3
    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mDaySelected:Landroid/graphics/Bitmap;

    .line 1158
    return-void
.end method

.method reloadEvents()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 921
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 922
    .local v8, monthStart:Landroid/text/format/Time;
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 923
    iput v5, v8, Landroid/text/format/Time;->monthDay:I

    .line 924
    iput v1, v8, Landroid/text/format/Time;->hour:I

    .line 925
    iput v1, v8, Landroid/text/format/Time;->minute:I

    .line 926
    iput v1, v8, Landroid/text/format/Time;->second:I

    .line 927
    invoke-virtual {v8, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 928
    .local v3, millis:J
    iget-wide v0, v8, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v7

    .line 930
    .local v7, julianDay:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 931
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htccalendarwidgets/Event;>;"
    new-instance v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$EventLoaderRunnable;

    invoke-direct {v0, p0, v2, v7, v5}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$EventLoaderRunnable;-><init>(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;Ljava/util/ArrayList;IZ)V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mSuccessRunnable:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$EventLoaderRunnable;

    .line 934
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mEventLoader:Lcom/htc/htccalendarwidgets/EventLoader;

    invoke-virtual {v0}, Lcom/htc/htccalendarwidgets/EventLoader;->isThreadAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mEventLoader:Lcom/htc/htccalendarwidgets/EventLoader;

    invoke-virtual {v0, v5}, Lcom/htc/htccalendarwidgets/EventLoader;->startBackgroundThread(Z)V

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mEventLoader:Lcom/htc/htccalendarwidgets/EventLoader;

    const/16 v1, 0x1f

    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mSuccessRunnable:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$EventLoaderRunnable;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/htccalendarwidgets/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 939
    return-void
.end method

.method protected abstract renewCursor(Landroid/text/format/Time;)V
.end method

.method setToday(Landroid/text/format/Time;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mToday:Landroid/text/format/Time;

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1343
    return-void
.end method

.method protected abstract showListView(Z)V
.end method

.method protected abstract showLoadMessages()V
.end method

.method protected abstract updateListView()V
.end method
