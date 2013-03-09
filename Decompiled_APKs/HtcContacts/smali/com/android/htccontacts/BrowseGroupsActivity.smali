.class public Lcom/android/htccontacts/BrowseGroupsActivity;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "BrowseGroupsActivity.java"

# interfaces
.implements Lcom/android/htccontacts/widget/TabObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/BrowseGroupsActivity$FrequencyConfigObserver;,
        Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;,
        Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;,
        Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;,
        Lcom/android/htccontacts/BrowseGroupsActivity$FirstQueryAllIdleHandler;,
        Lcom/android/htccontacts/BrowseGroupsActivity$ForceUpdateIndicatorIdleHandler;,
        Lcom/android/htccontacts/BrowseGroupsActivity$StartIndicatorIdleHandler;,
        Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;,
        Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;,
        Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorUpdateRunner;,
        Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;
    }
.end annotation


# static fields
.field protected static final CLEAR_TOKEN:I = 0x3f2

.field private static final CONTEXT_MENU_CLEAR_GROUP:I = 0x6

.field private static final CONTEXT_MENU_DELETE_GROUP:I = 0x2

.field private static final CONTEXT_MENU_EDIT_GROUP:I = 0x1

.field private static final CONTEXT_MENU_EDIT_SMART_GROUP:I = 0x5

.field private static final CONTEXT_MENU_SEND_GROUP_MAIL:I = 0x4

.field private static final CONTEXT_MENU_SEND_GROUP_MSG:I = 0x3

.field private static final DELETE_TOKEN:I = 0x3e9

.field protected static final DIALOG_PROGRESS:I = 0xa

.field private static final FIRST_ITEM_UPDATE_NUMBER:I = 0x2

.field protected static final FIRST_QUERY_COUNT_DONE:I = 0x3f1

.field protected static final FORCE_UPDATE_INDICATOR:I = 0x3f0

.field protected static final INIT_IDLE_CALLBACK:I = 0x3ef

.field private static final MENU_ADD_GROUP:I = 0x2

.field private static final MENU_ARRANGE_GROUP:I = 0x6

.field private static final MENU_CHANGE_FONT_SIZE:I = 0x8

.field private static final MENU_DELETE_GROUP:I = 0x3

.field private static final MENU_HELP:I = 0x7

.field private static final MENU_HOME:I = 0x1

.field private static final MENU_OPEN_GROUP:I = 0x4

.field private static final MENU_SYNC_GROUP:I = 0x5

.field private static PERFORCE_TUNNING_DEBUG:Z = false

.field private static final QUERY_NAME_TOKEN:I = 0x3ea

.field private static final QUERY_TOKEN:I = 0x3e8

.field static final RESULT_EDIT_SMART_GROUP:I = 0x1

.field static final RESULT_REANRRAGE:I = 0x2

.field protected static final RE_START_QUERY_MSG:I = 0x7da

.field protected static final START_INDICATOR_MSG:I = 0x7d0

.field protected static final START_INDICATOR_MSG_WHEN_UI_IDLE:I = 0x7e4

.field private static final TAG:Ljava/lang/String; = "BrowseGroupsActivity"

.field protected static final TOKEN_QUERY_ALL_COUNTS:I = 0x3eb

.field protected static final TOKEN_QUERY_ALL_ITEM_COUNTS:I = 0x3ed

.field protected static final TOKEN_QUERY_ITEM_COUNT:I = 0x3ec

.field protected static final UPDATE_LIST_ITEM_MSG:I = 0x7f8

.field protected static final UPDATE_LIST_MSG:I = 0x7ee

.field static mFirstQueryIdler:Lcom/android/htccontacts/BrowseGroupsActivity$FirstQueryAllIdleHandler;


# instance fields
.field private final IsIndicatorObtainCount:Z

.field private beginTime:J

.field private isFirstQueryAll:Z

.field isQueryCountThreadReleased:Z

.field private mCursor:Landroid/database/Cursor;

.field protected mCursorAdapter:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

.field protected mDefaultPhotoDrawable:Landroid/graphics/drawable/Drawable;

.field private mFontSize:I

.field mForceUpdateIdleHandler:Landroid/os/MessageQueue$IdleHandler;

.field private mFrequencyConfigObserver:Lcom/android/htccontacts/BrowseGroupsActivity$FrequencyConfigObserver;

.field protected mGroupCacheList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupIndicatorRequestPool:Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;

.field protected mGroupListHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

.field protected mInsertListAdapter:Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;

.field public mIsDirty:Z

.field private mIsDuringUpdateGroupNameList:Z

.field mIsEnableAddItemSeparable:Z

.field mIsFirstQueryCountNotDone:Z

.field mIsImmediatelyCloseQueryCountThread:Z

.field private mLoadingProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field protected mMemberCountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryCountHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;

.field private mQueryCountThread:Landroid/os/HandlerThread;

.field private mQueryHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;

