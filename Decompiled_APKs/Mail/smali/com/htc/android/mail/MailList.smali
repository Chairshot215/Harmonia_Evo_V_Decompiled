.class public Lcom/htc/android/mail/MailList;
.super Landroid/app/Activity;
.source "MailList.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/MailList$MailListActivityCallbackBinder;,
        Lcom/htc/android/mail/MailList$NonConfigurationInstance;,
        Lcom/htc/android/mail/MailList$UIHandler;,
        Lcom/htc/android/mail/MailList$BasicTabInfo;,
        Lcom/htc/android/mail/MailList$UpdateFooterTask;,
        Lcom/htc/android/mail/MailList$CursorContentObserver;,
        Lcom/htc/android/mail/MailList$TabInfo;,
        Lcom/htc/android/mail/MailList$QueryHandler;,
        Lcom/htc/android/mail/MailList$RequestHandler;,
        Lcom/htc/android/mail/MailList$MyDataSetObserver;,
        Lcom/htc/android/mail/MailList$SummaryContentObserver;,
        Lcom/htc/android/mail/MailList$GetImportantPrimaryEmailTask;,
        Lcom/htc/android/mail/MailList$GroupBatchTask;,
        Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;,
        Lcom/htc/android/mail/MailList$MailListAdapter;
    }
.end annotation


# static fields
.field private static final ACCOUNT_SETTINGS:I = 0x2

.field private static final ACCOUNT_SETUP:I = 0x1

.field static final AIRPLANE_NOTIFY:I = 0x4

.field private static final ALERT:I = 0x2

.field public static final CFG_RESULT_DELETE_ACCOUNT:I = 0x66

.field private static final CHANGE_FOLDER:I = 0x11

.field private static final CHANGE_FOLDER_OTHER:I = 0x1f

.field private static final COMPOSE_NEW_MAIL:I = 0x4

.field private static DBG:Z = false

.field private static DEBUG:Z = false

.field private static final DELETE_ALL_MAIL:I = 0x6

.field static final DELETE_CONFIRM:I = 0x2

.field private static final DELETE_ONEMAIL_CONFIRM:I = 0x7

.field private static final DELETE_PROCESS:I = 0x9

.field private static final DIALOG_EMPTY_MAILBOX:I = 0x11

.field private static final DIALOG_EXCHANGE_MAIL_DISABLE:I = 0xf

.field private static final DIALOG_PROGRESS_ACCOUNT_SYNCING:I = 0x12

.field private static final DIALOG_SEARCH_SVR_MAIL_EMPTY:I = 0x13

.field private static final DISPLAY_FORMAT:I = 0x3

.field private static final DOWNLOAD_MAIL:I = 0x6

.field private static final DOWNLOAD_MAIL_AND_GOTO_REED:I = 0xc

.field private static final EDIT_ACCOUNT:I = 0x1c

.field static final FETCH_PROGRESS:I = 0x3

.field private static FromQueryString:Ljava/lang/String; = null

.field public static final INVALIDATE_VIEW:I = 0x3

.field private static final LABEL_MAIL:I = 0xb

.field private static final MAILBOX:I = 0x3

.field private static final MAILSTATUS:I = 0x4

.field private static final MARK_READ_UNREAD:I = 0x1

.field static final MAX_TITLE_LEN_L:I = 0x28

.field static final MAX_TITLE_LEN_P:I = 0x17

.field private static final MENU_ACCOUNTSETTINGS:I = 0x18

.field private static final MENU_ACCOUNT_LIST:I = 0x1a

.field private static final MENU_CHANCE_ACCOUNT:I = 0x1d

.field private static final MENU_CHANGEFOLDER:I = 0x17

.field private static final MENU_COMPOSE:I = 0x13

.field private static final MENU_COMPOSE_MEETING:I = 0x19

.field private static final MENU_DELETE_MAIL:I = 0x5

.field private static final MENU_EDIT_MULTIPLE_ACCOUNT:I = 0x2b

.field private static final MENU_EDIT_TAB:I = 0x2c

.field private static final MENU_EMPTY_FOLDER:I = 0x26

.field static final MENU_ITEM_ACCEPT:I = 0x7

.field static final MENU_ITEM_DECLINED:I = 0x8

.field static final MENU_ITEM_DELETE:I = 0x3

.field static final MENU_ITEM_MARK_FLAG:I = 0xc

.field static final MENU_ITEM_MARK_FORWARD:I = 0x6

.field static final MENU_ITEM_MARK_READ:I = 0x2

.field static final MENU_ITEM_MOVE_TO:I = 0x1

.field static final MENU_ITEM_OPEN:I = 0xb

.field static final MENU_ITEM_PROPOSE_NEW_TIME:I = 0xa

.field static final MENU_ITEM_REPLY:I = 0x4

.field static final MENU_ITEM_REPLY_ALL:I = 0x5

.field static final MENU_ITEM_SAVE_TO_TASK:I = 0xe

.field static final MENU_ITEM_SEARCH_SENDER:I = 0xf

.field static final MENU_ITEM_SEE_CONVERSATION:I = 0xd

.field static final MENU_ITEM_TENTATIVE_ACCEPTED:I = 0x9

.field private static final MENU_MAILLIST_SHORTCUTKEY_COMPOSENEW:I = 0x27

.field private static final MENU_MAILLIST_SHORTCUTKEY_FORWARD:I = 0x22

.field private static final MENU_MAILLIST_SHORTCUTKEY_MARKFLAG:I = 0x25

.field private static final MENU_MAILLIST_SHORTCUTKEY_MOVETOFOLDER:I = 0x23

.field private static final MENU_MAILLIST_SHORTCUTKEY_REFRESHLIST:I = 0x28

.field private static final MENU_MAILLIST_SHORTCUTKEY_REPLY:I = 0x20

.field private static final MENU_MAILLIST_SHORTCUTKEY_REPLYALL:I = 0x21

.field private static final MENU_MAILLIST_SHORTCUTKEY_SWITCHOUTBOXFOLDER:I = 0x29

.field private static final MENU_MAILLIST_SHORTCUTKEY_SWITCHSENTBOXFOLDER:I = 0x2a

.field private static final MENU_MAILLIST_SHORTCUTKEY_TOGGLEREADUNREAD:I = 0x24

.field private static final MENU_NEW_ACCOUNT:I = 0x1b

.field private static final MENU_OUT_OF_OFFICE:I = 0x1e

.field private static final MENU_REFRESH:I = 0x14

.field private static final MENU_SELECT_ALL:I = 0xc

.field private static final MENU_SELECT_NONE:I = 0xd

.field private static final MENU_SORT:I = 0x12

.field private static final MENU_SORTMAIL:I = 0x16

.field private static final MENU_VIEW_TAGS:I = 0x2d

.field private static final MOVE_MAIL:I = 0xe

.field private static final MOVE_PROCESS:I = 0xa

.field private static final MOVE_SELECT_ALL:I = 0xf

.field private static final MOVE_SELECT_NONE:I = 0x10

.field private static final MSG_DISMISS_DIALOG:I = 0x6

.field public static final QUERY_PREVIEW:I = 0x1

.field private static final READSTATUS:I = 0x5

.field private static final READ_MORE_MAIL:I = 0x7

.field private static final REFRESH_MAIL:I = 0x8

.field public static final REQUEST_CODE_ACCOUNT_LIST:I = 0x7

.field public static final REQUEST_CODE_ACCOUNT_LIST_COMPOSE_MEETING:I = 0x8

.field public static final REQUEST_CODE_ACCOUNT_LIST_EDIT_MULTIPLE_ACCOUNT:I = 0xa

.field public static final REQUEST_CODE_ACCOUNT_LIST_OUTTA_OFFICE:I = 0x9

.field public static final REQUEST_CODE_ACCOUNT_PICKER:I = 0x3

.field public static final REQUEST_CODE_ACNT_CONFIG:I = 0x1

.field public static final REQUEST_CODE_CONTACT_GROUP:I = 0x6

.field public static final REQUEST_CODE_CREATE_ACCOUNT:I = 0x2

.field public static final REQUEST_CODE_HTC_CONTACTS:I = 0x5

.field public static final REQUEST_CODE_OPEN_DETAIL_VIEW:I = 0x4

.field public static final REQUEST_CODE_SEARCH_SERVER_MAIL:I = 0xc

.field public static final REQUEST_CODE_TAG_LIST_PICKER:I = 0xb

.field public static final SEARCHFILTER_DEFAULT_VALUE:I = 0x5

.field public static final SEARCHFILTER_ITEM_NUMBER:I = 0xa

.field public static final SEARCH_FILTER_FROM:I = 0x0

.field public static final SEARCH_FILTER_IN_CC_LIST:I = 0x4

.field public static final SEARCH_FILTER_IN_HIGH_PRIO:I = 0x6

.field public static final SEARCH_FILTER_IN_LOW_PRIO:I = 0x7

.field public static final SEARCH_FILTER_IN_MARKED:I = 0x9

.field public static final SEARCH_FILTER_IN_TO_LIST:I = 0x3

.field public static final SEARCH_FILTER_NO_PRIO:I = 0x8

.field public static final SEARCH_FILTER_SUBJECT:I = 0x2

.field public static final SEARCH_FILTER_TO:I = 0x1

.field public static final SEARCH_FILTER_WITH_ATTACHMENTS:I = 0x5

.field private static final SEARCH_MAIL:I = 0x9

.field public static final SHOW_PREVIEW:I = 0x7

.field static final SORTBY_DATE_ASC:I = 0x1

.field static final SORTBY_DATE_DESC:I = 0x0

.field static final SORTBY_FROM_ASC:I = 0x6

.field static final SORTBY_FROM_DESC:I = 0x7

.field static final SORTBY_PRIORITY_ASC:I = 0x3

.field static final SORTBY_PRIORITY_DESC:I = 0x2

.field static final SORTBY_SIZE_ASC:I = 0x8

.field static final SORTBY_SIZE_DESC:I = 0x9

.field static final SORTBY_SUBJECT_ASC:I = 0x4

.field static final SORTBY_SUBJECT_DESC:I = 0x5

.field private static final SORT_DIALOG:I = 0xb

.field private static final SORT_DIALOG_OUTBOX:I = 0xd

.field private static final SORT_DIALOG_THREAD:I = 0x10

.field private static final STAR_MAIL:I = 0xa

.field private static final TAG:Ljava/lang/String; = "MailList"

.field public static mPreviewMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/android/mail/MailListItemBig;",
            ">;"
        }
    .end annotation
.end field

.field public static final token_full_query:I = 0x14

.field public static final token_full_requery:I = 0x1e

.field public static final token_limited_query:I = 0xa

.field public static final token_search:I = 0x32

.field public static final token_sort:I = 0x28


# instance fields
.field private Expand_groupId:Ljava/lang/String;

.field private TitleDateTime:Landroid/view/View;

.field private UpdateTime:Landroid/widget/TextView;

.field private addImportant:Landroid/view/View;

.field private addVipDlg:Lcom/htc/app/HtcProgressDialog;

.field airPlane:I

.field private allMenuID:[I

.field allowReadMore:Z

.field private alphabetType:I

.field private am:Landroid/app/AlarmManager;

.field private ascDescImg:Landroid/widget/ImageView;

.field private compose_txt:Landroid/widget/TextView;

.field private confirmBatchMarkMailEvent:Landroid/content/DialogInterface$OnClickListener;

.field private confirmBatchMoveMail:Landroid/content/DialogInterface$OnClickListener;

.field private confirmDelMarkMailEvent2:Landroid/content/DialogInterface$OnClickListener;

.field private confirmEmptyMailbox:Landroid/content/DialogInterface$OnClickListener;

.field private curBoxIndex:I

.field doBatchArchive:Landroid/view/View$OnClickListener;

.field doBatchDelete:Landroid/view/View$OnClickListener;

.field doBatchMarkRead:Landroid/view/View$OnClickListener;

.field doBatchMove:Landroid/view/View$OnClickListener;

.field doNothing:Landroid/view/View$OnClickListener;

.field doReadMoreMessage:Landroid/view/View$OnClickListener;

.field private expandAlphabetType:I

.field private expand_group_position:I

.field private folderName:Landroid/widget/TextView;

.field private lastExpandAccountId:J

.field private lastExpandGroup:Ljava/lang/String;

.field private lastTabID:I

.field private leftTitle:Landroid/widget/LinearLayout;

.field private long_press_accountId:J

.field private long_press_bMeetingMail:Z

.field private long_press_flag:I

.field private long_press_groupId:Ljava/lang/String;

.field private long_press_id:J

.field private long_press_mailboxId:J

.field private long_press_position:I

.field private long_press_read:I

.field private longpress_ItemHeader:Ljava/lang/String;

.field private longpress_ItemSender:Ljava/lang/String;

.field private longpress_MailMessage:Lcom/htc/android/mail/MailMessage;

.field public mAccount:Lcom/htc/android/mail/Account;

.field private mAccountCounts:I

.field private mAccountId:Ljava/lang/Long;

.field private mAdapter:Lcom/htc/android/mail/MoveToAdapter;

.field mAlphabetAry:[Ljava/lang/String;

.field private mBackGroundHandler:Landroid/os/Handler;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mColumns:[Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrentSearchKey:Ljava/lang/String;

.field private mExNameIdx:I

.field protected mExpandAlphabet:Ljava/lang/String;

.field protected mExpandAlphabetReal:Ljava/lang/String;

.field private mFilterNeedRequery:Z

.field private mFilterTitleState:Z

.field private mGroupMailStore:Lcom/htc/android/mail/database/GroupMailStore;

.field mHandler:Landroid/os/Handler;

.field private mImportantMailStore:Lcom/htc/android/mail/database/ImportantMailStore;

.field private mIsDestroyed:Z

.field private mIsFirstLoadMailComplete:Z

.field private mIsFirstRefreshMail:Z

.field private mIsInForeground:Z

.field private mIsLoadingMail:Z

.field private mIsRealoadedByRotating:Z

.field private mIsScrolling:Z

.field private mMailDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

.field private mMailbox:Lcom/htc/android/mail/Mailbox;

.field private mMenu:Landroid/view/Menu;

.field private mNameIdx:I

.field private mNeedInit:Z

.field private mNotBackToInbox:Z

.field private mOldPreviewLine:I

.field private mOldTabViewId:I

.field private mOldTimeFormat24:Z

.field mOnChangeCallingTime:I

.field private mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

.field private mOrders:[Ljava/lang/String;

.field private mOriginalSortBy:I

.field public mParent:Lcom/htc/android/mail/MailListTab;

.field private mPartFactory:Landroid/view/LayoutInflater;

.field private mPreloadFilterAddress:[Ljava/lang/String;

.field private mQueryHandler:Lcom/htc/android/mail/MailList$QueryHandler;

.field private mQueueMessageForScroll:Landroid/os/Message;

.field private mRefreshAni:Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;

.field private mRequestController:Lcom/htc/android/mail/AbsRequestController;

.field private mRequestHandler:Lcom/htc/android/mail/MailList$RequestHandler;

.field private mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;

.field private mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

.field private mSelection:Lcom/htc/android/mail/MailListItemBig;

.field public mSelectionId:J

.field public mSenderAddr:Ljava/lang/String;

.field private mSortStrId:[I

.field private mSummaryContentObserver:Lcom/htc/android/mail/MailList$SummaryContentObserver;

.field private mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mThreadViewSQLCmd:Ljava/lang/String;

.field private mThumbLayout:Landroid/view/WindowManager$LayoutParams;

.field private mTimeFormatChange:Z

.field private mTimer:Ljava/util/Timer;

.field private mUIHandler:Lcom/htc/android/mail/MailList$UIHandler;

.field private mUnreadNumber:I

.field private mUpdateUnreaNumTimer:Ljava/util/Timer;

.field private mUri:Landroid/net/Uri;

.field private mWeakRequestHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field markId:J

.field orgIsOutBoxs:Z

.field private progressSubject:Landroid/widget/TextView;

.field private readMoreMailing:Z

.field private refreshMailing:Z

.field private registedIntent:Z

.field private rightTitle:Landroid/widget/LinearLayout;

.field private selGroupItemCount:I

.field public selId:J

.field public selId2:J

.field private sender:Landroid/app/PendingIntent;

.field private setBatchRead:I

.field private showNetworkWarning:Z

.field private sortColInvert:Z

.field private sortDialogOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private sortLable:Landroid/widget/TextView;

.field private subTitle:Landroid/view/View;

.field private tabName:Ljava/lang/String;

.field private updateLable:Landroid/widget/TextView;

.field vipResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    .line 135
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/MailList;->DBG:Z

    .line 406
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/MailList;->mPreviewMap:Ljava/util/Map;

    .line 462
    const-string v0, "ifnull(_from, _fromEmail)"

    sput-object v0, Lcom/htc/android/mail/MailList;->FromQueryString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const-wide/16 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 132
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 162
    iput-object v4, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    .line 164
    iput-object v4, p0, Lcom/htc/android/mail/MailList;->mSelection:Lcom/htc/android/mail/MailListItemBig;

    .line 165
    iput-wide v6, p0, Lcom/htc/android/mail/MailList;->mSelectionId:J

    .line 166
    iput-boolean v3, p0, Lcom/htc/android/mail/MailList;->showNetworkWarning:Z

    .line 189
    iput-boolean v3, p0, Lcom/htc/android/mail/MailList;->registedIntent:Z

    .line 250
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->allMenuID:[I

    .line 308
    iput-boolean v3, p0, Lcom/htc/android/mail/MailList;->refreshMailing:Z

    .line 309
    iput-boolean v3, p0, Lcom/htc/android/mail/MailList;->readMoreMailing:Z

    .line 324
    iput-object v4, p0, Lcom/htc/android/mail/MailList;->vipResult:Ljava/util/ArrayList;

    .line 325
    iput-object v4, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    .line 326
    iput v3, p0, Lcom/htc/android/mail/MailList;->mUnreadNumber:I

    .line 329
    iput-object v4, p0, Lcom/htc/android/mail/MailList;->long_press_groupId:Ljava/lang/String;

    .line 330
    iput-object v4, p0, Lcom/htc/android/mail/MailList;->Expand_groupId:Ljava/lang/String;

    .line 331
    iput v8, p0, Lcom/htc/android/mail/MailList;->expand_group_position:I

    .line 340
    iput-boolean v3, p0, Lcom/htc/android/mail/MailList;->mFilterTitleState:Z

    .line 341
    iput-boolean v3, p0, Lcom/htc/android/mail/MailList;->mFilterNeedRequery:Z

    .line 344
    iput-object v4, p0, Lcom/htc/android/mail/MailList;->addImportant:Landroid/view/View;

    .line 354
    iput-boolean v5, p0, Lcom/htc/android/mail/MailList;->allowReadMore:Z

    .line 355
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/android/mail/MailList;->mOldTabViewId:I

    .line 362
    iput-object v4, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    .line 363
    iput-object v4, p0, Lcom/htc/android/mail/MailList;->mImportantMailStore:Lcom/htc/android/mail/database/ImportantMailStore;

    .line 364
    iput-object v4, p0, Lcom/htc/android/mail/MailList;->mGroupMailStore:Lcom/htc/android/mail/database/GroupMailStore;

    .line 365
    iput-object v4, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    .line 369
    iput-boolean v3, p0, Lcom/htc/android/mail/MailList;->mIsFirstRefreshMail:Z

    .line 370
    iput-boolean v3, p0, Lcom/htc/android/mail/MailList;->mIsFirstLoadMailComplete:Z

    .line 371
    iput-boolean v3, p0, Lcom/htc/android/mail/MailList;->mIsScrolling:Z

    .line 372
    iput-boolean v3, p0, Lcom/htc/android/mail/MailList;->mIsInForeground:Z

    .line 373
    iput-boolean v3, p0, Lcom/htc/android/mail/MailList;->mIsDestroyed:Z

    .line 374
    iput-object v4, p0, Lcom/htc/android/mail/MailList;->mUri:Landroid/net/Uri;

    .line 375
    iput-object v4, p0, Lcom/htc/android/mail/MailList;->longpress_MailMessage:Lcom/htc/android/mail/MailMessage;

    .line 376
    iput v3, p0, Lcom/htc/android/mail/MailList;->mOriginalSortBy:I

    .line 377
    iput-boolean v3, p0, Lcom/htc/android/mail/MailList;->orgIsOutBoxs:Z

    .line 379
    iput-object v4, p0, Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;

    .line 380
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->longpress_ItemHeader:Ljava/lang/String;

    .line 381
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->longpress_ItemSender:Ljava/lang/String;

    .line 382
    iput-object v4, p0, Lcom/htc/android/mail/MailList;->mThreadViewSQLCmd:Ljava/lang/String;

    .line 383
    iput-boolean v3, p0, Lcom/htc/android/mail/MailList;->mIsLoadingMail:Z

    .line 384
    iput v3, p0, Lcom/htc/android/mail/MailList;->mOnChangeCallingTime:I

    .line 385
    iput-object v4, p0, Lcom/htc/android/mail/MailList;->mQueueMessageForScroll:Landroid/os/Message;

    .line 386
    iput v3, p0, Lcom/htc/android/mail/MailList;->mAccountCounts:I

    .line 387
    iput-object v4, p0, Lcom/htc/android/mail/MailList;->addVipDlg:Lcom/htc/app/HtcProgressDialog;

    .line 388
    iput-object v4, p0, Lcom/htc/android/mail/MailList;->mRefreshAni:Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;

    .line 389
    iput-object v4, p0, Lcom/htc/android/mail/MailList;->mTimer:Ljava/util/Timer;

    .line 390
    iput-object v4, p0, Lcom/htc/android/mail/MailList;->mUpdateUnreaNumTimer:Ljava/util/Timer;

    .line 391
    iput-boolean v3, p0, Lcom/htc/android/mail/MailList;->mOldTimeFormat24:Z

    .line 392
    iput-boolean v3, p0, Lcom/htc/android/mail/MailList;->mTimeFormatChange:Z

    .line 395
    new-instance v0, Lcom/htc/android/mail/util/SelectedMailMessages;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SelectedMailMessages;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    .line 396
    new-instance v0, Lcom/htc/android/mail/util/SelectedMailGroups;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SelectedMailGroups;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;

    .line 398
    invoke-static {}, Lcom/htc/android/mail/MailListTab$BackGroundHandler;->getInstance()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->mBackGroundHandler:Landroid/os/Handler;

    .line 399
    iput-object v4, p0, Lcom/htc/android/mail/MailList;->lastExpandGroup:Ljava/lang/String;

    .line 400
    iput-wide v6, p0, Lcom/htc/android/mail/MailList;->lastExpandAccountId:J

    .line 401
    iput v8, p0, Lcom/htc/android/mail/MailList;->lastTabID:I

    .line 402
    iput-object v4, p0, Lcom/htc/android/mail/MailList;->tabName:Ljava/lang/String;

    .line 404
    new-instance v0, Lcom/htc/android/mail/MailList$UIHandler;

    invoke-direct {v0, p0, v4}, Lcom/htc/android/mail/MailList$UIHandler;-><init>(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$1;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->mUIHandler:Lcom/htc/android/mail/MailList$UIHandler;

    .line 405
    iput v3, p0, Lcom/htc/android/mail/MailList;->mOldPreviewLine:I

    .line 409
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->mCurrentSearchKey:Ljava/lang/String;

    .line 439
    iput v3, p0, Lcom/htc/android/mail/MailList;->alphabetType:I

    .line 441
    iput v3, p0, Lcom/htc/android/mail/MailList;->setBatchRead:I

    .line 448
    iput v3, p0, Lcom/htc/android/mail/MailList;->expandAlphabetType:I

    .line 451
    iput-boolean v3, p0, Lcom/htc/android/mail/MailList;->mNotBackToInbox:Z

    .line 453
    iput-boolean v3, p0, Lcom/htc/android/mail/MailList;->mIsRealoadedByRotating:Z

    .line 463
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_internaldate"

    aput-object v1, v0, v3

    const-string v1, "_importance"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v2, "_Subject"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/htc/android/mail/MailList;->FromQueryString:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_messagesize"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->mColumns:[Ljava/lang/String;

    .line 464
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->mSortStrId:[I

    .line 466
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "desc"

    aput-object v1, v0, v3

    const-string v1, "asc"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v2, "desc"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "asc"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "asc"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "desc"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "asc"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "desc"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "desc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "asc"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->mOrders:[Ljava/lang/String;

    .line 471
    iput-object v4, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    .line 472
    new-instance v0, Lcom/htc/android/mail/util/MailDialogManager;

    invoke-direct {v0}, Lcom/htc/android/mail/util/MailDialogManager;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->mMailDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

    .line 823
    new-instance v0, Lcom/htc/android/mail/MailList$3;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailList$3;-><init>(Lcom/htc/android/mail/MailList;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->confirmBatchMarkMailEvent:Landroid/content/DialogInterface$OnClickListener;

    .line 830
    new-instance v0, Lcom/htc/android/mail/MailList$4;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailList$4;-><init>(Lcom/htc/android/mail/MailList;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->confirmBatchMoveMail:Landroid/content/DialogInterface$OnClickListener;

    .line 857
    new-instance v0, Lcom/htc/android/mail/MailList$5;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailList$5;-><init>(Lcom/htc/android/mail/MailList;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->confirmDelMarkMailEvent2:Landroid/content/DialogInterface$OnClickListener;

    .line 863
    new-instance v0, Lcom/htc/android/mail/MailList$6;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailList$6;-><init>(Lcom/htc/android/mail/MailList;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->confirmEmptyMailbox:Landroid/content/DialogInterface$OnClickListener;

    .line 1081
    new-instance v0, Lcom/htc/android/mail/MailList$8;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailList$8;-><init>(Lcom/htc/android/mail/MailList;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->sortDialogOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1457
    iput-boolean v5, p0, Lcom/htc/android/mail/MailList;->mNeedInit:Z

    .line 2035
    new-instance v0, Lcom/htc/android/mail/MailList$18;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailList$18;-><init>(Lcom/htc/android/mail/MailList;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->doBatchArchive:Landroid/view/View$OnClickListener;

    .line 2041
    new-instance v0, Lcom/htc/android/mail/MailList$19;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailList$19;-><init>(Lcom/htc/android/mail/MailList;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->doBatchMarkRead:Landroid/view/View$OnClickListener;

    .line 2048
    new-instance v0, Lcom/htc/android/mail/MailList$20;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailList$20;-><init>(Lcom/htc/android/mail/MailList;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->doBatchDelete:Landroid/view/View$OnClickListener;

    .line 2059
    new-instance v0, Lcom/htc/android/mail/MailList$21;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailList$21;-><init>(Lcom/htc/android/mail/MailList;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->doBatchMove:Landroid/view/View$OnClickListener;

    .line 2143
    new-instance v0, Lcom/htc/android/mail/MailList$22;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailList$22;-><init>(Lcom/htc/android/mail/MailList;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->doNothing:Landroid/view/View$OnClickListener;

    .line 3073
    new-instance v0, Lcom/htc/android/mail/MailList$26;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailList$26;-><init>(Lcom/htc/android/mail/MailList;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->doReadMoreMessage:Landroid/view/View$OnClickListener;

    .line 4601
    iput-wide v6, p0, Lcom/htc/android/mail/MailList;->selId:J

    .line 4602
    iput-wide v6, p0, Lcom/htc/android/mail/MailList;->selId2:J

    .line 4626
    new-instance v0, Lcom/htc/android/mail/MailList$32;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailList$32;-><init>(Lcom/htc/android/mail/MailList;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->mHandler:Landroid/os/Handler;

    .line 4638
    new-instance v0, Lcom/htc/android/mail/MailList$33;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailList$33;-><init>(Lcom/htc/android/mail/MailList;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 5683
    iput v8, p0, Lcom/htc/android/mail/MailList;->selGroupItemCount:I

    .line 6970
    new-instance v0, Lcom/htc/android/mail/MailList$37;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailList$37;-><init>(Lcom/htc/android/mail/MailList;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->mTextWatcher:Landroid/text/TextWatcher;

    .line 7114
    return-void

    .line 250
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    .line 464
    :array_1
    .array-data 0x4
        0xa0t 0x0t 0xbt 0x7ft
        0xa4t 0x0t 0xbt 0x7ft
        0xa1t 0x0t 0xbt 0x7ft
        0xa2t 0x0t 0xbt 0x7ft
        0xa3t 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method private ableRefresh()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 5989
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    if-nez v2, :cond_1

    .line 5999
    :cond_0
    :goto_0
    return v1

    .line 5991
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/Account;->refreshMailOpenFolder(Landroid/content/Context;)Z

    move-result v0

    .line 5992
    .local v0, ableRefresh:Z
    sget-boolean v2, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "MailList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ableRefresh>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5993
    :cond_2
    if-eqz v0, :cond_0

    .line 5994
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailList$TabInfo;->getTabName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/MailListTab;->isFirstLoadedTab(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/android/mail/MailList;->mIsRealoadedByRotating:Z

    if-nez v2, :cond_0

    .line 5995
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/htc/android/mail/MailList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/htc/android/mail/MailList;->sortColInvert:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MoveToAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mAdapter:Lcom/htc/android/mail/MoveToAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 132
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/AbsRequestController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/util/SelectedMailGroups;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/android/mail/MailList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->delMarkMail2()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/android/mail/MailList;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->addVipDlg:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/android/mail/MailList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailList;->setBottomBar(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/android/mail/MailList;ILcom/htc/android/mail/MailList$TabInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/MailList;->sortMail(ILcom/htc/android/mail/MailList$TabInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/android/mail/MailList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget v0, p0, Lcom/htc/android/mail/MailList;->mNameIdx:I

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/android/mail/MailList;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->subTitle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/android/mail/MailList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput p1, p0, Lcom/htc/android/mail/MailList;->mNameIdx:I

    return p1
.end method

.method static synthetic access$2502(Lcom/htc/android/mail/MailList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput p1, p0, Lcom/htc/android/mail/MailList;->curBoxIndex:I

    return p1
.end method

.method static synthetic access$2600(Lcom/htc/android/mail/MailList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailList;->changeBoxByIndex(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/android/mail/MailList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->lastExpandGroup:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/htc/android/mail/MailList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/htc/android/mail/MailList;->lastExpandGroup:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/htc/android/mail/MailList;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/htc/android/mail/MailList;->lastExpandAccountId:J

    return-wide v0
.end method

.method static synthetic access$2802(Lcom/htc/android/mail/MailList;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput-wide p1, p0, Lcom/htc/android/mail/MailList;->lastExpandAccountId:J

    return-wide p1
.end method

.method static synthetic access$2900()Z
    .locals 1

    .prologue
    .line 132
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DBG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/android/mail/MailList;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mBackGroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/android/mail/MailList$TabInfo;)Lcom/htc/android/mail/database/ConversationGroupCursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    invoke-static {p0}, Lcom/htc/android/mail/MailList;->getConversationGroupCursor(Lcom/htc/android/mail/MailList$TabInfo;)Lcom/htc/android/mail/database/ConversationGroupCursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/android/mail/MailList;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/database/GroupMailStore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mGroupMailStore:Lcom/htc/android/mail/database/GroupMailStore;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/android/mail/MailList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget v0, p0, Lcom/htc/android/mail/MailList;->setBatchRead:I

    return v0
.end method

.method static synthetic access$3500(Lcom/htc/android/mail/MailList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/htc/android/mail/MailList;->mIsScrolling:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/htc/android/mail/MailList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/htc/android/mail/MailList;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/htc/android/mail/MailList;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mQueueMessageForScroll:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/htc/android/mail/MailList;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/htc/android/mail/MailList;->mQueueMessageForScroll:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/htc/android/mail/MailList;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/android/mail/MailList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->manageULogForPauseAction()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/mail/MailList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget v0, p0, Lcom/htc/android/mail/MailList;->alphabetType:I

    return v0
.end method

.method static synthetic access$4000(Lcom/htc/android/mail/MailList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->readMoreMail()V

    return-void
.end method

.method static synthetic access$4100(Lcom/htc/android/mail/MailList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/htc/android/mail/MailList;->refreshMailing:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/htc/android/mail/MailList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/htc/android/mail/MailList;->refreshMailing:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/htc/android/mail/MailList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/htc/android/mail/MailList;->readMoreMailing:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/htc/android/mail/MailList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/htc/android/mail/MailList;->readMoreMailing:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/htc/android/mail/MailList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->updateMailRemain()V

    return-void
.end method

.method static synthetic access$4400(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/database/ImportantMailStore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mImportantMailStore:Lcom/htc/android/mail/database/ImportantMailStore;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/htc/android/mail/MailList;)Ljava/lang/Long;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/htc/android/mail/MailList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/htc/android/mail/MailList;->mIsInForeground:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$RequestHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mRequestHandler:Lcom/htc/android/mail/MailList$RequestHandler;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/htc/android/mail/MailList;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$TabInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailList;->updateTabTitle(Lcom/htc/android/mail/MailList$TabInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/Mailbox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$TabInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailList;->updateUnreadNumber(Lcom/htc/android/mail/MailList$TabInfo;)V

    return-void
.end method

.method static synthetic access$502(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/Mailbox;)Lcom/htc/android/mail/Mailbox;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/htc/android/mail/MailList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/htc/android/mail/MailList;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$5200(Lcom/htc/android/mail/MailList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->hideEmptyText()V

    return-void
.end method

.method static synthetic access$5300(Lcom/htc/android/mail/MailList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->showRefreshStatus()V

    return-void
.end method

.method static synthetic access$5400(Lcom/htc/android/mail/MailList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->updateMenuItems()V

    return-void
.end method

.method static synthetic access$5500(Lcom/htc/android/mail/MailList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->removeRemainFooter()V

    return-void
.end method

.method static synthetic access$5600(Lcom/htc/android/mail/MailList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->refreshComplete()V

    return-void
.end method

.method static synthetic access$5700(Lcom/htc/android/mail/MailList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->notifyChange()V

    return-void
.end method

.method static synthetic access$5800(Lcom/htc/android/mail/MailList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->checkMoreComplete()V

    return-void
.end method

.method static synthetic access$5900(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$TabInfo;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/MailList;->loadListViewContent(Lcom/htc/android/mail/MailList$TabInfo;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/android/mail/MailList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->isSortBySize()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/htc/android/mail/MailList;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->progressSubject:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/htc/android/mail/MailList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailList;->updateEmptyMessage(I)V

    return-void
.end method

.method static synthetic access$6200(Lcom/htc/android/mail/MailList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->doComposeView()V

    return-void
.end method

.method static synthetic access$6300(Lcom/htc/android/mail/MailList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->changeFolder()V

    return-void
.end method

.method static synthetic access$6400(Lcom/htc/android/mail/MailList;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/MailList;->changeAccount(J)V

    return-void
.end method

.method static synthetic access$6500(Lcom/htc/android/mail/MailList;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/MailList;->invokeMailSearch(ZZ)V

    return-void
.end method

.method static synthetic access$6600(Lcom/htc/android/mail/MailList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->lunchAccountList()V

    return-void
.end method

.method static synthetic access$6700(Lcom/htc/android/mail/MailList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailList;->updateActionBarUnreadNumView(I)V

    return-void
.end method

.method static synthetic access$6800(Lcom/htc/android/mail/MailList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailList;->setFilterSubTitle(Z)V

    return-void
.end method

.method static synthetic access$6900(Lcom/htc/android/mail/MailList;Ljava/lang/String;ILcom/htc/android/mail/MailList$TabInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 132
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/MailList;->startQuery(Ljava/lang/String;ILcom/htc/android/mail/MailList$TabInfo;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/android/mail/MailList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget v0, p0, Lcom/htc/android/mail/MailList;->mAccountCounts:I

    return v0
.end method

.method static synthetic access$7002(Lcom/htc/android/mail/MailList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/htc/android/mail/MailList;->mFilterTitleState:Z

    return p1
.end method

.method static synthetic access$7102(Lcom/htc/android/mail/MailList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/htc/android/mail/MailList;->mFilterNeedRequery:Z

    return p1
.end method

.method static synthetic access$7400(Lcom/htc/android/mail/MailList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget v0, p0, Lcom/htc/android/mail/MailList;->expandAlphabetType:I

    return v0
.end method

.method static synthetic access$7500(Lcom/htc/android/mail/MailList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget v0, p0, Lcom/htc/android/mail/MailList;->mExNameIdx:I

    return v0
.end method

.method static synthetic access$7502(Lcom/htc/android/mail/MailList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput p1, p0, Lcom/htc/android/mail/MailList;->mExNameIdx:I

    return p1
.end method

.method static synthetic access$7600(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$TabInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailList;->hideLoadMessage(Lcom/htc/android/mail/MailList$TabInfo;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/htc/android/mail/MailList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->updateSearchServer()V

    return-void
.end method

.method static synthetic access$7800(Lcom/htc/android/mail/MailList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/htc/android/mail/MailList;->mIsFirstRefreshMail:Z

    return v0
.end method

.method static synthetic access$7802(Lcom/htc/android/mail/MailList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/htc/android/mail/MailList;->mIsFirstRefreshMail:Z

    return p1
.end method

.method static synthetic access$7900(Lcom/htc/android/mail/MailList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->ableRefresh()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/util/SelectedMailMessages;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/htc/android/mail/MailList;ZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 132
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/MailList;->refreshMail(ZZZ)V

    return-void
.end method

.method static synthetic access$8100(Lcom/htc/android/mail/MailList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget v0, p0, Lcom/htc/android/mail/MailList;->expand_group_position:I

    return v0
.end method

.method static synthetic access$8200(Lcom/htc/android/mail/MailList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget v0, p0, Lcom/htc/android/mail/MailList;->selGroupItemCount:I

    return v0
.end method

.method static synthetic access$8300(Lcom/htc/android/mail/MailList;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mPartFactory:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/htc/android/mail/MailList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->menuRefreshMail()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8500(Lcom/htc/android/mail/MailList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->exitBatchMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8600(Lcom/htc/android/mail/MailList;)Lcom/htc/widget/HtcAbsListView$OnScrollListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/htc/android/mail/MailList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/MailList;->getSearchFilterSQLWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8802(Lcom/htc/android/mail/MailList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/htc/android/mail/MailList;->mCurrentSearchKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8900(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$TabInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailList;->canReloadMail(Lcom/htc/android/mail/MailList$TabInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/htc/android/mail/MailList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailList;->moveMarkMailtoFold2(I)V

    return-void
.end method

.method static synthetic access$9000(Lcom/htc/android/mail/MailList;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailList;->haveTheLastUid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9100(Lcom/htc/android/mail/MailList;IZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 132
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/MailList;->addRemainFooter(IZI)V

    return-void
.end method

.method private addRemainFooter(IZI)V
    .locals 7
    .parameter "existCount"
    .parameter "haveLastUid"
    .parameter "mailCountInDeviceFolder"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0b00e4

    const v4, 0x7f090103

    const/4 v3, 0x1

    .line 3034
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3071
    :cond_0
    :goto_0
    return-void

    .line 3037
    :cond_1
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "haveLastUid is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3039
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-boolean v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mHaveFooter:Z

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    .line 3040
    if-nez p2, :cond_6

    .line 3041
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mFooter:Landroid/widget/LinearLayout;

    if-nez v0, :cond_3

    .line 3042
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mPartFactory:Landroid/view/LayoutInflater;

    const v2, 0x7f03002b

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/htc/android/mail/MailList$TabInfo;->mFooter:Landroid/widget/LinearLayout;

    .line 3045
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mFooter:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 3046
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 3047
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/MailList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3049
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mFooter:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->doReadMoreMessage:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3050
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v1, v1, Lcom/htc/android/mail/MailList$TabInfo;->mFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v6, v3}, Lcom/htc/widget/HtcListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 3052
    :cond_4
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getFooterViewsCount()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 3053
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/MailList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3056
    :cond_5
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getFooterViewsCount()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 3057
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->removeRemainFooter()V

    .line 3058
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/MailList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3060
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mFooter:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->doReadMoreMessage:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3061
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v1, v1, Lcom/htc/android/mail/MailList$TabInfo;->mFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v6, v3}, Lcom/htc/widget/HtcListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 3066
    :cond_6
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->removeRemainFooter()V

    goto/16 :goto_0

    .line 3069
    :cond_7
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->removeRemainFooter()V

    goto/16 :goto_0
.end method

.method private addSearchServerFooter()V
    .locals 10

    .prologue
    const v9, 0x2020102

    const v8, 0x2020010

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 7070
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    if-nez v2, :cond_1

    .line 7102
    :cond_0
    :goto_0
    return-void

    .line 7073
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/htc/android/mail/MailCommon;->needAddGlobalButton(Lcom/htc/android/mail/Account;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 7074
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v2, v2, Lcom/htc/android/mail/MailList$TabInfo;->mFooter:Landroid/widget/LinearLayout;

    if-nez v2, :cond_2

    .line 7075
    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mPartFactory:Landroid/view/LayoutInflater;

    const v4, 0x7f030042

    invoke-virtual {v2, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v3, Lcom/htc/android/mail/MailList$TabInfo;->mFooter:Landroid/widget/LinearLayout;

    .line 7079
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v2, v2, Lcom/htc/android/mail/MailList$TabInfo;->mFooter:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 7080
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getFooterViewsCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 7081
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v2, v2, Lcom/htc/android/mail/MailList$TabInfo;->mFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 7082
    .local v1, tv:Landroid/widget/TextView;
    if-eqz v1, :cond_3

    .line 7083
    const v2, 0x7f0b02b2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 7085
    :cond_3
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v2, v2, Lcom/htc/android/mail/MailList$TabInfo;->mFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 7086
    .local v0, mProgressBar:Landroid/widget/ProgressBar;
    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 7087
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v3, v3, Lcom/htc/android/mail/MailList$TabInfo;->mFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v6, v5}, Lcom/htc/widget/HtcListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 7088
    .end local v0           #mProgressBar:Landroid/widget/ProgressBar;
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_4
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getFooterViewsCount()I

    move-result v2

    if-le v2, v5, :cond_0

    .line 7089
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->removeSearchServerFooter()V

    .line 7090
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v2, v2, Lcom/htc/android/mail/MailList$TabInfo;->mFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 7091
    .restart local v1       #tv:Landroid/widget/TextView;
    if-eqz v1, :cond_5

    .line 7092
    const v2, 0x7f0b02b2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 7094
    :cond_5
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v2, v2, Lcom/htc/android/mail/MailList$TabInfo;->mFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 7095
    .restart local v0       #mProgressBar:Landroid/widget/ProgressBar;
    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 7096
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v3, v3, Lcom/htc/android/mail/MailList$TabInfo;->mFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v6, v5}, Lcom/htc/widget/HtcListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 7100
    .end local v0           #mProgressBar:Landroid/widget/ProgressBar;
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_6
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->removeSearchServerFooter()V

    goto/16 :goto_0
.end method

.method private canReloadMail(Lcom/htc/android/mail/MailList$TabInfo;)Z
    .locals 9
    .parameter "tabInfo"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6004
    sget-boolean v5, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "MailList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canReloadMail>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/htc/android/mail/MailList;->mIsInForeground:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/htc/android/mail/MailList;->mIsScrolling:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/htc/android/mail/MailList;->refreshMailing:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/htc/android/mail/MailList;->readMoreMailing:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6005
    :cond_0
    iget-boolean v5, p0, Lcom/htc/android/mail/MailList;->mIsInForeground:Z

    if-nez v5, :cond_2

    .line 6006
    sget-boolean v4, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "MailList"

    const-string v5, "canReloadMail mIsInForeground false>"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6034
    :cond_1
    :goto_0
    return v3

    .line 6010
    :cond_2
    iget-boolean v5, p0, Lcom/htc/android/mail/MailList;->mIsScrolling:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/htc/android/mail/MailList;->refreshMailing:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/htc/android/mail/MailList;->readMoreMailing:Z

    if-eqz v5, :cond_4

    .line 6011
    :cond_3
    sget-boolean v4, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "MailList"

    const-string v5, "canReloadMail return false 2>"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6015
    :cond_4
    iget-object v5, p1, Lcom/htc/android/mail/MailList$TabInfo;->mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

    if-eqz v5, :cond_b

    .line 6016
    iget v5, p1, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    if-nez v5, :cond_6

    iget-object v5, p1, Lcom/htc/android/mail/MailList$TabInfo;->mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

    invoke-virtual {v5}, Lcom/htc/android/mail/database/AbstractMailCursor;->getCount()I

    move-result v5

    const/16 v6, 0xa

    if-ge v5, v6, :cond_6

    .line 6017
    sget-boolean v3, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "MailList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tab mail count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/htc/android/mail/MailList$TabInfo;->mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

    invoke-virtual {v6}, Lcom/htc/android/mail/database/AbstractMailCursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move v3, v4

    .line 6018
    goto :goto_0

    .line 6020
    :cond_6
    const/16 v2, 0xbb8

    .line 6021
    .local v2, requery_interval:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 6022
    .local v0, currentTime:J
    sget-boolean v5, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "MailList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requery_interval>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/htc/android/mail/MailList;->refreshMailing:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p1, Lcom/htc/android/mail/MailList$TabInfo;->mLoadFinishedTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6023
    :cond_7
    iget-boolean v5, p0, Lcom/htc/android/mail/MailList;->refreshMailing:Z

    if-eqz v5, :cond_8

    iget-wide v5, p1, Lcom/htc/android/mail/MailList$TabInfo;->mLoadFinishedTime:J

    sub-long v5, v0, v5

    int-to-long v7, v2

    cmp-long v5, v5, v7

    if-lez v5, :cond_a

    .line 6024
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/htc/android/mail/MailList$TabInfo;->mLoadFinishedTime:J

    .line 6025
    sget-boolean v3, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v3, :cond_9

    const-string v3, "MailList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tabInfo.mLoadFinishedTime>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Lcom/htc/android/mail/MailList$TabInfo;->mLoadFinishedTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move v3, v4

    .line 6026
    goto/16 :goto_0

    .line 6028
    :cond_a
    sget-boolean v4, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "MailList"

    const-string v5, "canReloadMail return false 3>"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0           #currentTime:J
    .end local v2           #requery_interval:I
    :cond_b
    move v3, v4

    .line 6034
    goto/16 :goto_0
.end method

.method private changeAccount(J)V
    .locals 4
    .parameter "accountId"

    .prologue
    .line 1402
    sget-boolean v1, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeAccount>accountId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", totalAccount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/mail/MailList;->mAccountCounts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_2

    .line 1405
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1406
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/android/mail/ProviderListScreen;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1407
    const-string v1, "CallingActivity"

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1408
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/mail/MailList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1418
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 1411
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-nez v1, :cond_3

    .line 1412
    sget-boolean v1, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "MailList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change same account>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1415
    :cond_3
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lcom/htc/android/mail/MailCommon;->GotoMailListScreen(Landroid/content/Context;JZ)V

    .line 1416
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->finish()V

    goto :goto_0
.end method

.method private changeAccountImpl(J)V
    .locals 3
    .parameter "newAccountId"

    .prologue
    .line 1396
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change account>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    :cond_0
    return-void
.end method

.method private changeBoxByIndex(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 1342
    sget-boolean v1, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeBoxByIndex>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->finish()V

    .line 1344
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/android/mail/Mailboxs;->getMailbox(I)Lcom/htc/android/mail/Mailbox;

    move-result-object v0

    .line 1345
    .local v0, mailbox:Lcom/htc/android/mail/Mailbox;
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v1, v1, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    if-eqz v1, :cond_1

    .line 1346
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v1, v1, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->setAccountId(J)V

    .line 1347
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v1, v1, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    iget-wide v2, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->setMailboxId(J)V

    .line 1348
    iget-wide v1, v0, Lcom/htc/android/mail/Mailbox;->id:J

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/Mailboxs;->getDefaultMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v3

    iget-wide v3, v3, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 1349
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v1, v1, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Mailboxs;->getSentMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v2

    iget-wide v2, v2, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->setSentMailboxId(J)V

    .line 1355
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    iget-wide v2, v0, Lcom/htc/android/mail/Mailbox;->id:J

    iget-object v4, p0, Lcom/htc/android/mail/MailList;->tabName:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3, v4}, Lcom/htc/android/mail/MailCommon;->changeFolder(Landroid/content/Context;Lcom/htc/android/mail/Account;JLjava/lang/String;)V

    .line 1356
    return-void

    .line 1352
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v1, v1, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->setSentMailboxId(J)V

    goto :goto_0
.end method

.method private changeBoxEvent()V
    .locals 6

    .prologue
    .line 1359
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1360
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v3, 0x7f0b0054

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/MailList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1362
    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/Mailboxs;->getDecodeNames(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/mail/MailList;->curBoxIndex:I

    new-instance v5, Lcom/htc/android/mail/MailList$9;

    invoke-direct {v5, p0}, Lcom/htc/android/mail/MailList$9;-><init>(Lcom/htc/android/mail/MailList;)V

    invoke-virtual {v0, v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1371
    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mMailDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

    invoke-static {v3, v0}, Lcom/htc/android/mail/util/MailDialogManager;->show(Lcom/htc/android/mail/util/MailDialogManager;Lcom/htc/widget/HtcAlertDialog$Builder;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 1372
    .local v1, dialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 1373
    .local v2, lv:Landroid/widget/ListView;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 1374
    return-void
.end method

.method private changeFolder()V
    .locals 0

    .prologue
    .line 4020
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->changeBoxEvent()V

    .line 4021
    return-void
.end method

.method private checkMoreComplete()V
    .locals 2

    .prologue
    .line 4844
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailList"

    const-string v1, "checkMoreComplete>>>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4846
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/MailList;->allowReadMore:Z

    .line 4847
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/MailList;->readMoreMailing:Z

    .line 4848
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->showDefaultStatus()V

    .line 4849
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->updateMenuItems()V

    .line 4851
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MailList"

    const-string v1, "checkmore complete"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4852
    :cond_1
    return-void
.end method

.method private collectNonConfigurationInstance()Lcom/htc/android/mail/MailList$NonConfigurationInstance;
    .locals 3

    .prologue
    .line 875
    new-instance v0, Lcom/htc/android/mail/MailList$NonConfigurationInstance;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/android/mail/MailList$NonConfigurationInstance;-><init>(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$1;)V

    .line 876
    .local v0, instance:Lcom/htc/android/mail/MailList$NonConfigurationInstance;
    const-string v1, "key_selected_mail_messages"

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/MailList$NonConfigurationInstance;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 877
    const-string v1, "key_selected_mail_groups"

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/MailList$NonConfigurationInstance;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 878
    const-string v1, "key_cmd_bar_button1_text"

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailListTab;->getCmdBarButton1Text()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/MailList$NonConfigurationInstance;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 879
    return-object v0
.end method

.method private delMail()V
    .locals 3

    .prologue
    .line 4383
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 4385
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 4401
    :goto_0
    return-void

    .line 4388
    :cond_0
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/android/mail/MailList;->long_press_id:J

    .line 4389
    const-string v1, "_account"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    .line 4391
    const-string v1, "_group"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/MailList;->long_press_groupId:Ljava/lang/String;

    .line 4393
    const-string v1, "_mailboxId"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/android/mail/MailList;->long_press_mailboxId:J

    .line 4396
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/Account;->askBeforeDelete(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4397
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList;->showDialog(I)V

    goto :goto_0

    .line 4399
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->delMarkMail2()V

    goto :goto_0
.end method

.method private delMarkMail2()V
    .locals 8

    .prologue
    .line 848
    sget-boolean v1, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailList"

    const-string v2, "delMarkMail2>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    :cond_0
    new-instance v0, Lcom/htc/android/mail/util/SelectedMailMessages;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SelectedMailMessages;-><init>()V

    .line 850
    .local v0, selectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    iget-wide v1, p0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    iget-wide v3, p0, Lcom/htc/android/mail/MailList;->long_press_mailboxId:J

    iget-wide v5, p0, Lcom/htc/android/mail/MailList;->long_press_id:J

    iget-object v7, p0, Lcom/htc/android/mail/MailList;->long_press_groupId:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/util/SelectedMailMessages;->select(JJJLjava/lang/String;)V

    .line 851
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/util/SelectedMailMessages;->deleteMail(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;)V

    .line 852
    const/4 v0, 0x0

    .line 853
    sget-boolean v1, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "MailList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try delete id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/android/mail/MailList;->long_press_id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    :cond_1
    sget-boolean v1, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "MailList"

    const-string v2, "[ATS][com.htc.android.mail][delete_mail][successful]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_2
    return-void
.end method

.method private final displayList(Z)V
    .locals 2
    .parameter "isIMAP4"

    .prologue
    .line 4619
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4621
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/android/mail/MailList;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4622
    const-string v1, "_isIMAP4"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4623
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailList;->startActivity(Landroid/content/Intent;)V

    .line 4624
    return-void
.end method

.method private doAttachTab()V
    .locals 3

    .prologue
    .line 1752
    new-instance v1, Lcom/htc/android/mail/MailList$13;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailList$13;-><init>(Lcom/htc/android/mail/MailList;)V

    iput-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    .line 1768
    new-instance v0, Lcom/htc/android/mail/MailList$CursorContentObserver;

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mRequestHandler:Lcom/htc/android/mail/MailList$RequestHandler;

    invoke-direct {v0, p0, v1}, Lcom/htc/android/mail/MailList$CursorContentObserver;-><init>(Lcom/htc/android/mail/MailList;Landroid/os/Handler;)V

    .line 1769
    .local v0, cco:Lcom/htc/android/mail/MailList$CursorContentObserver;
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailList$CursorContentObserver;->init(Lcom/htc/android/mail/MailList$TabInfo;)V

    .line 1770
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iput-object v0, v1, Lcom/htc/android/mail/MailList$TabInfo;->mCursorContentObserver:Lcom/htc/android/mail/MailList$CursorContentObserver;

    .line 1771
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/android/mail/MailList$TabInfo;->mShowUnReadNumber:Z

    .line 1772
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    const/4 v2, 0x4

    iput v2, v1, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    .line 1773
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/android/mail/MailList$TabInfo;->mHaveFooter:Z

    .line 1774
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailList$TabInfo;->initSortItems(Lcom/htc/android/mail/Account;)V

    .line 1775
    return-void
.end method

.method private doComposeView()V
    .locals 3

    .prologue
    .line 3419
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doComposeView>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v2, v2, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3420
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    packed-switch v0, :pswitch_data_0

    .line 3431
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->composeNewMail()V

    .line 3434
    :goto_0
    return-void

    .line 3422
    :pswitch_0
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MailList"

    const-string v1, "do group new message>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3424
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->composeNewMail()V

    goto :goto_0

    .line 3427
    :pswitch_1
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "MailList"

    const-string v1, "do new meeting>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3428
    :cond_2
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->preComposeNewMeeting()V

    goto :goto_0

    .line 3420
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doDefaultTab()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1460
    new-instance v1, Lcom/htc/android/mail/MailList$10;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailList$10;-><init>(Lcom/htc/android/mail/MailList;)V

    iput-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    .line 1480
    new-instance v0, Lcom/htc/android/mail/MailList$CursorContentObserver;

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mRequestHandler:Lcom/htc/android/mail/MailList$RequestHandler;

    invoke-direct {v0, p0, v1}, Lcom/htc/android/mail/MailList$CursorContentObserver;-><init>(Lcom/htc/android/mail/MailList;Landroid/os/Handler;)V

    .line 1481
    .local v0, cco:Lcom/htc/android/mail/MailList$CursorContentObserver;
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailList$CursorContentObserver;->init(Lcom/htc/android/mail/MailList$TabInfo;)V

    .line 1482
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iput-object v0, v1, Lcom/htc/android/mail/MailList$TabInfo;->mCursorContentObserver:Lcom/htc/android/mail/MailList$CursorContentObserver;

    .line 1483
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iput-boolean v2, v1, Lcom/htc/android/mail/MailList$TabInfo;->mShowUnReadNumber:Z

    .line 1484
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iput v3, v1, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    .line 1485
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iput-boolean v2, v1, Lcom/htc/android/mail/MailList$TabInfo;->mHaveFooter:Z

    .line 1486
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailList$TabInfo;->initSortItems(Lcom/htc/android/mail/Account;)V

    .line 1487
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iput v3, v1, Lcom/htc/android/mail/MailList$TabInfo;->mIndex:I

    .line 1488
    return-void
.end method

.method private doGroupTab()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1814
    new-instance v1, Lcom/htc/android/mail/MailList$15;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailList$15;-><init>(Lcom/htc/android/mail/MailList;)V

    iput-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    .line 1922
    new-instance v0, Lcom/htc/android/mail/MailList$CursorContentObserver;

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mRequestHandler:Lcom/htc/android/mail/MailList$RequestHandler;

    invoke-direct {v0, p0, v1}, Lcom/htc/android/mail/MailList$CursorContentObserver;-><init>(Lcom/htc/android/mail/MailList;Landroid/os/Handler;)V

    .line 1923
    .local v0, cco:Lcom/htc/android/mail/MailList$CursorContentObserver;
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailList$CursorContentObserver;->init(Lcom/htc/android/mail/MailList$TabInfo;)V

    .line 1924
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iput-object v0, v1, Lcom/htc/android/mail/MailList$TabInfo;->mCursorContentObserver:Lcom/htc/android/mail/MailList$CursorContentObserver;

    .line 1925
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iput-boolean v2, v1, Lcom/htc/android/mail/MailList$TabInfo;->mShowUnReadNumber:Z

    .line 1926
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iput-boolean v2, v1, Lcom/htc/android/mail/MailList$TabInfo;->mIsExpandListAdapter:Z

    .line 1927
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    const/16 v2, 0x8

    iput v2, v1, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    .line 1928
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/android/mail/MailList$TabInfo;->mHaveFooter:Z

    .line 1929
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailList$TabInfo;->initSortItems(Lcom/htc/android/mail/Account;)V

    .line 1930
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    const/4 v2, 0x2

    iput v2, v1, Lcom/htc/android/mail/MailList$TabInfo;->mIndex:I

    .line 1931
    return-void
.end method

.method private doImportantTab()V
    .locals 3

    .prologue
    .line 1778
    new-instance v1, Lcom/htc/android/mail/MailList$14;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailList$14;-><init>(Lcom/htc/android/mail/MailList;)V

    iput-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    .line 1803
    new-instance v0, Lcom/htc/android/mail/MailList$CursorContentObserver;

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mRequestHandler:Lcom/htc/android/mail/MailList$RequestHandler;

    invoke-direct {v0, p0, v1}, Lcom/htc/android/mail/MailList$CursorContentObserver;-><init>(Lcom/htc/android/mail/MailList;Landroid/os/Handler;)V

    .line 1804
    .local v0, cco:Lcom/htc/android/mail/MailList$CursorContentObserver;
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailList$CursorContentObserver;->init(Lcom/htc/android/mail/MailList$TabInfo;)V

    .line 1805
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iput-object v0, v1, Lcom/htc/android/mail/MailList$TabInfo;->mCursorContentObserver:Lcom/htc/android/mail/MailList$CursorContentObserver;

    .line 1806
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/android/mail/MailList$TabInfo;->mShowUnReadNumber:Z

    .line 1807
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    const/4 v2, 0x7

    iput v2, v1, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    .line 1808
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/android/mail/MailList$TabInfo;->mHaveFooter:Z

    .line 1809
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailList$TabInfo;->initSortItems(Lcom/htc/android/mail/Account;)V

    .line 1810
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    const/4 v2, 0x2

    iput v2, v1, Lcom/htc/android/mail/MailList$TabInfo;->mIndex:I

    .line 1811
    return-void
.end method

.method private doMarkTab()V
    .locals 3

    .prologue
    .line 1725
    new-instance v1, Lcom/htc/android/mail/MailList$12;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailList$12;-><init>(Lcom/htc/android/mail/MailList;)V

    iput-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    .line 1741
    new-instance v0, Lcom/htc/android/mail/MailList$CursorContentObserver;

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mRequestHandler:Lcom/htc/android/mail/MailList$RequestHandler;

    invoke-direct {v0, p0, v1}, Lcom/htc/android/mail/MailList$CursorContentObserver;-><init>(Lcom/htc/android/mail/MailList;Landroid/os/Handler;)V

    .line 1742
    .local v0, cco:Lcom/htc/android/mail/MailList$CursorContentObserver;
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailList$CursorContentObserver;->init(Lcom/htc/android/mail/MailList$TabInfo;)V

    .line 1743
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iput-object v0, v1, Lcom/htc/android/mail/MailList$TabInfo;->mCursorContentObserver:Lcom/htc/android/mail/MailList$CursorContentObserver;

    .line 1744
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/android/mail/MailList$TabInfo;->mShowUnReadNumber:Z

    .line 1745
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    const/4 v2, 0x3

    iput v2, v1, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    .line 1746
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/android/mail/MailList$TabInfo;->mHaveFooter:Z

    .line 1747
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailList$TabInfo;->initSortItems(Lcom/htc/android/mail/Account;)V

    .line 1748
    return-void
.end method

.method private doMeetingTab()V
    .locals 3

    .prologue
    .line 1973
    new-instance v1, Lcom/htc/android/mail/MailList$17;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailList$17;-><init>(Lcom/htc/android/mail/MailList;)V

    iput-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    .line 1989
    new-instance v0, Lcom/htc/android/mail/MailList$CursorContentObserver;

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mRequestHandler:Lcom/htc/android/mail/MailList$RequestHandler;

    invoke-direct {v0, p0, v1}, Lcom/htc/android/mail/MailList$CursorContentObserver;-><init>(Lcom/htc/android/mail/MailList;Landroid/os/Handler;)V

    .line 1990
    .local v0, cco:Lcom/htc/android/mail/MailList$CursorContentObserver;
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailList$CursorContentObserver;->init(Lcom/htc/android/mail/MailList$TabInfo;)V

    .line 1991
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iput-object v0, v1, Lcom/htc/android/mail/MailList$TabInfo;->mCursorContentObserver:Lcom/htc/android/mail/MailList$CursorContentObserver;

    .line 1992
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/android/mail/MailList$TabInfo;->mShowUnReadNumber:Z

    .line 1993
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    const/4 v2, 0x6

    iput v2, v1, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    .line 1994
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/android/mail/MailList$TabInfo;->mHaveFooter:Z

    .line 1995
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailList$TabInfo;->initSortItems(Lcom/htc/android/mail/Account;)V

    .line 1996
    return-void
.end method

.method private doThreadTab()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1491
    new-instance v1, Lcom/htc/android/mail/MailList$11;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailList$11;-><init>(Lcom/htc/android/mail/MailList;)V

    iput-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    .line 1712
    new-instance v0, Lcom/htc/android/mail/MailList$CursorContentObserver;

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mRequestHandler:Lcom/htc/android/mail/MailList$RequestHandler;

    invoke-direct {v0, p0, v1}, Lcom/htc/android/mail/MailList$CursorContentObserver;-><init>(Lcom/htc/android/mail/MailList;Landroid/os/Handler;)V

    .line 1713
    .local v0, cco:Lcom/htc/android/mail/MailList$CursorContentObserver;
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailList$CursorContentObserver;->init(Lcom/htc/android/mail/MailList$TabInfo;)V

    .line 1714
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iput-object v0, v1, Lcom/htc/android/mail/MailList$TabInfo;->mCursorContentObserver:Lcom/htc/android/mail/MailList$CursorContentObserver;

    .line 1715
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iput-boolean v3, v1, Lcom/htc/android/mail/MailList$TabInfo;->mShowUnReadNumber:Z

    .line 1716
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iput-boolean v3, v1, Lcom/htc/android/mail/MailList$TabInfo;->mIsThreadTab:Z

    .line 1717
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iput-boolean v3, v1, Lcom/htc/android/mail/MailList$TabInfo;->mIsExpandListAdapter:Z

    .line 1718
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    const/4 v2, 0x2

    iput v2, v1, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    .line 1719
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/android/mail/MailList$TabInfo;->mHaveFooter:Z

    .line 1720
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailList$TabInfo;->initSortItems(Lcom/htc/android/mail/Account;)V

    .line 1721
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iput v3, v1, Lcom/htc/android/mail/MailList$TabInfo;->mIndex:I

    .line 1722
    return-void
.end method

.method private doUnreadTab()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1934
    new-instance v1, Lcom/htc/android/mail/MailList$16;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailList$16;-><init>(Lcom/htc/android/mail/MailList;)V

    iput-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    .line 1960
    new-instance v0, Lcom/htc/android/mail/MailList$CursorContentObserver;

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mRequestHandler:Lcom/htc/android/mail/MailList$RequestHandler;

    invoke-direct {v0, p0, v1}, Lcom/htc/android/mail/MailList$CursorContentObserver;-><init>(Lcom/htc/android/mail/MailList;Landroid/os/Handler;)V

    .line 1961
    .local v0, cco:Lcom/htc/android/mail/MailList$CursorContentObserver;
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailList$CursorContentObserver;->init(Lcom/htc/android/mail/MailList$TabInfo;)V

    .line 1962
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iput-object v0, v1, Lcom/htc/android/mail/MailList$TabInfo;->mCursorContentObserver:Lcom/htc/android/mail/MailList$CursorContentObserver;

    .line 1963
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/android/mail/MailList$TabInfo;->mShowUnReadNumber:Z

    .line 1964
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    const/4 v2, 0x5

    iput v2, v1, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    .line 1965
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iput-boolean v5, v1, Lcom/htc/android/mail/MailList$TabInfo;->mHaveFooter:Z

    .line 1966
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailList$TabInfo;->initSortItems(Lcom/htc/android/mail/Account;)V

    .line 1967
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    new-instance v2, Lcom/htc/android/mail/util/ActivityCallback;

    new-instance v3, Lcom/htc/android/mail/MailList$MailListActivityCallbackBinder;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/htc/android/mail/MailList$MailListActivityCallbackBinder;-><init>(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$1;)V

    invoke-direct {v2, v3}, Lcom/htc/android/mail/util/ActivityCallback;-><init>(Lcom/htc/android/mail/util/IActivityCallback;)V

    iput-object v2, v1, Lcom/htc/android/mail/MailList$TabInfo;->mActivityCallback:Lcom/htc/android/mail/util/ActivityCallback;

    .line 1968
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v1, v1, Lcom/htc/android/mail/MailList$TabInfo;->mReadMessageIds:Lcom/htc/android/mail/util/IdStore;

    invoke-virtual {v1}, Lcom/htc/android/mail/util/IdStore;->clear()V

    .line 1969
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iput-boolean v5, v1, Lcom/htc/android/mail/MailListTab;->mClearReadMessageIds:Z

    .line 1970
    return-void
.end method

.method private exitBatchMode()Z
    .locals 3

    .prologue
    .line 3553
    const/4 v0, 0x0

    .line 3554
    .local v0, result:Z
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mFooterBarArea:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 3555
    sget-boolean v1, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailList"

    const-string v2, "exit batch mode>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3556
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    invoke-virtual {v1}, Lcom/htc/android/mail/util/SelectedMailMessages;->clear()V

    .line 3557
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;

    invoke-virtual {v1}, Lcom/htc/android/mail/util/SelectedMailGroups;->clear()V

    .line 3558
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailListTab;->setFooterBarAreaVisible(Z)V

    .line 3559
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 3560
    const/4 v0, 0x1

    .line 3562
    :cond_1
    return v0
.end method

.method private findHashCode()I
    .locals 2

    .prologue
    .line 6933
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->tabName:Ljava/lang/String;

    const-string v1, "tab_inbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6934
    const-string v0, "tab_inbox"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 6946
    :goto_0
    return v0

    .line 6935
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->tabName:Ljava/lang/String;

    const-string v1, "tab_thread"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6936
    const-string v0, "tab_inbox"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 6937
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->tabName:Ljava/lang/String;

    const-string v1, "tab_important"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6938
    const-string v0, "tab_important"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 6939
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->tabName:Ljava/lang/String;

    const-string v1, "tab_unread"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6940
    const-string v0, "tab_unread"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 6941
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->tabName:Ljava/lang/String;

    const-string v1, "tab_mark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6942
    const-string v0, "tab_mark"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 6943
    :cond_4
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->tabName:Ljava/lang/String;

    const-string v1, "tab_meeting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6944
    const-string v0, "tab_meeting"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 6946
    :cond_5
    const-string v0, "tab_attach"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method private findULogName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "tabName"

    .prologue
    .line 6952
    const-string v0, "tab_inbox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6953
    const-string v0, "com.htc.android.mail.virtual.maillist"

    .line 6965
    :goto_0
    return-object v0

    .line 6954
    :cond_0
    const-string v0, "tab_thread"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6955
    const-string v0, "com.htc.android.mail.virtual.conversations"

    goto :goto_0

    .line 6956
    :cond_1
    const-string v0, "tab_important"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6957
    const-string v0, "com.htc.android.mail.virtual.favorites"

    goto :goto_0

    .line 6958
    :cond_2
    const-string v0, "tab_unread"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6959
    const-string v0, "com.htc.android.mail.virtual.unread"

    goto :goto_0

    .line 6960
    :cond_3
    const-string v0, "tab_mark"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6961
    const-string v0, "com.htc.android.mail.virtual.marked"

    goto :goto_0

    .line 6962
    :cond_4
    const-string v0, "tab_meeting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6963
    const-string v0, "com.htc.android.mail.virtual.meeting_invitations"

    goto :goto_0

    .line 6965
    :cond_5
    const-string v0, "com.htc.android.mail.virtual.attachments"

    goto :goto_0
.end method

.method private folderOpenModeMailList(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 3406
    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "folderOpenModeMailList> Warning, Unused function"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3416
    return-void
.end method

.method private forwardMailById(JJ)V
    .locals 7
    .parameter "accountId"
    .parameter "id"

    .prologue
    const/4 v6, 0x4

    .line 2551
    sget-boolean v3, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MailList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forwardMailById: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2552
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mail/messages/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2554
    .local v2, url:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const-class v4, Lcom/htc/android/mail/ComposeActivity;

    invoke-direct {v1, v3, v2, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 2555
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "cmd"

    const-string v4, "forward"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2556
    const-string v3, "accountID"

    invoke-virtual {v1, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2557
    const-string v3, "SetOrient"

    const-string v4, "InMail"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2558
    const-string v3, "id"

    invoke-virtual {v1, v3, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2560
    invoke-static {p1, p2}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 2561
    .local v0, account:Lcom/htc/android/mail/Account;
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    if-ne v3, v6, :cond_1

    iget-boolean v3, p0, Lcom/htc/android/mail/MailList;->long_press_bMeetingMail:Z

    if-eqz v3, :cond_1

    .line 2562
    const-string v3, "cmd"

    const-string v4, "forwardMeeting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2563
    const-string v3, "meetingView"

    iget-boolean v4, p0, Lcom/htc/android/mail/MailList;->long_press_bMeetingMail:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2564
    const-string v3, "meetingResp"

    const-string v4, "4"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2567
    :cond_1
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 2568
    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-static {p0, v3, p3, p4}, Lcom/htc/android/mail/MailCommon;->checkForward(Landroid/content/Context;Ljava/lang/ref/WeakReference;J)V

    .line 2571
    :cond_2
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList;->startActivity(Landroid/content/Intent;)V

    .line 2572
    return-void
.end method

.method private static getConversationGroupCursor(Lcom/htc/android/mail/MailList$TabInfo;)Lcom/htc/android/mail/database/ConversationGroupCursor;
    .locals 2
    .parameter "tabInfo"

    .prologue
    const/4 v0, 0x0

    .line 7123
    if-nez p0, :cond_1

    .line 7129
    :cond_0
    :goto_0
    return-object v0

    .line 7126
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

    if-eqz v1, :cond_0

    .line 7129
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

    check-cast v0, Lcom/htc/android/mail/database/ConversationGroupCursor;

    goto :goto_0
.end method

.method private getCursor()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 4297
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-boolean v2, v2, Lcom/htc/android/mail/MailList$TabInfo;->mIsExpandListAdapter:Z

    if-eqz v2, :cond_2

    .line 4298
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcExpandableListView;->getSelectedId()J

    move-result-wide v0

    .line 4302
    .local v0, Id:J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 4303
    :cond_0
    const/4 v2, 0x0

    .line 4310
    .end local v0           #Id:J
    :goto_0
    return-object v2

    .line 4306
    .restart local v0       #Id:J
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcExpandableListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    goto :goto_0

    .line 4310
    .end local v0           #Id:J
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    goto :goto_0
.end method

.method private getFilterSubTitleLabel(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 17
    .parameter "label"

    .prologue
    .line 7165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 7166
    .local v5, filter_title:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v14 .. v16}, Lcom/htc/android/mail/Util;->getSearchFilterPref(Landroid/content/Context;J)I

    move-result v12

    .line 7167
    .local v12, settings:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-boolean v14, v14, Lcom/htc/android/mail/MailListTab;->mSearchFromContextMenu:Z

    if-eqz v14, :cond_0

    .line 7168
    const/4 v12, 0x1

    .line 7170
    :cond_0
    const/16 v14, 0xa

    new-array v10, v14, [Z

    .line 7171
    .local v10, pref:[Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f060046

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 7172
    .local v11, search_in:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f060048

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 7173
    .local v4, filter_by:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b034a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 7176
    .local v8, more:Ljava/lang/String;
    const/4 v9, 0x0

    .line 7177
    .local v9, more_number:I
    const/4 v3, 0x0

    .line 7178
    .local v3, exceedMax:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 7179
    .local v2, config:Landroid/content/res/Configuration;
    iget v14, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 7180
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f08004d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v7, v14

    .line 7185
    .local v7, maxWidth:I
    :goto_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    const/16 v14, 0xa

    if-ge v6, v14, :cond_3

    .line 7186
    const/4 v14, 0x1

    shl-int/2addr v14, v6

    and-int/2addr v14, v12

    if-lez v14, :cond_2

    const/4 v14, 0x1

    :goto_2
    aput-boolean v14, v10, v6

    .line 7185
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 7182
    .end local v6           #i:I
    .end local v7           #maxWidth:I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f08004c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v7, v14

    .restart local v7       #maxWidth:I
    goto :goto_0

    .line 7186
    .restart local v6       #i:I
    :cond_2
    const/4 v14, 0x0

    goto :goto_2

    .line 7189
    :cond_3
    const/4 v14, 0x0

    aget-boolean v14, v10, v14

    if-eqz v14, :cond_4

    .line 7190
    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7192
    :cond_4
    const/4 v14, 0x1

    aget-boolean v14, v10, v14

    if-eqz v14, :cond_5

    .line 7193
    const/4 v14, 0x1

    aget-object v14, v11, v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7195
    :cond_5
    const/4 v14, 0x2

    aget-boolean v14, v10, v14

    if-eqz v14, :cond_6

    .line 7196
    const/4 v14, 0x2

    aget-object v14, v11, v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7198
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-lez v14, :cond_7

    .line 7199
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 7200
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 7202
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 7204
    .local v13, title:Ljava/lang/String;
    const/4 v14, 0x3

    aget-boolean v14, v10, v14

    if-eqz v14, :cond_8

    .line 7205
    const-string v14, ", "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, v4, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7206
    if-nez v3, :cond_10

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v7}, Lcom/htc/android/mail/MailList;->isExceedTextWidth(Landroid/widget/TextView;Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_10

    .line 7207
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 7213
    :cond_8
    :goto_3
    const/4 v14, 0x4

    aget-boolean v14, v10, v14

    if-eqz v14, :cond_9

    .line 7214
    const-string v14, ", "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v4, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7215
    if-nez v3, :cond_11

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v7}, Lcom/htc/android/mail/MailList;->isExceedTextWidth(Landroid/widget/TextView;Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_11

    .line 7216
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 7222
    :cond_9
    :goto_4
    const/4 v14, 0x5

    aget-boolean v14, v10, v14

    if-eqz v14, :cond_a

    .line 7223
    const-string v14, ", "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v15, v4, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7224
    if-nez v3, :cond_12

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v7}, Lcom/htc/android/mail/MailList;->isExceedTextWidth(Landroid/widget/TextView;Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_12

    .line 7225
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 7231
    :cond_a
    :goto_5
    const/4 v14, 0x6

    aget-boolean v14, v10, v14

    if-eqz v14, :cond_b

    .line 7232
    const-string v14, ", "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x3

    aget-object v15, v4, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7233
    if-nez v3, :cond_13

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v7}, Lcom/htc/android/mail/MailList;->isExceedTextWidth(Landroid/widget/TextView;Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_13

    .line 7234
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 7240
    :cond_b
    :goto_6
    const/4 v14, 0x7

    aget-boolean v14, v10, v14

    if-eqz v14, :cond_c

    .line 7241
    const-string v14, ", "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x4

    aget-object v15, v4, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7242
    if-nez v3, :cond_14

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v7}, Lcom/htc/android/mail/MailList;->isExceedTextWidth(Landroid/widget/TextView;Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_14

    .line 7243
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 7249
    :cond_c
    :goto_7
    const/16 v14, 0x8

    aget-boolean v14, v10, v14

    if-eqz v14, :cond_d

    .line 7250
    const-string v14, ", "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x5

    aget-object v15, v4, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7251
    if-nez v3, :cond_15

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v7}, Lcom/htc/android/mail/MailList;->isExceedTextWidth(Landroid/widget/TextView;Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_15

    .line 7252
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 7258
    :cond_d
    :goto_8
    const/16 v14, 0x9

    aget-boolean v14, v10, v14

    if-eqz v14, :cond_e

    .line 7259
    const-string v14, ", "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x6

    aget-object v15, v4, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7260
    if-nez v3, :cond_16

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v7}, Lcom/htc/android/mail/MailList;->isExceedTextWidth(Landroid/widget/TextView;Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_16

    .line 7261
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 7268
    :cond_e
    :goto_9
    if-eqz v3, :cond_f

    .line 7269
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " + "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 7271
    :cond_f
    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 7209
    :cond_10
    const/4 v3, 0x1

    .line 7210
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 7218
    :cond_11
    const/4 v3, 0x1

    .line 7219
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 7227
    :cond_12
    const/4 v3, 0x1

    .line 7228
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    .line 7236
    :cond_13
    const/4 v3, 0x1

    .line 7237
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6

    .line 7245
    :cond_14
    const/4 v3, 0x1

    .line 7246
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7

    .line 7254
    :cond_15
    const/4 v3, 0x1

    .line 7255
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 7263
    :cond_16
    const/4 v3, 0x1

    .line 7264
    add-int/lit8 v9, v9, 0x1

    goto :goto_9
.end method

.method private getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 2643
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mAdapter:Lcom/htc/android/mail/MailList$MailListAdapter;

    return-object v0
.end method

.method private static getMessageIdColumnName(Lcom/htc/android/mail/MailList$TabInfo;)Ljava/lang/String;
    .locals 2
    .parameter "tabInfo"

    .prologue
    .line 7135
    const-string v0, "_id"

    .line 7136
    .local v0, messageIdColumnName:Ljava/lang/String;
    if-eqz p0, :cond_0

    iget-boolean v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mIsThreadTab:Z

    if-eqz v1, :cond_0

    .line 7137
    const-string v0, "_messageId"

    .line 7139
    :cond_0
    return-object v0
.end method

.method private getSearchFilterSQLWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 35
    .parameter "where"
    .parameter "pattern"

    .prologue
    .line 6789
    sget-boolean v29, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v29, :cond_0

    const-string v29, "MailList"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "getSearchFilterSQLWhere>"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6790
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    invoke-static/range {v29 .. v31}, Lcom/htc/android/mail/Util;->getSearchFilterBooleanArray(Landroid/content/Context;J)[Z

    move-result-object v7

    .line 6791
    .local v7, current_pref:[Z
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 6792
    .local v14, lowCasePattern:Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "%"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "%"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6794
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 6795
    .local v18, search_in:Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 6796
    .local v9, filter_by:Ljava/lang/StringBuilder;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 6797
    .local v13, list_group:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 6798
    .local v17, prio_group:Ljava/lang/StringBuilder;
    const/16 v29, 0x0

    aget-boolean v29, v7, v29

    if-eqz v29, :cond_1

    .line 6799
    sget-object v29, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v30, " or UCS2_LOWERCASE(_from) like %s or UCS2_LOWERCASE(_fromEmail) like %s"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object p2, v31, v32

    const/16 v32, 0x1

    aput-object p2, v31, v32

    invoke-static/range {v29 .. v31}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6802
    :cond_1
    const/16 v29, 0x1

    aget-boolean v29, v7, v29

    if-eqz v29, :cond_2

    .line 6803
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "%"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 6804
    .local v28, toPattern:Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "%\""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "%"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 6805
    .local v23, toExtraPatternOne:Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "%<"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "%"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 6806
    .local v27, toExtraPatternTwo:Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "% "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "%"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 6807
    .local v26, toExtraPatternThree:Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "%;"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "%"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 6808
    .local v21, toExtraPatternFour:Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "%,"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "%"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 6809
    .local v20, toExtraPatternFive:Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "%_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "%"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 6810
    .local v25, toExtraPatternSix:Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "%."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "%"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 6811
    .local v24, toExtraPatternSeven:Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "%-"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "%"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 6812
    .local v19, toExtraPatternEight:Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "%@"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "%"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 6814
    .local v22, toExtraPatternNine:Ljava/lang/String;
    sget-object v29, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v30, " or UCS2_LOWERCASE(_to) like %s or UCS2_LOWERCASE(_to) like %s or UCS2_LOWERCASE(_to) like %s or UCS2_LOWERCASE(_to) like %s or UCS2_LOWERCASE(_to) like %s or UCS2_LOWERCASE(_to) like %s or UCS2_LOWERCASE(_to) like %s or UCS2_LOWERCASE(_to) like %s or UCS2_LOWERCASE(_to) like %s or UCS2_LOWERCASE(_to) like %s"

    const/16 v31, 0xa

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v28, v31, v32

    const/16 v32, 0x1

    aput-object v23, v31, v32

    const/16 v32, 0x2

    aput-object v27, v31, v32

    const/16 v32, 0x3

    aput-object v26, v31, v32

    const/16 v32, 0x4

    aput-object v21, v31, v32

    const/16 v32, 0x5

    aput-object v20, v31, v32

    const/16 v32, 0x6

    aput-object v25, v31, v32

    const/16 v32, 0x7

    aput-object v24, v31, v32

    const/16 v32, 0x8

    aput-object v19, v31, v32

    const/16 v32, 0x9

    aput-object v22, v31, v32

    invoke-static/range {v29 .. v31}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6822
    .end local v19           #toExtraPatternEight:Ljava/lang/String;
    .end local v20           #toExtraPatternFive:Ljava/lang/String;
    .end local v21           #toExtraPatternFour:Ljava/lang/String;
    .end local v22           #toExtraPatternNine:Ljava/lang/String;
    .end local v23           #toExtraPatternOne:Ljava/lang/String;
    .end local v24           #toExtraPatternSeven:Ljava/lang/String;
    .end local v25           #toExtraPatternSix:Ljava/lang/String;
    .end local v26           #toExtraPatternThree:Ljava/lang/String;
    .end local v27           #toExtraPatternTwo:Ljava/lang/String;
    .end local v28           #toPattern:Ljava/lang/String;
    :cond_2
    const/16 v29, 0x2

    aget-boolean v29, v7, v29

    if-eqz v29, :cond_3

    .line 6823
    sget-object v29, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v30, " or UCS2_LOWERCASE(_subject) like %s"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object p2, v31, v32

    invoke-static/range {v29 .. v31}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6826
    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v29

    if-lez v29, :cond_4

    .line 6827
    const/16 v29, 0x0

    const/16 v30, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 6830
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/htc/android/mail/MailListTab;->mSearchFromContextMenu:Z

    move/from16 v29, v0

    if-eqz v29, :cond_5

    .line 6831
    sget-object v29, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v30, "UCS2_LOWERCASE(_from) like %s or UCS2_LOWERCASE(_fromEmail) like %s"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object p2, v31, v32

    const/16 v32, 0x1

    aput-object p2, v31, v32

    invoke-static/range {v29 .. v31}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/htc/android/mail/MailCommon;->mergeSQLWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 6918
    :goto_0
    return-object v29

    .line 6835
    :cond_5
    const/16 v29, 0x8

    aget-boolean v29, v7, v29

    if-nez v29, :cond_6

    const/16 v29, 0x3

    aget-boolean v29, v7, v29

    if-nez v29, :cond_6

    const/16 v29, 0x4

    aget-boolean v29, v7, v29

    if-nez v29, :cond_6

    const/16 v29, 0x5

    aget-boolean v29, v7, v29

    if-nez v29, :cond_6

    const/16 v29, 0x6

    aget-boolean v29, v7, v29

    if-nez v29, :cond_6

    const/16 v29, 0x7

    aget-boolean v29, v7, v29

    if-nez v29, :cond_6

    const/16 v29, 0x9

    aget-boolean v29, v7, v29

    if-nez v29, :cond_6

    .line 6838
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/htc/android/mail/MailCommon;->mergeSQLWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    goto :goto_0

    .line 6841
    :cond_6
    const/16 v29, 0x3

    aget-boolean v29, v7, v29

    if-nez v29, :cond_7

    const/16 v29, 0x4

    aget-boolean v29, v7, v29

    if-eqz v29, :cond_d

    .line 6842
    :cond_7
    const-string v8, ""

    .line 6843
    .local v8, email:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v29

    const-wide v31, 0x7fffffffffffffffL

    cmp-long v29, v29, v31

    if-nez v29, :cond_15

    .line 6844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mPreloadFilterAddress:[Ljava/lang/String;

    move-object/from16 v29, v0

    if-nez v29, :cond_9

    .line 6845
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v4

    .line 6846
    .local v4, accountPool:Lcom/htc/android/mail/AccountPool;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/htc/android/mail/AccountPool;->getAccounts(Landroid/content/Context;)[Lcom/htc/android/mail/Account;

    move-result-object v5

    .line 6847
    .local v5, accounts:[Lcom/htc/android/mail/Account;
    array-length v0, v5

    move/from16 v29, v0

    move/from16 v0, v29

    new-array v3, v0, [Ljava/lang/String;

    .line 6848
    .local v3, accountEmails:[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    array-length v0, v5

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v10, v0, :cond_8

    .line 6849
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "%"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    aget-object v30, v5, v10

    invoke-virtual/range {v30 .. v30}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "%"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v3, v10

    .line 6848
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 6854
    :cond_8
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/MailList;->mPreloadFilterAddress:[Ljava/lang/String;

    .line 6857
    .end local v3           #accountEmails:[Ljava/lang/String;
    .end local v4           #accountPool:Lcom/htc/android/mail/AccountPool;
    .end local v5           #accounts:[Lcom/htc/android/mail/Account;
    .end local v10           #i:I
    :cond_9
    const/16 v29, 0x3

    aget-boolean v29, v7, v29

    if-eqz v29, :cond_a

    .line 6858
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/MailList;->mPreloadFilterAddress:[Ljava/lang/String;

    .local v6, arr$:[Ljava/lang/String;
    array-length v12, v6

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_2
    if-ge v11, v12, :cond_a

    aget-object v15, v6, v11

    .line 6859
    .local v15, mail:Ljava/lang/String;
    const-string v29, " or UCS2_LOWERCASE(_to) like "

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6858
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 6863
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v15           #mail:Ljava/lang/String;
    :cond_a
    const/16 v29, 0x4

    aget-boolean v29, v7, v29

    if-eqz v29, :cond_b

    .line 6864
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/MailList;->mPreloadFilterAddress:[Ljava/lang/String;

    .restart local v6       #arr$:[Ljava/lang/String;
    array-length v12, v6

    .restart local v12       #len$:I
    const/4 v11, 0x0

    .restart local v11       #i$:I
    :goto_3
    if-ge v11, v12, :cond_b

    aget-object v15, v6, v11

    .line 6865
    .restart local v15       #mail:Ljava/lang/String;
    const-string v29, " or UCS2_LOWERCASE(_cc) like "

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6864
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 6868
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v15           #mail:Ljava/lang/String;
    :cond_b
    sget-boolean v29, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v29, :cond_c

    const-string v29, "MailList"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "search filter account = sCombinedAccountId address="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6882
    :cond_c
    :goto_4
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v29

    if-lez v29, :cond_d

    .line 6883
    const/16 v29, 0x0

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 6884
    const-string v29, " AND ("

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6888
    .end local v8           #email:Ljava/lang/String;
    :cond_d
    const/16 v29, 0x5

    aget-boolean v29, v7, v29

    if-eqz v29, :cond_e

    .line 6889
    const-string v29, " AND (messages._incAttachment = 1)"

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6892
    :cond_e
    const/16 v29, 0x6

    aget-boolean v29, v7, v29

    if-eqz v29, :cond_f

    .line 6893
    const-string v29, " or (messages._importance = 2)"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6896
    :cond_f
    const/16 v29, 0x7

    aget-boolean v29, v7, v29

    if-eqz v29, :cond_10

    .line 6897
    const-string v29, " or (messages._importance = 0)"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6900
    :cond_10
    const/16 v29, 0x8

    aget-boolean v29, v7, v29

    if-eqz v29, :cond_11

    .line 6901
    const-string v29, " or (messages._importance = 1)"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6903
    :cond_11
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v29

    if-lez v29, :cond_12

    .line 6904
    const/16 v29, 0x0

    const/16 v30, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 6905
    const-string v29, " AND ("

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6908
    :cond_12
    const/16 v29, 0x9

    aget-boolean v29, v7, v29

    if-eqz v29, :cond_13

    .line 6909
    const-string v29, " AND (messages._flags = 2)"

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6912
    :cond_13
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v29

    if-lez v29, :cond_14

    .line 6913
    const/16 v29, 0x0

    const/16 v30, 0x5

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 6916
    :cond_14
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/htc/android/mail/MailCommon;->mergeSQLWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 6918
    .local v16, merged:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/htc/android/mail/MailCommon;->mergeSQLWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 6870
    .end local v16           #merged:Ljava/lang/String;
    .restart local v8       #email:Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v8

    .line 6872
    const/16 v29, 0x3

    aget-boolean v29, v7, v29

    if-eqz v29, :cond_16

    .line 6873
    sget-object v29, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v30, " or UCS2_LOWERCASE(_to) like %s"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "%"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "%"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v29 .. v31}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6876
    :cond_16
    const/16 v29, 0x4

    aget-boolean v29, v7, v29

    if-eqz v29, :cond_17

    .line 6877
    sget-object v29, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v30, " or UCS2_LOWERCASE(_cc) like %s"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "%"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "%"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v29 .. v31}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6879
    :cond_17
    sget-boolean v29, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v29, :cond_c

    const-string v29, "MailList"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "search filter account = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v31

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " address="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method private getSearchSQLWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "where"
    .parameter "pattern"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6768
    sget-boolean v1, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSearchSQLWhere>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6769
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 6770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6773
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget v1, v1, Lcom/htc/android/mail/Mailbox;->kind:I

    const v2, 0x7ffffffc

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget v1, v1, Lcom/htc/android/mail/Mailbox;->kind:I

    const v2, 0x7ffffffb

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget v1, v1, Lcom/htc/android/mail/Mailbox;->kind:I

    const v2, 0x7ffffffd

    if-ne v1, v2, :cond_2

    .line 6777
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "UCS2_LOWERCASE(_to) like %s or UCS2_LOWERCASE(_cc) like %s or UCS2_LOWERCASE(_subject) like %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p2, v3, v4

    aput-object p2, v3, v5

    aput-object p2, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6785
    .local v0, keyword:Ljava/lang/String;
    :goto_0
    invoke-static {p1, v0}, Lcom/htc/android/mail/MailCommon;->mergeSQLWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 6781
    .end local v0           #keyword:Ljava/lang/String;
    :cond_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "UCS2_LOWERCASE(_from) like %s or UCS2_LOWERCASE(_subject) like %s or UCS2_LOWERCASE(_fromEmail) like %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p2, v3, v4

    aput-object p2, v3, v5

    aput-object p2, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #keyword:Ljava/lang/String;
    goto :goto_0
.end method

.method private haveTheLastUid(Ljava/lang/String;)Z
    .locals 6
    .parameter "lastuidInServer"

    .prologue
    .line 3020
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v1

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v3, v0, Lcom/htc/android/mail/Mailbox;->id:J

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/android/mail/MailProvider;->haveTheLastUid(Ljava/lang/String;JJI)Z

    move-result v0

    return v0
.end method

.method private hideEmptyText()V
    .locals 2

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 1337
    const v0, 0x7f0900e5

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1339
    return-void
.end method

.method private hideLoadMessage(Lcom/htc/android/mail/MailList$TabInfo;)V
    .locals 2
    .parameter "tabInfo"

    .prologue
    const/16 v1, 0x8

    .line 5678
    const v0, 0x7f0900e6

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5679
    const v0, 0x102000d

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5680
    return-void
.end method

.method private initScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2151
    iput-boolean v3, p0, Lcom/htc/android/mail/MailList;->mNeedInit:Z

    .line 2152
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailList"

    const-string v1, "initScreen>>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2153
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mPartFactory:Landroid/view/LayoutInflater;

    const v1, 0x7f03002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->subTitle:Landroid/view/View;

    .line 2156
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->subTitle:Landroid/view/View;

    const v1, 0x7f090109

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->updateLable:Landroid/widget/TextView;

    .line 2157
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->subTitle:Landroid/view/View;

    const v1, 0x7f09010a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->UpdateTime:Landroid/widget/TextView;

    .line 2158
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->subTitle:Landroid/view/View;

    const v1, 0x7f09010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->progressSubject:Landroid/widget/TextView;

    .line 2159
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->subTitle:Landroid/view/View;

    const v1, 0x7f09010f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->sortLable:Landroid/widget/TextView;

    .line 2160
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->subTitle:Landroid/view/View;

    const v1, 0x7f090111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->ascDescImg:Landroid/widget/ImageView;

    .line 2161
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->subTitle:Landroid/view/View;

    const v1, 0x7f09010d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->folderName:Landroid/widget/TextView;

    .line 2164
    new-instance v0, Lcom/htc/android/mail/MailList$23;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailList$23;-><init>(Lcom/htc/android/mail/MailList;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 2193
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "refresh"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2194
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MailList"

    const-string v1, "force refresh"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    :cond_1
    invoke-direct {p0, v3, v3, v3}, Lcom/htc/android/mail/MailList;->refreshMail(ZZZ)V

    .line 2197
    :cond_2
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "MailList"

    const-string v1, "initTab end<<<"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2198
    :cond_3
    return-void
.end method

.method private initTab(Ljava/lang/String;)V
    .locals 3
    .parameter "tabName"

    .prologue
    .line 2001
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initTab>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    :cond_0
    const-string v0, "tab_inbox"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2003
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->doDefaultTab()V

    .line 2004
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    if-eqz v0, :cond_1

    .line 2005
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    const-string v1, "tab_inbox"

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailList$TabInfo;->getMailListTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/CarouselHost;->setAlternativeTabName(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2025
    :cond_1
    :goto_0
    return-void

    .line 2008
    :cond_2
    const-string v0, "tab_thread"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2009
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->doThreadTab()V

    goto :goto_0

    .line 2010
    :cond_3
    const-string v0, "tab_mark"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2011
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->doMarkTab()V

    goto :goto_0

    .line 2012
    :cond_4
    const-string v0, "tab_attach"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2013
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->doAttachTab()V

    goto :goto_0

    .line 2014
    :cond_5
    const-string v0, "tab_unread"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2015
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->doUnreadTab()V

    goto :goto_0

    .line 2016
    :cond_6
    const-string v0, "tab_meeting"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2017
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->doMeetingTab()V

    goto :goto_0

    .line 2018
    :cond_7
    const-string v0, "tab_important"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2019
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->doImportantTab()V

    goto :goto_0

    .line 2020
    :cond_8
    const-string v0, "tab_groups"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2021
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->doGroupTab()V

    goto :goto_0

    .line 2023
    :cond_9
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->doDefaultTab()V

    goto :goto_0
.end method

.method private invokeMailSearch(ZZ)V
    .locals 7
    .parameter "invoke"
    .parameter "fromMenu"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7003
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    if-nez v1, :cond_0

    .line 7004
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailListTab;->initSearchBar()V

    .line 7007
    :cond_0
    if-eqz p1, :cond_3

    .line 7008
    sget-boolean v1, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "MailList"

    const-string v2, "MailSearch Enabled:"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7009
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iput-boolean p2, v1, Lcom/htc/android/mail/MailListTab;->mSearchFromContextMenu:Z

    .line 7010
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iput-boolean v4, v1, Lcom/htc/android/mail/MailListTab;->mIsMailSearch:Z

    .line 7011
    iput-object v6, p0, Lcom/htc/android/mail/MailList;->mPreloadFilterAddress:[Ljava/lang/String;

    .line 7012
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->exitBatchMode()Z

    .line 7020
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    invoke-virtual {v1, v3}, Lcom/htc/android/mail/widget/MailSearchBar;->setVisibility(I)V

    .line 7021
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    invoke-virtual {v1, v5}, Lcom/htc/android/mail/widget/MailActionBar;->setVisibility(I)V

    .line 7023
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchField:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7024
    const-string v1, ""

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v2, v2, Lcom/htc/android/mail/MailListTab;->mSearchKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7025
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchField:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v2, v2, Lcom/htc/android/mail/MailListTab;->mSearchKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 7028
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchField:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 7029
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 7030
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchField:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 7031
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchField:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    .line 7032
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchField:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 7033
    invoke-direct {p0, v4}, Lcom/htc/android/mail/MailList;->setFilterSubTitle(Z)V

    .line 7056
    :goto_0
    return-void

    .line 7035
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    sget-boolean v1, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "MailList"

    const-string v2, "MailSearch Disabled"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7036
    :cond_4
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iput-boolean v3, v1, Lcom/htc/android/mail/MailListTab;->mIsMailSearch:Z

    .line 7038
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    invoke-virtual {v1, v5}, Lcom/htc/android/mail/widget/MailSearchBar;->setVisibility(I)V

    .line 7039
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    invoke-virtual {v1, v3}, Lcom/htc/android/mail/widget/MailActionBar;->setVisibility(I)V

    .line 7041
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchField:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7043
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mSearchKey:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 7044
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    const-string v2, ""

    iput-object v2, v1, Lcom/htc/android/mail/MailListTab;->mSearchKey:Ljava/lang/String;

    .line 7045
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchField:Landroid/widget/AutoCompleteTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 7046
    const/16 v1, 0x32

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-direct {p0, v6, v1, v2}, Lcom/htc/android/mail/MailList;->startQuery(Ljava/lang/String;ILcom/htc/android/mail/MailList$TabInfo;)V

    .line 7049
    :cond_5
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->exitBatchMode()Z

    .line 7051
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->removeSearchServerFooter()V

    .line 7052
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 7053
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchField:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 7054
    invoke-direct {p0, v3}, Lcom/htc/android/mail/MailList;->setFilterSubTitle(Z)V

    goto :goto_0
.end method

.method private isExceedTextWidth(Landroid/widget/TextView;Ljava/lang/String;I)Z
    .locals 2
    .parameter "label"
    .parameter "string"
    .parameter "max"

    .prologue
    .line 7275
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    int-to-float v1, p3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 7276
    const/4 v0, 0x0

    .line 7278
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSortBySize()Z
    .locals 4

    .prologue
    .line 4855
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getSortBy()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/MailList$TabInfo;->getSortItemsIndexByIndex(Lcom/htc/android/mail/Mailbox;I)I

    move-result v0

    .line 4856
    .local v0, sortByIndex:I
    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 4857
    :cond_0
    const/4 v1, 0x1

    .line 4859
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private launchGroupDialog()V
    .locals 3

    .prologue
    .line 1387
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1388
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/android/mail/ContactGroupDialogPicker;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1389
    const-string v1, "contactGroup"

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getContactGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1390
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/mail/MailList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1391
    return-void
.end method

.method private loadListViewContent(Lcom/htc/android/mail/MailList$TabInfo;I)V
    .locals 3
    .parameter "tabInfo"
    .parameter "token"

    .prologue
    .line 6570
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadListViewContent>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6571
    :cond_0
    invoke-virtual {p1}, Lcom/htc/android/mail/MailList$TabInfo;->isQueryNeeded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6572
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MailList"

    const-string v1, "isQueryNeeded return>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6585
    :cond_1
    :goto_0
    return-void

    .line 6576
    :cond_2
    iget v0, p1, Lcom/htc/android/mail/MailList$TabInfo;->mNowTokenId:I

    iput v0, p1, Lcom/htc/android/mail/MailList$TabInfo;->mLoadFinishedTokenId:I

    .line 6578
    const/16 v0, 0xa

    if-ne p2, v0, :cond_4

    .line 6579
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "MailList"

    const-string v1, "loadListViewContent a>token_limited_query"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6580
    :cond_3
    invoke-static {}, Lcom/htc/android/mail/Mail;->getSummariesQueryLimit()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1}, Lcom/htc/android/mail/MailList;->startQuery(Ljava/lang/String;ILcom/htc/android/mail/MailList$TabInfo;)V

    goto :goto_0

    .line 6582
    :cond_4
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadListViewContent b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6583
    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p1}, Lcom/htc/android/mail/MailList;->startQuery(Ljava/lang/String;ILcom/htc/android/mail/MailList$TabInfo;)V

    goto :goto_0
.end method

.method private lunchAccountList()V
    .locals 3

    .prologue
    .line 1428
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1429
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/android/mail/AccountListDialogPicker;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1430
    const-string v1, "accountId"

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1431
    const-string v1, "show_separate_account_only"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1432
    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/mail/MailList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1433
    return-void
.end method

.method private lunchEditAccountSettingList()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1435
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1436
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/android/mail/AccountListDialogPicker;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1437
    const-string v1, "editaccount"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1438
    const-string v1, "show_separate_account_only"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1439
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/mail/MailList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1440
    return-void
.end method

.method private manageULogForPauseAction()V
    .locals 3

    .prologue
    .line 6927
    new-instance v0, Lcom/htc/android/mail/ulog/MULogMgr;

    invoke-direct {v0}, Lcom/htc/android/mail/ulog/MULogMgr;-><init>()V

    .line 6928
    .local v0, ulog:Lcom/htc/android/mail/ulog/MULogMgr;
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->findHashCode()I

    move-result v1

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->tabName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/android/mail/MailList;->findULogName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/ulog/MULogMgr;->addPausedMailListLog(ILjava/lang/String;)V

    .line 6929
    return-void
.end method

.method private manageULogForResumeAction()V
    .locals 3

    .prologue
    .line 6922
    new-instance v0, Lcom/htc/android/mail/ulog/MULogMgr;

    invoke-direct {v0}, Lcom/htc/android/mail/ulog/MULogMgr;-><init>()V

    .line 6923
    .local v0, ulog:Lcom/htc/android/mail/ulog/MULogMgr;
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->findHashCode()I

    move-result v1

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->tabName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/android/mail/MailList;->findULogName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/ulog/MULogMgr;->addResumedMailListLog(ILjava/lang/String;)V

    .line 6924
    return-void
.end method

.method private menuRefreshMail()Z
    .locals 4

    .prologue
    .line 3980
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Mailboxs;->getOutMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v2

    iget-wide v2, v2, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3981
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/android/mail/MailList;->menuRefreshMail(Z)Z

    move-result v0

    .line 3983
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/android/mail/MailList;->menuRefreshMail(Z)Z

    move-result v0

    goto :goto_0
.end method

.method private menuRefreshMail(Z)Z
    .locals 7
    .parameter "resetRetryCount"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3988
    iget-boolean v1, p0, Lcom/htc/android/mail/MailList;->refreshMailing:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/android/mail/MailList;->readMoreMailing:Z

    if-nez v1, :cond_1

    .line 3989
    invoke-static {p0}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3991
    sget-boolean v1, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "airPlane mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/mail/MailList;->airPlane:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3992
    :cond_0
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList;->showDialog(I)V

    .line 4015
    :goto_0
    return v5

    .line 3997
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 3999
    :try_start_0
    sget-object v1, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    const/4 v4, 0x3

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/pim/IEASService;->isSyncSourceEnabled(JI)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4001
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v1, v1, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    invoke-direct {p0, v1}, Lcom/htc/android/mail/MailList;->updateEmptyMessage(I)V

    .line 4002
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList;->showDialog(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4005
    :catch_0
    move-exception v0

    .line 4006
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4009
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget-boolean v1, p0, Lcom/htc/android/mail/MailList;->refreshMailing:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/htc/android/mail/MailList;->readMoreMailing:Z

    if-eqz v1, :cond_5

    .line 4010
    :cond_3
    sget-boolean v1, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "MailList"

    const-string v2, "stopRefreshCheckMoreRequest>2"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4011
    :cond_4
    invoke-direct {p0, v6}, Lcom/htc/android/mail/MailList;->stopRefreshCheckMoreRequest(Z)V

    goto :goto_0

    .line 4014
    :cond_5
    invoke-direct {p0, v6, p1, v5}, Lcom/htc/android/mail/MailList;->refreshMail(ZZZ)V

    goto :goto_0
.end method

.method private moveMarkMailtoFold2(I)V
    .locals 11
    .parameter "which"

    .prologue
    .line 773
    sget-boolean v1, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveMarkMailtoFold2>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    :cond_0
    iget-wide v1, p0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    invoke-static {v1, v2}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v8

    .line 776
    .local v8, account:Lcom/htc/android/mail/Account;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v1

    if-nez v1, :cond_2

    .line 787
    :cond_1
    :goto_0
    return-void

    .line 777
    :cond_2
    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/android/mail/MailList;->long_press_mailboxId:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v9

    .line 778
    .local v9, mailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz v9, :cond_1

    .line 780
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mAdapter:Lcom/htc/android/mail/MoveToAdapter;

    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v8, v9, p1, v2}, Lcom/htc/android/mail/MoveToAdapter;->getToMailbox(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Mailbox;ILandroid/content/Context;)Lcom/htc/android/mail/Mailbox;

    move-result-object v10

    .line 781
    .local v10, toMailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz v10, :cond_1

    .line 783
    new-instance v0, Lcom/htc/android/mail/util/SelectedMailMessages;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SelectedMailMessages;-><init>()V

    .line 784
    .local v0, selectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    iget-wide v1, p0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    iget-wide v3, p0, Lcom/htc/android/mail/MailList;->long_press_mailboxId:J

    iget-wide v5, p0, Lcom/htc/android/mail/MailList;->long_press_id:J

    iget-object v7, p0, Lcom/htc/android/mail/MailList;->long_press_groupId:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/util/SelectedMailMessages;->select(JJJLjava/lang/String;)V

    .line 785
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-wide v3, v10, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/util/SelectedMailMessages;->moveMail(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;J)V

    .line 786
    const/4 v0, 0x0

    .line 787
    goto :goto_0
.end method

.method private notifyChange()V
    .locals 3

    .prologue
    .line 4863
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyChange>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/android/mail/MailList;->mIsInForeground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v2, v2, Lcom/htc/android/mail/MailList$TabInfo;->mNowTokenId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v2, v2, Lcom/htc/android/mail/MailList$TabInfo;->mLoadFinishedTokenId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4864
    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/mail/MailList;->mIsInForeground:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mNowTokenId:I

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v1, v1, Lcom/htc/android/mail/MailList$TabInfo;->mLoadFinishedTokenId:I

    if-eq v0, v1, :cond_1

    .line 4865
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    const/16 v1, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailList;->loadListViewContent(Lcom/htc/android/mail/MailList$TabInfo;I)V

    .line 4867
    :cond_1
    return-void
.end method

.method private outOfOffice(J)V
    .locals 4
    .parameter "accountId"

    .prologue
    .line 4316
    sget-boolean v1, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "out of office: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4317
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1, p0}, Lcom/htc/android/mail/Account;->containsExchange(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4318
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4319
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/android/mail/easclient/OutOfOffice;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4320
    const-string v1, "accountId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4321
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailList;->startActivity(Landroid/content/Intent;)V

    .line 4325
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 4323
    :cond_1
    const-string v1, "MailList"

    const-string v2, "out of office: contains Exchange false"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private pickMail()V
    .locals 4

    .prologue
    .line 2028
    sget-boolean v2, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailList"

    const-string v3, "pickMail>ACTION_GET_CONTENT"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    :cond_0
    const-string v0, "com.android.htccontacts.ACTION_GROUP_CANDIDATE"

    .line 2030
    .local v0, action:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2031
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "group_name"

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getContactGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2032
    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/mail/MailList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2033
    return-void
.end method

.method private preComposeNewMeeting()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x4

    .line 3890
    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    .line 3891
    invoke-static {p0}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v1

    .line 3892
    .local v1, accountPool:Lcom/htc/android/mail/AccountPool;
    invoke-virtual {v1, p0, v7}, Lcom/htc/android/mail/AccountPool;->getAccountCount(Landroid/content/Context;I)I

    move-result v2

    .line 3893
    .local v2, count:I
    if-ne v2, v8, :cond_3

    .line 3894
    invoke-virtual {v1, p0, v7}, Lcom/htc/android/mail/AccountPool;->getAccounts(Landroid/content/Context;I)[Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 3895
    .local v0, account:[Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_1

    .line 3896
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/android/mail/MailList;->composeNewMeeting(J)V

    .line 3911
    .end local v0           #account:[Lcom/htc/android/mail/Account;
    .end local v1           #accountPool:Lcom/htc/android/mail/AccountPool;
    .end local v2           #count:I
    :cond_0
    :goto_0
    return-void

    .line 3898
    .restart local v0       #account:[Lcom/htc/android/mail/Account;
    .restart local v1       #accountPool:Lcom/htc/android/mail/AccountPool;
    .restart local v2       #count:I
    :cond_1
    sget-boolean v3, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "MailList"

    const-string v4, "Can\'t get exchange account"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3899
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->composeNewMail()V

    goto :goto_0

    .line 3901
    .end local v0           #account:[Lcom/htc/android/mail/Account;
    :cond_3
    if-le v2, v8, :cond_4

    .line 3902
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->showComposeNewMeetingDialog()V

    goto :goto_0

    .line 3904
    :cond_4
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->composeNewMail()V

    goto :goto_0

    .line 3907
    .end local v1           #accountPool:Lcom/htc/android/mail/AccountPool;
    .end local v2           #count:I
    :cond_5
    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 3908
    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/android/mail/MailList;->composeNewMeeting(J)V

    goto :goto_0
.end method

.method private readMoreMail()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 3817
    iget-boolean v2, p0, Lcom/htc/android/mail/MailList;->allowReadMore:Z

    if-nez v2, :cond_1

    .line 3845
    :cond_0
    :goto_0
    return-void

    .line 3821
    :cond_1
    invoke-static {p0}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3823
    sget-boolean v2, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "MailList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "airPlane mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/mail/MailList;->airPlane:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3824
    :cond_2
    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/MailList;->showDialog(I)V

    .line 3825
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->updateProgressStatus()V

    goto :goto_0

    .line 3829
    :cond_3
    new-instance v1, Lcom/htc/android/mail/Request;

    invoke-direct {v1}, Lcom/htc/android/mail/Request;-><init>()V

    .line 3830
    .local v1, r:Lcom/htc/android/mail/Request;
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    iput-object v2, v1, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    .line 3831
    iput-boolean v3, v1, Lcom/htc/android/mail/Request;->isWifiActiveMode:Z

    .line 3832
    iput v3, v1, Lcom/htc/android/mail/Request;->messageWhat:I

    .line 3834
    const/4 v2, 0x3

    iput v2, v1, Lcom/htc/android/mail/Request;->command:I

    .line 3835
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3836
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "Mailbox"

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3837
    iput-object v0, v1, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    .line 3838
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/Request;->setAccountId(J)V

    .line 3840
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/htc/android/mail/AbsRequestController;->refreshOrCheckMoreMail(Lcom/htc/android/mail/Request;Z)I

    goto :goto_0
.end method

.method private refreshComplete()V
    .locals 4

    .prologue
    .line 4777
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailList"

    const-string v1, "refreshComplete>>>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4779
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/MailList;->allowReadMore:Z

    .line 4780
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/MailList;->refreshMailing:Z

    .line 4781
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->showDefaultStatus()V

    .line 4782
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->updateMenuItems()V

    .line 4783
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    invoke-direct {p0, v0}, Lcom/htc/android/mail/MailList;->updateEmptyMessage(I)V

    .line 4784
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh complete>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/android/mail/MailList;->mSelectionId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4785
    :cond_1
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "MailList"

    const-string v1, "[ATS][com.htc.android.mail][sync_server][done]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4786
    :cond_2
    return-void
.end method

.method private refreshMail(ZZZ)V
    .locals 7
    .parameter "isAuto"
    .parameter "resetRetryCount"
    .parameter "isManualSync"

    .prologue
    const/4 v6, 0x1

    .line 699
    sget-boolean v2, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshMail>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/android/mail/MailList;->mSelectionId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v4, v4, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/android/mail/MailList;->showNetworkWarning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    :cond_0
    invoke-static {p0}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 702
    iget-boolean v2, p0, Lcom/htc/android/mail/MailList;->showNetworkWarning:Z

    if-eqz v2, :cond_2

    .line 703
    sget-boolean v2, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "MailList"

    const-string v3, "showNetworkWarning return>"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v2, v2, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    invoke-direct {p0, v2}, Lcom/htc/android/mail/MailList;->updateEmptyMessage(I)V

    .line 714
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->updateProgressStatus()V

    .line 715
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->showDefaultStatus()V

    .line 745
    :goto_1
    return-void

    .line 705
    :cond_2
    sget-boolean v2, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "MailList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "airPlane mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/mail/MailList;->airPlane:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :cond_3
    if-nez p1, :cond_1

    .line 709
    iput-boolean v6, p0, Lcom/htc/android/mail/MailList;->showNetworkWarning:Z

    .line 710
    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/MailList;->showDialog(I)V

    goto :goto_0

    .line 719
    :cond_4
    new-instance v1, Lcom/htc/android/mail/Request;

    invoke-direct {v1}, Lcom/htc/android/mail/Request;-><init>()V

    .line 720
    .local v1, r:Lcom/htc/android/mail/Request;
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    iput-object v2, v1, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    .line 721
    iput-boolean v6, v1, Lcom/htc/android/mail/Request;->isWifiActiveMode:Z

    .line 722
    const/4 v2, 0x0

    iput v2, v1, Lcom/htc/android/mail/Request;->messageWhat:I

    .line 723
    iput v6, v1, Lcom/htc/android/mail/Request;->command:I

    .line 725
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 726
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "Mailbox"

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 727
    const-string v2, "isManualSync"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 728
    const-string v2, "resetRetryCount"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 729
    iput-object v0, v1, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    .line 730
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/Request;->setAccountId(J)V

    .line 738
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    invoke-virtual {v2, v1, p1}, Lcom/htc/android/mail/AbsRequestController;->refreshOrCheckMoreMail(Lcom/htc/android/mail/Request;Z)I

    .line 741
    :cond_5
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mBackGroundHandler:Landroid/os/Handler;

    new-instance v3, Lcom/htc/android/mail/util/ResetSyncAlarmRunnable;

    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-direct {v3, v4, v5}, Lcom/htc/android/mail/util/ResetSyncAlarmRunnable;-><init>(Landroid/content/Context;Lcom/htc/android/mail/Account;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private removeRemainFooter()V
    .locals 2

    .prologue
    .line 3024
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3031
    :cond_0
    :goto_0
    return-void

    .line 3028
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mFooter:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3029
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v1, v1, Lcom/htc/android/mail/MailList$TabInfo;->mFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0
.end method

.method private removeSearchServerFooter()V
    .locals 2

    .prologue
    .line 7105
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7112
    :cond_0
    :goto_0
    return-void

    .line 7109
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mFooter:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 7110
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v1, v1, Lcom/htc/android/mail/MailList$TabInfo;->mFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0
.end method

.method private replyAllMailById(JJ)V
    .locals 6
    .parameter "accountId"
    .parameter "id"

    .prologue
    .line 2532
    sget-boolean v3, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MailList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "replyAllMailById: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2533
    :cond_0
    const/4 v2, 0x0

    .line 2534
    .local v2, url:Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mail/messages/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2536
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const-class v4, Lcom/htc/android/mail/ComposeActivity;

    invoke-direct {v1, v3, v2, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 2537
    .local v1, reply_intent:Landroid/content/Intent;
    const-string v3, "cmd"

    const-string v4, "replyall"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2538
    const-string v3, "accountID"

    invoke-virtual {v1, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2539
    const-string v3, "SetOrient"

    const-string v4, "InMail"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2540
    const-string v3, "id"

    invoke-virtual {v1, v3, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2542
    iget-wide v3, p0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    invoke-static {v3, v4}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 2543
    .local v0, account:Lcom/htc/android/mail/Account;
    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->replyWithText()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 2544
    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-static {p0, v3, p3, p4}, Lcom/htc/android/mail/MailCommon;->checkReply(Landroid/content/Context;Ljava/lang/ref/WeakReference;J)V

    .line 2547
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList;->startActivity(Landroid/content/Intent;)V

    .line 2548
    return-void
.end method

.method private restoreNonConfigurationInstance()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2493
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/MailList$NonConfigurationInstance;

    .line 2494
    .local v1, instance:Lcom/htc/android/mail/MailList$NonConfigurationInstance;
    if-nez v1, :cond_1

    .line 2509
    :cond_0
    :goto_0
    return-void

    .line 2496
    :cond_1
    iput-boolean v4, p0, Lcom/htc/android/mail/MailList;->mIsRealoadedByRotating:Z

    .line 2497
    const-string v2, "key_selected_mail_messages"

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailList$NonConfigurationInstance;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/util/SelectedMailMessages;

    iput-object v2, p0, Lcom/htc/android/mail/MailList;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    .line 2498
    const-string v2, "key_selected_mail_groups"

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailList$NonConfigurationInstance;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/util/SelectedMailGroups;

    iput-object v2, p0, Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;

    .line 2500
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    iget v2, v2, Lcom/htc/android/mail/util/SelectedMailMessages;->mCount:I

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;

    iget v2, v2, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    if-lez v2, :cond_3

    .line 2501
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    if-eqz v2, :cond_3

    .line 2502
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    iget v3, v3, Lcom/htc/android/mail/util/SelectedMailMessages;->mCount:I

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/MailListTab;->updateCmdBarButton1Count(I)V

    .line 2503
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v2, v4}, Lcom/htc/android/mail/MailListTab;->setFooterBarAreaVisible(Z)V

    .line 2507
    :cond_3
    const-string v2, "key_cmd_bar_button1_text"

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailList$NonConfigurationInstance;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 2508
    .local v0, cmdBarButton1Text:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v2, v0}, Lcom/htc/android/mail/MailListTab;->setCmdBarButton1Text(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private restoreProperty()V
    .locals 2

    .prologue
    .line 6039
    const-string v0, "AccountId"

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6040
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailList$TabInfo;->restoreSearchWhere()V

    .line 6041
    return-void
.end method

.method private static s_convert(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "s"

    .prologue
    .line 475
    const/4 v3, 0x0

    .line 477
    .local v3, ii:I
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 478
    .local v0, b:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_3

    .line 479
    aget-byte v1, v0, v2

    .line 480
    .local v1, c:B
    const/16 v5, 0xd

    if-eq v1, v5, :cond_0

    const/16 v5, 0xa

    if-ne v1, v5, :cond_1

    :cond_0
    const/16 v1, 0x20

    .line 481
    :cond_1
    const/16 v5, 0x20

    if-ne v1, v5, :cond_2

    if-lez v3, :cond_2

    add-int/lit8 v5, v3, -0x1

    aget-byte v5, v0, v5

    if-ne v5, v1, :cond_2

    .line 478
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 482
    :cond_2
    add-int/lit8 v4, v3, 0x1

    .end local v3           #ii:I
    .local v4, ii:I
    aput-byte v1, v0, v3

    .line 483
    sget v5, Lcom/htc/android/mail/util/SummaryColumnsStore;->PREVIEW_SIZE:I

    if-lt v4, v5, :cond_4

    move v3, v4

    .line 485
    .end local v1           #c:B
    .end local v4           #ii:I
    .restart local v3       #ii:I
    :cond_3
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v5

    .end local v3           #ii:I
    .restart local v1       #c:B
    .restart local v4       #ii:I
    :cond_4
    move v3, v4

    .end local v4           #ii:I
    .restart local v3       #ii:I
    goto :goto_1
.end method

.method private saveAsTask(Ljava/lang/String;J)V
    .locals 6
    .parameter "subject"
    .parameter "id"

    .prologue
    .line 2575
    sget-boolean v3, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MailList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveToTask: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2577
    :cond_0
    move-wide v0, p2

    .line 2578
    .local v0, _id:J
    move-object v2, p1

    .line 2580
    .local v2, _subject:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mBackGroundHandler:Landroid/os/Handler;

    new-instance v4, Lcom/htc/android/mail/MailList$24;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/htc/android/mail/MailList$24;-><init>(Lcom/htc/android/mail/MailList;JLjava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2641
    return-void
.end method

.method private setAccount(J)Lcom/htc/android/mail/Account;
    .locals 3
    .parameter "id"

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    .line 1444
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1453
    :goto_0
    return-object v0

    .line 1446
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getSortBy()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/MailList;->mOriginalSortBy:I

    .line 1448
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getDelStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1449
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account deleting>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/htc/android/mail/Util;->writeAccountCountToPref(Landroid/content/Context;I)V

    .line 1453
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    goto :goto_0
.end method

.method private setBottomBar(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 1066
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->subTitle:Landroid/view/View;

    const v2, 0x7f09010f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b009e

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/MailList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1068
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->subTitle:Landroid/view/View;

    const v2, 0x7f090110

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1069
    .local v0, methodText:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->subTitle:Landroid/view/View;

    const v2, 0x7f090111

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/android/mail/MailList;->ascDescImg:Landroid/widget/ImageView;

    .line 1071
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mSortStrId:[I

    div-int/lit8 v2, p1, 0x2

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1074
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mOrders:[Ljava/lang/String;

    aget-object v1, v1, p1

    const-string v2, "asc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1075
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->ascDescImg:Landroid/widget/ImageView;

    const v2, 0x7f02005d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1079
    :goto_0
    return-void

    .line 1077
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->ascDescImg:Landroid/widget/ImageView;

    const v2, 0x7f02005c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setBoxIndex()V
    .locals 7

    .prologue
    .line 2252
    const/4 v2, 0x0

    .line 2253
    .local v2, index:I
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/android/mail/MailList;->curBoxIndex:I

    .line 2254
    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/Mailbox;

    .line 2255
    .local v0, box:Lcom/htc/android/mail/Mailbox;
    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v3, v3, Lcom/htc/android/mail/Mailbox;->id:J

    iget-wide v5, v0, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 2256
    iput v2, p0, Lcom/htc/android/mail/MailList;->curBoxIndex:I

    .line 2261
    .end local v0           #box:Lcom/htc/android/mail/Mailbox;
    :cond_0
    return-void

    .line 2259
    .restart local v0       #box:Lcom/htc/android/mail/Mailbox;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private setFilterSubTitle(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 7143
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->leftTitle:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 7144
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->subTitle:Landroid/view/View;

    const v2, 0x7f090107

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/htc/android/mail/MailList;->leftTitle:Landroid/widget/LinearLayout;

    .line 7146
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->rightTitle:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    .line 7147
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->subTitle:Landroid/view/View;

    const v2, 0x7f09010e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/htc/android/mail/MailList;->rightTitle:Landroid/widget/LinearLayout;

    .line 7150
    :cond_1
    if-eqz p1, :cond_2

    .line 7151
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/mail/MailList;->mFilterTitleState:Z

    .line 7152
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->leftTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7153
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->rightTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7154
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->folderName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->folderName:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/htc/android/mail/MailList;->getFilterSubTitleLabel(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7162
    :goto_0
    return-void

    .line 7156
    :cond_2
    iput-boolean v3, p0, Lcom/htc/android/mail/MailList;->mFilterTitleState:Z

    .line 7157
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->leftTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7158
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->rightTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7159
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailList$TabInfo;->getMailListTitle()Ljava/lang/String;

    move-result-object v0

    .line 7160
    .local v0, title:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->folderName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setListView(Lcom/htc/android/mail/MailList$TabInfo;)V
    .locals 18
    .parameter "tabInfo"

    .prologue
    .line 6484
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/htc/android/mail/MailList$TabInfo;->mIsExpandListAdapter:Z

    if-nez v3, :cond_3

    .line 6485
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/htc/android/mail/MailList$TabInfo;->mAdapter:Lcom/htc/android/mail/MailList$MailListAdapter;

    if-nez v3, :cond_1

    .line 6486
    new-instance v3, Lcom/htc/android/mail/MailList$MailListAdapter;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v3, v0, v4, v1, v2}, Lcom/htc/android/mail/MailList$MailListAdapter;-><init>(Lcom/htc/android/mail/MailList;Landroid/database/Cursor;Landroid/content/Context;Lcom/htc/android/mail/MailList$TabInfo;)V

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/htc/android/mail/MailList$TabInfo;->mAdapter:Lcom/htc/android/mail/MailList$MailListAdapter;

    .line 6487
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/htc/android/mail/MailList$TabInfo;->mShowUnReadNumber:Z

    if-eqz v3, :cond_0

    .line 6488
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/htc/android/mail/MailList$TabInfo;->mAdapter:Lcom/htc/android/mail/MailList$MailListAdapter;

    new-instance v4, Lcom/htc/android/mail/MailList$MyDataSetObserver;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lcom/htc/android/mail/MailList$MyDataSetObserver;-><init>(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$TabInfo;)V

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/MailList$MailListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 6490
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/htc/android/mail/MailList$TabInfo;->mAdapter:Lcom/htc/android/mail/MailList$MailListAdapter;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6491
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/htc/android/mail/MailList$TabInfo;->mIsInvalidate:Z

    .line 6543
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/htc/android/mail/MailList$TabInfo;->sortColumn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/Account;->setSortColumn(Ljava/lang/String;)V

    .line 6544
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/htc/android/mail/MailList$TabInfo;->sortOrder:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/Account;->setSortOrder(Ljava/lang/String;)V

    .line 6546
    move-object/from16 v0, p1

    iget v3, v0, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/android/mail/MailList;->showListView(I)V

    .line 6547
    invoke-virtual/range {p0 .. p1}, Lcom/htc/android/mail/MailList;->setMailListTop(Lcom/htc/android/mail/MailList$TabInfo;)V

    .line 6549
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/htc/android/mail/MailList$TabInfo;->mIsQuickLoadStart:Z

    if-nez v3, :cond_7

    .line 6550
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/htc/android/mail/MailList$TabInfo;->mIsQuickLoadStart:Z

    .line 6551
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/MailList;->showLoadMessages(Lcom/htc/android/mail/MailList$TabInfo;)V

    .line 6552
    const/16 v15, 0xa

    .line 6553
    .local v15, loadingType:I
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/htc/android/mail/MailList$TabInfo;->mIsThreadTab:Z

    if-eqz v3, :cond_2

    .line 6554
    const/16 v15, 0x14

    .line 6556
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/htc/android/mail/MailList;->loadListViewContent(Lcom/htc/android/mail/MailList$TabInfo;I)V

    .line 6567
    .end local v15           #loadingType:I
    :goto_1
    return-void

    .line 6494
    :cond_3
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    if-nez v3, :cond_1

    .line 6496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;

    const v4, 0x1040419

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/MailList;->mExpandAlphabet:Ljava/lang/String;

    .line 6498
    new-instance v3, Lcom/htc/android/mail/MailConversationExpandListAdapter;

    const/4 v5, 0x0

    const v6, 0x7f03000e

    const v7, 0x7f03000e

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/MailList;->mExpandAlphabet:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/android/mail/MailList;->mExNameIdx:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/android/mail/MailList;->expandAlphabetType:I

    move-object/from16 v4, p0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-direct/range {v3 .. v13}, Lcom/htc/android/mail/MailConversationExpandListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;IILcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$TabInfo;Lcom/htc/android/mail/util/SelectedMailGroups;Ljava/lang/CharSequence;II)V

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    .line 6508
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailList;->mAccountCounts:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_5

    const/16 v16, 0x1

    .line 6509
    .local v16, showAccountIndicator:Z
    :goto_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->setShowAccountIndicator(Z)V

    .line 6510
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->setAccountId(J)V

    .line 6511
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v4, v4, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->setMailboxId(J)V

    .line 6512
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v3, v3, Lcom/htc/android/mail/Mailbox;->id:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/mail/Mailboxs;->getDefaultMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v5

    iget-wide v5, v5, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    .line 6513
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/mail/Mailboxs;->getSentMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v4

    iget-wide v4, v4, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->setSentMailboxId(J)V

    .line 6517
    :goto_3
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/htc/android/mail/MailList$TabInfo;->mShowUnReadNumber:Z

    if-eqz v3, :cond_4

    .line 6518
    new-instance v3, Lcom/htc/android/mail/MailList$MyDataSetObserver;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/htc/android/mail/MailList$MyDataSetObserver;-><init>(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$TabInfo;)V

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/htc/android/mail/MailList$TabInfo;->mMyDataSetObserver:Lcom/htc/android/mail/MailList$MyDataSetObserver;

    .line 6519
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/htc/android/mail/MailList$TabInfo;->mMyDataSetObserver:Lcom/htc/android/mail/MailList$MyDataSetObserver;

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 6521
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcExpandableListView;

    .line 6523
    .local v14, expandListView:Lcom/htc/widget/HtcExpandableListView;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 6524
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/htc/android/mail/MailList$TabInfo;->mIsInvalidate:Z

    .line 6527
    move-object/from16 v17, p1

    .line 6529
    .local v17, tabInfo_:Lcom/htc/android/mail/MailList$TabInfo;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    iget-object v3, v3, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mIndexer:Lcom/htc/android/mail/MailAlphabetIndexer;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcExpandableListView;->setSections([Ljava/lang/Object;)V

    .line 6530
    new-instance v3, Lcom/htc/android/mail/MailList$36;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1}, Lcom/htc/android/mail/MailList$36;-><init>(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$TabInfo;)V

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcExpandableListView;->setPositionMap(Lcom/htc/widget/PositionMap;)V

    .line 6535
    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcExpandableListView;->setFastScrollEnabled(Z)V

    goto/16 :goto_0

    .line 6508
    .end local v14           #expandListView:Lcom/htc/widget/HtcExpandableListView;
    .end local v16           #showAccountIndicator:Z
    .end local v17           #tabInfo_:Lcom/htc/android/mail/MailList$TabInfo;
    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 6515
    .restart local v16       #showAccountIndicator:Z
    :cond_6
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->setSentMailboxId(J)V

    goto :goto_3

    .line 6558
    .end local v16           #showAccountIndicator:Z
    :cond_7
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/htc/android/mail/MailList$TabInfo;->mIsQuickLoadComplete:Z

    if-nez v3, :cond_8

    .line 6559
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/MailList;->showLoadMessages(Lcom/htc/android/mail/MailList$TabInfo;)V

    .line 6565
    :goto_4
    const/16 v3, 0x1e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/htc/android/mail/MailList;->loadListViewContent(Lcom/htc/android/mail/MailList$TabInfo;I)V

    goto/16 :goto_1

    .line 6561
    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/MailList;->hideLoadMessage(Lcom/htc/android/mail/MailList$TabInfo;)V

    .line 6562
    move-object/from16 v0, p1

    iget v3, v0, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/android/mail/MailList;->updateEmptyMessage(I)V

    goto :goto_4
.end method

.method private setMultiSelectionMenu(Landroid/view/Menu;)V
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3678
    iget-object v3, p0, Lcom/htc/android/mail/MailList;->allMenuID:[I

    array-length v2, v3

    .line 3680
    .local v2, menuSize:I
    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v3, v3, Lcom/htc/android/mail/MailListTab;->mFooterBarArea:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 3681
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 3682
    iget-object v3, p0, Lcom/htc/android/mail/MailList;->allMenuID:[I

    aget v3, v3, v0

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 3683
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 3684
    iget-object v3, p0, Lcom/htc/android/mail/MailList;->allMenuID:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_0

    .line 3692
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3681
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3686
    :pswitch_0
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 3689
    :pswitch_1
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 3698
    .end local v0           #i:I
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v2, :cond_3

    .line 3699
    iget-object v3, p0, Lcom/htc/android/mail/MailList;->allMenuID:[I

    aget v3, v3, v0

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 3700
    .restart local v1       #item:Landroid/view/MenuItem;
    if-eqz v1, :cond_2

    .line 3701
    iget-object v3, p0, Lcom/htc/android/mail/MailList;->allMenuID:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_1

    .line 3709
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3698
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3703
    :pswitch_2
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 3706
    :pswitch_3
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 3717
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_3
    return-void

    .line 3684
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3701
    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setParent()V
    .locals 1

    .prologue
    .line 6640
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 6641
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 6642
    check-cast v0, Lcom/htc/android/mail/MailListTab;

    .end local v0           #activity:Landroid/app/Activity;
    iput-object v0, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    .line 6644
    :cond_0
    return-void
.end method

.method private showComposeNewMeetingDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2965
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2966
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/android/mail/AccountListDialogPicker;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2967
    const-string v1, "accountId"

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2968
    const-string v1, "show_separate_account_only"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2969
    const-string v1, "show_exchange_only"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2971
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/mail/MailList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2972
    return-void
.end method

.method private showListView(I)V
    .locals 3
    .parameter "tabViewId"

    .prologue
    .line 4839
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showListView>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4840
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 4841
    return-void
.end method

.method private showLoadMessages(Lcom/htc/android/mail/MailList$TabInfo;)V
    .locals 4
    .parameter "tabInfo"

    .prologue
    const/4 v3, 0x0

    .line 5671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b01fe

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/MailList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5672
    .local v0, txt:Ljava/lang/String;
    const v1, 0x7f0900e7

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5673
    const v1, 0x7f0900e6

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5674
    const v1, 0x102000d

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5675
    return-void
.end method

.method private showOutOfOfficeDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2955
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2956
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/android/mail/AccountListDialogPicker;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2957
    const-string v1, "accountId"

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2958
    const-string v1, "show_separate_account_only"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2959
    const-string v1, "show_exchange_only"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2961
    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/mail/MailList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2962
    return-void
.end method

.method private showRefreshAnim(Z)V
    .locals 6
    .parameter "flag"

    .prologue
    .line 1172
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showRefreshAnim>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/mail/MailList;->mNeedInit:Z

    if-eqz v0, :cond_2

    .line 1192
    :cond_1
    :goto_0
    return-void

    .line 1176
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_3

    .line 1177
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->mTimer:Ljava/util/Timer;

    .line 1178
    new-instance v0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;-><init>(Lcom/htc/android/mail/MailList;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->mRefreshAni:Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;

    .line 1179
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mRefreshAni:Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1182
    :cond_3
    if-eqz p1, :cond_4

    .line 1183
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mRefreshAni:Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->start()V

    goto :goto_0

    .line 1185
    :cond_4
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mRefreshAni:Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;

    if-eqz v0, :cond_1

    .line 1186
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mRefreshAni:Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->stop()V

    goto :goto_0
.end method

.method private showRefreshStatus()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 5661
    iget-boolean v0, p0, Lcom/htc/android/mail/MailList;->refreshMailing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/android/mail/MailList;->readMoreMailing:Z

    if-nez v0, :cond_0

    .line 5662
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/android/mail/MailList;->showRefreshAnim(Z)V

    .line 5663
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->progressSubject:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5664
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->progressSubject:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5665
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->updateLable:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5666
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->UpdateTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5668
    :cond_0
    return-void
.end method

.method private showTagList()V
    .locals 4

    .prologue
    .line 1421
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1422
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/android/mail/TagDialogPicker;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1423
    const-string v1, "tagId"

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v2, v2, Lcom/htc/android/mail/MailListTab;->mTag:Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;

    iget-wide v2, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1424
    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/mail/MailList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1425
    return-void
.end method

.method private sortMail(ILcom/htc/android/mail/MailList$TabInfo;)V
    .locals 7
    .parameter "sortByIndex"
    .parameter "tabInfo"

    .prologue
    .line 6588
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailList"

    const-string v1, "sortMail>>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6594
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/AbsRequestController;->broadcastSetSortComplete(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)V

    .line 6596
    :cond_1
    div-int/lit8 v6, p1, 0x2

    .line 6598
    .local v6, sortCol:I
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v1, "MailList"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "now box is out box ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-boolean v0, v0, Lcom/htc/android/mail/Mailbox;->showSender:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6600
    :cond_2
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "################################use:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6601
    :cond_3
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sortCol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6603
    :cond_4
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mColumns:[Ljava/lang/String;

    aget-object v1, v0, v6

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mOrders:[Ljava/lang/String;

    aget-object v2, v0, p1

    const/4 v3, 0x0

    const/16 v4, 0x28

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/MailList;->startAsyncQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/htc/android/mail/MailList$TabInfo;)V

    .line 6604
    return-void

    .line 6598
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startAsyncQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/htc/android/mail/MailList$TabInfo;)V
    .locals 8
    .parameter "column"
    .parameter "order"
    .parameter "limit"
    .parameter "token"
    .parameter "tabInfo"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 6418
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAsyncQuery>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6419
    :cond_0
    iput-boolean v4, p5, Lcom/htc/android/mail/MailList$TabInfo;->mIsInvalidate:Z

    .line 6421
    if-nez p3, :cond_1

    .line 6422
    const-string p3, ""

    .line 6424
    :cond_1
    if-eqz p2, :cond_4

    const-string v0, "desc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6425
    iput-boolean v3, p0, Lcom/htc/android/mail/MailList;->sortColInvert:Z

    .line 6430
    :goto_0
    iget-boolean v0, p5, Lcom/htc/android/mail/MailList$TabInfo;->mIsExpandListAdapter:Z

    if-nez v0, :cond_a

    .line 6431
    const-string v0, "_internaldate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6432
    iput v3, p0, Lcom/htc/android/mail/MailList;->alphabetType:I

    .line 6458
    :goto_1
    iput-object p1, p5, Lcom/htc/android/mail/MailList$TabInfo;->sortColumn:Ljava/lang/String;

    .line 6459
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v1, p5, Lcom/htc/android/mail/MailList$TabInfo;->sortColumn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/Account;->setSortColumn(Ljava/lang/String;)V

    .line 6460
    iput-object p2, p5, Lcom/htc/android/mail/MailList$TabInfo;->sortOrder:Ljava/lang/String;

    .line 6461
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v1, p5, Lcom/htc/android/mail/MailList$TabInfo;->sortOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/Account;->setSortOrder(Ljava/lang/String;)V

    .line 6464
    const/16 v0, 0x32

    if-ne p4, v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mQueryHandler:Lcom/htc/android/mail/MailList$QueryHandler;

    invoke-virtual {v0, p4}, Lcom/htc/android/mail/MailList$QueryHandler;->cancelOperation(I)V

    .line 6466
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    sget-object v0, Lcom/htc/android/mail/AbsRequestController;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    invoke-virtual {v0}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->clone()Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    move-result-object v0

    iput-object v0, p5, Lcom/htc/android/mail/MailList$TabInfo;->mPreMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    .line 6467
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mQueryHandler:Lcom/htc/android/mail/MailList$QueryHandler;

    iget-object v1, p5, Lcom/htc/android/mail/MailList$TabInfo;->mPreMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailList$QueryHandler;->setMessageStatusMap(Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;)V

    .line 6468
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tabInfo.Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p5}, Lcom/htc/android/mail/MailList$TabInfo;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6469
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mQueryHandler:Lcom/htc/android/mail/MailList$QueryHandler;

    invoke-virtual {p5}, Lcom/htc/android/mail/MailList$TabInfo;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p5}, Lcom/htc/android/mail/MailList$TabInfo;->getProjection()[Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1, p2}, Lcom/htc/android/mail/MailList$TabInfo;->getSortOrder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move v1, p4

    move-object v2, p5

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/MailList$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 6471
    return-void

    .line 6427
    :cond_4
    iput-boolean v4, p0, Lcom/htc/android/mail/MailList;->sortColInvert:Z

    goto/16 :goto_0

    .line 6433
    :cond_5
    const-string v0, "_importance"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6434
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/mail/MailList;->alphabetType:I

    goto/16 :goto_1

    .line 6435
    :cond_6
    const-string v0, "_Subject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6436
    iput v6, p0, Lcom/htc/android/mail/MailList;->alphabetType:I

    goto/16 :goto_1

    .line 6437
    :cond_7
    sget-object v0, Lcom/htc/android/mail/MailList;->FromQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6438
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/android/mail/MailList;->alphabetType:I

    goto/16 :goto_1

    .line 6439
    :cond_8
    const-string v0, "_messagesize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6440
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/android/mail/MailList;->alphabetType:I

    goto/16 :goto_1

    .line 6442
    :cond_9
    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknow alpha type>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6447
    :cond_a
    const-string v0, "_internaldate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6448
    iput v3, p0, Lcom/htc/android/mail/MailList;->expandAlphabetType:I

    goto/16 :goto_1

    .line 6449
    :cond_b
    const-string v0, "_Subject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 6450
    iput v6, p0, Lcom/htc/android/mail/MailList;->expandAlphabetType:I

    goto/16 :goto_1

    .line 6452
    :cond_c
    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknow expand alpha type>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private startQuery(Ljava/lang/String;ILcom/htc/android/mail/MailList$TabInfo;)V
    .locals 8
    .parameter "limit"
    .parameter "token"
    .parameter "tabInfo"

    .prologue
    .line 6474
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getSortBy()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/MailList$TabInfo;->getSortItemsIndexByIndex(Lcom/htc/android/mail/Mailbox;I)I

    move-result v6

    .line 6475
    .local v6, sortByIndex:I
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6476
    :cond_0
    div-int/lit8 v7, v6, 0x2

    .line 6478
    .local v7, sortMethod:I
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mColumns:[Ljava/lang/String;

    aget-object v1, v0, v7

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mOrders:[Ljava/lang/String;

    aget-object v2, v0, v6

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/MailList;->startAsyncQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/htc/android/mail/MailList$TabInfo;)V

    .line 6479
    return-void
.end method

.method private stopAllRequest()V
    .locals 4

    .prologue
    .line 4750
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/AbsRequestController;->removeRequest(JLjava/lang/ref/WeakReference;)V

    .line 4751
    return-void
.end method

.method private stopRefreshCheckMoreRequest(Z)V
    .locals 4
    .parameter "IsOnDestroy"

    .prologue
    .line 4754
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailList"

    const-string v1, "stopRefreshCheckMoreRequest>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4755
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    if-eqz v0, :cond_1

    .line 4756
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/AbsRequestController;->removeRequest(JI)V

    .line 4757
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v1

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/AbsRequestController;->removeRequest(JI)V

    .line 4761
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/AbsRequestController;->getRefreshCheckMoreNum(J)I

    move-result v0

    if-gtz v0, :cond_1

    .line 4762
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/htc/android/mail/server/ExchangeServer;->cancelBackgroundSync(J)V

    .line 4765
    :cond_1
    if-nez p1, :cond_3

    .line 4766
    iget-boolean v0, p0, Lcom/htc/android/mail/MailList;->refreshMailing:Z

    if-eqz v0, :cond_2

    .line 4767
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->refreshComplete()V

    .line 4769
    :cond_2
    iget-boolean v0, p0, Lcom/htc/android/mail/MailList;->readMoreMailing:Z

    if-eqz v0, :cond_3

    .line 4770
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->checkMoreComplete()V

    .line 4773
    :cond_3
    return-void
.end method

.method private stopThenRefreshMail()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 694
    invoke-direct {p0, v0}, Lcom/htc/android/mail/MailList;->stopRefreshCheckMoreRequest(Z)V

    .line 695
    invoke-direct {p0, v0, v0, v0}, Lcom/htc/android/mail/MailList;->refreshMail(ZZZ)V

    .line 696
    return-void
.end method

.method private updateActionBarUnreadNumView(I)V
    .locals 1
    .parameter "num"

    .prologue
    .line 4924
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    if-nez v0, :cond_1

    .line 4929
    :cond_0
    :goto_0
    return-void

    .line 4928
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/widget/MailActionBar;->setDropDownUnreadNumBubble(I)V

    goto :goto_0
.end method

.method private updateEmptyMessage(I)V
    .locals 3
    .parameter "tabViewId"

    .prologue
    .line 4790
    iget-boolean v0, p0, Lcom/htc/android/mail/MailList;->refreshMailing:Z

    if-eqz v0, :cond_1

    .line 4836
    :cond_0
    :goto_0
    return-void

    .line 4792
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

    if-nez v0, :cond_2

    .line 4793
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailList"

    const-string v1, "updateEmptyMessage null>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4796
    :cond_2
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEmptyMessage>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4797
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mRequestHandler:Lcom/htc/android/mail/MailList$RequestHandler;

    new-instance v1, Lcom/htc/android/mail/MailList$34;

    invoke-direct {v1, p0, p1}, Lcom/htc/android/mail/MailList$34;-><init>(Lcom/htc/android/mail/MailList;I)V

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailList$RequestHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updateMailRemain()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 3004
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-boolean v1, v1, Lcom/htc/android/mail/MailList$TabInfo;->mHaveFooter:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1, p0}, Lcom/htc/android/mail/Account;->getFetchMailType(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 3017
    :cond_0
    :goto_0
    return-void

    .line 3007
    :cond_1
    sget-boolean v1, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "MailList"

    const-string v2, "updateMailRemain>>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3013
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v0

    .line 3015
    .local v0, mDeviceCount:I
    new-instance v1, Lcom/htc/android/mail/MailList$UpdateFooterTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/android/mail/MailList$UpdateFooterTask;-><init>(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$1;)V

    new-array v2, v3, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailList$UpdateFooterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3016
    sget-boolean v1, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailList"

    const-string v2, "updateMailRemain<<"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateMenuItems()V
    .locals 4

    .prologue
    const/16 v3, 0x14

    .line 3662
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 3674
    :goto_0
    return-void

    .line 3665
    :cond_0
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMenuItems>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/android/mail/MailList;->refreshMailing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/android/mail/MailList;->readMoreMailing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3666
    :cond_1
    iget-boolean v0, p0, Lcom/htc/android/mail/MailList;->refreshMailing:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/android/mail/MailList;->readMoreMailing:Z

    if-eqz v0, :cond_3

    .line 3667
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0b0097

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080339

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 3669
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0b0096

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208033b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateProgressStatus()V
    .locals 1

    .prologue
    .line 3081
    new-instance v0, Lcom/htc/android/mail/MailList$27;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailList$27;-><init>(Lcom/htc/android/mail/MailList;)V

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3088
    return-void
.end method

.method private updateSearchServer()V
    .locals 2

    .prologue
    .line 7060
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-boolean v0, v0, Lcom/htc/android/mail/MailListTab;->mIsMailSearch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    if-nez v0, :cond_0

    .line 7061
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mSearchKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7062
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->addSearchServerFooter()V

    .line 7067
    :cond_0
    :goto_0
    return-void

    .line 7064
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->removeSearchServerFooter()V

    goto :goto_0
.end method

.method private updateTabTitle(Lcom/htc/android/mail/MailList$TabInfo;)V
    .locals 3
    .parameter "tabInfo"

    .prologue
    .line 1377
    if-nez p1, :cond_0

    .line 1383
    :goto_0
    return-void

    .line 1378
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->folderName:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 1379
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->subTitle:Landroid/view/View;

    const v2, 0x7f09010d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/android/mail/MailList;->folderName:Landroid/widget/TextView;

    .line 1381
    :cond_1
    invoke-virtual {p1}, Lcom/htc/android/mail/MailList$TabInfo;->getMailListTitle()Ljava/lang/String;

    move-result-object v0

    .line 1382
    .local v0, title:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->folderName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateUnreadNumber(Lcom/htc/android/mail/MailList$TabInfo;)V
    .locals 2
    .parameter "tabInfo"

    .prologue
    .line 4912
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mBackGroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/android/mail/MailList$35;

    invoke-direct {v1, p0, p1}, Lcom/htc/android/mail/MailList$35;-><init>(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$TabInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4921
    return-void
.end method


# virtual methods
.method public composeNewMail()V
    .locals 3

    .prologue
    .line 3848
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3849
    .local v0, compose_intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3850
    const-string v1, "cmd"

    const-string v2, "compose"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3851
    const-string v1, "accountID"

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3852
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailList;->startActivity(Landroid/content/Intent;)V

    .line 3853
    return-void
.end method

.method public composeNewMailToGroup()V
    .locals 2

    .prologue
    .line 3886
    new-instance v0, Lcom/htc/android/mail/MailList$GetImportantPrimaryEmailTask;

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mRequestHandler:Lcom/htc/android/mail/MailList$RequestHandler;

    invoke-direct {v0, p0, v1}, Lcom/htc/android/mail/MailList$GetImportantPrimaryEmailTask;-><init>(Lcom/htc/android/mail/MailList;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailList$GetImportantPrimaryEmailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3887
    return-void
.end method

.method public composeNewMeeting(J)V
    .locals 10
    .parameter "accountId"

    .prologue
    .line 3914
    sget-boolean v7, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "MailList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "composeNewMeeting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3923
    :cond_0
    invoke-static {p0}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v1

    .line 3924
    .local v1, accountPool:Lcom/htc/android/mail/AccountPool;
    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7, p1, p2}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 3925
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_2

    .line 3926
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.EDIT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3927
    .local v6, intent:Landroid/content/Intent;
    const-string v7, "com.htc.calendar"

    const-string v8, "com.htc.calendar.EditEvent"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3928
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/htc/android/mail/meeting/MeetingUtil;->adjustStartTime(J)J

    move-result-wide v2

    .line 3929
    .local v2, begin:J
    const-wide/32 v7, 0x36ee80

    add-long v4, v2, v7

    .line 3930
    .local v4, end:J
    const-string v7, "organizerAddr"

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3931
    const-string v7, "beginTime"

    invoke-virtual {v6, v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3932
    const-string v7, "endTime"

    invoke-virtual {v6, v7, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3933
    invoke-virtual {p0, v6}, Lcom/htc/android/mail/MailList;->startActivity(Landroid/content/Intent;)V

    .line 3937
    .end local v2           #begin:J
    .end local v4           #end:J
    .end local v6           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 3935
    :cond_2
    sget-boolean v7, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "MailList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "composeNewMeeting: account null: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 4336
    sget-boolean v2, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchKeyEvent: action> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4337
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v2, v2, Lcom/htc/android/mail/MailListTab;->mFooterBarArea:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 4338
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x15

    if-ne v2, v3, :cond_2

    .line 4377
    :cond_1
    :goto_0
    return v1

    .line 4341
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x16

    if-eq v2, v3, :cond_1

    .line 4345
    :cond_3
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_5

    .line 4346
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    .line 4347
    .local v0, listview:Lcom/htc/widget/HtcListView;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x14

    if-eq v1, v2, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_5

    .line 4352
    :cond_4
    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 4377
    .end local v0           #listview:Lcom/htc/widget/HtcListView;
    :cond_5
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public emptyFolder()V
    .locals 5

    .prologue
    .line 3941
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

    invoke-virtual {v0}, Lcom/htc/android/mail/database/AbstractMailCursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/Account;->askBeforeDelete(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3942
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailList;->showDialog(I)V

    .line 3947
    :goto_0
    return-void

    .line 3945
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v3, v3, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/AbsRequestController;->emptyMailbox(JJ)V

    goto :goto_0
.end method

.method findExpandId(Landroid/database/Cursor;)V
    .locals 8
    .parameter "cursor"

    .prologue
    .line 5685
    sget-boolean v5, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "MailList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findExpandId>new:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v7, v7, Lcom/htc/android/mail/MailListTab;->selected_group:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5686
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcExpandableListView;

    .line 5687
    .local v3, expandListView:Lcom/htc/widget/HtcExpandableListView;
    if-nez v3, :cond_2

    .line 5688
    sget-boolean v5, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "MailList"

    const-string v6, "expandListView null return>"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5717
    :cond_1
    :goto_0
    return-void

    .line 5691
    :cond_2
    invoke-virtual {v3}, Lcom/htc/widget/HtcExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    .line 5692
    .local v1, adapter:Landroid/widget/ExpandableListAdapter;
    if-nez v1, :cond_3

    .line 5693
    sget-boolean v5, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "MailList"

    const-string v6, "adpter null>"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5696
    :cond_3
    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v0, v5, Lcom/htc/android/mail/MailList$TabInfo;->mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

    .line 5697
    .local v0, absMailCursor:Lcom/htc/android/mail/database/AbstractMailCursor;
    if-nez v0, :cond_4

    .line 5698
    sget-boolean v5, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "MailList"

    const-string v6, "mc null return>"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5701
    :cond_4
    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v5, v5, Lcom/htc/android/mail/MailListTab;->selected_group:Ljava/lang/String;

    if-eqz v5, :cond_7

    move-object v4, v0

    .line 5702
    check-cast v4, Lcom/htc/android/mail/database/ConversationGroupCursor;

    .line 5704
    .local v4, groupCursor:Lcom/htc/android/mail/database/ConversationGroupCursor;
    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-wide v5, v5, Lcom/htc/android/mail/MailListTab;->selected_group_account:J

    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v7, v7, Lcom/htc/android/mail/MailListTab;->selected_group:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/android/mail/database/ConversationGroupCursor;->getPositionByGroup(JLjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/htc/android/mail/MailList;->expand_group_position:I

    .line 5706
    invoke-virtual {v0}, Lcom/htc/android/mail/database/AbstractMailCursor;->getPosition()I

    move-result v2

    .line 5707
    .local v2, curPos:I
    iget v5, p0, Lcom/htc/android/mail/MailList;->expand_group_position:I

    invoke-virtual {v0, v5}, Lcom/htc/android/mail/database/AbstractMailCursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5708
    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-wide v5, v5, Lcom/htc/android/mail/MailListTab;->selected_group_account:J

    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v7, v7, Lcom/htc/android/mail/MailListTab;->selected_group:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/android/mail/database/ConversationGroupCursor;->getGroupCountByGroup(JLjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/htc/android/mail/MailList;->selGroupItemCount:I

    .line 5712
    :cond_5
    :goto_1
    invoke-virtual {v0, v2}, Lcom/htc/android/mail/database/AbstractMailCursor;->moveToPosition(I)Z

    .line 5713
    sget-boolean v5, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "MailList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expand_group_position>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/android/mail/MailList;->expand_group_position:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/android/mail/MailList;->selGroupItemCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5710
    :cond_6
    sget-boolean v5, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "MailList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mc move fail>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/android/mail/MailList;->expand_group_position:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5715
    .end local v2           #curPos:I
    .end local v4           #groupCursor:Lcom/htc/android/mail/database/ConversationGroupCursor;
    :cond_7
    sget-boolean v5, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "MailList"

    const-string v6, "mParent.selected_group -1>"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getExcludeFolders()[I
    .locals 1

    .prologue
    .line 690
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getListView()Lcom/htc/widget/HtcListView;
    .locals 2

    .prologue
    .line 2203
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-boolean v1, v1, Lcom/htc/android/mail/MailList$TabInfo;->mIsThreadTab:Z

    if-eqz v1, :cond_0

    .line 2204
    const v1, 0x7f0900e9

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    .line 2207
    .local v0, list:Lcom/htc/widget/HtcListView;
    :goto_0
    return-object v0

    .line 2206
    .end local v0           #list:Lcom/htc/widget/HtcListView;
    :cond_0
    const v1, 0x7f0900e8

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    .restart local v0       #list:Lcom/htc/widget/HtcListView;
    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 4331
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public implDelMarkMail()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2090
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v1, v2, Lcom/htc/android/mail/MailList$TabInfo;->mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

    .line 2091
    .local v1, mCursor:Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 2092
    const-string v2, "MailList"

    const-string v3, "impDelMarkMail cursor null>"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    :cond_0
    :goto_0
    return-void

    .line 2095
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 2096
    .local v0, cursorCount:I
    if-nez v0, :cond_2

    .line 2097
    const-string v2, "MailList"

    const-string v3, "impDelMarkMail cursorCount  0"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2100
    :cond_2
    sget-boolean v2, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "MailList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "impDelMarkMail>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2101
    :cond_3
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v2, v2, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 2102
    sget-boolean v2, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "MailList"

    const-string v3, "DelMark>thread"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    :cond_4
    new-instance v2, Lcom/htc/android/mail/MailList$GroupBatchTask;

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mRequestHandler:Lcom/htc/android/mail/MailList$RequestHandler;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/android/mail/MailList$GroupBatchTask;-><init>(Lcom/htc/android/mail/MailList;Landroid/os/Handler;I)V

    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/MailList$GroupBatchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 2105
    :cond_5
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v2, v2, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6

    .line 2106
    sget-boolean v2, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailList"

    const-string v3, "DelMark>group"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2109
    :cond_6
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/mail/util/SelectedMailMessages;->deleteMail(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;)V

    .line 2110
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v2, v5}, Lcom/htc/android/mail/MailListTab;->setFooterBarAreaVisible(Z)V

    goto :goto_0
.end method

.method public implSetReadMail()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2066
    iget-object v4, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v1, v4, Lcom/htc/android/mail/MailList$TabInfo;->mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

    .line 2067
    .local v1, mCursor:Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 2068
    const-string v2, "MailList"

    const-string v3, "impSetReadMail cursor null>"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2087
    :cond_0
    :goto_0
    return-void

    .line 2071
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 2072
    .local v0, cursorCount:I
    if-nez v0, :cond_2

    .line 2073
    const-string v2, "MailList"

    const-string v3, "impSetReadMail cursorCount  0"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2076
    :cond_2
    sget-boolean v4, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "MailList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "impSetReadMail>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/android/mail/MailList;->setBatchRead:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    :cond_3
    iget-object v4, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v4, v4, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 2078
    sget-boolean v2, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "MailList"

    const-string v4, "SetReadMail>thread"

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2079
    :cond_4
    new-instance v2, Lcom/htc/android/mail/MailList$GroupBatchTask;

    iget-object v4, p0, Lcom/htc/android/mail/MailList;->mRequestHandler:Lcom/htc/android/mail/MailList$RequestHandler;

    invoke-direct {v2, p0, v4, v3}, Lcom/htc/android/mail/MailList$GroupBatchTask;-><init>(Lcom/htc/android/mail/MailList;Landroid/os/Handler;I)V

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/MailList$GroupBatchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 2081
    :cond_5
    iget-object v4, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v4, v4, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_6

    .line 2082
    sget-boolean v2, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailList"

    const-string v3, "SetReadMail>group"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2085
    :cond_6
    iget-object v4, p0, Lcom/htc/android/mail/MailList;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget v7, p0, Lcom/htc/android/mail/MailList;->setBatchRead:I

    if-eq v7, v2, :cond_7

    :goto_1
    invoke-virtual {v4, v5, v6, v2}, Lcom/htc/android/mail/util/SelectedMailMessages;->setReadStatus(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;Z)V

    .line 2086
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/MailListTab;->setFooterBarAreaVisible(Z)V

    goto :goto_0

    :cond_7
    move v2, v3

    .line 2085
    goto :goto_1
.end method

.method public moveBatchMail2()V
    .locals 5

    .prologue
    .line 765
    new-instance v1, Lcom/htc/android/mail/MoveToAdapter;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/htc/android/mail/MoveToAdapter;-><init>(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Mailbox;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/android/mail/MailList;->mAdapter:Lcom/htc/android/mail/MoveToAdapter;

    .line 766
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 767
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0b014a

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mAdapter:Lcom/htc/android/mail/MoveToAdapter;

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->confirmBatchMoveMail:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 769
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mMailDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

    invoke-static {v1, v0}, Lcom/htc/android/mail/util/MailDialogManager;->show(Lcom/htc/android/mail/util/MailDialogManager;Lcom/htc/widget/HtcAlertDialog$Builder;)Lcom/htc/widget/HtcAlertDialog;

    .line 770
    return-void
.end method

.method public moveMarkMail2(Lcom/htc/android/mail/MailMessage;)V
    .locals 6
    .parameter "mailMessage"

    .prologue
    .line 748
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 749
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v3, 0x7f0b014a

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 751
    iget-wide v3, p1, Lcom/htc/android/mail/MailMessage;->accountId:J

    invoke-static {v3, v4}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 752
    .local v0, account:Lcom/htc/android/mail/Account;
    if-nez v0, :cond_0

    .line 763
    :goto_0
    return-void

    .line 753
    :cond_0
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v3

    iget-wide v4, p1, Lcom/htc/android/mail/MailMessage;->mailBoxId:J

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v2

    .line 755
    .local v2, mailbox:Lcom/htc/android/mail/Mailbox;
    new-instance v3, Lcom/htc/android/mail/MoveToAdapter;

    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v0, v2, v4}, Lcom/htc/android/mail/MoveToAdapter;-><init>(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Mailbox;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/android/mail/MailList;->mAdapter:Lcom/htc/android/mail/MoveToAdapter;

    .line 756
    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mAdapter:Lcom/htc/android/mail/MoveToAdapter;

    new-instance v4, Lcom/htc/android/mail/MailList$2;

    invoke-direct {v4, p0}, Lcom/htc/android/mail/MailList$2;-><init>(Lcom/htc/android/mail/MailList;)V

    invoke-virtual {v1, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 762
    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mMailDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

    invoke-static {v3, v1}, Lcom/htc/android/mail/util/MailDialogManager;->show(Lcom/htc/android/mail/util/MailDialogManager;Lcom/htc/widget/HtcAlertDialog$Builder;)Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 14
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 884
    sget-boolean v10, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "MailList"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onActivityResult>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    :cond_0
    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v10}, Lcom/htc/android/mail/MailListTab;->setAccountLabel()V

    .line 888
    const/4 v10, 0x1

    if-ne p1, v10, :cond_7

    .line 890
    and-int/lit8 v10, p2, 0x1

    if-eqz v10, :cond_4

    .line 891
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/htc/android/mail/MailProvider;->getAccountCount(Z)I

    move-result v10

    iput v10, p0, Lcom/htc/android/mail/MailList;->mAccountCounts:I

    if-gtz v10, :cond_2

    .line 892
    const-string v10, "MailList"

    const-string v11, "CFG_RESULT_DELETE_ACCOUNT no account>"

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 894
    .local v4, intent:Landroid/content/Intent;
    const-class v10, Lcom/htc/android/mail/ProviderListScreen;

    invoke-virtual {v4, p0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 895
    invoke-virtual {p0, v4}, Lcom/htc/android/mail/MailList;->startActivity(Landroid/content/Intent;)V

    .line 896
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->finish()V

    .line 1063
    .end local v4           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 899
    :cond_2
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->getDefaultAccountId()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-static {p0, v10, v11, v12}, Lcom/htc/android/mail/MailCommon;->GotoMailListScreen(Landroid/content/Context;JZ)V

    .line 900
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->finish()V

    .line 921
    :cond_3
    :goto_1
    iget v10, p0, Lcom/htc/android/mail/MailList;->mOldPreviewLine:I

    iget-object v11, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/android/mail/Account;->getPreviewLineNum(Landroid/content/Context;)I

    move-result v11

    if-eq v10, v11, :cond_1

    .line 922
    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/htc/android/mail/MailList$TabInfo;->mIsInvalidate:Z

    goto :goto_0

    .line 902
    :cond_4
    and-int/lit8 v10, p2, 0x4

    if-eqz v10, :cond_6

    .line 903
    sget-boolean v10, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v10, :cond_5

    const-string v10, "MailList"

    const-string v11, "MailPreferenceActivity.CFG_RESULT_NEW_ACCOUNT"

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    :cond_5
    if-eqz p3, :cond_3

    .line 905
    const-string v10, "accountId"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 906
    .local v5, newAccountId:J
    const-wide/16 v10, -0x1

    cmp-long v10, v5, v10

    if-eqz v10, :cond_3

    .line 907
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "content://mail/accounts/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 908
    .local v9, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 910
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v10, "mailboxId"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 911
    invoke-virtual {v4, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 912
    const-class v10, Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v4, p0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 913
    invoke-virtual {p0, v4}, Lcom/htc/android/mail/MailList;->startActivity(Landroid/content/Intent;)V

    .line 914
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->finish()V

    goto :goto_1

    .line 917
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #newAccountId:J
    .end local v9           #uri:Landroid/net/Uri;
    :cond_6
    and-int/lit8 v10, p2, 0x2

    if-eqz v10, :cond_3

    .line 918
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->stopThenRefreshMail()V

    goto :goto_1

    .line 924
    :cond_7
    const/4 v10, 0x6

    if-ne p1, v10, :cond_a

    .line 925
    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v10, v10, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    const/4 v11, 0x7

    if-ne v10, v11, :cond_1

    .line 926
    :cond_8
    if-eqz p3, :cond_1

    .line 927
    const-string v10, "contactGroup"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 928
    .local v3, contactGroup:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 929
    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v10, v3}, Lcom/htc/android/mail/Account;->setContactGroup(Ljava/lang/String;)V

    .line 930
    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mImportantMailStore:Lcom/htc/android/mail/database/ImportantMailStore;

    iget-object v11, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v11}, Lcom/htc/android/mail/Account;->getContactGroup()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/android/mail/database/ImportantMailStore;->changeGroup(Ljava/lang/String;)V

    .line 931
    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-direct {p0, v10}, Lcom/htc/android/mail/MailList;->updateTabTitle(Lcom/htc/android/mail/MailList$TabInfo;)V

    .line 932
    const/4 v10, 0x7

    invoke-direct {p0, v10}, Lcom/htc/android/mail/MailList;->updateEmptyMessage(I)V

    .line 933
    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    .line 934
    .local v7, tabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v10, v10, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    if-eqz v10, :cond_9

    .line 935
    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v10, v10, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    const-string v11, "tab_important"

    invoke-virtual {v7}, Lcom/htc/android/mail/MailList$TabInfo;->getMailListTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/CarouselHost;->setAlternativeTabName(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 938
    :cond_9
    iget-object v10, v7, Lcom/htc/android/mail/MailList$TabInfo;->mAdapter:Lcom/htc/android/mail/MailList$MailListAdapter;

    if-eqz v10, :cond_1

    iget-object v10, v7, Lcom/htc/android/mail/MailList$TabInfo;->mAdapter:Lcom/htc/android/mail/MailList$MailListAdapter;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/android/mail/MailList$MailListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 940
    .end local v3           #contactGroup:Ljava/lang/String;
    .end local v7           #tabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    :cond_a
    const/4 v10, 0x7

    if-ne p1, v10, :cond_b

    .line 941
    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_1

    .line 942
    if-eqz p3, :cond_1

    .line 943
    const-string v10, "accountId"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 944
    .local v1, accountId:J
    invoke-direct {p0, v1, v2}, Lcom/htc/android/mail/MailList;->changeAccount(J)V

    goto/16 :goto_0

    .line 947
    .end local v1           #accountId:J
    :cond_b
    const/16 v10, 0xa

    if-ne p1, v10, :cond_c

    .line 948
    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_1

    .line 949
    if-eqz p3, :cond_1

    .line 950
    const-string v10, "accountId"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 951
    .restart local v1       #accountId:J
    const-wide/16 v10, -0x1

    cmp-long v10, v1, v10

    if-eqz v10, :cond_1

    .line 952
    invoke-static {p0, v1, v2}, Lcom/htc/android/mail/MailCommon;->editSettingById(Landroid/content/Context;J)V

    goto/16 :goto_0

    .line 956
    .end local v1           #accountId:J
    :cond_c
    const/16 v10, 0x8

    if-ne p1, v10, :cond_d

    .line 957
    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_1

    .line 958
    if-eqz p3, :cond_1

    .line 959
    const-string v10, "accountId"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 960
    .restart local v1       #accountId:J
    const-wide/16 v10, -0x1

    cmp-long v10, v1, v10

    if-eqz v10, :cond_1

    .line 961
    invoke-virtual {p0, v1, v2}, Lcom/htc/android/mail/MailList;->composeNewMeeting(J)V

    goto/16 :goto_0

    .line 965
    .end local v1           #accountId:J
    :cond_d
    const/16 v10, 0x9

    if-ne p1, v10, :cond_e

    .line 966
    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_1

    .line 967
    if-eqz p3, :cond_1

    .line 968
    const-string v10, "accountId"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 969
    .restart local v1       #accountId:J
    const-wide/16 v10, -0x1

    cmp-long v10, v1, v10

    if-eqz v10, :cond_1

    .line 970
    invoke-direct {p0, v1, v2}, Lcom/htc/android/mail/MailList;->outOfOffice(J)V

    goto/16 :goto_0

    .line 974
    .end local v1           #accountId:J
    :cond_e
    const/4 v10, 0x5

    if-ne p1, v10, :cond_f

    .line 975
    if-eqz p3, :cond_1

    .line 976
    const-string v10, "SELECTED_ID"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/android/mail/MailList;->vipResult:Ljava/util/ArrayList;

    .line 977
    iget-object v10, p0, Lcom/htc/android/mail/MailList;->vipResult:Ljava/util/ArrayList;

    if-eqz v10, :cond_1

    .line 978
    new-instance v10, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v10, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/htc/android/mail/MailList;->addVipDlg:Lcom/htc/app/HtcProgressDialog;

    .line 979
    iget-object v10, p0, Lcom/htc/android/mail/MailList;->addVipDlg:Lcom/htc/app/HtcProgressDialog;

    const v11, 0x7f0b028d

    invoke-virtual {p0, v11}, Lcom/htc/android/mail/MailList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 980
    iget-object v10, p0, Lcom/htc/android/mail/MailList;->addVipDlg:Lcom/htc/app/HtcProgressDialog;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 981
    iget-object v10, p0, Lcom/htc/android/mail/MailList;->addVipDlg:Lcom/htc/app/HtcProgressDialog;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 982
    iget-object v10, p0, Lcom/htc/android/mail/MailList;->addVipDlg:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v10}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 984
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lcom/htc/android/mail/MailList$7;

    invoke-direct {v11, p0}, Lcom/htc/android/mail/MailList$7;-><init>(Lcom/htc/android/mail/MailList;)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1005
    :cond_f
    const/4 v10, 0x4

    if-ne p1, v10, :cond_11

    .line 1006
    if-eqz p3, :cond_1

    .line 1007
    const-string v10, "tab_received"

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 1009
    .local v8, tab_received:Z
    sget-boolean v10, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v10, :cond_10

    const-string v10, "MailList"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tab_received>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    :cond_10
    if-eqz v8, :cond_1

    .line 1011
    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {p0, v10, v11}, Lcom/htc/android/mail/MailList;->changeAccountImpl(J)V

    .line 1012
    sget-boolean v10, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string v10, "MailList"

    const-string v11, "set tab 0"

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1016
    .end local v8           #tab_received:Z
    :cond_11
    const/4 v10, 0x2

    if-ne p1, v10, :cond_16

    .line 1017
    sget-boolean v10, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v10, :cond_12

    const-string v10, "MailList"

    const-string v11, "CREATE_ACCOUNT>"

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    :cond_12
    const/16 v10, 0x6d

    move/from16 v0, p2

    if-ne v0, v10, :cond_14

    if-eqz p3, :cond_14

    .line 1019
    const-string v10, "AccountId"

    const/4 v11, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    int-to-long v5, v10

    .line 1020
    .restart local v5       #newAccountId:J
    sget-boolean v10, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v10, :cond_13

    const-string v10, "MailList"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "newAccountId>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    :cond_13
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->finish()V

    .line 1022
    const/4 v10, 0x1

    invoke-static {p0, v5, v6, v10}, Lcom/htc/android/mail/MailCommon;->GotoMailListScreen(Landroid/content/Context;JZ)V

    goto/16 :goto_0

    .line 1024
    .end local v5           #newAccountId:J
    :cond_14
    sget-boolean v10, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v10, :cond_15

    const-string v10, "MailList"

    const-string v11, " no create account>"

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    :cond_15
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/htc/android/mail/MailProvider;->getAccountCount(Z)I

    move-result v10

    iput v10, p0, Lcom/htc/android/mail/MailList;->mAccountCounts:I

    if-gtz v10, :cond_1

    .line 1026
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->finish()V

    goto/16 :goto_0

    .line 1029
    :cond_16
    const/4 v10, 0x3

    if-ne p1, v10, :cond_1b

    .line 1030
    sget-boolean v10, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v10, :cond_17

    const-string v10, "MailList"

    const-string v11, "ACCOUNT_PICKER>"

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    :cond_17
    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_1a

    if-eqz p3, :cond_1a

    .line 1032
    const-string v10, "accountId"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 1033
    .restart local v5       #newAccountId:J
    sget-boolean v10, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v10, :cond_18

    const-string v10, "MailList"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "newAccountId>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    :cond_18
    const-wide/16 v10, -0x1

    cmp-long v10, v5, v10

    if-nez v10, :cond_19

    .line 1035
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1036
    .restart local v4       #intent:Landroid/content/Intent;
    const-class v10, Lcom/htc/android/mail/ProviderListScreen;

    invoke-virtual {v4, p0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1037
    const-string v10, "CallingActivity"

    const/16 v11, 0x5f

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1038
    const/4 v10, 0x2

    invoke-virtual {p0, v4, v10}, Lcom/htc/android/mail/MailList;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1040
    .end local v4           #intent:Landroid/content/Intent;
    :cond_19
    const/4 v10, 0x0

    invoke-static {p0, v5, v6, v10}, Lcom/htc/android/mail/MailCommon;->GotoMailListScreen(Landroid/content/Context;JZ)V

    .line 1041
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->finish()V

    goto/16 :goto_0

    .line 1044
    .end local v5           #newAccountId:J
    :cond_1a
    sget-boolean v10, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string v10, "MailList"

    const-string v11, " no create account>"

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1046
    :cond_1b
    const/16 v10, 0xb

    if-ne p1, v10, :cond_1c

    .line 1047
    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_1

    if-eqz p3, :cond_1

    .line 1048
    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v10, v10, Lcom/htc/android/mail/MailListTab;->mTag:Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;

    const-string v11, "tagId"

    const-wide/16 v12, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v10, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    .line 1049
    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v10, v10, Lcom/htc/android/mail/MailListTab;->mTag:Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;

    const-string v11, "tagName"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->name:Ljava/lang/String;

    .line 1050
    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v11, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v12, p0, Lcom/htc/android/mail/MailList;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10, v11, v12}, Lcom/htc/android/mail/AbsRequestController;->broadcastTagChanged(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)V

    goto/16 :goto_0

    .line 1052
    :cond_1c
    const/16 v10, 0xc

    if-ne p1, v10, :cond_1

    .line 1053
    sget-boolean v10, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v10, :cond_1d

    const-string v10, "MailList"

    const-string v11, "onActivityResult: search server mail"

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    :cond_1d
    const/16 v10, 0x2bc

    move/from16 v0, p2

    if-ne v0, v10, :cond_1

    if-eqz p3, :cond_1

    .line 1055
    const-string v10, "accountId"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1056
    .restart local v1       #accountId:J
    const-wide/16 v10, -0x1

    cmp-long v10, v1, v10

    if-nez v10, :cond_1e

    .line 1057
    sget-boolean v10, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string v10, "MailList"

    const-string v11, "onActivityResult: search server mail, accountId null"

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1060
    :cond_1e
    const/16 v10, 0x13

    invoke-virtual {p0, v10}, Lcom/htc/android/mail/MailList;->showDialog(I)V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 2218
    sget-boolean v2, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigurationChanged>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2220
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2221
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    if-eqz v2, :cond_1

    .line 2222
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    .line 2223
    .local v1, listView:Lcom/htc/widget/HtcListView;
    instance-of v2, v1, Lcom/htc/widget/HtcExpandableListView;

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 2224
    check-cast v0, Lcom/htc/widget/HtcExpandableListView;

    .line 2225
    .local v0, expandListView:Lcom/htc/widget/HtcExpandableListView;
    invoke-virtual {p0, p1, v0}, Lcom/htc/android/mail/MailList;->setIndicatorBounds(Landroid/content/res/Configuration;Lcom/htc/widget/HtcExpandableListView;)V

    .line 2226
    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListView;->invalidateViews()V

    .line 2231
    .end local v0           #expandListView:Lcom/htc/widget/HtcExpandableListView;
    .end local v1           #listView:Lcom/htc/widget/HtcListView;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-boolean v2, v2, Lcom/htc/android/mail/MailListTab;->mIsMailSearch:Z

    if-eqz v2, :cond_2

    .line 2233
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/android/mail/MailList;->setFilterSubTitle(Z)V

    .line 2236
    :cond_2
    return-void

    .line 2228
    .restart local v1       #listView:Lcom/htc/widget/HtcListView;
    :cond_3
    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 2879
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onContextItemSelected>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2887
    :cond_0
    new-instance v0, Lcom/htc/android/mail/MailMessage;

    iget-wide v2, p0, Lcom/htc/android/mail/MailList;->long_press_id:J

    invoke-direct {v0, v2, v3, v1, v1}, Lcom/htc/android/mail/MailMessage;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->longpress_MailMessage:Lcom/htc/android/mail/MailMessage;

    .line 2888
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->longpress_MailMessage:Lcom/htc/android/mail/MailMessage;

    iget-wide v2, p0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    invoke-virtual {v0, v2, v3}, Lcom/htc/android/mail/MailMessage;->setAccountId(J)V

    .line 2889
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->longpress_MailMessage:Lcom/htc/android/mail/MailMessage;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->long_press_groupId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/MailMessage;->setGroup(Ljava/lang/String;)V

    .line 2890
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->longpress_MailMessage:Lcom/htc/android/mail/MailMessage;

    iget-wide v2, p0, Lcom/htc/android/mail/MailList;->long_press_mailboxId:J

    invoke-virtual {v0, v2, v3}, Lcom/htc/android/mail/MailMessage;->setMailboxId(J)V

    .line 2891
    iget-wide v2, p0, Lcom/htc/android/mail/MailList;->long_press_id:J

    iput-wide v2, p0, Lcom/htc/android/mail/MailList;->markId:J

    .line 2893
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "MailList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "long_press_id>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/android/mail/MailList;->long_press_id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/mail/MailList;->long_press_read:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2894
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2951
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 2896
    :pswitch_1
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "MailList"

    const-string v1, "MENU_ITEM_MOVE_TO>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2897
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->longpress_MailMessage:Lcom/htc/android/mail/MailMessage;

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailList;->moveMarkMail2(Lcom/htc/android/mail/MailMessage;)V

    move v0, v9

    .line 2898
    goto :goto_0

    .line 2902
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/Account;->askBeforeDelete(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2903
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailList;->showDialog(I)V

    :goto_1
    move v0, v9

    .line 2906
    goto :goto_0

    .line 2904
    :cond_3
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->delMarkMail2()V

    goto :goto_1

    .line 2909
    :pswitch_3
    iget-wide v0, p0, Lcom/htc/android/mail/MailList;->markId:J

    iget-wide v2, p0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/android/mail/MailList;->setUnreadById(JJ)V

    move v0, v9

    .line 2910
    goto :goto_0

    .line 2912
    :pswitch_4
    iget-wide v0, p0, Lcom/htc/android/mail/MailList;->markId:J

    iget-wide v2, p0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/android/mail/MailList;->setFlagById(JJ)V

    move v0, v9

    .line 2913
    goto :goto_0

    .line 2915
    :pswitch_5
    iget v0, p0, Lcom/htc/android/mail/MailList;->long_press_read:I

    if-nez v0, :cond_4

    .line 2916
    iget-wide v0, p0, Lcom/htc/android/mail/MailList;->markId:J

    iget-wide v2, p0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/android/mail/MailList;->setUnreadById(JJ)V

    .line 2918
    :cond_4
    iget-wide v0, p0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    iget-wide v2, p0, Lcom/htc/android/mail/MailList;->markId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/android/mail/MailList;->replyMailById(JJ)V

    move v0, v9

    .line 2919
    goto :goto_0

    .line 2921
    :pswitch_6
    iget v0, p0, Lcom/htc/android/mail/MailList;->long_press_read:I

    if-nez v0, :cond_5

    .line 2922
    iget-wide v0, p0, Lcom/htc/android/mail/MailList;->markId:J

    iget-wide v2, p0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/android/mail/MailList;->setUnreadById(JJ)V

    .line 2924
    :cond_5
    iget-wide v0, p0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    iget-wide v2, p0, Lcom/htc/android/mail/MailList;->markId:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/android/mail/MailList;->replyAllMailById(JJ)V

    move v0, v9

    .line 2925
    goto :goto_0

    .line 2927
    :pswitch_7
    iget v0, p0, Lcom/htc/android/mail/MailList;->long_press_read:I

    if-nez v0, :cond_6

    .line 2928
    iget-wide v0, p0, Lcom/htc/android/mail/MailList;->markId:J

    iget-wide v2, p0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/android/mail/MailList;->setUnreadById(JJ)V

    .line 2930
    :cond_6
    iget-wide v0, p0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    iget-wide v2, p0, Lcom/htc/android/mail/MailList;->markId:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/android/mail/MailList;->forwardMailById(JJ)V

    move v0, v9

    .line 2931
    goto :goto_0

    .line 2933
    :pswitch_8
    iget v3, p0, Lcom/htc/android/mail/MailList;->long_press_position:I

    iget-wide v4, p0, Lcom/htc/android/mail/MailList;->markId:J

    iget-wide v6, p0, Lcom/htc/android/mail/MailList;->long_press_mailboxId:J

    iget-object v8, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v8}, Lcom/htc/android/mail/MailList;->onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJJLcom/htc/android/mail/MailList$TabInfo;)V

    move v0, v9

    .line 2934
    goto/16 :goto_0

    .line 2936
    :pswitch_9
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iput-boolean v9, v0, Lcom/htc/android/mail/MailListTab;->mExpandConversation:Z

    .line 2937
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v1, v1, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    iput v1, v0, Lcom/htc/android/mail/MailListTab;->lastTabID:I

    .line 2938
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    const-string v1, "tab_thread"

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 2939
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->exitBatchMode()Z

    move v0, v9

    .line 2940
    goto/16 :goto_0

    .line 2942
    :pswitch_a
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->longpress_ItemHeader:Ljava/lang/String;

    iget-wide v1, p0, Lcom/htc/android/mail/MailList;->markId:J

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/android/mail/MailList;->saveAsTask(Ljava/lang/String;J)V

    move v0, v9

    .line 2943
    goto/16 :goto_0

    .line 2945
    :pswitch_b
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->longpress_ItemSender:Ljava/lang/String;

    iput-object v2, v0, Lcom/htc/android/mail/MailListTab;->mSearchKey:Ljava/lang/String;

    .line 2946
    invoke-direct {p0, v9, v9}, Lcom/htc/android/mail/MailList;->invokeMailSearch(ZZ)V

    .line 2947
    const/16 v0, 0x32

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-direct {p0, v1, v0, v2}, Lcom/htc/android/mail/MailList;->startQuery(Ljava/lang/String;ILcom/htc/android/mail/MailList$TabInfo;)V

    move v0, v9

    .line 2948
    goto/16 :goto_0

    .line 2894
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_4
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    .line 2339
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2340
    sget-boolean v7, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v7, Lcom/htc/android/mail/MailList;->DEBUG:Z

    .line 2341
    const/4 v0, 0x0

    .line 2342
    .local v0, accountCount:I
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/android/mail/Util;->getAccountCountPref(Landroid/content/Context;)I

    move-result v0

    .line 2343
    if-nez v0, :cond_1

    .line 2344
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2345
    .local v1, intent:Landroid/content/Intent;
    const-class v7, Lcom/htc/android/mail/ProviderListScreen;

    invoke-virtual {v1, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2346
    const/high16 v7, 0x400

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2347
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList;->startActivity(Landroid/content/Intent;)V

    .line 2348
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->finish()V

    .line 2489
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 2354
    :cond_1
    sget-boolean v7, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "MailList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreate Mail3>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2355
    :cond_2
    iput-object p0, p0, Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;

    .line 2356
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/htc/android/mail/MailList;->requestWindowFeature(I)Z

    .line 2357
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2359
    .local v2, it:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/mail/MailList;->mUri:Landroid/net/Uri;

    .line 2361
    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mUri:Landroid/net/Uri;

    if-nez v7, :cond_11

    .line 2362
    sget-boolean v7, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "MailList"

    const-string v8, "mUri> null"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    :cond_3
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->getLastAccountEnterId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;

    .line 2364
    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_10

    .line 2365
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->getDefaultAccountId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;

    .line 2366
    sget-boolean v7, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v7, :cond_4

    const-string v7, "MailList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mAccountId default>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2370
    :cond_4
    :goto_1
    sget-object v7, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/mail/MailList;->mUri:Landroid/net/Uri;

    .line 2379
    :goto_2
    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/htc/android/mail/MailList;->setAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    .line 2382
    const-string v7, "mailboxId"

    const-wide/16 v8, -0x1

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2383
    .local v4, reqMailboxId:J
    const-wide/16 v7, -0x1

    cmp-long v7, v4, v7

    if-nez v7, :cond_14

    .line 2384
    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/android/mail/Mailboxs;->getDefaultMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    .line 2395
    :cond_5
    sget-boolean v7, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v7, :cond_6

    const-string v7, "MailList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", requMailboxId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2396
    :cond_6
    sget-boolean v7, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v7, :cond_7

    const-string v7, "MailList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "account id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v9}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mailboxId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v9, v9, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2398
    :cond_7
    const-string v7, "TAB_NAME"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/mail/MailList;->tabName:Ljava/lang/String;

    .line 2399
    sget-boolean v7, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v7, :cond_8

    const-string v7, "MailList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tab>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/MailList;->tabName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2400
    :cond_8
    iget-object v7, p0, Lcom/htc/android/mail/MailList;->tabName:Ljava/lang/String;

    if-nez v7, :cond_9

    const-string v7, "tab_inbox"

    iput-object v7, p0, Lcom/htc/android/mail/MailList;->tabName:Ljava/lang/String;

    .line 2402
    :cond_9
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->setParent()V

    .line 2403
    iget-object v7, p0, Lcom/htc/android/mail/MailList;->tabName:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/htc/android/mail/MailList;->initTab(Ljava/lang/String;)V

    .line 2404
    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    if-eqz v7, :cond_a

    .line 2405
    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v8, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v8}, Lcom/htc/android/mail/MailList$TabInfo;->getTabName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/android/mail/MailListTab;->registerTab(Ljava/lang/String;)V

    .line 2408
    :cond_a
    const-string v7, "ExpandMailId"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/mail/MailList;->Expand_groupId:Ljava/lang/String;

    .line 2409
    sget-boolean v7, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v7, :cond_b

    const-string v7, "MailList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expand_groupId>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/MailList;->Expand_groupId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2411
    :cond_b
    const-string v7, "showNetworkDlgOnce"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 2412
    .local v6, showNetWorkDlg:Z
    if-eqz v6, :cond_c

    .line 2413
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/android/mail/MailList;->showNetworkWarning:Z

    .line 2415
    :cond_c
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->setBoxIndex()V

    .line 2417
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/mail/MailList;->mContentResolver:Landroid/content/ContentResolver;

    .line 2419
    new-instance v7, Lcom/htc/android/mail/MailList$QueryHandler;

    iget-object v8, p0, Lcom/htc/android/mail/MailList;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v7, p0, v8}, Lcom/htc/android/mail/MailList$QueryHandler;-><init>(Lcom/htc/android/mail/MailList;Landroid/content/ContentResolver;)V

    iput-object v7, p0, Lcom/htc/android/mail/MailList;->mQueryHandler:Lcom/htc/android/mail/MailList$QueryHandler;

    .line 2421
    new-instance v7, Lcom/htc/android/mail/MailList$SummaryContentObserver;

    invoke-direct {v7, p0}, Lcom/htc/android/mail/MailList$SummaryContentObserver;-><init>(Lcom/htc/android/mail/MailList;)V

    iput-object v7, p0, Lcom/htc/android/mail/MailList;->mSummaryContentObserver:Lcom/htc/android/mail/MailList$SummaryContentObserver;

    .line 2422
    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/htc/android/mail/MailProvider;->sSummariesReadURI:Landroid/net/Uri;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mSummaryContentObserver:Lcom/htc/android/mail/MailList$SummaryContentObserver;

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2424
    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/htc/android/mail/MailProvider;->sSummariesMoveMailURI:Landroid/net/Uri;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mSummaryContentObserver:Lcom/htc/android/mail/MailList$SummaryContentObserver;

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2426
    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/htc/android/mail/MailProvider;->sSummariesDeleteMailURI:Landroid/net/Uri;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mSummaryContentObserver:Lcom/htc/android/mail/MailList$SummaryContentObserver;

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2428
    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/htc/android/mail/MailProvider;->sSummariesMarkStarURI:Landroid/net/Uri;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mSummaryContentObserver:Lcom/htc/android/mail/MailList$SummaryContentObserver;

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2431
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/mail/MailList;->mPartFactory:Landroid/view/LayoutInflater;

    .line 2432
    const v7, 0x7f030026

    invoke-virtual {p0, v7}, Lcom/htc/android/mail/MailList;->setContentView(I)V

    .line 2435
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2436
    .local v3, mIntentFilter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2437
    const-string v7, "com.htc.eas.intent.sync_status_change"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2438
    const-string v7, "MAIL_EAS_SVC_CONNECTED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2439
    const-string v7, "com.htc.mail.eas.intent.delete_exchg_account"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2440
    const-string v7, "android.mail.notification.NotifyNewMail"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2441
    const-string v7, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2442
    const-string v7, "HTC_IME_CURRENT_STATE"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2443
    invoke-static {}, Lcom/htc/android/mail/Mail;->isHuxEnabled()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 2444
    const-string v7, "com.htc.android.mail.SYNCHUXACCOUNT"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2447
    :cond_d
    const-string v7, "com.android.server.status.StatusBarView.STATUS_BAR_TAP_EVENT"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2448
    const-string v7, "com.htc.eas.intent.updateFolderName"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2449
    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v3}, Lcom/htc/android/mail/MailList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2450
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/android/mail/MailList;->registedIntent:Z

    .line 2451
    sget-boolean v7, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v7, :cond_e

    const-string v7, "MailList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "registedIntent>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/htc/android/mail/MailList;->registedIntent:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2453
    :cond_e
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/htc/android/mail/MailList;->airPlane:I

    .line 2456
    new-instance v7, Lcom/htc/android/mail/MailList$RequestHandler;

    iget-object v8, p0, Lcom/htc/android/mail/MailList;->mMailDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

    invoke-direct {v7, p0, p0, v8}, Lcom/htc/android/mail/MailList$RequestHandler;-><init>(Landroid/content/Context;Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/util/MailDialogManager;)V

    iput-object v7, p0, Lcom/htc/android/mail/MailList;->mRequestHandler:Lcom/htc/android/mail/MailList$RequestHandler;

    .line 2457
    new-instance v7, Ljava/lang/ref/WeakReference;

    iget-object v8, p0, Lcom/htc/android/mail/MailList;->mRequestHandler:Lcom/htc/android/mail/MailList$RequestHandler;

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/htc/android/mail/MailList;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    .line 2460
    invoke-static {p0}, Lcom/htc/android/mail/RequestController;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/RequestController;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    .line 2461
    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v8, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7, v8, v9}, Lcom/htc/android/mail/AbsRequestController;->registerWeakMailRequestHandler(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)V

    .line 2464
    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v7, v7, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_f

    .line 2465
    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    if-eqz v7, :cond_f

    .line 2466
    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v8, p0, Lcom/htc/android/mail/MailList;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7, v8}, Lcom/htc/android/mail/MailListTab;->registerWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 2470
    :cond_f
    sget-boolean v7, Lcom/htc/android/mail/Mail;->sEnableGroupMail:Z

    if-eqz v7, :cond_16

    .line 2471
    invoke-static {p0}, Lcom/htc/android/mail/database/GroupMailStore;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/database/GroupMailStore;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/mail/MailList;->mGroupMailStore:Lcom/htc/android/mail/database/GroupMailStore;

    .line 2477
    :goto_3
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->initScreen()V

    .line 2479
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->restoreNonConfigurationInstance()V

    .line 2482
    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v7, v7, Lcom/htc/android/mail/MailListTab;->mIntent:Landroid/content/Intent;

    const-string v8, "NOT_BACK_TO_INBOX"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/android/mail/MailList;->mNotBackToInbox:Z

    .line 2485
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2486
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2488
    sget-boolean v7, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "MailList"

    const-string v8, "onCreate<<"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2368
    .end local v3           #mIntentFilter:Landroid/content/IntentFilter;
    .end local v4           #reqMailboxId:J
    .end local v6           #showNetWorkDlg:Z
    :cond_10
    sget-boolean v7, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v7, :cond_4

    const-string v7, "MailList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mAccountId last enter>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2372
    :cond_11
    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mUri:Landroid/net/Uri;

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 2373
    :cond_12
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->finish()V

    goto/16 :goto_0

    .line 2376
    :cond_13
    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mUri:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;

    goto/16 :goto_2

    .line 2386
    .restart local v4       #reqMailboxId:J
    :cond_14
    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    .line 2387
    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    if-nez v7, :cond_5

    .line 2388
    sget-boolean v7, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v7, :cond_15

    const-string v7, "MailList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reqMailboxId is still null :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", try inbox"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2389
    :cond_15
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->finish()V

    .line 2390
    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v8, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/android/mail/Mailboxs;->getDefaultMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v8

    iget-wide v8, v8, Lcom/htc/android/mail/Mailbox;->id:J

    const/4 v10, 0x0

    invoke-static {p0, v7, v8, v9, v10}, Lcom/htc/android/mail/MailCommon;->changeFolder(Landroid/content/Context;Lcom/htc/android/mail/Account;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 2473
    .restart local v3       #mIntentFilter:Landroid/content/IntentFilter;
    .restart local v6       #showNetWorkDlg:Z
    :cond_16
    invoke-static {p0}, Lcom/htc/android/mail/database/ImportantMailStore;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/database/ImportantMailStore;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/mail/MailList;->mImportantMailStore:Lcom/htc/android/mail/database/ImportantMailStore;

    .line 2474
    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mImportantMailStore:Lcom/htc/android/mail/database/ImportantMailStore;

    iget-object v8, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getContactGroup()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/android/mail/database/ImportantMailStore;->changeGroup(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 36
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 2648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1

    .line 2875
    :cond_0
    :goto_0
    return-void

    .line 2651
    :cond_1
    sget-boolean v31, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v31, :cond_2

    const-string v31, "MailList"

    const-string v32, "onCreateContextMenu>"

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2652
    :cond_2
    const/4 v11, 0x0

    .line 2653
    .local v11, cursor:Landroid/database/Cursor;
    const/16 v29, 0x0

    .line 2654
    .local v29, singleGroup:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mIsExpandListAdapter:Z

    move/from16 v31, v0

    if-eqz v31, :cond_b

    .line 2658
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Lcom/htc/widget/HtcExpandableListView$ExpandableListContextMenuInfo;

    move-object/from16 v21, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2663
    .local v21, info:Lcom/htc/widget/HtcExpandableListView$ExpandableListContextMenuInfo;
    sget-boolean v31, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v31, :cond_3

    .line 2664
    const-string v31, "debug"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "onCreateContextMenu thread>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/htc/widget/HtcExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    move-wide/from16 v33, v0

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/htc/widget/HtcExpandableListView$ExpandableListContextMenuInfo;->id:J

    move-wide/from16 v33, v0

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListView$ExpandableListContextMenuInfo;->targetView:Landroid/view/View;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2668
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/htc/android/mail/MailList;->getConversationGroupCursor(Lcom/htc/android/mail/MailList$TabInfo;)Lcom/htc/android/mail/database/ConversationGroupCursor;

    move-result-object v8

    .line 2669
    .local v8, cGroupCursor:Lcom/htc/android/mail/database/ConversationGroupCursor;
    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/htc/widget/HtcExpandableListView$ExpandableListContextMenuInfo;->id:J

    move-wide/from16 v24, v0

    .line 2670
    .local v24, messageId:J
    move-wide/from16 v0, v24

    invoke-virtual {v8, v0, v1}, Lcom/htc/android/mail/database/ConversationGroupCursor;->getGroupCountByMessageId(J)I

    move-result v27

    .line 2672
    .local v27, nCntOfGroup:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HtcExpandableListView;

    .line 2674
    .local v13, exListView:Lcom/htc/widget/HtcExpandableListView;
    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/htc/widget/HtcExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    move-wide/from16 v31, v0

    invoke-static/range {v31 .. v32}, Lcom/htc/widget/HtcExpandableListView;->getPackedPositionChild(J)I

    move-result v14

    .line 2675
    .local v14, ex_child:I
    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/htc/widget/HtcExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    move-wide/from16 v31, v0

    invoke-static/range {v31 .. v32}, Lcom/htc/widget/HtcExpandableListView;->getPackedPositionGroup(J)I

    move-result v15

    .line 2677
    .local v15, ex_group:I
    sget-boolean v31, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v31, :cond_4

    .line 2678
    const-string v31, "MailList"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "onCreateContextMenu thread> childCount: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2680
    :cond_4
    invoke-virtual {v13}, Lcom/htc/widget/HtcExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v0, v15}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/database/Cursor;

    .line 2681
    .local v18, groupCursor:Landroid/database/Cursor;
    move/from16 v9, v27

    .line 2682
    .local v9, childCount:I
    sget-boolean v31, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v31, :cond_5

    .line 2683
    const-string v31, "MailList"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "childCount>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2685
    :cond_5
    sget-boolean v31, Lcom/htc/android/mail/Mail;->COMBINED_CONVERSATION:Z

    if-eqz v31, :cond_a

    .line 2686
    const/16 v31, 0x1

    move/from16 v0, v31

    if-le v9, v0, :cond_6

    const/16 v31, -0x1

    move/from16 v0, v31

    if-ne v14, v0, :cond_6

    .line 2687
    sget-boolean v31, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v31, :cond_0

    .line 2688
    const-string v31, "MailList"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "got Ex group>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2659
    .end local v8           #cGroupCursor:Lcom/htc/android/mail/database/ConversationGroupCursor;
    .end local v9           #childCount:I
    .end local v13           #exListView:Lcom/htc/widget/HtcExpandableListView;
    .end local v14           #ex_child:I
    .end local v15           #ex_group:I
    .end local v18           #groupCursor:Landroid/database/Cursor;
    .end local v21           #info:Lcom/htc/widget/HtcExpandableListView$ExpandableListContextMenuInfo;
    .end local v24           #messageId:J
    .end local v27           #nCntOfGroup:I
    :catch_0
    move-exception v12

    .line 2660
    .local v12, e:Ljava/lang/ClassCastException;
    const-string v31, "MailList"

    const-string v32, "bad EX menuInfo"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v12}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 2692
    .end local v12           #e:Ljava/lang/ClassCastException;
    .restart local v8       #cGroupCursor:Lcom/htc/android/mail/database/ConversationGroupCursor;
    .restart local v9       #childCount:I
    .restart local v13       #exListView:Lcom/htc/widget/HtcExpandableListView;
    .restart local v14       #ex_child:I
    .restart local v15       #ex_group:I
    .restart local v18       #groupCursor:Landroid/database/Cursor;
    .restart local v21       #info:Lcom/htc/widget/HtcExpandableListView$ExpandableListContextMenuInfo;
    .restart local v24       #messageId:J
    .restart local v27       #nCntOfGroup:I
    :cond_6
    const/16 v31, -0x1

    move/from16 v0, v31

    if-ne v14, v0, :cond_7

    .line 2693
    const/16 v29, 0x1

    .line 2695
    :cond_7
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v9, v0, :cond_9

    const/16 v31, -0x1

    move/from16 v0, v31

    if-ne v14, v0, :cond_9

    .line 2696
    move-object/from16 v11, v18

    .line 2703
    :goto_1
    sget-boolean v31, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v31, :cond_8

    const-string v31, "MailList"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "ex positon>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2742
    .end local v8           #cGroupCursor:Lcom/htc/android/mail/database/ConversationGroupCursor;
    .end local v9           #childCount:I
    .end local v13           #exListView:Lcom/htc/widget/HtcExpandableListView;
    .end local v14           #ex_child:I
    .end local v15           #ex_group:I
    .end local v18           #groupCursor:Landroid/database/Cursor;
    .end local v21           #info:Lcom/htc/widget/HtcExpandableListView$ExpandableListContextMenuInfo;
    .end local v24           #messageId:J
    .end local v27           #nCntOfGroup:I
    :cond_8
    :goto_2
    if-nez v11, :cond_12

    .line 2743
    sget-boolean v31, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v31, :cond_0

    const-string v31, "MailList"

    const-string v32, "onCreateContextMenu null>"

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2698
    .restart local v8       #cGroupCursor:Lcom/htc/android/mail/database/ConversationGroupCursor;
    .restart local v9       #childCount:I
    .restart local v13       #exListView:Lcom/htc/widget/HtcExpandableListView;
    .restart local v14       #ex_child:I
    .restart local v15       #ex_group:I
    .restart local v18       #groupCursor:Landroid/database/Cursor;
    .restart local v21       #info:Lcom/htc/widget/HtcExpandableListView$ExpandableListContextMenuInfo;
    .restart local v24       #messageId:J
    .restart local v27       #nCntOfGroup:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v31

    check-cast v31, Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual/range {v31 .. v31}, Lcom/htc/widget/HtcExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v0, v15, v14}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #cursor:Landroid/database/Cursor;
    check-cast v11, Landroid/database/Cursor;

    .restart local v11       #cursor:Landroid/database/Cursor;
    goto :goto_1

    .line 2701
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v31

    check-cast v31, Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual/range {v31 .. v31}, Lcom/htc/widget/HtcExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v0, v15, v14}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #cursor:Landroid/database/Cursor;
    check-cast v11, Landroid/database/Cursor;

    .restart local v11       #cursor:Landroid/database/Cursor;
    goto :goto_1

    .line 2705
    .end local v8           #cGroupCursor:Lcom/htc/android/mail/database/ConversationGroupCursor;
    .end local v9           #childCount:I
    .end local v13           #exListView:Lcom/htc/widget/HtcExpandableListView;
    .end local v14           #ex_child:I
    .end local v15           #ex_group:I
    .end local v18           #groupCursor:Landroid/database/Cursor;
    .end local v21           #info:Lcom/htc/widget/HtcExpandableListView$ExpandableListContextMenuInfo;
    .end local v24           #messageId:J
    .end local v27           #nCntOfGroup:I
    :cond_b
    const/16 v21, 0x0

    .line 2707
    .local v21, info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :try_start_1
    move-object/from16 v0, p3

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object/from16 v21, v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2712
    if-nez v21, :cond_c

    .line 2713
    sget-boolean v31, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v31, :cond_0

    const-string v31, "MailList"

    const-string v32, "AdapterContextMenuInfo null"

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2708
    :catch_1
    move-exception v12

    .line 2709
    .restart local v12       #e:Ljava/lang/ClassCastException;
    const-string v31, "MailList"

    const-string v32, "bad menuInfo"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v12}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 2716
    .end local v12           #e:Ljava/lang/ClassCastException;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v31

    if-nez v31, :cond_d

    .line 2717
    sget-boolean v31, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v31, :cond_0

    const-string v31, "MailList"

    const-string v32, "contextMenu, listView null>"

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2720
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    .line 2721
    .local v5, TotalItems:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v19

    .line 2722
    .local v19, headerCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/htc/widget/HtcListView;->getFooterViewsCount()I

    move-result v17

    .line 2723
    .local v17, footerCount:I
    sget-boolean v31, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v31, :cond_e

    const-string v31, "MailList"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "ContextMenu not-thread>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v21

    iget v0, v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2729
    :cond_e
    move-object/from16 v0, v21

    iget v0, v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v19

    if-lt v0, v1, :cond_f

    move-object/from16 v0, v21

    iget v0, v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v31, v0

    add-int v32, v5, v19

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_10

    .line 2730
    :cond_f
    sget-boolean v31, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v31, :cond_0

    const-string v31, "MailList"

    const-string v32, "touch header item or footer item ?"

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2733
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    move/from16 v31, v0

    const/16 v32, 0x7

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_11

    .line 2734
    move-object/from16 v0, v21

    iget v0, v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 2737
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v31

    move-object/from16 v0, v21

    iget v0, v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v32, v0

    sub-int v32, v32, v19

    invoke-interface/range {v31 .. v32}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #cursor:Landroid/database/Cursor;
    check-cast v11, Landroid/database/Cursor;

    .restart local v11       #cursor:Landroid/database/Cursor;
    goto/16 :goto_2

    .line 2739
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v31

    move-object/from16 v0, v21

    iget v0, v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v32, v0

    sub-int v32, v32, v19

    invoke-interface/range {v31 .. v32}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #cursor:Landroid/database/Cursor;
    check-cast v11, Landroid/database/Cursor;

    .restart local v11       #cursor:Landroid/database/Cursor;
    goto/16 :goto_2

    .line 2748
    .end local v5           #TotalItems:I
    .end local v17           #footerCount:I
    .end local v19           #headerCount:I
    .end local v21           #info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :cond_12
    const-string v26, "_id"

    .line 2749
    .local v26, msgIdColumnName:Ljava/lang/String;
    if-nez v29, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mIsExpandListAdapter:Z

    move/from16 v31, v0

    if-eqz v31, :cond_14

    .line 2750
    :cond_13
    const-string v26, "_messageId"

    .line 2752
    :cond_14
    move-object/from16 v0, v26

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_id:J

    .line 2753
    const-string v31, "_account"

    move-object/from16 v0, v31

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    .line 2754
    const-string v31, "_group"

    move-object/from16 v0, v31

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/MailList;->long_press_groupId:Ljava/lang/String;

    .line 2755
    const-string v31, "_read"

    move-object/from16 v0, v31

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/MailList;->long_press_read:I

    .line 2756
    const-string v31, "_flags"

    move-object/from16 v0, v31

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/MailList;->long_press_flag:I

    .line 2757
    const-string v31, "_mailboxId"

    move-object/from16 v0, v31

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_mailboxId:J

    .line 2758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->long_press_groupId:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/htc/android/mail/MailListTab;->selected_group:Ljava/lang/String;

    .line 2759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, v31

    iput-wide v0, v2, Lcom/htc/android/mail/MailListTab;->selected_group_account:J

    .line 2760
    invoke-interface {v11}, Landroid/database/Cursor;->getPosition()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/MailList;->long_press_position:I

    .line 2762
    new-instance v31, Lcom/htc/android/mail/MailMessage;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_id:J

    move-wide/from16 v32, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v31 .. v35}, Lcom/htc/android/mail/MailMessage;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/MailList;->longpress_MailMessage:Lcom/htc/android/mail/MailMessage;

    .line 2764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v31, v0

    if-eqz v31, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    move-object/from16 v31, v0

    if-eqz v31, :cond_15

    .line 2765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    move-object/from16 v31, v0

    const-string v32, "READ"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-result-object v28

    .line 2767
    .local v28, readStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    if-eqz v28, :cond_15

    .line 2768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->longpress_MailMessage:Lcom/htc/android/mail/MailMessage;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/htc/android/mail/MailMessage;->id:J

    move-wide/from16 v31, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->get(J)I

    move-result v20

    .line 2769
    .local v20, i:I
    const/16 v31, -0x1

    move/from16 v0, v20

    move/from16 v1, v31

    if-eq v0, v1, :cond_15

    .line 2770
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/MailList;->long_press_read:I

    .line 2775
    .end local v20           #i:I
    .end local v28           #readStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    :cond_15
    const-string v31, "_subjtype"

    move-object/from16 v0, v31

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2776
    .local v30, sub:Ljava/lang/String;
    sget-boolean v31, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v31, :cond_16

    const-string v31, "MailList"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "sub>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_id:J

    move-wide/from16 v33, v0

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/MailList;->long_press_read:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->long_press_groupId:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2777
    :cond_16
    const-string v31, "_subject"

    move-object/from16 v0, v31

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/MailList;->longpress_ItemHeader:Ljava/lang/String;

    .line 2778
    if-eqz v30, :cond_17

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->longpress_ItemHeader:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/MailList;->longpress_ItemHeader:Ljava/lang/String;

    .line 2779
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->longpress_ItemHeader:Ljava/lang/String;

    move-object/from16 v31, v0

    if-eqz v31, :cond_18

    const-string v31, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->longpress_ItemHeader:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_19

    .line 2780
    :cond_18
    const v31, 0x7f0b0203

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/MailList;->longpress_ItemHeader:Ljava/lang/String;

    .line 2784
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->longpress_ItemHeader:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2786
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    move-wide/from16 v31, v0

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v6

    .line 2788
    .local v6, account:Lcom/htc/android/mail/Account;
    const/4 v7, 0x0

    .line 2789
    .local v7, bSending:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/htc/android/mail/Mailboxs;->getOutMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v33

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v33, v0

    cmp-long v31, v31, v33

    if-nez v31, :cond_1a

    .line 2790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/htc/android/mail/AbsRequestController;->isSending(Lcom/htc/android/mail/Account;)Z

    move-result v7

    .line 2791
    if-eqz v7, :cond_1a

    const-string v31, "MailList"

    const-string v32, "Out box IsSending can\'t open"

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2793
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/MailList;->long_press_flag:I

    move/from16 v31, v0

    and-int/lit8 v31, v31, 0x40

    if-lez v31, :cond_24

    const/16 v22, 0x1

    .line 2794
    .local v22, isStillSaving:Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/MailList;->long_press_flag:I

    move/from16 v31, v0

    const v32, 0xffbf

    and-int v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/MailList;->long_press_flag:I

    .line 2795
    if-eqz v22, :cond_1b

    const-string v31, "MailList"

    const-string v32, "This mail is still saving"

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2796
    :cond_1b
    const/16 v31, 0x0

    const/16 v32, 0xb

    const/16 v33, 0x0

    const v34, 0x7f0b0103

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v32

    if-nez v7, :cond_25

    if-nez v22, :cond_25

    const/16 v31, 0x1

    :goto_4
    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mIsThreadTab:Z

    move/from16 v31, v0

    if-nez v31, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/htc/android/mail/MailListTab;->getConversactionTabExist()Z

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1c

    .line 2805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->long_press_groupId:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v31 .. v34}, Lcom/htc/android/mail/MailListTab;->getGroupNumCount(JLjava/lang/String;)I

    move-result v10

    .line 2806
    .local v10, count:I
    const/16 v31, 0x1

    move/from16 v0, v31

    if-le v10, v0, :cond_1c

    .line 2807
    const/16 v31, 0x0

    const/16 v32, 0xd

    const/16 v33, 0x0

    const v34, 0x7f0b002b

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2812
    .end local v10           #count:I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/htc/android/mail/Mailboxs;->getOutMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v33

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v33, v0

    cmp-long v31, v31, v33

    if-eqz v31, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/htc/android/mail/Mailboxs;->getDraftMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v33

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v33, v0

    cmp-long v31, v31, v33

    if-eqz v31, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/htc/android/mail/Mailboxs;->getSentMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v33

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v33, v0

    cmp-long v31, v31, v33

    if-eqz v31, :cond_1e

    .line 2814
    const-string v31, "sender"

    move-object/from16 v0, v31

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/MailList;->longpress_ItemSender:Ljava/lang/String;

    .line 2815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->longpress_ItemSender:Ljava/lang/String;

    move-object/from16 v31, v0

    if-nez v31, :cond_1d

    .line 2816
    const-string v31, ""

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/MailList;->longpress_ItemSender:Ljava/lang/String;

    .line 2818
    :cond_1d
    const/16 v31, 0x0

    const/16 v32, 0xf

    const/16 v33, 0x0

    const v34, 0x7f0b0349

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2821
    :cond_1e
    const/16 v31, 0x0

    const/16 v32, 0x4

    const/16 v33, 0x0

    const v34, 0x7f0b00eb

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2822
    const/16 v31, 0x0

    const/16 v32, 0x5

    const/16 v33, 0x0

    const v34, 0x7f0b00ec

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2823
    const/16 v31, 0x0

    const/16 v32, 0x6

    const/16 v33, 0x0

    const v34, 0x7f0b00ea

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/htc/android/mail/Mailboxs;->getDraftMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v33

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v33, v0

    cmp-long v31, v31, v33

    if-eqz v31, :cond_1f

    .line 2825
    const/16 v31, 0x0

    const/16 v32, 0x1

    const/16 v33, 0x0

    const v34, 0x7f0b014a

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2827
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/MailList;->long_press_read:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_26

    .line 2828
    const/16 v31, 0x0

    const/16 v32, 0x2

    const/16 v33, 0x0

    const v34, 0x7f0b0093

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2832
    :goto_5
    const/16 v31, 0x0

    const/16 v32, 0x3

    const/16 v33, 0x0

    const v34, 0x7f0b0151

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2834
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/mail/MailList;->long_press_bMeetingMail:Z

    .line 2835
    if-eqz v6, :cond_20

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v31

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_20

    .line 2836
    const-string v31, "_messageClassInt"

    move-object/from16 v0, v31

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 2837
    .local v23, messageClassInt:I
    const/16 v31, 0x6

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_20

    .line 2838
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/mail/MailList;->long_press_bMeetingMail:Z

    .line 2851
    .end local v23           #messageClassInt:I
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/htc/android/mail/Mailboxs;->getDraftMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v33

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v33, v0

    cmp-long v31, v31, v33

    if-eqz v31, :cond_22

    .line 2852
    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v31

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_22

    .line 2853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    move-object/from16 v31, v0

    const-string v32, "FLAG"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-result-object v16

    .line 2855
    .local v16, flagStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    if-eqz v16, :cond_21

    .line 2856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->longpress_MailMessage:Lcom/htc/android/mail/MailMessage;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/htc/android/mail/MailMessage;->id:J

    move-wide/from16 v31, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->get(J)I

    move-result v20

    .line 2857
    .restart local v20       #i:I
    const/16 v31, -0x1

    move/from16 v0, v20

    move/from16 v1, v31

    if-eq v0, v1, :cond_21

    .line 2858
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/MailList;->long_press_flag:I

    .line 2861
    .end local v20           #i:I
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/MailList;->long_press_flag:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_27

    .line 2862
    const/16 v31, 0x0

    const/16 v32, 0xc

    const/16 v33, 0x0

    const v34, 0x7f0b0095

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2869
    .end local v16           #flagStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    :cond_22
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->isTaskApExist(Landroid/content/Context;)Z

    move-result v31

    if-eqz v31, :cond_23

    .line 2870
    const/16 v31, 0x0

    const/16 v32, 0xe

    const/16 v33, 0x0

    const v34, 0x7f0b009a

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2874
    :cond_23
    sget-boolean v31, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v31, :cond_0

    const-string v31, "MailList"

    const-string v32, "onCreateContextMenu<"

    invoke-static/range {v31 .. v32}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2793
    .end local v22           #isStillSaving:Z
    :cond_24
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 2796
    .restart local v22       #isStillSaving:Z
    :cond_25
    const/16 v31, 0x0

    goto/16 :goto_4

    .line 2830
    :cond_26
    const/16 v31, 0x0

    const/16 v32, 0x2

    const/16 v33, 0x0

    const v34, 0x7f0b0092

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 2864
    .restart local v16       #flagStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    :cond_27
    const/16 v31, 0x0

    const/16 v32, 0xc

    const/16 v33, 0x0

    const v34, 0x7f0b0094

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_6
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .parameter "id"

    .prologue
    const v10, 0x1080027

    const/4 v8, 0x0

    const v7, 0x7f0b0291

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 1196
    sget-boolean v4, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "MailList"

    const-string v5, "onCreateDialog>"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1331
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1199
    :sswitch_0
    iput-boolean v6, p0, Lcom/htc/android/mail/MailList;->showNetworkWarning:Z

    .line 1200
    sget-boolean v4, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "MailList"

    const-string v5, "progress_small>>2"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    :cond_1
    invoke-direct {p0, v8}, Lcom/htc/android/mail/MailList;->showRefreshAnim(Z)V

    .line 1202
    iget-boolean v4, p0, Lcom/htc/android/mail/MailList;->mNeedInit:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/htc/android/mail/MailList;->progressSubject:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1203
    :cond_2
    invoke-static {p1, p0}, Lcom/htc/android/mail/MailCommon;->getDialog(ILandroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1206
    :sswitch_1
    iput-boolean v6, p0, Lcom/htc/android/mail/MailList;->showNetworkWarning:Z

    .line 1207
    sget-boolean v4, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "MailList"

    const-string v5, "progress_small>>2"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    :cond_3
    invoke-direct {p0, v8}, Lcom/htc/android/mail/MailList;->showRefreshAnim(Z)V

    .line 1209
    iget-boolean v4, p0, Lcom/htc/android/mail/MailList;->mNeedInit:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/htc/android/mail/MailList;->progressSubject:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1212
    :cond_4
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b005a

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/MailList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0062

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1220
    :sswitch_2
    const v4, 0x7f0b0138

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/MailList;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1221
    .local v3, str:Ljava/lang/String;
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/MailList;->longpress_ItemHeader:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b008e

    invoke-virtual {v4, v5, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/MailList;->confirmDelMarkMailEvent2:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v7, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1231
    .end local v3           #str:Ljava/lang/String;
    :sswitch_3
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0151

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0150

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b008e

    invoke-virtual {v4, v5, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/MailList;->confirmBatchMarkMailEvent:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v7, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1241
    :sswitch_4
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0021

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0139

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b008e

    invoke-virtual {v4, v5, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/MailList;->confirmEmptyMailbox:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v7, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1251
    :sswitch_5
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1252
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    const v4, 0x7f0b0063

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/MailList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1253
    invoke-virtual {v0, v6}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 1254
    invoke-virtual {v0, v6}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    goto/16 :goto_0

    .line 1258
    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    :sswitch_6
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1259
    .restart local v0       #dialog:Lcom/htc/app/HtcProgressDialog;
    const v4, 0x7f0b0064

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/MailList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1260
    invoke-virtual {v0, v6}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 1261
    invoke-virtual {v0, v6}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    goto/16 :goto_0

    .line 1265
    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    :sswitch_7
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1267
    .restart local v0       #dialog:Lcom/htc/app/HtcProgressDialog;
    const v4, 0x7f0b0065

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/MailList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1268
    invoke-virtual {v0, v6}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 1269
    invoke-virtual {v0, v6}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    goto/16 :goto_0

    .line 1273
    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    :sswitch_8
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1274
    .restart local v0       #dialog:Lcom/htc/app/HtcProgressDialog;
    const v4, 0x7f0b032b

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/MailList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1275
    invoke-virtual {v0, v8}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    goto/16 :goto_0

    .line 1279
    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    :sswitch_9
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b0061

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/MailList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0066

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/MailList;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1284
    :sswitch_a
    sget-boolean v4, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "MailList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in show:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getSortBy()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    :cond_5
    const v1, 0x7f06001a

    .line 1287
    .local v1, sortItems:I
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b00e5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v6, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getSortBy()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/mail/MailList$TabInfo;->getSortItemsPositionByIndex(Lcom/htc/android/mail/Mailbox;I)I

    move-result v5

    iget-object v6, p0, Lcom/htc/android/mail/MailList;->sortDialogOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v1, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1295
    .end local v1           #sortItems:I
    :sswitch_b
    const v2, 0x7f06001c

    .line 1296
    .local v2, sortOutboxItems:I
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b00e5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v6, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getSortBy()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/mail/MailList$TabInfo;->getSortItemsPositionByIndex(Lcom/htc/android/mail/Mailbox;I)I

    move-result v5

    iget-object v6, p0, Lcom/htc/android/mail/MailList;->sortDialogOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v2, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1303
    .end local v2           #sortOutboxItems:I
    :sswitch_c
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b00e5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f06001d

    iget-object v6, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-object v8, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getSortBy()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/android/mail/MailList$TabInfo;->getSortItemsPositionByIndex(Lcom/htc/android/mail/Mailbox;I)I

    move-result v6

    iget-object v7, p0, Lcom/htc/android/mail/MailList;->sortDialogOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1312
    :sswitch_d
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b0061

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/MailList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0066

    invoke-virtual {p0, v5}, Lcom/htc/android/mail/MailList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1318
    :sswitch_e
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b005a

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b020d

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1324
    :sswitch_f
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b0088

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b02b5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1197
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_5
        0x4 -> :sswitch_1
        0x6 -> :sswitch_9
        0x7 -> :sswitch_2
        0x9 -> :sswitch_7
        0xa -> :sswitch_6
        0xb -> :sswitch_a
        0xc -> :sswitch_d
        0xd -> :sswitch_b
        0xf -> :sswitch_e
        0x10 -> :sswitch_c
        0x11 -> :sswitch_4
        0x12 -> :sswitch_8
        0x13 -> :sswitch_f
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const v3, 0x208033a

    const v6, 0x2080324

    const v2, 0x208031d

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3574
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 3575
    const/16 v0, 0x14

    const v1, 0x7f0b0096

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208033b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3576
    const/16 v0, 0x16

    const v1, 0x7f0b0098

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080338

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3577
    const/16 v0, 0x13

    const v1, 0x7f0b00ef

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3580
    const/16 v0, 0x11

    const v1, 0x7f0b0053

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3584
    const/16 v0, 0x26

    const v1, 0x7f0b0021

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080323

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3586
    const/16 v0, 0x2d

    const v1, 0x7f0b0022

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a8d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3588
    const/16 v0, 0x1a

    const v1, 0x7f0b0099

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20809ba

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3591
    const/16 v0, 0x1f

    const v1, 0x7f0b0053

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3594
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0, p0}, Lcom/htc/android/mail/Account;->containsExchange(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3595
    invoke-static {}, Landroid/app/SyncConfig;->isEASEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3596
    const/16 v0, 0x19

    const v1, 0x7f0b00f0

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080322

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3602
    :cond_0
    const/16 v0, 0x1b

    const v1, 0x7f0b0090

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3604
    const/16 v0, 0x2c

    const v1, 0x7f0b0328

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 3605
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0, p0}, Lcom/htc/android/mail/Account;->containsExchange(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3606
    const/16 v0, 0x1e

    const v1, 0x7f0b02b8

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 3608
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 3609
    const/16 v0, 0x1c

    const v1, 0x7f0b0167

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3619
    :cond_2
    :goto_0
    const/16 v0, 0xc

    const v1, 0x7f0b009c

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080334

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3620
    const/16 v0, 0xd

    const v1, 0x7f0b009d

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208033c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3622
    const/16 v0, 0x20

    invoke-interface {p1, v4, v0, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3625
    const/16 v0, 0x21

    invoke-interface {p1, v4, v0, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x61

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3628
    const/16 v0, 0x22

    invoke-interface {p1, v4, v0, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x66

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3631
    const/16 v0, 0x23

    invoke-interface {p1, v4, v0, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3634
    const/16 v0, 0x24

    invoke-interface {p1, v4, v0, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x65

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3637
    const/16 v0, 0x25

    invoke-interface {p1, v4, v0, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x67

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3640
    const/16 v0, 0x27

    invoke-interface {p1, v4, v0, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x63

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3643
    const/16 v0, 0x28

    invoke-interface {p1, v4, v0, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x75

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3646
    const/16 v0, 0x29

    invoke-interface {p1, v4, v0, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x69

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3649
    const/16 v0, 0x2a

    invoke-interface {p1, v4, v0, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x73

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3652
    iput-object p1, p0, Lcom/htc/android/mail/MailList;->mMenu:Landroid/view/Menu;

    .line 3653
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->updateMenuItems()V

    .line 3654
    const/4 v0, 0x1

    return v0

    .line 3612
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 3614
    const/16 v0, 0x2b

    const v1, 0x7f0b0167

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public final onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3315
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 3316
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/mail/MailList;->mIsDestroyed:Z

    .line 3317
    sget-boolean v1, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3318
    :cond_0
    sget-boolean v1, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "MailList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy 04291421>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/android/mail/MailList;->registedIntent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3319
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mMailDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mMailDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

    invoke-virtual {v1}, Lcom/htc/android/mail/util/MailDialogManager;->dismiss()V

    .line 3320
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_3

    .line 3321
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mSummaryContentObserver:Lcom/htc/android/mail/MailList$SummaryContentObserver;

    if-eqz v1, :cond_3

    .line 3322
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mSummaryContentObserver:Lcom/htc/android/mail/MailList$SummaryContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3325
    :cond_3
    iget-boolean v1, p0, Lcom/htc/android/mail/MailList;->registedIntent:Z

    if-eqz v1, :cond_4

    .line 3326
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3327
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/mail/MailList;->registedIntent:Z

    .line 3331
    :cond_4
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    if-eqz v1, :cond_8

    .line 3332
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v1, v1, Lcom/htc/android/mail/MailList$TabInfo;->mAdapter:Lcom/htc/android/mail/MailList$MailListAdapter;

    if-eqz v1, :cond_5

    .line 3333
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v1, v1, Lcom/htc/android/mail/MailList$TabInfo;->mAdapter:Lcom/htc/android/mail/MailList$MailListAdapter;

    invoke-virtual {v1, v4}, Lcom/htc/android/mail/MailList$MailListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 3336
    :cond_5
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v1, v1, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    if-eqz v1, :cond_8

    .line 3337
    sget-boolean v1, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 3338
    const-string v1, "MailList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close EX curosr2>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v3, v3, Lcom/htc/android/mail/MailList$TabInfo;->mMyDataSetObserver:Lcom/htc/android/mail/MailList$MyDataSetObserver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3340
    :cond_6
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v1, v1, Lcom/htc/android/mail/MailList$TabInfo;->mMyDataSetObserver:Lcom/htc/android/mail/MailList$MyDataSetObserver;

    if-eqz v1, :cond_7

    .line 3341
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v1, v1, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v2, v2, Lcom/htc/android/mail/MailList$TabInfo;->mMyDataSetObserver:Lcom/htc/android/mail/MailList$MyDataSetObserver;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3344
    :cond_7
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v1, v1, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    invoke-virtual {v1, v4}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 3346
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v0, v1, Lcom/htc/android/mail/MailList$TabInfo;->mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

    .line 3347
    .local v0, parCursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mBackGroundHandler:Landroid/os/Handler;

    new-instance v2, Lcom/htc/android/mail/MailList$29;

    invoke-direct {v2, p0, v0}, Lcom/htc/android/mail/MailList$29;-><init>(Lcom/htc/android/mail/MailList;Landroid/database/Cursor;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3359
    .end local v0           #parCursor:Landroid/database/Cursor;
    :cond_8
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    if-eqz v1, :cond_9

    .line 3360
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/AbsRequestController;->unregisterWeakMailRequestHandler(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)V

    .line 3363
    :cond_9
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mRefreshAni:Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;

    if-eqz v1, :cond_a

    .line 3364
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mRefreshAni:Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->stop()V

    .line 3365
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mRefreshAni:Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->cancel()Z

    .line 3367
    :cond_a
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTimer:Ljava/util/Timer;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 3369
    :cond_b
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mBackGroundHandler:Landroid/os/Handler;

    new-instance v2, Lcom/htc/android/mail/MailList$30;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/MailList$30;-><init>(Lcom/htc/android/mail/MailList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3375
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    if-eqz v1, :cond_c

    .line 3376
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailList$TabInfo;->getTabName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailListTab;->unregisterTab(Ljava/lang/String;)V

    .line 3377
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailListTab;->unregisterWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 3387
    :cond_c
    return-void
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 4605
    iput-wide p4, p0, Lcom/htc/android/mail/MailList;->selId:J

    .line 4609
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 23
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 4406
    sget-boolean v19, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v19, :cond_0

    const-string v19, "MailList"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onKeyDown>"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4407
    :cond_0
    const/16 v19, 0x43

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 4409
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->delMail()V

    .line 4410
    const/16 v19, 0x1

    .line 4596
    :goto_0
    return v19

    .line 4412
    :cond_1
    const/16 v19, 0x4

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 4419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/htc/android/mail/MailListTab;->mIsMailSearch:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 4420
    sget-boolean v19, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v19, :cond_2

    const-string v19, "MailList"

    const-string v20, "exit mail search"

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4421
    :cond_2
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/MailList;->invokeMailSearch(ZZ)V

    .line 4422
    const/16 v19, 0x1

    goto :goto_0

    .line 4425
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->exitBatchMode()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 4426
    const/16 v19, 0x1

    goto :goto_0

    .line 4430
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/htc/android/mail/Mailboxs;->getDefaultMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v19

    move-object/from16 v0, v19

    iget-wide v14, v0, Lcom/htc/android/mail/Mailbox;->id:J

    .line 4431
    .local v14, inboxId:J
    sget-boolean v19, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v19, :cond_5

    const-string v19, "MailList"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "keyback>"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/htc/android/mail/MailListTab;->lastTabID:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4432
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/android/mail/MailListTab;->lastTabID:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 4433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/android/mail/MailListTab;->BackToLastTab()V

    .line 4434
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 4436
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/htc/android/mail/MailListTab;->lastTabID:I

    .line 4438
    invoke-super/range {p0 .. p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 4440
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 4441
    .end local v14           #inboxId:J
    :cond_7
    const/16 v19, 0x54

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 4442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/htc/android/mail/MailListTab;->mIsMailSearch:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 4443
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/MailList;->invokeMailSearch(ZZ)V

    .line 4447
    :goto_1
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 4445
    :cond_8
    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/MailList;->invokeMailSearch(ZZ)V

    goto :goto_1

    .line 4449
    :cond_9
    const/16 v19, 0x1d

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 4451
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->getCursor()Landroid/database/Cursor;

    move-result-object v11

    .line 4453
    .local v11, cursorReplyAll:Landroid/database/Cursor;
    if-eqz v11, :cond_b

    .line 4455
    const-string v19, "_id"

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_id:J

    .line 4456
    const-string v19, "_account"

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    .line 4457
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_id:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-gez v19, :cond_a

    .line 4458
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 4460
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_id:J

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    move-wide/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/MailList;->replyAllMailById(JJ)V

    .line 4463
    :cond_b
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 4464
    .end local v11           #cursorReplyAll:Landroid/database/Cursor;
    :cond_c
    const/16 v19, 0x1f

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 4465
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->composeNewMail()V

    .line 4466
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 4468
    :cond_d
    const/16 v19, 0x21

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 4470
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    .line 4472
    .local v9, cursorR:Landroid/database/Cursor;
    if-eqz v9, :cond_f

    .line 4475
    const-string v19, "_read"

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/MailList;->long_press_read:I

    .line 4476
    const-string v19, "_id"

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_id:J

    .line 4477
    const-string v19, "_account"

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    .line 4478
    const-string v19, "_group"

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/MailList;->long_press_groupId:Ljava/lang/String;

    .line 4479
    const-string v19, "_mailboxId"

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_mailboxId:J

    .line 4481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    .line 4483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    move-object/from16 v19, v0

    const-string v20, "READ"

    invoke-virtual/range {v19 .. v20}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-result-object v18

    .line 4485
    .local v18, readStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->longpress_MailMessage:Lcom/htc/android/mail/MailMessage;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    .line 4486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->longpress_MailMessage:Lcom/htc/android/mail/MailMessage;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/htc/android/mail/MailMessage;->id:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->get(J)I

    move-result v13

    .line 4488
    .local v13, i:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v13, v0, :cond_e

    .line 4489
    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/android/mail/MailList;->long_press_read:I

    .line 4495
    .end local v13           #i:I
    .end local v18           #readStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    :cond_e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_id:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    move-wide/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/MailList;->setUnreadById(JJ)V

    .line 4498
    :cond_f
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 4500
    .end local v9           #cursorR:Landroid/database/Cursor;
    :cond_10
    const/16 v19, 0x22

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    .line 4502
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 4504
    .local v7, cursorForward:Landroid/database/Cursor;
    if-eqz v7, :cond_13

    .line 4506
    const-string v19, "_id"

    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_id:J

    .line 4507
    const-string v19, "_account"

    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    .line 4508
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v5

    .line 4509
    .local v5, account:Lcom/htc/android/mail/Account;
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/mail/MailList;->long_press_bMeetingMail:Z

    .line 4510
    if-eqz v5, :cond_11

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 4511
    const-string v19, "_messageClassInt"

    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 4512
    .local v17, messageClassInt:I
    const/16 v19, 0x6

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 4513
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/mail/MailList;->long_press_bMeetingMail:Z

    .line 4516
    .end local v17           #messageClassInt:I
    :cond_11
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_id:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-gez v19, :cond_12

    .line 4517
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 4519
    :cond_12
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_id:J

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    move-wide/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/MailList;->forwardMailById(JJ)V

    .line 4522
    .end local v5           #account:Lcom/htc/android/mail/Account;
    :cond_13
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 4524
    .end local v7           #cursorForward:Landroid/database/Cursor;
    :cond_14
    const/16 v19, 0x23

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_18

    .line 4526
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 4528
    .local v6, cursorFlag:Landroid/database/Cursor;
    if-eqz v6, :cond_17

    .line 4530
    const-string v19, "_account"

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    .line 4531
    const-string v19, "_flags"

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/MailList;->long_press_flag:I

    .line 4532
    const-string v19, "_id"

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_id:J

    .line 4533
    const-string v19, "_account"

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    .line 4534
    const-string v19, "_mailboxId"

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_mailboxId:J

    .line 4535
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/MailList;->long_press_flag:I

    move/from16 v19, v0

    const v20, 0xffbf

    and-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/MailList;->long_press_flag:I

    .line 4537
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v5

    .line 4539
    .restart local v5       #account:Lcom/htc/android/mail/Account;
    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_15

    .line 4540
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 4542
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/htc/android/mail/Mailboxs;->getDraftMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v21

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v21, v0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_16

    .line 4543
    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_16

    .line 4544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    move-object/from16 v19, v0

    const-string v20, "FLAG"

    invoke-virtual/range {v19 .. v20}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-result-object v12

    .line 4546
    .local v12, flagStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    if-eqz v12, :cond_16

    .line 4547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->longpress_MailMessage:Lcom/htc/android/mail/MailMessage;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/htc/android/mail/MailMessage;->id:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v12, v0, v1}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->get(J)I

    move-result v13

    .line 4548
    .restart local v13       #i:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v13, v0, :cond_16

    .line 4549
    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/android/mail/MailList;->long_press_flag:I

    .line 4555
    .end local v12           #flagStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    .end local v13           #i:I
    :cond_16
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_id:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    move-wide/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/MailList;->setFlagById(JJ)V

    .line 4557
    .end local v5           #account:Lcom/htc/android/mail/Account;
    :cond_17
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 4559
    .end local v6           #cursorFlag:Landroid/database/Cursor;
    :cond_18
    const/16 v19, 0x29

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    .line 4561
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->getCursor()Landroid/database/Cursor;

    move-result-object v8

    .line 4563
    .local v8, cursorMF:Landroid/database/Cursor;
    if-eqz v8, :cond_19

    .line 4565
    const-string v19, "_id"

    move-object/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_id:J

    .line 4566
    const-string v19, "_account"

    move-object/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    .line 4567
    const-string v19, "_mailboxId"

    move-object/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_mailboxId:J

    .line 4568
    const-string v19, "_group"

    move-object/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/MailList;->long_press_groupId:Ljava/lang/String;

    .line 4570
    new-instance v16, Lcom/htc/android/mail/MailMessage;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_id:J

    move-wide/from16 v19, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-wide/from16 v1, v19

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/MailMessage;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 4571
    .local v16, mailMessage:Lcom/htc/android/mail/MailMessage;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/MailMessage;->setAccountId(J)V

    .line 4572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->long_press_groupId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailMessage;->setGroup(Ljava/lang/String;)V

    .line 4573
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_mailboxId:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/MailMessage;->setMailboxId(J)V

    .line 4574
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailList;->moveMarkMail2(Lcom/htc/android/mail/MailMessage;)V

    .line 4577
    .end local v16           #mailMessage:Lcom/htc/android/mail/MailMessage;
    :cond_19
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 4579
    .end local v8           #cursorMF:Landroid/database/Cursor;
    :cond_1a
    const/16 v19, 0x2e

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d

    .line 4581
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->getCursor()Landroid/database/Cursor;

    move-result-object v10

    .line 4583
    .local v10, cursorReply:Landroid/database/Cursor;
    if-eqz v10, :cond_1c

    .line 4585
    const-string v19, "_id"

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_id:J

    .line 4586
    const-string v19, "_account"

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    .line 4587
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_id:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-gez v19, :cond_1b

    .line 4588
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 4590
    :cond_1b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_id:J

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    move-wide/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/MailList;->replyMailById(JJ)V

    .line 4593
    :cond_1c
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 4596
    .end local v10           #cursorReply:Landroid/database/Cursor;
    :cond_1d
    invoke-super/range {p0 .. p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v19

    goto/16 :goto_0
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJJLcom/htc/android/mail/MailList$TabInfo;)V
    .locals 9
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .parameter "mailboxId"
    .parameter "tabInfo"

    .prologue
    .line 3438
    sget-boolean v5, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "MailList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onListItemClick>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3445
    :cond_0
    const-wide/16 v5, -0x1

    cmp-long v5, p4, v5

    if-nez v5, :cond_5

    .line 3446
    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-boolean v5, v5, Lcom/htc/android/mail/MailListTab;->mIsMailSearch:Z

    if-eqz v5, :cond_3

    .line 3448
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 3449
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_1

    .line 3450
    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v5, v5, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    iget-object v5, v5, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchField:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3453
    :cond_1
    const/4 v3, 0x0

    .line 3454
    .local v3, intent:Landroid/content/Intent;
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-class v5, Lcom/htc/android/mail/MailSearch;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3455
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v5, "searchKey"

    iget-object v6, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v6, v6, Lcom/htc/android/mail/MailListTab;->mSearchKey:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3458
    const-string v5, "searchSvrMailImmediately"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3459
    const/high16 v5, 0x400

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3460
    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v7, v7, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v5, v6, v7, v8}, Lcom/htc/android/mail/MailCommon;->getMessagesUri(JJ)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3461
    const/16 v5, 0xc

    invoke-virtual {p0, v3, v5}, Lcom/htc/android/mail/MailList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3550
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 3462
    :cond_3
    if-nez p3, :cond_2

    .line 3464
    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget v5, v5, Lcom/htc/android/mail/Mailbox;->kind:I

    const v6, 0x7ffffffe

    if-ne v5, v6, :cond_4

    .line 3465
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->emptyFolder()V

    goto :goto_0

    .line 3467
    :cond_4
    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget v5, v5, Lcom/htc/android/mail/Mailbox;->kind:I

    const v6, 0x7ffffffb

    if-ne v5, v6, :cond_2

    .line 3468
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->menuRefreshMail()Z

    goto :goto_0

    .line 3477
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mail/messages/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 3479
    .local v4, url:Landroid/net/Uri;
    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v5, v5, Lcom/htc/android/mail/Mailbox;->id:J

    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/android/mail/Mailboxs;->getOutMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v7

    iget-wide v7, v7, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_6

    .line 3481
    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    if-eqz v5, :cond_6

    .line 3482
    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v6, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5, v6}, Lcom/htc/android/mail/AbsRequestController;->isSending(Lcom/htc/android/mail/Account;)Z

    move-result v1

    .line 3483
    .local v1, bSend:Z
    if-eqz v1, :cond_6

    .line 3484
    const v5, 0x7f0b020e

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3501
    .end local v1           #bSend:Z
    :cond_6
    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v5, v5, Lcom/htc/android/mail/Mailbox;->id:J

    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/android/mail/Mailboxs;->getDraftMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v7

    iget-wide v7, v7, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v5, v5, Lcom/htc/android/mail/Mailbox;->id:J

    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/android/mail/Mailboxs;->getOutMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v7

    iget-wide v7, v7, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_9

    .line 3503
    :cond_7
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    const-class v6, Lcom/htc/android/mail/ComposeActivity;

    invoke-direct {v3, v5, v4, p0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 3505
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v5, "_isIMAP4"

    iget-object v6, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->isIMAP4()Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3506
    const-string v5, "cmd"

    const-string v6, "editdraft"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3507
    const-string v5, "accountID"

    iget-object v6, p0, Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3508
    const-string v5, "SetOrient"

    const-string v6, "InMail"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3509
    const-string v5, "mailboxId"

    iget-object v6, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v6, v6, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3510
    const-string v5, "isExchangeSvr"

    iget-object v6, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->isExchange()Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3512
    sget-boolean v5, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v5, :cond_8

    const-string v5, "MailList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ComposeActivity>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3513
    :cond_8
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/MailList;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3514
    .end local v3           #intent:Landroid/content/Intent;
    :cond_9
    move-object/from16 v0, p8

    iget v5, v0, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_d

    .line 3515
    sget-boolean v5, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v5, :cond_a

    const-string v5, "MailList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TAB_THREAD>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3516
    :cond_a
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3517
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v5, "accountID"

    iget-object v6, p0, Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3518
    const-string v5, "FromConversationView"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3519
    const-string v5, "fromListTab"

    const-string v6, "fromListTab"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3520
    const-string v5, "where"

    move-object/from16 v0, p8

    iget-object v6, v0, Lcom/htc/android/mail/MailList$TabInfo;->mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

    move-object/from16 v0, p8

    invoke-virtual {v0, v6}, Lcom/htc/android/mail/MailList$TabInfo;->getChildrenWhere(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3521
    const-string v5, "sortRule"

    iget-object v6, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v6, v6, Lcom/htc/android/mail/MailList$TabInfo;->sortColumn:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v7, v7, Lcom/htc/android/mail/MailList$TabInfo;->sortOrder:Ljava/lang/String;

    move-object/from16 v0, p8

    invoke-virtual {v0, v6, v7}, Lcom/htc/android/mail/MailList$TabInfo;->getChildrenSortOrder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3524
    sget-boolean v5, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v5, :cond_b

    const-string v5, "MailList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "View message(url, intent)>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3525
    :cond_b
    const/4 v5, 0x4

    invoke-virtual {p0, v3, v5}, Lcom/htc/android/mail/MailList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3527
    sget-boolean v5, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v5, :cond_c

    const-string v5, "MailList"

    const-string v6, "Clear batch mode, if it exist"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3528
    :cond_c
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->exitBatchMode()Z

    goto/16 :goto_0

    .line 3530
    .end local v3           #intent:Landroid/content/Intent;
    :cond_d
    sget-boolean v5, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v5, :cond_e

    const-string v5, "MailList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "View message(position, url)>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3531
    :cond_e
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3532
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v5, "accountID"

    iget-object v6, p0, Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3533
    const-string v5, "position"

    invoke-virtual {v3, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3534
    const-string v5, "messageIdsUriStr"

    iget-object v6, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v6}, Lcom/htc/android/mail/MailList$TabInfo;->getChildrenUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3535
    const-string v5, "where"

    move-object/from16 v0, p8

    iget-object v6, v0, Lcom/htc/android/mail/MailList$TabInfo;->mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

    move-object/from16 v0, p8

    invoke-virtual {v0, v6}, Lcom/htc/android/mail/MailList$TabInfo;->getChildrenWhere(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3536
    const-string v5, "mailboxId"

    iget-object v6, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v6, v6, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3537
    const-string v5, "activityCallback"

    move-object/from16 v0, p8

    iget-object v6, v0, Lcom/htc/android/mail/MailList$TabInfo;->mActivityCallback:Lcom/htc/android/mail/util/ActivityCallback;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3538
    const-string v5, "sortRule"

    iget-object v6, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v6, v6, Lcom/htc/android/mail/MailList$TabInfo;->sortColumn:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v7, v7, Lcom/htc/android/mail/MailList$TabInfo;->sortOrder:Ljava/lang/String;

    move-object/from16 v0, p8

    invoke-virtual {v0, v6, v7}, Lcom/htc/android/mail/MailList$TabInfo;->getChildrenSortOrder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3541
    const-string v5, "fromListTab"

    const-string v6, "fromListTab"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3542
    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v5

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v5, v5, v7

    if-nez v5, :cond_f

    .line 3543
    const-string v5, "MailReadFromAllAccount"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3544
    :cond_f
    sget-boolean v5, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v5, :cond_10

    const-string v5, "MailList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "View message(url, intent)>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3545
    :cond_10
    const/4 v5, 0x4

    invoke-virtual {p0, v3, v5}, Lcom/htc/android/mail/MailList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3547
    sget-boolean v5, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v5, :cond_11

    const-string v5, "MailList"

    const-string v6, "Clear batch mode, if it exist"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3548
    :cond_11
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->exitBatchMode()Z

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 2240
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    :cond_0
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 4612
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " nothing selected>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mSelection:Lcom/htc/android/mail/MailListItemBig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4613
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/MailList;->selId:J

    .line 4614
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/MailList;->mSelection:Lcom/htc/android/mail/MailListItemBig;

    .line 4615
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/android/mail/MailList;->mSelectionId:J

    .line 4616
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 30
    .parameter "item"

    .prologue
    .line 4025
    sget-boolean v25, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v25, :cond_0

    const-string v25, "MailList"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "onOptionsItemSelected> "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4027
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v25

    packed-switch v25, :pswitch_data_0

    .line 4291
    :goto_0
    :pswitch_0
    const/16 v25, 0x0

    :goto_1
    return v25

    .line 4030
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    move/from16 v25, v0

    const/16 v26, 0x7

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 4031
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->launchGroupDialog()V

    goto :goto_0

    .line 4033
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->changeBoxEvent()V

    goto :goto_0

    .line 4037
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->changeBoxEvent()V

    goto :goto_0

    .line 4040
    :pswitch_3
    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/htc/android/mail/MailList;->folderOpenModeMailList(I)V

    .line 4041
    const/16 v25, 0x1

    goto :goto_1

    .line 4043
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->composeNewMail()V

    .line 4044
    const/16 v25, 0x1

    goto :goto_1

    .line 4046
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->preComposeNewMeeting()V

    .line 4047
    const/16 v25, 0x1

    goto :goto_1

    .line 4049
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->menuRefreshMail()Z

    move-result v25

    goto :goto_1

    .line 4052
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/htc/android/mail/Account;->askBeforeDelete(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 4053
    const/16 v25, 0x11

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailList;->showDialog(I)V

    .line 4058
    :goto_2
    const/16 v25, 0x1

    goto :goto_1

    .line 4056
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v25 .. v29}, Lcom/htc/android/mail/AbsRequestController;->emptyMailbox(JJ)V

    goto :goto_2

    .line 4060
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 4061
    const/16 v25, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailList;->showDialog(I)V

    .line 4069
    :goto_3
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 4063
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/htc/android/mail/Mailbox;->showSender:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    .line 4064
    const/16 v25, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailList;->showDialog(I)V

    goto :goto_3

    .line 4066
    :cond_4
    const/16 v25, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailList;->showDialog(I)V

    goto :goto_3

    .line 4071
    :pswitch_9
    sget-boolean v25, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v25, :cond_5

    const-string v25, "MailList"

    const-string v26, "EDIT_ACCOUNT>"

    invoke-static/range {v25 .. v26}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4072
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/MailCommon;->editSettingById(Landroid/content/Context;J)V

    goto/16 :goto_0

    .line 4075
    :pswitch_a
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->lunchEditAccountSettingList()V

    goto/16 :goto_0

    .line 4078
    :pswitch_b
    new-instance v16, Landroid/content/Intent;

    const-string v25, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4079
    .local v16, intent:Landroid/content/Intent;
    const-class v25, Lcom/htc/android/mail/ProviderListScreen;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4080
    const-string v25, "CallingActivity"

    const/16 v26, 0x5f

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4081
    const/16 v25, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/MailList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4082
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 4084
    .end local v16           #intent:Landroid/content/Intent;
    :pswitch_c
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/htc/android/mail/MailList;->folderOpenModeMailList(I)V

    .line 4085
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 4087
    :pswitch_d
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->lunchAccountList()V

    .line 4088
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 4090
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v25

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    .line 4091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v25

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/MailList;->outOfOffice(J)V

    .line 4095
    :goto_4
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 4093
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->showOutOfOfficeDialog()V

    goto :goto_4

    .line 4098
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v11, v0, Lcom/htc/android/mail/MailList$TabInfo;->mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

    .line 4100
    .local v11, cursorReader:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mIsThreadTab:Z

    move/from16 v25, v0

    if-eqz v25, :cond_7

    .line 4101
    check-cast v11, Lcom/htc/android/mail/database/ConversationGroupCursor;

    .end local v11           #cursorReader:Landroid/database/Cursor;
    invoke-virtual {v11}, Lcom/htc/android/mail/database/ConversationGroupCursor;->getCurrentMailCount()I

    move-result v24

    .line 4106
    .local v24, totalMailNumber:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailListTab;->updateCmdBarButton1Count(I)V

    .line 4108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mUIHandler:Lcom/htc/android/mail/MailList$UIHandler;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/htc/android/mail/MailList$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/os/Message;->sendToTarget()V

    .line 4109
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 4104
    .end local v24           #totalMailNumber:I
    .restart local v11       #cursorReader:Landroid/database/Cursor;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/database/AbstractMailCursor;->getCount()I

    move-result v24

    .restart local v24       #totalMailNumber:I
    goto :goto_5

    .line 4111
    .end local v11           #cursorReader:Landroid/database/Cursor;
    .end local v24           #totalMailNumber:I
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mUIHandler:Lcom/htc/android/mail/MailList$UIHandler;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Lcom/htc/android/mail/MailList$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/os/Message;->sendToTarget()V

    .line 4112
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 4114
    :pswitch_11
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->showTagList()V

    .line 4115
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 4119
    :pswitch_12
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->getCursor()Landroid/database/Cursor;

    move-result-object v12

    .line 4121
    .local v12, cursorReply:Landroid/database/Cursor;
    if-eqz v12, :cond_8

    .line 4122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/MailList;->getMessageIdColumnName(Lcom/htc/android/mail/MailList$TabInfo;)Ljava/lang/String;

    move-result-object v19

    .line 4123
    .local v19, messageIdColumnName:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_id:J

    .line 4124
    const-string v25, "_account"

    move-object/from16 v0, v25

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    .line 4125
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_id:J

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    move-wide/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/MailList;->replyMailById(JJ)V

    .line 4128
    .end local v19           #messageIdColumnName:Ljava/lang/String;
    :cond_8
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 4132
    .end local v12           #cursorReply:Landroid/database/Cursor;
    :pswitch_13
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->getCursor()Landroid/database/Cursor;

    move-result-object v13

    .line 4134
    .local v13, cursorReplyAll:Landroid/database/Cursor;
    if-eqz v13, :cond_9

    .line 4135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/MailList;->getMessageIdColumnName(Lcom/htc/android/mail/MailList$TabInfo;)Ljava/lang/String;

    move-result-object v19

    .line 4136
    .restart local v19       #messageIdColumnName:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_id:J

    .line 4137
    const-string v25, "_account"

    move-object/from16 v0, v25

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    .line 4138
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_id:J

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    move-wide/from16 v3, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/MailList;->replyAllMailById(JJ)V

    .line 4152
    .end local v19           #messageIdColumnName:Ljava/lang/String;
    :goto_6
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 4142
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/htc/android/mail/MailList$TabInfo;->mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

    .line 4143
    .local v6, cursor:Landroid/database/Cursor;
    const/16 v21, 0x0

    .line 4144
    .local v21, read:I
    if-eqz v6, :cond_a

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v25

    if-lez v25, :cond_a

    .line 4146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailListTab;->setCmdBarButton1Text(I)V

    .line 4148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/htc/android/mail/MailListTab;->setFooterBarAreaVisible(Z)V

    .line 4150
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mUIHandler:Lcom/htc/android/mail/MailList$UIHandler;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/htc/android/mail/MailList$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/os/Message;->sendToTarget()V

    goto :goto_6

    .line 4156
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v13           #cursorReplyAll:Landroid/database/Cursor;
    .end local v21           #read:I
    :pswitch_14
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->getCursor()Landroid/database/Cursor;

    move-result-object v8

    .line 4158
    .local v8, cursorForward:Landroid/database/Cursor;
    if-eqz v8, :cond_c

    .line 4159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/MailList;->getMessageIdColumnName(Lcom/htc/android/mail/MailList$TabInfo;)Ljava/lang/String;

    move-result-object v19

    .line 4160
    .restart local v19       #messageIdColumnName:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_id:J

    .line 4161
    const-string v25, "_account"

    move-object/from16 v0, v25

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    .line 4162
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v5

    .line 4163
    .local v5, account:Lcom/htc/android/mail/Account;
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/mail/MailList;->long_press_bMeetingMail:Z

    .line 4164
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v25

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    .line 4165
    const-string v25, "_messageClassInt"

    move-object/from16 v0, v25

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 4166
    .local v18, messageClassInt:I
    const/16 v25, 0x6

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 4167
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/mail/MailList;->long_press_bMeetingMail:Z

    .line 4170
    .end local v18           #messageClassInt:I
    :cond_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_id:J

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    move-wide/from16 v3, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/MailList;->forwardMailById(JJ)V

    .line 4173
    .end local v5           #account:Lcom/htc/android/mail/Account;
    .end local v19           #messageIdColumnName:Ljava/lang/String;
    :cond_c
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 4177
    .end local v8           #cursorForward:Landroid/database/Cursor;
    :pswitch_15
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    .line 4179
    .local v9, cursorMF:Landroid/database/Cursor;
    if-eqz v9, :cond_d

    .line 4180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/MailList;->getMessageIdColumnName(Lcom/htc/android/mail/MailList$TabInfo;)Ljava/lang/String;

    move-result-object v19

    .line 4181
    .restart local v19       #messageIdColumnName:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_id:J

    .line 4182
    const-string v25, "_account"

    move-object/from16 v0, v25

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    .line 4183
    const-string v25, "_mailboxId"

    move-object/from16 v0, v25

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_mailboxId:J

    .line 4184
    const-string v25, "_group"

    move-object/from16 v0, v25

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/MailList;->long_press_groupId:Ljava/lang/String;

    .line 4186
    new-instance v17, Lcom/htc/android/mail/MailMessage;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_id:J

    move-wide/from16 v25, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move-wide/from16 v1, v25

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/MailMessage;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 4187
    .local v17, mailMessage:Lcom/htc/android/mail/MailMessage;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    move-wide/from16 v25, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/MailMessage;->setAccountId(J)V

    .line 4188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->long_press_groupId:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailMessage;->setGroup(Ljava/lang/String;)V

    .line 4189
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_mailboxId:J

    move-wide/from16 v25, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/MailMessage;->setMailboxId(J)V

    .line 4190
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailList;->moveMarkMail2(Lcom/htc/android/mail/MailMessage;)V

    .line 4193
    .end local v17           #mailMessage:Lcom/htc/android/mail/MailMessage;
    .end local v19           #messageIdColumnName:Ljava/lang/String;
    :cond_d
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 4197
    .end local v9           #cursorMF:Landroid/database/Cursor;
    :pswitch_16
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->getCursor()Landroid/database/Cursor;

    move-result-object v10

    .line 4199
    .local v10, cursorR:Landroid/database/Cursor;
    if-eqz v10, :cond_f

    .line 4200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/MailList;->getMessageIdColumnName(Lcom/htc/android/mail/MailList$TabInfo;)Ljava/lang/String;

    move-result-object v19

    .line 4201
    .restart local v19       #messageIdColumnName:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_id:J

    .line 4202
    const-string v25, "_read"

    move-object/from16 v0, v25

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/MailList;->long_press_read:I

    .line 4203
    const-string v25, "_account"

    move-object/from16 v0, v25

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    .line 4204
    const-string v25, "_group"

    move-object/from16 v0, v25

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/MailList;->long_press_groupId:Ljava/lang/String;

    .line 4205
    const-string v25, "_mailboxId"

    move-object/from16 v0, v25

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_mailboxId:J

    .line 4207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e

    .line 4209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    move-object/from16 v25, v0

    const-string v26, "READ"

    invoke-virtual/range {v25 .. v26}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-result-object v22

    .line 4211
    .local v22, readStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    if-eqz v22, :cond_e

    .line 4212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->longpress_MailMessage:Lcom/htc/android/mail/MailMessage;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/htc/android/mail/MailMessage;->id:J

    move-wide/from16 v25, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->get(J)I

    move-result v15

    .line 4214
    .local v15, i:I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v15, v0, :cond_e

    .line 4215
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/android/mail/MailList;->long_press_read:I

    .line 4222
    .end local v15           #i:I
    .end local v22           #readStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    :cond_e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_id:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    move-wide/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/MailList;->setUnreadById(JJ)V

    .line 4225
    .end local v19           #messageIdColumnName:Ljava/lang/String;
    :cond_f
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 4229
    .end local v10           #cursorR:Landroid/database/Cursor;
    :pswitch_17
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 4231
    .local v7, cursorFlag:Landroid/database/Cursor;
    if-eqz v7, :cond_12

    .line 4233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/MailList;->getMessageIdColumnName(Lcom/htc/android/mail/MailList$TabInfo;)Ljava/lang/String;

    move-result-object v19

    .line 4234
    .restart local v19       #messageIdColumnName:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_id:J

    .line 4235
    const-string v25, "_account"

    move-object/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    .line 4236
    const-string v25, "_flags"

    move-object/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/MailList;->long_press_flag:I

    .line 4237
    const-string v25, "_account"

    move-object/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    .line 4238
    const-string v25, "_mailboxId"

    move-object/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/android/mail/MailList;->long_press_mailboxId:J

    .line 4239
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/MailList;->long_press_flag:I

    move/from16 v25, v0

    const v26, 0xffbf

    and-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/MailList;->long_press_flag:I

    .line 4241
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v5

    .line 4243
    .restart local v5       #account:Lcom/htc/android/mail/Account;
    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v25

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_10

    .line 4244
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 4246
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/htc/android/mail/Mailboxs;->getDraftMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v27

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v27, v0

    cmp-long v25, v25, v27

    if-eqz v25, :cond_11

    .line 4247
    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v25

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_11

    .line 4248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    move-object/from16 v25, v0

    const-string v26, "FLAG"

    invoke-virtual/range {v25 .. v26}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-result-object v14

    .line 4250
    .local v14, flagStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    if-eqz v14, :cond_11

    .line 4251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->longpress_MailMessage:Lcom/htc/android/mail/MailMessage;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/htc/android/mail/MailMessage;->id:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    invoke-virtual {v14, v0, v1}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->get(J)I

    move-result v15

    .line 4252
    .restart local v15       #i:I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v15, v0, :cond_11

    .line 4253
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/android/mail/MailList;->long_press_flag:I

    .line 4259
    .end local v14           #flagStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    .end local v15           #i:I
    :cond_11
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_id:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    move-wide/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/MailList;->setFlagById(JJ)V

    .line 4261
    .end local v5           #account:Lcom/htc/android/mail/Account;
    .end local v19           #messageIdColumnName:Ljava/lang/String;
    :cond_12
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 4264
    .end local v7           #cursorFlag:Landroid/database/Cursor;
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->composeNewMail()V

    .line 4265
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 4268
    :pswitch_19
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailList;->menuRefreshMail()Z

    move-result v25

    goto/16 :goto_1

    .line 4271
    :pswitch_1a
    const/16 v20, 0x0

    .line 4272
    .local v20, outMailBox:Lcom/htc/android/mail/Mailbox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Mailboxs;->getOutMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v20

    .line 4273
    if-eqz v20, :cond_13

    .line 4274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->tabName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    move-object/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/MailCommon;->changeFolder(Landroid/content/Context;Lcom/htc/android/mail/Account;JLjava/lang/String;)V

    .line 4276
    :cond_13
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 4279
    .end local v20           #outMailBox:Lcom/htc/android/mail/Mailbox;
    :pswitch_1b
    const/16 v23, 0x0

    .line 4280
    .local v23, sentMailBox:Lcom/htc/android/mail/Mailbox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Mailboxs;->getSentMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v23

    .line 4281
    if-eqz v23, :cond_14

    .line 4282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->tabName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    move-object/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/MailCommon;->changeFolder(Landroid/content/Context;Lcom/htc/android/mail/Account;JLjava/lang/String;)V

    .line 4284
    :cond_14
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 4287
    .end local v23           #sentMailBox:Lcom/htc/android/mail/Mailbox;
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/MailListTab;->editTab()V

    .line 4288
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 4027
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_0
        :pswitch_e
        :pswitch_2
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_7
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_a
        :pswitch_1c
        :pswitch_11
    .end packed-switch
.end method

.method public final onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 3567
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3568
    iget-wide v0, p0, Lcom/htc/android/mail/MailList;->selId2:J

    iput-wide v0, p0, Lcom/htc/android/mail/MailList;->selId:J

    .line 3569
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/MailList;->selId2:J

    .line 3570
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 2976
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2977
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2978
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mBackGroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/android/mail/MailList$25;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailList$25;-><init>(Lcom/htc/android/mail/MailList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2983
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/MailList;->mIsInForeground:Z

    .line 2985
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-boolean v0, v0, Lcom/htc/android/mail/MailListTab;->mIsMailSearch:Z

    if-eqz v0, :cond_1

    .line 2986
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    iget-object v0, v0, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchField:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2988
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    if-eqz v0, :cond_2

    .line 2989
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/AbsRequestController;->removeWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 2992
    :cond_2
    sget-boolean v0, Lcom/htc/android/mail/Mail;->sEnableGroupMail:Z

    if-eqz v0, :cond_5

    .line 2993
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mGroupMailStore:Lcom/htc/android/mail/database/GroupMailStore;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mGroupMailStore:Lcom/htc/android/mail/database/GroupMailStore;

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/database/GroupMailStore;->unregisterWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 2998
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/Account;->getPreviewLineNum(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/MailList;->mOldPreviewLine:I

    .line 2999
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "MailList"

    const-string v1, "onPause<"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3001
    :cond_4
    return-void

    .line 2995
    :cond_5
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mImportantMailStore:Lcom/htc/android/mail/database/ImportantMailStore;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mImportantMailStore:Lcom/htc/android/mail/database/ImportantMailStore;

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/database/ImportantMailStore;->unregisterWeakHandler(Ljava/lang/ref/WeakReference;)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1093
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1094
    sget-boolean v1, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialog>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1112
    .end local p2
    :cond_1
    :goto_0
    return-void

    .line 1097
    .restart local p2
    :sswitch_0
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->longpress_ItemHeader:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1102
    :sswitch_1
    sget-boolean v1, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "MailList"

    const-string v2, "sort dialog"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getSortBy()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/MailList$TabInfo;->getSortItemsPositionByIndex(Lcom/htc/android/mail/Mailbox;I)I

    move-result v0

    .local v0, position:I
    move-object v1, p2

    .line 1105
    check-cast v1, Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1106
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-object v4, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getSortBy()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/mail/MailList$TabInfo;->getSortItemsPositionByIndex(Lcom/htc/android/mail/Mailbox;I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 1095
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xb -> :sswitch_1
        0xd -> :sswitch_1
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 12
    .parameter "menu"

    .prologue
    const/16 v11, 0x16

    const/16 v10, 0x11

    const/16 v9, 0x1e

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3720
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailList;->setMultiSelectionMenu(Landroid/view/Menu;)V

    .line 3721
    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v5, v5, Lcom/htc/android/mail/MailListTab;->mFooterBarArea:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 3812
    :goto_0
    return v7

    .line 3726
    :cond_0
    iget-wide v5, p0, Lcom/htc/android/mail/MailList;->selId:J

    iput-wide v5, p0, Lcom/htc/android/mail/MailList;->selId2:J

    .line 3727
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/htc/android/mail/MailList;->selId:J

    .line 3728
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->updateMenuItems()V

    .line 3730
    const/16 v5, 0x13

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3731
    const/16 v5, 0x14

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3732
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3733
    const/16 v5, 0x1a

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3736
    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget v5, v5, Lcom/htc/android/mail/Mailbox;->kind:I

    const v6, 0x7ffffffe

    if-ne v5, v6, :cond_2

    .line 3737
    const/16 v5, 0x26

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3742
    :goto_1
    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5, p0}, Lcom/htc/android/mail/Account;->containsExchange(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3743
    const/16 v5, 0x19

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3745
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5, p0}, Lcom/htc/android/mail/Account;->getExchangeLargestProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 3746
    .local v4, protocol:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "Unknown"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 3747
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 3748
    .local v0, dProtocalVer:D
    const-wide/high16 v5, 0x4028

    cmpl-double v5, v0, v5

    if-ltz v5, :cond_3

    .line 3749
    const/16 v5, 0x1e

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3774
    .end local v0           #dProtocalVer:D
    .end local v4           #protocol:Ljava/lang/String;
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v5, v5, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    if-ne v5, v7, :cond_6

    .line 3775
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3788
    :goto_3
    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v5, v5, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_7

    .line 3789
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x208033d

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3790
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f0b0025

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 3791
    const/16 v5, 0x1f

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3798
    :goto_4
    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5, p0}, Lcom/htc/android/mail/Account;->supportHuxTag(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3799
    const/16 v5, 0x2d

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 3739
    :cond_2
    const/16 v5, 0x26

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 3751
    .restart local v0       #dProtocalVer:D
    .restart local v4       #protocol:Ljava/lang/String;
    :cond_3
    const/16 v5, 0x1e

    :try_start_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 3756
    .end local v0           #dProtocalVer:D
    .end local v4           #protocol:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3757
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3758
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 3754
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #protocol:Ljava/lang/String;
    :cond_4
    const/16 v5, 0x1e

    :try_start_2
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 3761
    .end local v4           #protocol:Ljava/lang/String;
    :cond_5
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 3762
    .local v3, oofItem:Landroid/view/MenuItem;
    if-eqz v3, :cond_1

    .line 3763
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 3780
    .end local v3           #oofItem:Landroid/view/MenuItem;
    :cond_6
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 3793
    :cond_7
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x208033a

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3794
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f0b0053

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 3795
    const/16 v5, 0x1f

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    .line 3801
    :cond_8
    const/16 v5, 0x2d

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method protected final onResume()V
    .locals 13

    .prologue
    .line 3096
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 3098
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    if-nez v9, :cond_1

    .line 3099
    sget-boolean v9, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "MailList"

    const-string v10, "return due to mParent is null"

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3311
    :cond_0
    :goto_0
    return-void

    .line 3102
    :cond_1
    sget-boolean v9, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "MailList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onResume>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/android/mail/MailList;->tabName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-boolean v11, v11, Lcom/htc/android/mail/MailListTab;->mExpandConversation:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3103
    :cond_2
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->manageULogForResumeAction()V

    .line 3104
    invoke-static {p0}, Lcom/htc/android/mail/Util;->getAccountCountPref(Landroid/content/Context;)I

    move-result v9

    iput v9, p0, Lcom/htc/android/mail/MailList;->mAccountCounts:I

    if-gtz v9, :cond_3

    .line 3105
    const-string v9, "MailList"

    const-string v10, "resume no account>"

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3106
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3107
    .local v2, intent:Landroid/content/Intent;
    const-class v9, Lcom/htc/android/mail/ProviderListScreen;

    invoke-virtual {v2, p0, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3108
    invoke-virtual {p0, v2}, Lcom/htc/android/mail/MailList;->startActivity(Landroid/content/Intent;)V

    .line 3109
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->finish()V

    goto :goto_0

    .line 3113
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 3114
    .local v0, account:Lcom/htc/android/mail/Account;
    if-nez v0, :cond_4

    .line 3115
    const-string v9, "MailList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resume, account null>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3116
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->getDefaultAccountId()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-static {p0, v9, v10, v11}, Lcom/htc/android/mail/MailCommon;->GotoMailListScreen(Landroid/content/Context;JZ)V

    .line 3117
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->finish()V

    goto/16 :goto_0

    .line 3121
    :cond_4
    invoke-static {}, Lcom/htc/android/mail/Util;->resetBladeDateFormat()V

    .line 3122
    invoke-static {p0}, Lcom/htc/android/mail/MailCommon;->setTimeFormat24(Landroid/content/Context;)V

    .line 3123
    iget-boolean v9, p0, Lcom/htc/android/mail/MailList;->mOldTimeFormat24:Z

    sget-boolean v10, Lcom/htc/android/mail/MailCommon;->TimeFormat24:Z

    if-eq v9, v10, :cond_5

    .line 3124
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/android/mail/MailList;->mTimeFormatChange:Z

    .line 3125
    sget-boolean v9, Lcom/htc/android/mail/MailCommon;->TimeFormat24:Z

    iput-boolean v9, p0, Lcom/htc/android/mail/MailList;->mOldTimeFormat24:Z

    .line 3127
    :cond_5
    sget-boolean v9, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v9, :cond_6

    const-string v9, "MailList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "timeformat_24>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/htc/android/mail/MailCommon;->TimeFormat24:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3129
    :cond_6
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9, v10}, Lcom/htc/android/mail/AbsRequestController;->addWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 3131
    :cond_7
    sget-boolean v9, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v9, :cond_8

    const-string v9, "MailList"

    const-string v10, "clear NewMailNotification>"

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3132
    :cond_8
    sget-boolean v9, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v9, :cond_9

    const-string v9, "MailList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mIsFirstLoadMailComplete: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/htc/android/mail/MailList;->mIsFirstLoadMailComplete:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3133
    :cond_9
    iget-boolean v9, p0, Lcom/htc/android/mail/MailList;->mIsFirstLoadMailComplete:Z

    if-nez v9, :cond_16

    .line 3134
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v10}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/htc/android/mail/NewMailNotification;->clearNotificationInLine(Landroid/content/Context;J)I

    .line 3163
    :goto_1
    new-instance v8, Landroid/content/Intent;

    const-string v9, "intent.eas.mail.priority.high"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3164
    .local v8, syncStateIntent:Landroid/content/Intent;
    invoke-virtual {p0, v8}, Lcom/htc/android/mail/MailList;->sendBroadcast(Landroid/content/Intent;)V

    .line 3167
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/android/mail/MailList;->mIsScrolling:Z

    .line 3168
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/android/mail/MailList;->mIsInForeground:Z

    .line 3177
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-boolean v9, v9, Lcom/htc/android/mail/MailList$TabInfo;->mShowUnReadNumber:Z

    if-eqz v9, :cond_a

    .line 3178
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mRequestHandler:Lcom/htc/android/mail/MailList$RequestHandler;

    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v10, v10, Lcom/htc/android/mail/MailList$TabInfo;->mUnReadNumber:I

    invoke-virtual {v9, v10}, Lcom/htc/android/mail/MailList$RequestHandler;->updateActionBarUnreadNum(I)V

    .line 3181
    :cond_a
    iget-boolean v9, p0, Lcom/htc/android/mail/MailList;->mIsFirstLoadMailComplete:Z

    if-nez v9, :cond_1b

    .line 3182
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/android/mail/MailList;->mIsFirstLoadMailComplete:Z

    .line 3187
    sget-boolean v9, Lcom/htc/android/mail/Mail;->sEnableGroupMail:Z

    if-eqz v9, :cond_1a

    .line 3188
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mGroupMailStore:Lcom/htc/android/mail/database/GroupMailStore;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mGroupMailStore:Lcom/htc/android/mail/database/GroupMailStore;

    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/htc/android/mail/database/GroupMailStore;->registerWeakHandler(Ljava/lang/ref/WeakReference;Z)V

    .line 3193
    :cond_b
    :goto_2
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v9}, Lcom/htc/android/mail/MailList$TabInfo;->getUri()Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 3194
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v9}, Lcom/htc/android/mail/MailList$TabInfo;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    .line 3195
    .local v7, pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_c

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x5

    if-lt v9, v10, :cond_c

    .line 3196
    const/4 v9, 0x4

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3197
    .local v6, mailboxIdStr:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v9, v9, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_c

    .line 3198
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v9}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    .line 3199
    const-string v9, "tab_inbox"

    iget-object v10, p0, Lcom/htc/android/mail/MailList;->tabName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 3200
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v9, v9, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    if-eqz v9, :cond_c

    .line 3201
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v9, v9, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    const-string v10, "tab_inbox"

    iget-object v11, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v11}, Lcom/htc/android/mail/MailList$TabInfo;->getMailListTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/CarouselHost;->setAlternativeTabName(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3209
    .end local v6           #mailboxIdStr:Ljava/lang/String;
    .end local v7           #pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-direct {p0, v9}, Lcom/htc/android/mail/MailList;->setListView(Lcom/htc/android/mail/MailList$TabInfo;)V

    .line 3215
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lcom/htc/android/mail/Account;->containsExchange(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 3216
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    new-instance v10, Lcom/htc/android/mail/MailList$28;

    invoke-direct {v10, p0}, Lcom/htc/android/mail/MailList$28;-><init>(Lcom/htc/android/mail/MailList;)V

    const-wide/16 v11, 0x1f4

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3249
    :cond_d
    :goto_3
    invoke-static {}, Lcom/htc/android/mail/Mail;->isHuxEnabled()Z

    move-result v9

    if-eqz v9, :cond_e

    iget-boolean v9, p0, Lcom/htc/android/mail/MailList;->mIsInForeground:Z

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/htc/android/mail/Account;->getNeedSyncHUXAccount(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 3251
    const/16 v9, 0x12

    invoke-virtual {p0, v9}, Lcom/htc/android/mail/MailList;->showDialog(I)V

    .line 3252
    new-instance v9, Lcom/htc/android/mail/huxservice/HuxProvController$synHuxAccountsTask;

    invoke-direct {v9}, Lcom/htc/android/mail/huxservice/HuxProvController$synHuxAccountsTask;-><init>()V

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/htc/android/mail/MailList;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    aput-object v12, v10, v11

    invoke-virtual {v9, v10}, Lcom/htc/android/mail/huxservice/HuxProvController$synHuxAccountsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3255
    :cond_e
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v9, v9, Lcom/htc/android/mail/MailListTab;->mFooterButton1:Lcom/htc/android/mail/widget/MailFooterBarButton;

    iget-object v10, p0, Lcom/htc/android/mail/MailList;->doBatchMarkRead:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3256
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v9, v9, Lcom/htc/android/mail/MailListTab;->mFooterButton2:Lcom/htc/android/mail/widget/MailFooterBarButton;

    iget-object v10, p0, Lcom/htc/android/mail/MailList;->doBatchDelete:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3257
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v9, v9, Lcom/htc/android/mail/MailListTab;->mFooterButton3:Lcom/htc/android/mail/widget/MailFooterBarButton;

    if-eqz v9, :cond_f

    .line 3258
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v9, v9, Lcom/htc/android/mail/MailListTab;->mFooterButton3:Lcom/htc/android/mail/widget/MailFooterBarButton;

    iget-object v10, p0, Lcom/htc/android/mail/MailList;->doBatchMove:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3261
    :cond_f
    const/4 v3, 0x0

    .line 3263
    .local v3, isStartQuery:Z
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    if-eqz v9, :cond_22

    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-boolean v9, v9, Lcom/htc/android/mail/MailListTab;->mIsMailSearch:Z

    if-eqz v9, :cond_22

    .line 3266
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    iget v9, v9, Lcom/htc/android/mail/util/SelectedMailMessages;->mCount:I

    if-lez v9, :cond_21

    .line 3267
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/android/mail/MailListTab;->setFooterBarAreaVisible(Z)V

    .line 3272
    :goto_4
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v9, v9, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    iget-object v9, v9, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchField:Landroid/widget/AutoCompleteTextView;

    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v9, v10}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3273
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v9, v9, Lcom/htc/android/mail/MailListTab;->mSearchKey:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mCurrentSearchKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 3274
    sget-boolean v9, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v9, :cond_10

    const-string v9, "MailList"

    const-string v10, "onResume mParent.mSearchKey changed >>"

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3275
    :cond_10
    const/4 v9, 0x0

    const/16 v10, 0x32

    iget-object v11, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-direct {p0, v9, v10, v11}, Lcom/htc/android/mail/MailList;->startQuery(Ljava/lang/String;ILcom/htc/android/mail/MailList$TabInfo;)V

    .line 3276
    const/4 v3, 0x1

    .line 3284
    :cond_11
    :goto_5
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-boolean v9, v9, Lcom/htc/android/mail/MailListTab;->mIsMailSearch:Z

    iget-boolean v10, p0, Lcom/htc/android/mail/MailList;->mFilterTitleState:Z

    if-eq v9, v10, :cond_12

    .line 3285
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-boolean v9, v9, Lcom/htc/android/mail/MailListTab;->mIsMailSearch:Z

    if-eqz v9, :cond_23

    .line 3286
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/htc/android/mail/MailList;->setFilterSubTitle(Z)V

    .line 3288
    iget-boolean v9, p0, Lcom/htc/android/mail/MailList;->mFilterNeedRequery:Z

    if-eqz v9, :cond_12

    .line 3289
    const/4 v9, 0x0

    const/16 v10, 0x32

    iget-object v11, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-direct {p0, v9, v10, v11}, Lcom/htc/android/mail/MailList;->startQuery(Ljava/lang/String;ILcom/htc/android/mail/MailList$TabInfo;)V

    .line 3290
    const/4 v3, 0x1

    .line 3298
    :cond_12
    :goto_6
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v9, v9, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_15

    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-boolean v9, v9, Lcom/htc/android/mail/MailListTab;->mExpandConversation:Z

    if-eqz v9, :cond_15

    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v9, v9, Lcom/htc/android/mail/MailList$TabInfo;->mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

    if-eqz v9, :cond_15

    if-nez v3, :cond_15

    .line 3299
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v9, v9, Lcom/htc/android/mail/MailList$TabInfo;->mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

    invoke-virtual {p0, v9}, Lcom/htc/android/mail/MailList;->findExpandId(Landroid/database/Cursor;)V

    .line 3300
    iget v9, p0, Lcom/htc/android/mail/MailList;->expand_group_position:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_15

    .line 3301
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v9}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcExpandableListView;

    .line 3302
    .local v1, expandListView:Lcom/htc/widget/HtcExpandableListView;
    iget v9, p0, Lcom/htc/android/mail/MailList;->expand_group_position:I

    invoke-virtual {v1, v9}, Lcom/htc/widget/HtcExpandableListView;->expandGroup(I)Z

    .line 3303
    sget-boolean v9, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v9, :cond_13

    const-string v9, "MailList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "expandGroup>1>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/android/mail/MailList;->selGroupItemCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3304
    :cond_13
    iget v9, p0, Lcom/htc/android/mail/MailList;->selGroupItemCount:I

    const/4 v10, 0x1

    if-le v9, v10, :cond_14

    .line 3305
    iget v9, p0, Lcom/htc/android/mail/MailList;->expand_group_position:I

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v1, v9, v10, v11}, Lcom/htc/widget/HtcExpandableListView;->setSelectedChild(IIZ)Z

    .line 3307
    :cond_14
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/htc/android/mail/MailListTab;->mExpandConversation:Z

    .line 3310
    .end local v1           #expandListView:Lcom/htc/widget/HtcExpandableListView;
    :cond_15
    sget-boolean v9, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "MailList"

    const-string v10, "onResume<<"

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3136
    .end local v3           #isStartQuery:Z
    .end local v8           #syncStateIntent:Landroid/content/Intent;
    :cond_16
    const-string v9, "keyguard"

    invoke-virtual {p0, v9}, Lcom/htc/android/mail/MailList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    .line 3137
    .local v5, km:Landroid/app/KeyguardManager;
    invoke-virtual {v5}, Landroid/app/KeyguardManager;->keyguardIsShowing()Z

    move-result v4

    .line 3138
    .local v4, keyguardIsShowing:Z
    sget-boolean v9, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v9, :cond_17

    const-string v9, "MailList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "keyguardIsShowing: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3139
    :cond_17
    if-nez v4, :cond_18

    .line 3140
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v10}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/htc/android/mail/NewMailNotification;->clearNotificationInLine(Landroid/content/Context;J)I

    .line 3142
    :cond_18
    iget v9, p0, Lcom/htc/android/mail/MailList;->mOldPreviewLine:I

    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/android/mail/Account;->getPreviewLineNum(Landroid/content/Context;)I

    move-result v10

    if-eq v9, v10, :cond_19

    .line 3143
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/htc/android/mail/MailList$TabInfo;->mIsInvalidate:Z

    goto/16 :goto_1

    .line 3145
    :cond_19
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto/16 :goto_1

    .line 3190
    .end local v4           #keyguardIsShowing:Z
    .end local v5           #km:Landroid/app/KeyguardManager;
    .restart local v8       #syncStateIntent:Landroid/content/Intent;
    :cond_1a
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mImportantMailStore:Lcom/htc/android/mail/database/ImportantMailStore;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mImportantMailStore:Lcom/htc/android/mail/database/ImportantMailStore;

    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/htc/android/mail/database/ImportantMailStore;->registerWeakHandler(Ljava/lang/ref/WeakReference;Z)V

    goto/16 :goto_2

    .line 3227
    :cond_1b
    sget-boolean v9, Lcom/htc/android/mail/Mail;->sEnableGroupMail:Z

    if-eqz v9, :cond_20

    .line 3228
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mGroupMailStore:Lcom/htc/android/mail/database/GroupMailStore;

    if-eqz v9, :cond_1c

    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mGroupMailStore:Lcom/htc/android/mail/database/GroupMailStore;

    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/htc/android/mail/database/GroupMailStore;->registerWeakHandler(Ljava/lang/ref/WeakReference;Z)V

    .line 3233
    :cond_1c
    :goto_7
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    if-eqz v9, :cond_1d

    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v9, v9, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_1d

    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-boolean v9, v9, Lcom/htc/android/mail/MailListTab;->mClearReadMessageIds:Z

    if-eqz v9, :cond_1d

    .line 3234
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v9, v9, Lcom/htc/android/mail/MailList$TabInfo;->mReadMessageIds:Lcom/htc/android/mail/util/IdStore;

    invoke-virtual {v9}, Lcom/htc/android/mail/util/IdStore;->clear()V

    .line 3235
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/htc/android/mail/MailListTab;->mClearReadMessageIds:Z

    .line 3236
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/htc/android/mail/MailList$TabInfo;->mIsInvalidate:Z

    .line 3239
    :cond_1d
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v9, v9, Lcom/htc/android/mail/MailList$TabInfo;->mNowTokenId:I

    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v10, v10, Lcom/htc/android/mail/MailList$TabInfo;->mLoadFinishedTokenId:I

    if-ne v9, v10, :cond_1e

    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-boolean v9, v9, Lcom/htc/android/mail/MailList$TabInfo;->mIsInvalidate:Z

    if-eqz v9, :cond_1f

    .line 3240
    :cond_1e
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    const/16 v10, 0x1e

    invoke-direct {p0, v9, v10}, Lcom/htc/android/mail/MailList;->loadListViewContent(Lcom/htc/android/mail/MailList$TabInfo;I)V

    .line 3243
    :cond_1f
    iget-boolean v9, p0, Lcom/htc/android/mail/MailList;->mTimeFormatChange:Z

    if-eqz v9, :cond_d

    .line 3244
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->showDefaultStatus()V

    .line 3245
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v9

    if-eqz v9, :cond_d

    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto/16 :goto_3

    .line 3230
    :cond_20
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mImportantMailStore:Lcom/htc/android/mail/database/ImportantMailStore;

    if-eqz v9, :cond_1c

    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mImportantMailStore:Lcom/htc/android/mail/database/ImportantMailStore;

    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/htc/android/mail/database/ImportantMailStore;->registerWeakHandler(Ljava/lang/ref/WeakReference;Z)V

    goto :goto_7

    .line 3269
    .restart local v3       #isStartQuery:Z
    :cond_21
    iget-object v9, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/android/mail/MailListTab;->setFooterBarAreaVisible(Z)V

    goto/16 :goto_4

    .line 3278
    :cond_22
    const-string v9, ""

    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mCurrentSearchKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 3280
    const/4 v9, 0x0

    const/16 v10, 0x32

    iget-object v11, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-direct {p0, v9, v10, v11}, Lcom/htc/android/mail/MailList;->startQuery(Ljava/lang/String;ILcom/htc/android/mail/MailList$TabInfo;)V

    .line 3281
    const/4 v3, 0x1

    goto/16 :goto_5

    .line 3293
    :cond_23
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/htc/android/mail/MailList;->setFilterSubTitle(Z)V

    goto/16 :goto_6
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 871
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->collectNonConfigurationInstance()Lcom/htc/android/mail/MailList$NonConfigurationInstance;

    move-result-object v0

    return-object v0
.end method

.method public onSearchRequested()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3951
    invoke-direct {p0}, Lcom/htc/android/mail/MailList;->restoreProperty()V

    .line 3953
    const-string v4, "SearchWhere"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3955
    .local v3, tmp:Ljava/lang/String;
    const-string v4, "search"

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/MailList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 3956
    .local v1, sm:Landroid/app/SearchManager;
    new-instance v4, Lcom/htc/android/mail/MailList$31;

    invoke-direct {v4, p0}, Lcom/htc/android/mail/MailList$31;-><init>(Lcom/htc/android/mail/MailList;)V

    invoke-virtual {v1, v4}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .line 3963
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3964
    .local v0, appData:Landroid/os/Bundle;
    const-string v4, "accountID"

    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mAccountId:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3965
    const-string v4, "position"

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3966
    const-string v4, "where"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3967
    const-string v4, "mailboxId"

    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v5, v5, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3968
    iget-object v4, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v4, v4, Lcom/htc/android/mail/Mailbox;->id:J

    iget-object v6, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/android/mail/Mailboxs;->getDraftMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v6

    iget-wide v6, v6, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 3969
    const-string v4, "isDraftMailbox"

    invoke-virtual {v0, v4, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3973
    :goto_0
    const-string v4, "keepDialog"

    invoke-virtual {v0, v4, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3974
    const-string v4, "sp"

    invoke-virtual {p0, v4, v8}, Lcom/htc/android/mail/MailList;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3975
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v4, "PRE_QUERY"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v9, v0, v8}, Lcom/htc/android/mail/MailList;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 3976
    return v9

    .line 3971
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_0
    const-string v4, "isDraftMailbox"

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected final onStop()V
    .locals 2

    .prologue
    .line 3390
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 3391
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailList"

    const-string v1, "stop>>>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3393
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/AbsRequestController;->stopRequest(Ljava/lang/ref/WeakReference;)V

    .line 3395
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/MailList;->allowReadMore:Z

    .line 3397
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->am:Landroid/app/AlarmManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->sender:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->am:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->sender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3402
    :cond_2
    sget-object v0, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailEventBroadcaster;->flush(Landroid/content/Context;)V

    .line 3403
    return-void
.end method

.method preview_query(JLjava/lang/Object;)Ljava/lang/String;
    .locals 11
    .parameter "id"
    .parameter "v"

    .prologue
    const/4 v10, 0x0

    .line 489
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preview_query "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " start>>> v="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_0
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    .line 491
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_message="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND _mimetype is not null AND _filename=\'\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 492
    .local v3, selection:Ljava/lang/String;
    const/4 v6, 0x0

    .line 493
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 495
    .local v9, s:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/htc/android/mail/MailProvider;->sBodyPreviewLimitColumns:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_mimetype ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 496
    if-nez v6, :cond_2

    .line 506
    move-object v7, v6

    .line 507
    .local v7, fcursor:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/android/mail/MailList$1;

    invoke-direct {v2, p0, v7}, Lcom/htc/android/mail/MailList$1;-><init>(Lcom/htc/android/mail/MailList;Landroid/database/Cursor;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 519
    :cond_1
    :goto_1
    return-object v10

    .line 497
    .end local v7           #fcursor:Landroid/database/Cursor;
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-gtz v0, :cond_3

    .line 506
    move-object v7, v6

    .line 507
    .restart local v7       #fcursor:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/android/mail/MailList$1;

    invoke-direct {v2, p0, v7}, Lcom/htc/android/mail/MailList$1;-><init>(Lcom/htc/android/mail/MailList;Landroid/database/Cursor;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 500
    .end local v7           #fcursor:Landroid/database/Cursor;
    :cond_3
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 501
    const-string v0, "_text"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 502
    const-string v0, "_mimetype"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 503
    .local v8, m:Ljava/lang/String;
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "MailList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", s :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 506
    .end local v8           #m:Ljava/lang/String;
    :cond_4
    move-object v7, v6

    .line 507
    .restart local v7       #fcursor:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/android/mail/MailList$1;

    invoke-direct {v2, p0, v7}, Lcom/htc/android/mail/MailList$1;-><init>(Lcom/htc/android/mail/MailList;Landroid/database/Cursor;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 516
    if-eqz v9, :cond_1

    .line 517
    invoke-static {v9}, Lcom/htc/android/mail/MailCommon;->converHTMLtoPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 518
    .local v10, ss:Ljava/lang/String;
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MailList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preview_query "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ok!!!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 506
    .end local v7           #fcursor:Landroid/database/Cursor;
    .end local v10           #ss:Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v7, v6

    .line 507
    .restart local v7       #fcursor:Landroid/database/Cursor;
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/htc/android/mail/MailList$1;

    invoke-direct {v4, p0, v7}, Lcom/htc/android/mail/MailList$1;-><init>(Lcom/htc/android/mail/MailList;Landroid/database/Cursor;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 506
    throw v0
.end method

.method replyMailById(JJ)V
    .locals 6
    .parameter "accountId"
    .parameter "id"

    .prologue
    .line 2512
    sget-boolean v3, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MailList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "replyMailById: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2513
    :cond_0
    const/4 v2, 0x0

    .line 2514
    .local v2, url:Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mail/messages/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2516
    sget-boolean v3, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "MailList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "replyMailById>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2517
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const-class v4, Lcom/htc/android/mail/ComposeActivity;

    invoke-direct {v1, v3, v2, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 2518
    .local v1, replyall_intent:Landroid/content/Intent;
    const-string v3, "cmd"

    const-string v4, "reply"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2519
    const-string v3, "accountID"

    invoke-virtual {v1, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2520
    const-string v3, "SetOrient"

    const-string v4, "InMail"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2521
    const-string v3, "id"

    invoke-virtual {v1, v3, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2523
    iget-wide v3, p0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    invoke-static {v3, v4}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 2524
    .local v0, account:Lcom/htc/android/mail/Account;
    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->replyWithText()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 2525
    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-static {p0, v3, p3, p4}, Lcom/htc/android/mail/MailCommon;->checkReply(Landroid/content/Context;Ljava/lang/ref/WeakReference;J)V

    .line 2528
    :cond_2
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailList;->startActivity(Landroid/content/Intent;)V

    .line 2529
    return-void
.end method

.method public revertString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "src"

    .prologue
    .line 456
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 457
    .local v1, temp:Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v2

    .line 458
    .local v2, temp2:Ljava/lang/StringBuffer;
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    .line 459
    .local v0, res:Ljava/lang/String;
    return-object v0
.end method

.method public setCmdBar(IIZ)V
    .locals 12
    .parameter "position"
    .parameter "read"
    .parameter "singleMailGroupView"

    .prologue
    .line 2264
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setCmdBar>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/android/mail/MailList;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    iget v11, v11, Lcom/htc/android/mail/util/SelectedMailMessages;->mCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    iget v0, v0, Lcom/htc/android/mail/util/SelectedMailMessages;->mCount:I

    if-nez v0, :cond_1

    .line 2266
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v0, p2}, Lcom/htc/android/mail/MailListTab;->setCmdBarButton1Text(I)V

    .line 2267
    iput p2, p0, Lcom/htc/android/mail/MailList;->setBatchRead:I

    .line 2269
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v8, v0, Lcom/htc/android/mail/MailList$TabInfo;->mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

    .line 2270
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2292
    :cond_2
    :goto_0
    return-void

    .line 2271
    :cond_3
    const-wide/16 v5, -0x1

    .line 2273
    .local v5, messageId:J
    const-string v9, "_id"

    .line 2274
    .local v9, messageIdColumnName:Ljava/lang/String;
    if-nez p3, :cond_4

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-boolean v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mIsThreadTab:Z

    if-eqz v0, :cond_5

    .line 2275
    :cond_4
    const-string v9, "_messageId"

    .line 2277
    :cond_5
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 2279
    const-string v0, "_account"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2280
    .local v1, accountId:J
    const-string v0, "_mailboxId"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2281
    .local v3, mailboxId:J
    const-string v0, "_group"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2282
    .local v7, group:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    invoke-virtual {v0, v5, v6}, Lcom/htc/android/mail/util/SelectedMailMessages;->checkboxChecked(J)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2283
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/util/SelectedMailMessages;->select(JJJLjava/lang/String;)V

    .line 2288
    :goto_1
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    iget v10, v10, Lcom/htc/android/mail/util/SelectedMailMessages;->mCount:I

    invoke-virtual {v0, v10}, Lcom/htc/android/mail/MailListTab;->updateCmdBarButton1Count(I)V

    .line 2289
    iget-object v10, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    iget v0, v0, Lcom/htc/android/mail/util/SelectedMailMessages;->mCount:I

    if-lez v0, :cond_7

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v10, v0}, Lcom/htc/android/mail/MailListTab;->setFooterBarAreaVisible(Z)V

    .line 2291
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "MailList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setCmdBar<"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/android/mail/MailList;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    iget v11, v11, Lcom/htc/android/mail/util/SelectedMailMessages;->mCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2285
    :cond_6
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    invoke-virtual/range {v0 .. v6}, Lcom/htc/android/mail/util/SelectedMailMessages;->deselect(JJJ)V

    goto :goto_1

    .line 2289
    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public setCmdBarByGroup(JJJLjava/lang/String;ZI)V
    .locals 10
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "groupId"
    .parameter "group"
    .parameter "isAllRead"
    .parameter "totalNum"

    .prologue
    .line 2316
    sget-boolean v2, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCmdBarByGroup>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;

    iget v4, v4, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isAllRead"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2317
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;

    iget v2, v2, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    if-nez v2, :cond_1

    .line 2318
    if-eqz p8, :cond_4

    const/4 v9, 0x1

    .line 2320
    .local v9, read:I
    :goto_0
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v2, v9}, Lcom/htc/android/mail/MailListTab;->setCmdBarButton1Text(I)V

    .line 2321
    iput v9, p0, Lcom/htc/android/mail/MailList;->setBatchRead:I

    .line 2323
    .end local v9           #read:I
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;

    move-object/from16 v0, p7

    move/from16 v1, p9

    invoke-virtual {v2, p3, p4, v0, v1}, Lcom/htc/android/mail/util/SelectedMailGroups;->groupCheckboxChecked(JLjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2324
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    move-wide v4, p1

    move-object/from16 v7, p7

    move/from16 v8, p9

    invoke-virtual/range {v2 .. v8}, Lcom/htc/android/mail/util/SelectedMailGroups;->deselectGroup(Landroid/content/Context;JLcom/htc/android/mail/Mailbox;Ljava/lang/String;I)V

    .line 2325
    sget-boolean v2, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "MailList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delselectGroup group>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2331
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;

    iget v3, v3, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/MailListTab;->updateCmdBarButton1Count(I)V

    .line 2332
    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;

    iget v2, v2, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    if-lez v2, :cond_6

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v3, v2}, Lcom/htc/android/mail/MailListTab;->setFooterBarAreaVisible(Z)V

    .line 2334
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 2335
    sget-boolean v2, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "MailList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCmdBarByGroup<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;

    iget v4, v4, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2336
    :cond_3
    return-void

    .line 2318
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2327
    :cond_5
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    move-wide v4, p1

    move-object/from16 v7, p7

    move/from16 v8, p9

    invoke-virtual/range {v2 .. v8}, Lcom/htc/android/mail/util/SelectedMailGroups;->selectGroup(Landroid/content/Context;JLcom/htc/android/mail/Mailbox;Ljava/lang/String;I)V

    .line 2328
    sget-boolean v2, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "MailList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectGroup group>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2332
    :cond_6
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public setCmdBarChild(JJJLjava/lang/String;I)V
    .locals 11
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "messageId"
    .parameter "group"
    .parameter "read"

    .prologue
    .line 2295
    sget-boolean v2, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCmdBarChild>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;

    iget v4, v4, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2296
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;

    iget v2, v2, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    if-nez v2, :cond_1

    .line 2297
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Lcom/htc/android/mail/MailListTab;->setCmdBarButton1Text(I)V

    .line 2298
    move/from16 v0, p8

    iput v0, p0, Lcom/htc/android/mail/MailList;->setBatchRead:I

    .line 2300
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;

    move-wide v3, p3

    move-object/from16 v5, p7

    move-wide/from16 v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/htc/android/mail/util/SelectedMailGroups;->childCheckboxChecked(JLjava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2301
    sget-boolean v2, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "MailList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select mail>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2302
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    move-wide v4, p1

    move-object/from16 v7, p7

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/htc/android/mail/util/SelectedMailGroups;->selecteMessage(Landroid/content/Context;JLcom/htc/android/mail/Mailbox;Ljava/lang/String;J)V

    .line 2308
    :goto_0
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;

    iget v3, v3, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/MailListTab;->updateCmdBarButton1Count(I)V

    .line 2309
    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;

    iget v2, v2, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    if-lez v2, :cond_6

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Lcom/htc/android/mail/MailListTab;->setFooterBarAreaVisible(Z)V

    .line 2311
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 2312
    sget-boolean v2, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "MailList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCmdBarChild<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;

    iget v4, v4, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2313
    :cond_3
    return-void

    .line 2304
    :cond_4
    sget-boolean v2, Lcom/htc/android/mail/MailList;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "MailList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deselect mail>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2305
    :cond_5
    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    const/4 v10, 0x0

    move-wide v4, p1

    move-object/from16 v7, p7

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v10}, Lcom/htc/android/mail/util/SelectedMailGroups;->deselectMessage(Landroid/content/Context;JLcom/htc/android/mail/Mailbox;Ljava/lang/String;JZ)V

    goto :goto_0

    .line 2309
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method setFlagById(JJ)V
    .locals 9
    .parameter "id"
    .parameter "accountId"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x2

    .line 790
    iget v5, p0, Lcom/htc/android/mail/MailList;->long_press_flag:I

    if-ne v5, v6, :cond_1

    .line 791
    const/4 v5, 0x0

    iput v5, p0, Lcom/htc/android/mail/MailList;->long_press_flag:I

    .line 795
    :goto_0
    iget-wide v5, p0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    invoke-static {v5, v6}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 796
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v5

    if-nez v5, :cond_2

    .line 812
    :cond_0
    :goto_1
    return-void

    .line 793
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :cond_1
    iput v6, p0, Lcom/htc/android/mail/MailList;->long_press_flag:I

    goto :goto_0

    .line 797
    .restart local v0       #account:Lcom/htc/android/mail/Account;
    :cond_2
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v5

    iget-wide v6, p0, Lcom/htc/android/mail/MailList;->long_press_mailboxId:J

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v3

    .line 798
    .local v3, mailbox:Lcom/htc/android/mail/Mailbox;
    new-instance v2, Lcom/htc/android/mail/MailMessage;

    iget-wide v5, p0, Lcom/htc/android/mail/MailList;->long_press_id:J

    invoke-direct {v2, v5, v6, v8, v8}, Lcom/htc/android/mail/MailMessage;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 799
    .local v2, mailMessage:Lcom/htc/android/mail/MailMessage;
    invoke-virtual {v2, p3, p4}, Lcom/htc/android/mail/MailMessage;->setAccountId(J)V

    .line 800
    iget-wide v5, p0, Lcom/htc/android/mail/MailList;->long_press_mailboxId:J

    invoke-virtual {v2, v5, v6}, Lcom/htc/android/mail/MailMessage;->setMailboxId(J)V

    .line 801
    iget-object v5, p0, Lcom/htc/android/mail/MailList;->long_press_groupId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/htc/android/mail/MailMessage;->setGroup(Ljava/lang/String;)V

    .line 802
    iget v5, p0, Lcom/htc/android/mail/MailList;->long_press_flag:I

    iput v5, v2, Lcom/htc/android/mail/MailMessage;->flags:I

    .line 803
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 804
    .local v1, b:Landroid/os/Bundle;
    const-string v5, "Mailbox"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 805
    const-string v5, "MailMessage"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 806
    const-string v5, "oldRead"

    iget v6, p0, Lcom/htc/android/mail/MailList;->long_press_read:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 807
    new-instance v4, Lcom/htc/android/mail/Request;

    invoke-direct {v4}, Lcom/htc/android/mail/Request;-><init>()V

    .line 808
    .local v4, r:Lcom/htc/android/mail/Request;
    const/16 v5, 0x8

    iput v5, v4, Lcom/htc/android/mail/Request;->command:I

    .line 809
    iput-object v1, v4, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    .line 810
    iget-wide v5, p0, Lcom/htc/android/mail/MailList;->long_press_accountId:J

    invoke-virtual {v4, v5, v6}, Lcom/htc/android/mail/Request;->setAccountId(J)V

    .line 811
    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    invoke-virtual {v5, v4}, Lcom/htc/android/mail/AbsRequestController;->markStar(Lcom/htc/android/mail/Request;)V

    goto :goto_1
.end method

.method setIndicatorBounds(Landroid/content/res/Configuration;Lcom/htc/widget/HtcExpandableListView;)V
    .locals 1
    .parameter "config"
    .parameter "expandListView"

    .prologue
    const/4 v0, 0x0

    .line 3091
    if-eqz p2, :cond_0

    invoke-virtual {p2, v0, v0}, Lcom/htc/widget/HtcExpandableListView;->setIndicatorBounds(II)V

    .line 3092
    :cond_0
    return-void
.end method

.method setMailListTop(Lcom/htc/android/mail/MailList$TabInfo;)V
    .locals 4
    .parameter "tabInfo"

    .prologue
    .line 2211
    invoke-virtual {p1}, Lcom/htc/android/mail/MailList$TabInfo;->getMailListTitle()Ljava/lang/String;

    move-result-object v0

    .line 2212
    .local v0, topTitle:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->folderName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2213
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-object v3, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getSortBy()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/MailList$TabInfo;->getSortItemsIndexByIndex(Lcom/htc/android/mail/Mailbox;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/android/mail/MailList;->setBottomBar(I)V

    .line 2214
    return-void
.end method

.method setUnreadById(JJ)V
    .locals 10
    .parameter "id"
    .parameter "accountId"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 815
    iget v1, p0, Lcom/htc/android/mail/MailList;->long_press_read:I

    if-ne v1, v9, :cond_1

    move v1, v8

    :goto_0
    iput v1, p0, Lcom/htc/android/mail/MailList;->long_press_read:I

    .line 816
    new-instance v0, Lcom/htc/android/mail/util/SelectedMailMessages;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SelectedMailMessages;-><init>()V

    .line 817
    .local v0, selectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    iget-wide v3, p0, Lcom/htc/android/mail/MailList;->long_press_mailboxId:J

    iget-wide v5, p0, Lcom/htc/android/mail/MailList;->long_press_id:J

    iget-object v7, p0, Lcom/htc/android/mail/MailList;->long_press_groupId:Ljava/lang/String;

    move-wide v1, p3

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/util/SelectedMailMessages;->select(JJJLjava/lang/String;)V

    .line 818
    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget v3, p0, Lcom/htc/android/mail/MailList;->long_press_read:I

    if-ne v3, v9, :cond_2

    :goto_1
    invoke-virtual {v0, v1, v2, v9}, Lcom/htc/android/mail/util/SelectedMailMessages;->setReadStatus(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;Z)V

    .line 819
    const/4 v0, 0x0

    .line 820
    sget-boolean v1, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUnreadById<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    :cond_0
    return-void

    .end local v0           #selectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    :cond_1
    move v1, v9

    .line 815
    goto :goto_0

    .restart local v0       #selectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;
    :cond_2
    move v9, v8

    .line 818
    goto :goto_1
.end method

.method public showDefaultStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5634
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show default status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/android/mail/MailList;->refreshMailing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/android/mail/MailList;->readMoreMailing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getLastupdatetime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5635
    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/mail/MailList;->refreshMailing:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/htc/android/mail/MailList;->readMoreMailing:Z

    if-nez v0, :cond_5

    .line 5636
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->progressSubject:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5637
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->progressSubject:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5639
    invoke-direct {p0, v4}, Lcom/htc/android/mail/MailList;->showRefreshAnim(Z)V

    .line 5641
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getLastupdatetime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 5642
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MailList"

    const-string v1, "update time 0>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5644
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->UpdateTime:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-boolean v3, Lcom/htc/android/mail/MailCommon;->TimeFormat24:Z

    invoke-static {p0, v1, v2, v3}, Lcom/htc/android/mail/Util;->getTitleTime(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5653
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->updateLable:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5654
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->UpdateTime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5658
    :cond_2
    :goto_1
    return-void

    .line 5647
    :cond_3
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "MailList"

    const-string v1, "update time 1>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5649
    :cond_4
    iget-object v0, p0, Lcom/htc/android/mail/MailList;->UpdateTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getLastupdatetime()J

    move-result-wide v1

    sget-boolean v3, Lcom/htc/android/mail/MailCommon;->TimeFormat24:Z

    invoke-static {p0, v1, v2, v3}, Lcom/htc/android/mail/Util;->getTitleTime(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5656
    :cond_5
    sget-boolean v0, Lcom/htc/android/mail/MailList;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show default status return>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/android/mail/MailList;->refreshMailing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/android/mail/MailList;->readMoreMailing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