.field protected mValidCacheList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/htccontacts/BrowseGroupsActivity;->PERFORCE_TUNNING_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    .line 130
    iput-boolean v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIsDirty:Z

    .line 151
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mHandler:Landroid/os/Handler;

    .line 155
    iput-boolean v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->IsIndicatorObtainCount:Z

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupCacheList:Ljava/util/HashMap;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mValidCacheList:Ljava/util/HashMap;

    .line 173
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->beginTime:J

    .line 178
    iput-boolean v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->isFirstQueryAll:Z

    .line 180
    iput-boolean v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIsDuringUpdateGroupNameList:Z

    .line 181
    new-instance v0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;

    invoke-direct {v0}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupIndicatorRequestPool:Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;

    .line 182
    iput-boolean v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIsImmediatelyCloseQueryCountThread:Z

    .line 190
    iput-boolean v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->isQueryCountThreadReleased:Z

    .line 191
    iput-boolean v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIsEnableAddItemSeparable:Z

    .line 194
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mFontSize:I

    .line 196
    new-instance v0, Lcom/android/htccontacts/BrowseGroupsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/BrowseGroupsActivity$1;-><init>(Lcom/android/htccontacts/BrowseGroupsActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupListHandler:Landroid/os/Handler;

    .line 2365
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 105
    sget-boolean v0, Lcom/android/htccontacts/BrowseGroupsActivity;->PERFORCE_TUNNING_DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/android/htccontacts/indicator/IndicatorProcessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/htccontacts/BrowseGroupsActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/htccontacts/BrowseGroupsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->isFirstQueryAll:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/htccontacts/BrowseGroupsActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->isFirstQueryAll:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mLoadingProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/htccontacts/BrowseGroupsActivity;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mLoadingProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/htccontacts/BrowseGroupsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->showProgressDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/htccontacts/BrowseGroupsActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/htccontacts/BrowseGroupsActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/htccontacts/BrowseGroupsActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/htccontacts/BrowseGroupsActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/htccontacts/BrowseGroupsActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/htccontacts/BrowseGroupsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupIndicatorRequestPool:Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/htccontacts/BrowseGroupsActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/htccontacts/BrowseGroupsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/htccontacts/BrowseGroupsActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/htccontacts/BrowseGroupsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/htccontacts/BrowseGroupsActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/htccontacts/BrowseGroupsActivity;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/htccontacts/BrowseGroupsActivity;->fillupCountHashMap(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/android/htccontacts/BrowseGroupsActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput p1, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mFontSize:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/htccontacts/BrowseGroupsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->resetEmptyView()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/htccontacts/BrowseGroupsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->fillupCountHashMap()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/htccontacts/BrowseGroupsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/htccontacts/BrowseGroupsActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/htccontacts/BrowseGroupsActivity;->fillupCountHashMap(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/htccontacts/BrowseGroupsActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIsDuringUpdateGroupNameList:Z

    return p1
.end method

.method private createFontSizeDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 820
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a03e5

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06000b

    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->getFontSize(Landroid/content/Context;)I

    move-result v2

    new-instance v3, Lcom/android/htccontacts/BrowseGroupsActivity$3;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/BrowseGroupsActivity$3;-><init>(Lcom/android/htccontacts/BrowseGroupsActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 2384
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mLoadingProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mLoadingProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2385
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mLoadingProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 2386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mLoadingProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 2388
    :cond_0
    return-void
.end method

.method private fillupCountHashMap(Ljava/lang/String;)I
    .locals 11
    .parameter "name"

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 1318
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1319
    :cond_0
    const/4 v7, -0x1

    .line 1336
    :cond_1
    :goto_0
    return v7

    .line 1321
    :cond_2
    sget-object v8, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 1322
    .local v8, uri:Landroid/net/Uri;
    const-string v4, "groups_name_count"

    invoke-static {v8, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 1323
    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1324
    .local v1, queryUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1325
    .local v0, resolver:Landroid/content/ContentResolver;
    new-array v2, v10, [Ljava/lang/String;

    const-string v4, "summ_count"

    aput-object v4, v2, v9

    .local v2, projection:[Ljava/lang/String;
    move-object v4, v3

    move-object v5, v3

    .line 1326
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1327
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 1328
    .local v7, counts:I
    if-eqz v6, :cond_1

    .line 1329
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1330
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1331
    iget-object v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mMemberCountMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    iget-object v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mValidCacheList:Ljava/util/HashMap;

    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v9

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private fillupCountHashMap()V
    .locals 22

    .prologue
    .line 1340
    sget-object v19, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 1341
    .local v19, uri:Landroid/net/Uri;
    const-string v5, "groups_name_count"

    move-object/from16 v0, v19

    invoke-static {v0, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 1343
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1344
    .local v2, resolver:Landroid/content/ContentResolver;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "summ_count"

    aput-object v6, v4, v5

    .line 1346
    .local v4, projection:[Ljava/lang/String;
    sget-boolean v5, Lcom/android/htccontacts/BrowseGroupsActivity;->PERFORCE_TUNNING_DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "BrowseGroupsActivity"

    const-string v6, "fillupCountHashMap E : "

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1349
    .local v16, startTime:J
    const/16 v18, 0x0

    .line 1350
    .local v18, titleListIndex:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupCacheList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1351
    .local v14, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupCacheList:Ljava/util/HashMap;

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    .line 1352
    .local v12, groupItem:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v15, v12, v5

    .line 1353
    .local v15, name:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v15}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1356
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5, v15}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1357
    .local v3, queryUri:Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1358
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 1359
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1360
    const/4 v5, 0x0

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1361
    .local v9, counts:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mMemberCountMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mValidCacheList:Ljava/util/HashMap;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v15, v6, v7

    invoke-virtual {v5, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    .end local v9           #counts:I
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1366
    :cond_3
    add-int/lit8 v18, v18, 0x1

    .line 1367
    goto :goto_0

    .line 1368
    .end local v3           #queryUri:Landroid/net/Uri;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v12           #groupItem:[Ljava/lang/String;
    .end local v14           #key:Ljava/lang/String;
    .end local v15           #name:Ljava/lang/String;
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1369
    .local v10, endTime:J
    sget-boolean v5, Lcom/android/htccontacts/BrowseGroupsActivity;->PERFORCE_TUNNING_DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "BrowseGroupsActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fillupCountHashMap X : timer:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v20, v10, v16

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    :cond_5
    return-void
.end method

.method private fillupCountHashMap(Landroid/database/Cursor;)V
    .locals 6
    .parameter "c"

    .prologue
    .line 1374
    const-string v3, "title"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1375
    .local v2, titleIdx:I
    const-string v3, "summ_count"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1377
    .local v0, countIdx:I
    iget-object v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupCacheList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1378
    iget-object v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mValidCacheList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1380
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1382
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1383
    .local v1, name:Ljava/lang/String;
    if-ltz v0, :cond_1

    .line 1384
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 1387
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupCacheList:Ljava/util/HashMap;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1390
    .end local v1           #name:Ljava/lang/String;
    :cond_2
    const/4 v3, -0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1391
    return-void
.end method

.method private launchRearrangeGroups()V
    .locals 2

    .prologue
    .line 2338
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.ArrangeOrder"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2339
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/group"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2340
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2341
    return-void
.end method

.method private registerFrequencyObserver()V
    .locals 4

    .prologue
    .line 2344
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 2345
    .local v0, app:Landroid/app/Application;
    instance-of v3, v0, Lcom/android/htccontacts/PeopleApp;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 2346
    check-cast v2, Lcom/android/htccontacts/PeopleApp;

    .line 2347
    .local v2, peopleApp:Lcom/android/htccontacts/PeopleApp;
    invoke-virtual {v2}, Lcom/android/htccontacts/PeopleApp;->getFrequencyObservable()Lcom/android/htccontacts/group/FrequencyObservable;

    move-result-object v1

    .line 2348
    .local v1, observable:Lcom/android/htccontacts/group/FrequencyObservable;
    iget-object v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mFrequencyConfigObserver:Lcom/android/htccontacts/BrowseGroupsActivity$FrequencyConfigObserver;

    if-nez v3, :cond_0

    .line 2349
    new-instance v3, Lcom/android/htccontacts/BrowseGroupsActivity$FrequencyConfigObserver;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/BrowseGroupsActivity$FrequencyConfigObserver;-><init>(Lcom/android/htccontacts/BrowseGroupsActivity;)V

    iput-object v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mFrequencyConfigObserver:Lcom/android/htccontacts/BrowseGroupsActivity$FrequencyConfigObserver;

    .line 2350
    iget-object v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mFrequencyConfigObserver:Lcom/android/htccontacts/BrowseGroupsActivity$FrequencyConfigObserver;

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/group/FrequencyObservable;->registerObserver(Ljava/lang/Object;)V

    .line 2353
    .end local v1           #observable:Lcom/android/htccontacts/group/FrequencyObservable;
    .end local v2           #peopleApp:Lcom/android/htccontacts/PeopleApp;
    :cond_0
    return-void
.end method

.method private releaseQueryCountThread()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 853
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 854
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->isQueryCountThreadReleased:Z

    .line 855
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->removeIdler()V

    .line 856
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 857
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 858
    iput-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountThread:Landroid/os/HandlerThread;

    .line 860
    :cond_0
    return-void
.end method

.method private setupQueryCountThread()V
    .locals 4

    .prologue
    .line 843
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 844
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->isQueryCountThreadReleased:Z

    .line 845
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "QueryGroupCountThread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountThread:Landroid/os/HandlerThread;

    .line 846
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 847
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 848
    .local v0, looper:Landroid/os/Looper;
    new-instance v1, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;

    invoke-direct {v1, v0, p0}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;-><init>(Landroid/os/Looper;Lcom/android/htccontacts/BrowseGroupsActivity;)V

    iput-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;

    .line 849
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;

    const/16 v2, 0x3ef

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->sendEmptyMessage(I)Z

    .line 851
    .end local v0           #looper:Landroid/os/Looper;
    :cond_0
    return-void
.end method

.method private showProgressDialog()V
    .locals 4

    .prologue
    .line 2377
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mLoadingProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v1, :cond_0

    .line 2378
    const v1, 0x7f0a0128

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2379
    .local v0, displayStr:Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mLoadingProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 2381
    .end local v0           #displayStr:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private unregisterFrequencyObserver()V
    .locals 4

    .prologue
    .line 2356
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 2357
    .local v0, app:Landroid/app/Application;
    instance-of v3, v0, Lcom/android/htccontacts/PeopleApp;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 2358
    check-cast v2, Lcom/android/htccontacts/PeopleApp;

    .line 2359
    .local v2, peopleApp:Lcom/android/htccontacts/PeopleApp;
    invoke-virtual {v2}, Lcom/android/htccontacts/PeopleApp;->getFrequencyObservable()Lcom/android/htccontacts/group/FrequencyObservable;

    move-result-object v1

    .line 2360
    .local v1, observable:Lcom/android/htccontacts/group/FrequencyObservable;
    iget-object v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mFrequencyConfigObserver:Lcom/android/htccontacts/BrowseGroupsActivity$FrequencyConfigObserver;

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/group/FrequencyObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 2361
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mFrequencyConfigObserver:Lcom/android/htccontacts/BrowseGroupsActivity$FrequencyConfigObserver;

    .line 2363
    .end local v1           #observable:Lcom/android/htccontacts/group/FrequencyObservable;
    .end local v2           #peopleApp:Lcom/android/htccontacts/PeopleApp;
    :cond_0
    return-void
.end method


# virtual methods
.method protected addGroup()V
    .locals 3

    .prologue
    .line 1128
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-class v2, Lcom/android/htccontacts/group/GroupEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1129
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.INSERT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1130
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1131
    return-void
.end method

.method protected addIndicatorRequest(Lcom/android/htccontacts/indicator/IndicatorRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->isIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/indicator/IndicatorProcessor;->addRequest(Lcom/android/htccontacts/indicator/IndicatorRequest;)V

    .line 478
    :cond_0
    return-void
.end method

.method protected clearGroup(Ljava/lang/String;)V
    .locals 4
    .parameter "title"

    .prologue
    .line 1167
    if-nez p1, :cond_0

    .line 1214
    :goto_0
    return-void

    .line 1170
    :cond_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a019a

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a019e

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a019f

    new-instance v3, Lcom/android/htccontacts/BrowseGroupsActivity$5;

    invoke-direct {v3, p0, p1}, Lcom/android/htccontacts/BrowseGroupsActivity$5;-><init>(Lcom/android/htccontacts/BrowseGroupsActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a01a0

    new-instance v3, Lcom/android/htccontacts/BrowseGroupsActivity$4;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/BrowseGroupsActivity$4;-><init>(Lcom/android/htccontacts/BrowseGroupsActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 1213
    .local v0, d:Landroid/app/Dialog;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->manageDialog(Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method protected deleteGroup(Ljava/lang/String;)V
    .locals 4
    .parameter "title"

    .prologue
    .line 1216
    if-nez p1, :cond_0

    .line 1251
    :goto_0
    return-void

    .line 1219
    :cond_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0199

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a019b

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a019c

    new-instance v3, Lcom/android/htccontacts/BrowseGroupsActivity$7;

    invoke-direct {v3, p0, p1}, Lcom/android/htccontacts/BrowseGroupsActivity$7;-><init>(Lcom/android/htccontacts/BrowseGroupsActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a019d

    new-instance v3, Lcom/android/htccontacts/BrowseGroupsActivity$6;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/BrowseGroupsActivity$6;-><init>(Lcom/android/htccontacts/BrowseGroupsActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 1250
    .local v0, d:Landroid/app/Dialog;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->manageDialog(Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method protected doEditGroup(Landroid/database/Cursor;)V
    .locals 6
    .parameter "cursor"

    .prologue
    .line 1255
    const-string v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1257
    .local v0, groupId:J
    const-string v5, "title"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1259
    .local v3, groupName:Ljava/lang/String;
    const-string v5, "group_is_read_only"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1264
    .local v2, groupIsReadOnly:I
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1265
    .local v4, intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.EDIT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1266
    const-string v5, "vnd.android.cursor.item/group_name_summary"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1267
    const-string v5, "GROUP_ID"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1268
    const-string v5, "GROUP_NAME"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1269
    const-string v5, "group_is_read_only"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1270
    invoke-virtual {p0, v4}, Lcom/android/htccontacts/BrowseGroupsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1271
    return-void
.end method

.method protected isIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 435
    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    .line 1397
    const/4 v0, -0x1

    if-ne v0, p2, :cond_1

    if-eq v1, p1, :cond_0

    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 1400
    :cond_0
    iput-boolean v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIsDirty:Z

    .line 1405
    :goto_0
    return-void

    .line 1403
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/app/BaseListActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v11, 0x0

    .line 599
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    .local v5, menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    iget v6, v5, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    .line 608
    .local v6, position:I
    const/4 v0, 0x0

    .line 609
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 611
    .local v7, title:Ljava/lang/String;
    if-ltz v6, :cond_0

    .line 612
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v10

    sub-int v10, v6, v10

    invoke-interface {v9, v10}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cursor:Landroid/database/Cursor;
    check-cast v0, Landroid/database/Cursor;

    .line 613
    .restart local v0       #cursor:Landroid/database/Cursor;
    const-string v9, "title"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 615
    .local v8, titleIdx:I
    const-string v9, "group_is_read_only"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 616
    .local v3, groupReadOnlyIndex:I
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 617
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 622
    .local v2, groupReadOnly:I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 643
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #groupReadOnly:I
    .end local v3           #groupReadOnlyIndex:I
    .end local v5           #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .end local v6           #position:I
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #titleIdx:I
    :cond_0
    :goto_0
    :pswitch_0
    return v11

    .line 601
    :catch_0
    move-exception v1

    .line 603
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v9, "BrowseGroupsActivity"

    const-string v10, "bad menuInfoIn"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 625
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v2       #groupReadOnly:I
    .restart local v3       #groupReadOnlyIndex:I
    .restart local v5       #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .restart local v6       #position:I
    .restart local v7       #title:Ljava/lang/String;
    .restart local v8       #titleIdx:I
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->doEditGroup(Landroid/database/Cursor;)V

    goto :goto_0

    .line 628
    :pswitch_2
    invoke-virtual {p0, v7}, Lcom/android/htccontacts/BrowseGroupsActivity;->deleteGroup(Ljava/lang/String;)V

    goto :goto_0

    .line 635
    :pswitch_3
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 636
    .local v4, intent:Landroid/content/Intent;
    const-class v9, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;

    invoke-virtual {v4, p0, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 637
    const/4 v9, 0x1

    invoke-virtual {p0, v4, v9}, Lcom/android/htccontacts/BrowseGroupsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 640
    .end local v4           #intent:Landroid/content/Intent;
    :pswitch_4
    invoke-virtual {p0, v7}, Lcom/android/htccontacts/BrowseGroupsActivity;->clearGroup(Ljava/lang/String;)V

    goto :goto_0

    .line 622
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 291
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 294
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x17

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd8

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xda

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isChina()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    :cond_0
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->setFontSize(Landroid/content/Context;)V

    .line 300
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->getFontSize(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mFontSize:I

    .line 303
    :cond_1
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->setContentView(I)V

    .line 305
    new-instance v1, Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;

    .line 307
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->isIndicatorEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 308
    new-instance v1, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    invoke-direct {v1}, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;-><init>()V

    iput-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    .line 310
    :cond_2
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 311
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mMemberCountMap:Ljava/util/HashMap;

    .line 312
    iget-boolean v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIsImmediatelyCloseQueryCountThread:Z

    if-nez v1, :cond_3

    .line 313
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "QueryGroupCountThread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountThread:Landroid/os/HandlerThread;

    .line 315
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 317
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 318
    .local v0, looper:Landroid/os/Looper;
    new-instance v1, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;

    invoke-direct {v1, v0, p0}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;-><init>(Landroid/os/Looper;Lcom/android/htccontacts/BrowseGroupsActivity;)V

    iput-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;

    .line 319
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;

    const/16 v2, 0x3ef

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->sendEmptyMessage(I)Z

    .line 322
    .end local v0           #looper:Landroid/os/Looper;
    :cond_3
    new-instance v1, Lcom/android/htccontacts/BrowseGroupsActivity$ForceUpdateIndicatorIdleHandler;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/BrowseGroupsActivity$ForceUpdateIndicatorIdleHandler;-><init>(Lcom/android/htccontacts/BrowseGroupsActivity;)V

    iput-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mForceUpdateIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 324
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->registerFrequencyObserver()V

    .line 325
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->setTitleBar()V

    .line 326
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 26
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 505
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIsDirty:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIsDuringUpdateGroupNameList:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    const/4 v8, 0x0

    .line 513
    .local v8, info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object v8, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    iget v14, v8, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    .line 522
    .local v14, nLongPressed:I
    const-wide v22, 0x4000e147ae147ae1L

    invoke-static/range {v22 .. v23}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v22

    if-nez v22, :cond_2

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 523
    :cond_2
    add-int/lit8 v14, v14, 0x1

    .line 526
    :cond_3
    if-lez v14, :cond_0

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursorAdapter:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    move-object/from16 v22, v0

    add-int/lit8 v23, v14, -0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    .line 531
    .local v21, v:Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    .line 533
    .local v15, obj:Ljava/lang/Object;
    if-eqz v15, :cond_0

    instance-of v0, v15, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    move-object v5, v15

    .line 535
    check-cast v5, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;

    .line 536
    .local v5, cache:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;
    const/4 v13, 0x1

    .line 537
    .local v13, isEditable:Z
    const/4 v12, 0x1

    .line 538
    .local v12, isDeleted:Z
    iget-object v0, v5, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->getPrimaryText()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 539
    iget-object v0, v5, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->groupName:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    iget-object v0, v5, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->groupName:Ljava/lang/String;

    move-object/from16 v22, v0

    iget v0, v5, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->GroupIsReadOnly:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/htc/provider/HtcContactsContract$Groups;->isDefaultGroupName(Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_c

    :cond_4
    const/4 v11, 0x1

    .line 541
    .local v11, isDefaultGroup:Z
    :goto_1
    add-int/lit8 v16, v14, -0x1

    .line 542
    .local v16, offset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursorAdapter:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    .line 543
    .local v6, cursor:Landroid/database/Cursor;
    const-string v22, "title"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 544
    .local v20, titleIndex:I
    const-string v22, "system_id"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 546
    .local v18, systemIdx:I
    const-string v22, "is_attribute_set"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 548
    .local v10, isAttributeSetIndex:I
    const/16 v17, 0x0

    .line 549
    .local v17, systemId:Ljava/lang/String;
    move/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 550
    .local v19, title:Ljava/lang/String;
    const/4 v9, 0x0

    .line 554
    .local v9, isAttribute:I
    if-ltz v18, :cond_5

    .line 555
    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 558
    :cond_5
    if-ltz v10, :cond_6

    .line 559
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 562
    :cond_6
    if-nez v11, :cond_7

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_7

    const/16 v22, 0x1

    iget v0, v5, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->GroupIsReadOnly:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 563
    :cond_7
    const/4 v12, 0x0

    .line 566
    :cond_8
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v9, v0, :cond_9

    .line 567
    const/4 v13, 0x0

    .line 568
    const/4 v12, 0x0

    .line 571
    :cond_9
    if-eqz v13, :cond_a

    .line 572
    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    const v25, 0x7f0a01a6

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 574
    :cond_a
    if-eqz v12, :cond_d

    .line 575
    const/16 v22, 0x0

    const/16 v23, 0x2

    const/16 v24, 0x0

    const v25, 0x7f0a01a8

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 581
    :cond_b
    :goto_2
    if-eqz v19, :cond_0

    const-string v22, "Frequent Contacts"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 583
    const/16 v22, 0x0

    const/16 v23, 0x5

    const/16 v24, 0x0

    const v25, 0x7f0a0322

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 515
    .end local v5           #cache:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v9           #isAttribute:I
    .end local v10           #isAttributeSetIndex:I
    .end local v11           #isDefaultGroup:Z
    .end local v12           #isDeleted:Z
    .end local v13           #isEditable:Z
    .end local v14           #nLongPressed:I
    .end local v15           #obj:Ljava/lang/Object;
    .end local v16           #offset:I
    .end local v17           #systemId:Ljava/lang/String;
    .end local v18           #systemIdx:I
    .end local v19           #title:Ljava/lang/String;
    .end local v20           #titleIndex:I
    .end local v21           #v:Landroid/view/View;
    :catch_0
    move-exception v7

    .line 517
    .local v7, e:Ljava/lang/ClassCastException;
    const-string v22, "BrowseGroupsActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onCreateContextMenu ClassCastException "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 539
    .end local v7           #e:Ljava/lang/ClassCastException;
    .restart local v5       #cache:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;
    .restart local v12       #isDeleted:Z
    .restart local v13       #isEditable:Z
    .restart local v14       #nLongPressed:I
    .restart local v15       #obj:Ljava/lang/Object;
    .restart local v21       #v:Landroid/view/View;
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 576
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v9       #isAttribute:I
    .restart local v10       #isAttributeSetIndex:I
    .restart local v11       #isDefaultGroup:Z
    .restart local v16       #offset:I
    .restart local v17       #systemId:Ljava/lang/String;
    .restart local v18       #systemIdx:I
    .restart local v19       #title:Ljava/lang/String;
    .restart local v20       #titleIndex:I
    :cond_d
    const-string v22, "Frequent Contacts"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_b

    .line 578
    const/16 v22, 0x0

    const/16 v23, 0x6

    const/16 v24, 0x0

    const v25, 0x7f0a01a9

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 277
    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 278
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 279
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 280
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 281
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 285
    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 648
    const/4 v0, 0x2

    const v1, 0x7f0a0102

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208031d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 650
    const/4 v0, 0x5

    const v1, 0x7f0a01ad

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208033b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 652
    const/4 v0, 0x6

    const v1, 0x7f0a01a7

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080324

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 653
    const/4 v0, 0x7

    const v1, 0x7f0a03c7

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a16

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 656
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xda

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isChina()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 660
    :cond_0
    const/16 v0, 0x8

    const v1, 0x7f0a03e5

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020016

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 662
    :cond_1
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 663
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 680
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onDestroy()V

    .line 681
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursorAdapter:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursorAdapter:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->removeCallback()V

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 685
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->removeIdler()V

    .line 686
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->removeMessages(I)V

    .line 687
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->removeMessages(I)V

    .line 688
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->removeMessages(I)V

    .line 690
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 691
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 692
    iput-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountThread:Landroid/os/HandlerThread;

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;

    if-eqz v0, :cond_2

    .line 696
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;->removeMessages(I)V

    .line 699
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupListHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 700
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupListHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 701
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupListHandler:Landroid/os/Handler;

    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 702
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupListHandler:Landroid/os/Handler;

    const/16 v1, 0x7e4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 703
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupListHandler:Landroid/os/Handler;

    const/16 v1, 0x7ee

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 704
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupListHandler:Landroid/os/Handler;

    const/16 v1, 0x7f8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 706
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupListHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 709
    :cond_3
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 710
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->dismissProgressDialog()V

    .line 711
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursorAdapter:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    if-eqz v0, :cond_4

    .line 712
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursorAdapter:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 716
    :cond_4
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    if-eqz v0, :cond_5

    .line 717
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->pauseIndicator()V

    .line 718
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    invoke-virtual {v0}, Lcom/android/htccontacts/indicator/IndicatorProcessor;->destroyProcess()V

    .line 721
    :cond_5
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupIndicatorRequestPool:Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;

    if-eqz v0, :cond_6

    .line 722
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupIndicatorRequestPool:Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;->clean()V

    .line 725
    :cond_6
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->unregisterFrequencyObserver()V

    .line 726
    return-void
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1107
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 1108
    .local v0, obj:Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/database/Cursor;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 1109
    check-cast v2, Landroid/database/Cursor;

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/BrowseGroupsActivity;->openGroup(Landroid/database/Cursor;)V

    .line 1111
    :cond_0
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 1112
    check-cast v1, Landroid/view/View;

    .line 1113
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1114
    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 1125
    .end local v1           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 770
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 815
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :cond_0
    :goto_0
    return v4

    .line 773
    :pswitch_1
    const-string v5, "ANALYTIC_HtcContacts"

    const-string v6, "[BrowseGroupsActivity]HtcContactGlanceActivity"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 775
    .local v1, home:Landroid/content/Intent;
    const-string v5, "com.android.htccontacts"

    const-string v6, "com.android.htccontacts.HtcContactGlanceActivity"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 780
    .end local v1           #home:Landroid/content/Intent;
    :pswitch_2
    const-string v5, "ANALYTIC_HtcContacts"

    const-string v6, "[BrowseGroupsActivity]Add group"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->addGroup()V

    goto :goto_0

    .line 790
    :pswitch_3
    const-string v5, "ANALYTIC_HtcContacts"

    const-string v6, "[BrowseGroupsActivity]Open group"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->getSelectedItemPosition()I

    move-result v3

    .line 792
    .local v3, pos:I
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 793
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 794
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->openGroup(Landroid/database/Cursor;)V

    goto :goto_0

    .line 799
    .end local v0           #c:Landroid/database/Cursor;
    .end local v3           #pos:I
    :pswitch_4
    const-string v5, "ANALYTIC_HtcContacts"

    const-string v6, "[BrowseGroupsActivity]Arrange group"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->launchRearrangeGroups()V

    goto :goto_0

    .line 806
    :pswitch_5
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->getHelpIntent()Landroid/content/Intent;

    move-result-object v2

    .line 807
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/BrowseGroupsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 811
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_6
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->createFontSizeDialog()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 770
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 391
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onPause()V

    .line 392
    iget-boolean v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIsImmediatelyCloseQueryCountThread:Z

    if-eqz v0, :cond_0

    .line 393
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->releaseQueryCountThread()V

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->pauseIndicator()V

    .line 396
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mLoadingProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mLoadingProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mLoadingProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mLoadingProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupIndicatorRequestPool:Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;

    if-eqz v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupIndicatorRequestPool:Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;->disableRequestObservers()V

    .line 404
    :cond_2
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 751
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 753
    .local v0, menuItem:Landroid/view/MenuItem;
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 759
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 760
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->isHelpAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 761
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 765
    :goto_0
    return v3

    .line 763
    :cond_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 414
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 415
    const-string v6, "countmap"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    .line 416
    .local v4, serializable:Ljava/io/Serializable;
    instance-of v6, v4, Ljava/util/HashMap;

    if-eqz v6, :cond_1

    move-object v3, v4

    .line 417
    check-cast v3, Ljava/util/HashMap;

    .line 418
    .local v3, map:Ljava/util/HashMap;
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 419
    .local v2, keys:Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 420
    .local v1, key:Ljava/lang/Object;
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 421
    .local v5, value:Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_0

    instance-of v6, v1, Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 422
    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    .line 423
    iget-object v6, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mMemberCountMap:Ljava/util/HashMap;

    check-cast v1, Ljava/lang/String;

    .end local v1           #key:Ljava/lang/Object;
    check-cast v5, Ljava/lang/Integer;

    .end local v5           #value:Ljava/lang/Object;
    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 428
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #keys:Ljava/util/Set;
    .end local v3           #map:Ljava/util/HashMap;
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xc8

    .line 343
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onResume()V

    .line 347
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x17

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd8

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xda

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isChina()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 351
    :cond_0
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->getFontSize(Landroid/content/Context;)I

    move-result v0

    .line 352
    .local v0, fontSize:I
    iget v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mFontSize:I

    if-eq v2, v0, :cond_1

    .line 353
    iput v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mFontSize:I

    .line 354
    const v2, 0x7f070016

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/BrowseGroupsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;

    .line 355
    .local v1, mHeaderBar:Lcom/android/htccontacts/widget/title/BrowseHeaderBar;
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->updateResource()V

    .line 356
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->resetEmptyView()V

    .line 357
    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursorAdapter:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    if-eqz v2, :cond_1

    .line 358
    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursorAdapter:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/BrowseGroupsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 363
    .end local v0           #fontSize:I
    .end local v1           #mHeaderBar:Lcom/android/htccontacts/widget/title/BrowseHeaderBar;
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupIndicatorRequestPool:Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;

    if-eqz v2, :cond_2

    .line 364
    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupIndicatorRequestPool:Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;

    invoke-virtual {v2}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorRequestPool;->enableRequestObservers()V

    .line 367
    :cond_2
    iget-boolean v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIsImmediatelyCloseQueryCountThread:Z

    if-eqz v2, :cond_3

    .line 368
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->setupQueryCountThread()V

    .line 370
    :cond_3
    iget-boolean v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIsDirty:Z

    if-eqz v2, :cond_4

    .line 372
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/BrowseGroupsActivity;->startQuery(Z)V

    .line 387
    :goto_0
    return-void

    .line 375
    :cond_4
    invoke-virtual {p0, v4, v5}, Lcom/android/htccontacts/BrowseGroupsActivity;->startIndicator(J)V

    .line 376
    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;

    if-eqz v2, :cond_6

    .line 377
    iget-boolean v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIsFirstQueryCountNotDone:Z

    if-eqz v2, :cond_5

    .line 378
    sget-object v2, Lcom/android/htccontacts/BrowseGroupsActivity;->mFirstQueryIdler:Lcom/android/htccontacts/BrowseGroupsActivity$FirstQueryAllIdleHandler;

    if-eqz v2, :cond_5

    .line 379
    sget-object v2, Lcom/android/htccontacts/BrowseGroupsActivity;->mFirstQueryIdler:Lcom/android/htccontacts/BrowseGroupsActivity$FirstQueryAllIdleHandler;

    invoke-virtual {v2}, Lcom/android/htccontacts/BrowseGroupsActivity$FirstQueryAllIdleHandler;->queueIdle()Z

    .line 382
    :cond_5
    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;

    invoke-virtual {v2}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->flushReleaseCacheQuery()V

    .line 385
    :cond_6
    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupListHandler:Landroid/os/Handler;

    const/16 v3, 0x3f0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 408
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 409
    const-string v0, "countmap"

    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mMemberCountMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 410
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 668
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onStop()V

    .line 669
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mLoadingProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_1

    .line 670
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mLoadingProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mLoadingProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 673
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mLoadingProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 675
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->cleanManagedDialog()V

    .line 676
    return-void
.end method

.method public onTabControlPressed(ILjava/lang/String;)V
    .locals 1
    .parameter "tabIndex"
    .parameter "tabTag"

    .prologue
    .line 482
    const v0, 0x7f0a0018

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->pauseIndicator()V

    .line 486
    :cond_0
    return-void
.end method

.method public onTabControlReleased(ILjava/lang/String;)V
    .locals 0
    .parameter "tabIndex"
    .parameter "tabTag"

    .prologue
    .line 489
    return-void
.end method

.method public onTabSwitched(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "fromTab"
    .parameter "toTab"
    .parameter "fromTabTag"
    .parameter "toTabTag"

    .prologue
    .line 492
    if-ne p1, p2, :cond_0

    .line 493
    const v0, 0x7f0a0018

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->pauseIndicator()V

    .line 498
    :cond_0
    return-void
.end method

.method protected openGroup(Landroid/database/Cursor;)V
    .locals 10
    .parameter "cursor"

    .prologue
    .line 1141
    :try_start_0
    const-string v7, "_id"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1143
    .local v2, groupId:J
    const-string v7, "title"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1146
    .local v5, groupName:Ljava/lang/String;
    const-string v7, "group_is_read_only"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1147
    .local v4, groupIsReadonly:I
    const-string v7, "summ_count"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1150
    .local v0, counts:I
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1151
    .local v6, intent:Landroid/content/Intent;
    const-string v7, "vnd.android.cursor.item/group_name_summary"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1152
    const-string v7, "GROUP_ID"

    invoke-virtual {v6, v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1153
    const-string v7, "GROUP_NAME"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1154
    const-string v7, "summ_count"

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1157
    const-string v7, "group_is_read_only"

    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1159
    invoke-virtual {p0, v6}, Lcom/android/htccontacts/BrowseGroupsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1164
    .end local v0           #counts:I
    .end local v2           #groupId:J
    .end local v4           #groupIsReadonly:I
    .end local v5           #groupName:Ljava/lang/String;
    .end local v6           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1160
    :catch_0
    move-exception v1

    .line 1161
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v7, "BrowseGroupsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "openGroup - Database column not found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected declared-synchronized pauseIndicator()V
    .locals 2

    .prologue
    .line 439
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->isIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 440
    sget-boolean v0, Lcom/android/htccontacts/BrowseGroupsActivity;->PERFORCE_TUNNING_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BrowseGroupsActivity"

    const-string v1, "pauseIndicator"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupListHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupListHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    invoke-virtual {v0}, Lcom/android/htccontacts/indicator/IndicatorProcessor;->pauseProcess()V

    .line 448
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    invoke-virtual {v0}, Lcom/android/htccontacts/indicator/IndicatorProcessor;->clearQueue()V

    .line 449
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursorAdapter:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    if-eqz v0, :cond_2

    .line 450
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursorAdapter:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->setDoAddIndicatorRequest(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    :cond_2
    monitor-exit p0

    return-void

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected removeGroup()V
    .locals 3

    .prologue
    .line 1134
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-class v2, Lcom/android/htccontacts/group/GroupRemoveActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1135
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1136
    return-void
.end method

.method protected setAdapter()V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/4 v8, 0x0

    .line 1052
    iget-object v4, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1103
    :cond_0
    :goto_0
    return-void

    .line 1055
    :cond_1
    iget-object v4, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursorAdapter:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    if-nez v4, :cond_5

    .line 1056
    new-instance v4, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    iget-object v5, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const v6, 0x209006d

    iget-object v7, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursor:Landroid/database/Cursor;

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;-><init>(Lcom/android/htccontacts/BrowseGroupsActivity;Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v4, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursorAdapter:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    .line 1058
    new-instance v4, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;

    iget-object v5, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursorAdapter:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    const/4 v6, 0x1

    iget-boolean v7, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIsEnableAddItemSeparable:Z

    invoke-direct {v4, v5, v6, v7}, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;-><init>(Lcom/htc/widget/InsertNewListAdapterInterface;ZZ)V

    iput-object v4, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mInsertListAdapter:Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;

    .line 1059
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v4, v9, :cond_2

    .line 1060
    iget-object v4, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mInsertListAdapter:Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;

    invoke-virtual {v4, v8}, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;->setInsertViewShow(Z)V

    .line 1063
    :cond_2
    iget-object v4, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursorAdapter:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/BrowseGroupsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1065
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursorAdapter:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 1069
    :goto_1
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v4, v9, :cond_0

    .line 1071
    const v4, 0x7f0a0019

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/BrowseGroupsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1072
    .local v1, text:Ljava/lang/String;
    const v4, 0x2020057

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/BrowseGroupsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1073
    .local v0, genericTitleBar:Landroid/view/View;
    if-eqz v0, :cond_3

    .line 1074
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1077
    :cond_3
    const v4, 0x202005a

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/BrowseGroupsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1078
    .local v3, title:Landroid/widget/TextView;
    if-eqz v3, :cond_4

    .line 1079
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    :cond_4
    const v4, 0x202005b

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/BrowseGroupsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1082
    .local v2, textViewShadow:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 1083
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1067
    .end local v0           #genericTitleBar:Landroid/view/View;
    .end local v1           #text:Ljava/lang/String;
    .end local v2           #textViewShadow:Landroid/widget/TextView;
    .end local v3           #title:Landroid/widget/TextView;
    :cond_5
    iget-object v4, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursorAdapter:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    iget-object v5, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_1
.end method

.method protected setTitleBar()V
    .locals 3

    .prologue
    .line 330
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;

    .line 331
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/BrowseHeaderBar;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->buildHeaderBar(I)V

    .line 332
    const v1, 0x7f0a0019

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->setHeaderText(I)V

    .line 333
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->getHeaderImage()Lcom/htc/widget/HeaderBarImage;

    move-result-object v1

    new-instance v2, Lcom/android/htccontacts/BrowseGroupsActivity$2;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/BrowseGroupsActivity$2;-><init>(Lcom/android/htccontacts/BrowseGroupsActivity;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    return-void
.end method

.method protected startIndicator()V
    .locals 2

    .prologue
    .line 471
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/BrowseGroupsActivity;->startIndicator(J)V

    .line 472
    return-void
.end method

.method protected declared-synchronized startIndicator(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 456
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 468
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 460
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/android/htccontacts/BrowseGroupsActivity;->PERFORCE_TUNNING_DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "BrowseGroupsActivity"

    const-string v1, "startIndicator"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupListHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 463
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->isIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursorAdapter:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursorAdapter:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->setDoAddIndicatorRequest(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected startQuery(Z)V
    .locals 8
    .parameter "preQuery"

    .prologue
    const/16 v1, 0x3ea

    const/4 v2, 0x0

    .line 871
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;->cancelOperation(I)V

    .line 872
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;->cancelOperation(I)V

    .line 876
    sget-object v3, Lcom/htc/provider/HtcContactsContract$Groups;->CONTENT_NAME_LIST_URI:Landroid/net/Uri;

    .line 878
    .local v3, simpleUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseGroupsActivity;->pauseIndicator()V

    .line 880
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;

    const-string v5, ""

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIsDuringUpdateGroupNameList:Z

    .line 892
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->beginTime:J

    .line 896
    return-void
.end method

.method protected startQueryWithPreQueryDelayed()V
    .locals 4

    .prologue
    const/16 v3, 0x7da

    .line 866
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupListHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 867
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupListHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 868
    return-void
.end method
