.class public Lcom/android/mms/ui/ConversationListBaseActivity;
.super Lcom/htc/app/HtcListActivity;
.source "ConversationListBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;,
        Lcom/android/mms/ui/ConversationListBaseActivity$SeparatingProgressDialog;,
        Lcom/android/mms/ui/ConversationListBaseActivity$BackupRestoreProgressDialog;,
        Lcom/android/mms/ui/ConversationListBaseActivity$DeleteProgressDialog21;,
        Lcom/android/mms/ui/ConversationListBaseActivity$DeleteProgressDialog;,
        Lcom/android/mms/ui/ConversationListBaseActivity$WapPushChangeObserver;,
        Lcom/android/mms/ui/ConversationListBaseActivity$GetWapPushCountTask;,
        Lcom/android/mms/ui/ConversationListBaseActivity$HtcListItem;,
        Lcom/android/mms/ui/ConversationListBaseActivity$CmasContentObserver;,
        Lcom/android/mms/ui/ConversationListBaseActivity$ConversationListWorkingHandler;,
        Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;,
        Lcom/android/mms/ui/ConversationListBaseActivity$DialogVVMForwardOnClickListener;,
        Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;,
        Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;
    }
.end annotation


# static fields
.field public static final BG_ASYNC_QUERY:I = 0x1

.field public static final BG_MSG_RUN_AFTER_ONRESUME:I = 0x3

.field public static final BG_QUERY_DRAFT_UNDELIVERED:I = 0x2

.field static final COLUMN_ID:I = 0x1

.field static final COLUMN_MMS_CONTENT_TYPE:I = 0xe

.field static final COLUMN_MMS_DATE:I = 0xb

.field static final COLUMN_MMS_MSG_TYPE:I = 0xd

.field static final COLUMN_MMS_READ:I = 0xc

.field static final COLUMN_MMS_SUBJECT:I = 0x9

.field static final COLUMN_MMS_SUBJECT_CHARSET:I = 0xa

.field static final COLUMN_MSG_TYPE:I = 0x0

.field static final COLUMN_SMS_ADDRESS:I = 0x3

.field static final COLUMN_SMS_BODY:I = 0x4

.field static final COLUMN_SMS_BOX:I = 0x7

.field static final COLUMN_SMS_DATE:I = 0x5

.field static final COLUMN_SMS_READ:I = 0x6

.field static final COLUMN_SMS_STATUS:I = 0x8

.field static final COLUMN_THREAD_ID:I = 0x2

.field private static final DELETE_TO:I = 0x0

.field private static final DIALOGTYPE_BACKUP:I = 0x2

.field private static final DIALOGTYPE_DBUPGRADE:I = 0x4

.field private static final DIALOGTYPE_DELETE:I = 0x5

.field private static final DIALOGTYPE_NON:I = 0x0

.field private static final DIALOGTYPE_RESTORE:I = 0x3

.field private static final DIALOGTYPE_SEPARATING:I = 0x1

.field protected static final DIALOG_SAVE_TO_CONTACTS:I = 0x0

.field protected static final DIALOG_SELECT_PHONE_NUMBER:I = 0x2

.field protected static final DIALOG_SELECT_PHONE_NUMBER_VT:I = 0x3

.field protected static final DIALOG_SELECT_SORTBY:I = 0x4

.field protected static final DIALOG_VVM_FORWARD:I = 0x1

.field protected static final HTC_DEBUG:Z = false

.field protected static IsFromBackey:Z = false

.field protected static final LOCAL_LOGV:Z = true

.field protected static final MENU_BACKUP:I = 0x9

.field protected static final MENU_BACKUP_SUB:I = 0xa

.field protected static final MENU_CALL:I = 0x4

.field protected static final MENU_COMPOSE_NEW:I = 0x0

.field protected static final MENU_DELETE:I = 0x0

.field protected static final MENU_DELETED_ITEMS:I = 0xf

.field protected static final MENU_DELETE_ALL:I = 0x3

.field protected static final MENU_DRAFT:I = 0x5

.field protected static final MENU_FORWARD:I = 0x3

.field protected static final MENU_GROUP_MESSAGE:I = 0xd

.field protected static final MENU_MARK_ALL_AS_READ:I = 0xe

.field protected static final MENU_MOVE_THREAD_TO_GENERAL:I = 0x9

.field protected static final MENU_MOVE_THREAD_TO_SECURE:I = 0x8

.field protected static final MENU_MOVE_TO:I = 0x11

.field protected static final MENU_MOVE_TO_GENERAL_BOX:I = 0x8

.field protected static final MENU_MOVE_TO_SECURE_BOX:I = 0x7

.field protected static final MENU_OPEN_BLOCK_LIST:I = 0x10

.field protected static final MENU_OPEN_CONTACT:I = 0x5

.field protected static final MENU_PREFERENCES:I = 0x4

.field protected static final MENU_REPLY:I = 0x2

.field protected static final MENU_REPLY_ALL:I = 0x7

.field protected static final MENU_RESTORE:I = 0xb

.field protected static final MENU_RESTORE_SETTING:I = 0xc

.field protected static final MENU_SAVEASTASK:I = 0xc

.field protected static final MENU_SAVE_TO_CONTACT:I = 0x6

.field protected static final MENU_SEARCH:I = 0x1

.field protected static final MENU_SHARE:I = 0xa

.field protected static final MENU_SHOW_ME:I = 0x13

.field protected static final MENU_SORTBY:I = 0x14

.field protected static final MENU_TEXT_SIZE:I = 0x12

.field protected static final MENU_UNDELIVERED_MESSAGES:I = 0x2

.field protected static final MENU_VIEW:I = 0x1

.field protected static final MENU_VIEW_CMAS:I = 0xb

.field protected static final MENU_VTCALL_BACK:I = 0x12

.field protected static final MENU_WAP_PUSH:I = 0x6

.field public static final MODE_ALL_MESSAGE:I = 0x0

.field public static final MODE_MMS_SMS:I = 0x1

.field private static final MOVE_TO:I = 0x1

.field protected static final PROJECTION:[Ljava/lang/String; = null

.field public static final REQUEST_CODE_Block_List:I = 0xa

.field public static final REQUEST_CODE_GO_SETTING:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ConversationListBaseActivity"

.field private static TextSize_sel:I = 0x0

.field public static final UI_CANCEL_NOTIFICATION_INAPP:I = 0xf

.field public static final UI_CANCEL_NOTIFICATION_NEWINTENT:I = 0x11

.field public static final UI_CANCEL_NOTIFICATION_ONCE:I = 0x10

.field public static final UI_DISMISS_BACKUP_RESTORE_DLG:I = 0xa

.field public static final UI_DISMISS_DBUPGRADE_DLG:I = 0xe

.field public static final UI_DISMISS_DELETE_DLG:I = 0x7

.field public static final UI_DISMISS_SEPARATING_DLG:I = 0xc

.field public static final UI_FILTER_CONTACT_NAME:I = 0x2

.field public static final UI_INIT_LISTVIEW:I = 0x3

.field public static final UI_MSG_RUN_AFTER_ONCREATE:I = 0x0

.field public static final UI_MSG_UPDATE_UNREADCOUNT:I = 0x1

.field public static final UI_SET_CMAS_HEADER_VIEW:I = 0x8

.field public static final UI_SET_INTENT_BM_NO:I = 0x5

.field public static final UI_SET_INTENT_BM_YES:I = 0x4

.field public static final UI_SHOW_BACKUPRESULT_DLG:I = 0x12

.field public static final UI_SHOW_BACKUP_RESTORE_DLG:I = 0x9

.field public static final UI_SHOW_DBUPGRADE_DLG:I = 0xd

.field public static final UI_SHOW_DELETE_DLG:I = 0x6

.field public static final UI_SHOW_SEPARATING_DLG:I = 0xb

.field public static items:[Ljava/lang/CharSequence;

.field protected static mCheckPendingStatusTask:Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;

.field public static sStartDeleting:Z

.field public static sStartMoving:Z


# instance fields
.field Sortitems:[Ljava/lang/CharSequence;

.field private WapPushObserver:Lcom/android/mms/ui/ConversationListBaseActivity$WapPushChangeObserver;

.field activityComposer:Lcom/android/mms/util/CommonActivityLayout;

.field protected bIsSMSLast:Z

.field protected bShowWapPushMenuItem:Z

.field protected categoryAdapter:Lcom/android/mms/category/CategorySelectorAdapter;

.field private confrimDialog:Landroid/app/Dialog;

.field protected iSortBy:I

.field public mBackupRestoreProgressDialog:Landroid/app/Dialog;

.field mBarText:Lcom/htc/widget/HeaderBarText;

.field private final mCancelBackupRestoreMessagesListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mCancelDeleteMessagesListener:Landroid/content/DialogInterface$OnClickListener;

.field protected mCategory:Lcom/android/mms/category/Category;

.field protected mCategorySelector:Lcom/android/mms/category/CategorySelector;

.field protected mCategory_get:Lcom/android/mms/category/Category;

.field protected mCmasObserver:Landroid/database/ContentObserver;

.field protected mContextMenuItemCache:Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;

.field public mDBUpgradeDialog:Landroid/app/ProgressDialog;

.field public mDeleteProgressDialog:Landroid/app/Dialog;

.field protected mDeletedItemsCount:I

.field protected mForwardMsgCursor:Landroid/database/Cursor;

.field protected mIsForeground:Z

.field protected mKeyguardManager:Landroid/app/KeyguardManager;

.field protected mListHeaderView:Landroid/view/View;

.field protected mListHeaderViewCache:Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;

.field protected mMmsDraftCount:I

.field protected mMode:I

.field mNewCompose:Lcom/htc/widget/HeaderBarImage;

.field protected mOptionMenuitems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mPhoneList:[Ljava/lang/String;

.field private mProgressDialogMode:I

.field protected mReceiverTime:Landroid/content/BroadcastReceiver;

.field mRegisterTimeReceiver:Z

.field protected mSearchFlag:Z

.field public mSeparatingDialog:Landroid/app/Dialog;

.field protected mSmsDraftCount:I

.field protected mTitleDropDown:Lcom/htc/widget/HeaderBarDropDown;

.field protected mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

.field protected mUIlistenter:Lcom/android/mms/ui/MessagingListener;

.field protected mUndeliveryCount:I

.field private mVvmForwardOnClickListener:Lcom/android/mms/ui/ConversationListBaseActivity$DialogVVMForwardOnClickListener;

.field protected mWorkingHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationListWorkingHandler;

.field protected m_filter:Landroid/content/IntentFilter;

.field protected m_receiver:Lcom/android/mms/util/PresentReceiver;

.field protected sSMSBody:Ljava/lang/String;

.field protected sSMSType:I

.field updateDate2Task:Lcom/android/mms/task/UpdateDate2Task;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 273
    sput-boolean v2, Lcom/android/mms/ui/ConversationListBaseActivity;->sStartMoving:Z

    .line 280
    sput-boolean v2, Lcom/android/mms/ui/ConversationListBaseActivity;->sStartDeleting:Z

    .line 287
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ct_t"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/ConversationListBaseActivity;->PROJECTION:[Ljava/lang/String;

    .line 324
    sput-object v4, Lcom/android/mms/ui/ConversationListBaseActivity;->items:[Ljava/lang/CharSequence;

    .line 325
    sput v3, Lcom/android/mms/ui/ConversationListBaseActivity;->TextSize_sel:I

    .line 3402
    sput-object v4, Lcom/android/mms/ui/ConversationListBaseActivity;->mCheckPendingStatusTask:Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    .line 238
    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mWorkingHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationListWorkingHandler;

    .line 239
    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    .line 240
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->m_filter:Landroid/content/IntentFilter;

    .line 241
    new-instance v0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mContextMenuItemCache:Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;

    .line 243
    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mVvmForwardOnClickListener:Lcom/android/mms/ui/ConversationListBaseActivity$DialogVVMForwardOnClickListener;

    .line 246
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->bShowWapPushMenuItem:Z

    .line 247
    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->WapPushObserver:Lcom/android/mms/ui/ConversationListBaseActivity$WapPushChangeObserver;

    .line 250
    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mListHeaderView:Landroid/view/View;

    .line 251
    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mListHeaderViewCache:Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;

    .line 252
    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCmasObserver:Landroid/database/ContentObserver;

    .line 259
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mIsForeground:Z

    .line 260
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mSearchFlag:Z

    .line 261
    iput v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mSmsDraftCount:I

    .line 262
    iput v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mMmsDraftCount:I

    .line 263
    iput v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUndeliveryCount:I

    .line 264
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->bIsSMSLast:Z

    .line 265
    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->sSMSBody:Ljava/lang/String;

    .line 266
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->sSMSType:I

    .line 267
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mMode:I

    .line 268
    iput v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mDeletedItemsCount:I

    .line 270
    iput v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mProgressDialogMode:I

    .line 275
    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mPhoneList:[Ljava/lang/String;

    .line 277
    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mForwardMsgCursor:Landroid/database/Cursor;

    .line 278
    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mBackupRestoreProgressDialog:Landroid/app/Dialog;

    .line 284
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->Sortitems:[Ljava/lang/CharSequence;

    .line 285
    iput v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->iSortBy:I

    .line 523
    new-instance v0, Lcom/android/mms/ui/ConversationListBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListBaseActivity$1;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mReceiverTime:Landroid/content/BroadcastReceiver;

    .line 539
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mRegisterTimeReceiver:Z

    .line 2902
    new-instance v0, Lcom/android/mms/ui/ConversationListBaseActivity$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListBaseActivity$9;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIlistenter:Lcom/android/mms/ui/MessagingListener;

    .line 2952
    new-instance v0, Lcom/android/mms/ui/ConversationListBaseActivity$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListBaseActivity$10;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->m_receiver:Lcom/android/mms/util/PresentReceiver;

    .line 3116
    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mDeleteProgressDialog:Landroid/app/Dialog;

    .line 3255
    new-instance v0, Lcom/android/mms/ui/ConversationListBaseActivity$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListBaseActivity$11;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCancelDeleteMessagesListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3265
    new-instance v0, Lcom/android/mms/ui/ConversationListBaseActivity$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListBaseActivity$12;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCancelBackupRestoreMessagesListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3275
    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mSeparatingDialog:Landroid/app/Dialog;

    .line 3376
    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mDBUpgradeDialog:Landroid/app/ProgressDialog;

    .line 3403
    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->updateDate2Task:Lcom/android/mms/task/UpdateDate2Task;

    .line 3404
    return-void
.end method

.method private SetCurrentSort(I)V
    .locals 0
    .parameter "iSort"

    .prologue
    .line 3549
    iput p1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->iSortBy:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationListBaseActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity;->updateTextSize(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ConversationListBaseActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity;->setTextLevel(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationListBaseActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->updateResource()V

    return-void
.end method

.method static synthetic access$302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    sput p0, Lcom/android/mms/ui/ConversationListBaseActivity;->TextSize_sel:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ConversationListBaseActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mProgressDialogMode:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/mms/ui/ConversationListBaseActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput p1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mProgressDialogMode:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/mms/ui/ConversationListBaseActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->confrimDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ConversationListBaseActivity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCancelDeleteMessagesListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ConversationListBaseActivity;IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationListBaseActivity;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ConversationListBaseActivity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCancelBackupRestoreMessagesListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method private addCallandSaveToPeopleContextMenu(Landroid/view/ContextMenu;Ljava/lang/String;)V
    .locals 21
    .parameter "menu"
    .parameter "address"

    .prologue
    .line 1483
    invoke-static/range {p2 .. p2}, Lcom/android/mms/ui/RecipientList$Recipient;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v14

    .line 1484
    .local v14, isPhoneNumber:Z
    invoke-static/range {p2 .. p2}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v13

    .line 1485
    .local v13, isEmailAddr:Z
    if-nez v14, :cond_1

    if-nez v13, :cond_1

    .line 1599
    :cond_0
    :goto_0
    return-void

    .line 1488
    :cond_1
    const/16 v16, 0x0

    .line 1490
    .local v16, name:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1491
    .local v15, isSim:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v11

    .line 1493
    .local v11, context:Landroid/content/Context;
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v10

    .line 1494
    .local v10, cache:Lcom/android/mms/util/ContactNameCache;
    move-object/from16 v0, p2

    invoke-virtual {v10, v11, v0}, Lcom/android/mms/util/ContactNameCache;->getPersonalId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v17

    .line 1496
    .local v17, person_id:J
    const-string v4, "ConversationListBaseActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "person_id = "

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v17

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    const-wide/16 v4, -0x2

    cmp-long v4, v17, v4

    if-nez v4, :cond_2

    .line 1516
    move v6, v14

    .line 1517
    .local v6, isPhoneNumber2:Z
    move-object v8, v11

    .line 1518
    .local v8, context2:Landroid/content/Context;
    move-object/from16 v9, p2

    .line 1519
    .local v9, address2:Ljava/lang/String;
    move-object v7, v10

    .line 1520
    .local v7, cache2:Lcom/android/mms/util/ContactNameCache;
    new-instance v19, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/ConversationListBaseActivity$5;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/mms/ui/ConversationListBaseActivity$5;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;ZLcom/android/mms/util/ContactNameCache;Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1530
    .end local v6           #isPhoneNumber2:Z
    .end local v7           #cache2:Lcom/android/mms/util/ContactNameCache;
    .end local v8           #context2:Landroid/content/Context;
    .end local v9           #address2:Ljava/lang/String;
    :cond_2
    const-wide/16 v4, -0x1

    cmp-long v4, v17, v4

    if-nez v4, :cond_5

    .line 1539
    :goto_1
    if-eqz v14, :cond_4

    .line 1545
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v11, v0, v1}, Lcom/android/mms/ui/MessageUtils;->getMakeCallDirectlyIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 1550
    .local v12, intent:Landroid/content/Intent;
    const-wide/16 v4, 0x0

    cmp-long v4, v17, v4

    if-lez v4, :cond_3

    .line 1552
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/ui/ConversationListBaseActivity$6;

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move-object/from16 v3, p1

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/mms/ui/ConversationListBaseActivity$6;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;JLandroid/view/ContextMenu;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 1565
    const-string v4, "personId"

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1566
    if-eqz p2, :cond_3

    .line 1567
    const-string v4, "number"

    move-object/from16 v0, p2

    invoke-virtual {v12, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1572
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVT()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1573
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/16 v19, 0x0

    const v20, 0x7f090017

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v4, v5, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v12}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1574
    const/4 v4, 0x0

    const/16 v5, 0x12

    const/16 v19, 0x0

    const v20, 0x7f090018

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v4, v5, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v12}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1583
    .end local v12           #intent:Landroid/content/Intent;
    :cond_4
    :goto_2
    const-wide/16 v4, 0x0

    cmp-long v4, v17, v4

    if-lez v4, :cond_7

    .line 1585
    const/4 v4, 0x0

    const/4 v5, 0x5

    const/16 v19, 0x0

    const v20, 0x7f0901bf

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v4, v5, v1, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    move-wide/from16 v0, v17

    invoke-static {v0, v1, v15}, Lcom/android/mms/ui/MessageUtils;->getOpenContactCardIntent(JZ)Landroid/content/Intent;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1533
    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v10, v11, v0}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1534
    move-object/from16 v0, p2

    invoke-virtual {v10, v11, v0}, Lcom/android/mms/util/ContactNameCache;->getIsFromSim(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    goto/16 :goto_1

    .line 1577
    .restart local v12       #intent:Landroid/content/Intent;
    :cond_6
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/16 v19, 0x0

    const v20, 0x7f0901b9

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v4, v5, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v12}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_2

    .line 1590
    .end local v12           #intent:Landroid/content/Intent;
    :cond_7
    if-nez v14, :cond_8

    if-eqz v13, :cond_0

    :cond_8
    const-wide/16 v4, 0x0

    cmp-long v4, v17, v4

    if-gez v4, :cond_0

    .line 1593
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 1594
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v4, "is_phoneNum"

    invoke-virtual {v12, v4, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1595
    const-string v4, "address"

    move-object/from16 v0, p2

    invoke-virtual {v12, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1596
    const/4 v4, 0x0

    const/4 v5, 0x6

    const/16 v19, 0x0

    const v20, 0x7f0901d7

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v4, v5, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v12}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method private addReplyAllContextMenu(Landroid/view/ContextMenu;J)V
    .locals 19
    .parameter "menu"
    .parameter "threadId"

    .prologue
    .line 1651
    const/4 v10, 0x0

    .line 1653
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/android/mms/ui/ConversationListBaseActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1657
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 1658
    invoke-interface {v10}, Landroid/database/Cursor;->moveToLast()Z

    .line 1659
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1660
    .local v17, type:Ljava/lang/String;
    const-string v2, "mms"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1661
    const/16 v16, 0x0

    .line 1662
    .local v16, toList:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1663
    .local v9, ccList:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 1664
    .local v12, fromList:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/android/mms/ui/MessageUtils;->getTo(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v16

    .line 1665
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/android/mms/ui/MessageUtils;->getCc(Landroid/content/Context;Landroid/database/Cursor;)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 1666
    const/4 v12, 0x0

    .line 1668
    const/16 v18, 0x0

    .line 1671
    .local v18, uri:Landroid/net/Uri;
    const/4 v2, 0x1

    :try_start_1
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1672
    .local v13, id:J
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 1673
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v15

    check-cast v15, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 1675
    .local v15, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    instance-of v2, v15, Lcom/google/android/mms/pdu/RetrieveConf;

    if-eqz v2, :cond_0

    .line 1676
    check-cast v15, Lcom/google/android/mms/pdu/RetrieveConf;

    .end local v15           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    .line 1681
    .end local v13           #id:J
    :cond_0
    :goto_0
    if-nez v9, :cond_1

    if-eqz v16, :cond_2

    :try_start_2
    const-string v2, ";"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1682
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x7

    const/4 v4, 0x0

    const v5, 0x7f0901f3

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v12, v1, v9}, Lcom/android/mms/ui/ConversationListBaseActivity;->getReplyAllIntent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1690
    .end local v9           #ccList:[Ljava/lang/String;
    .end local v12           #fromList:Ljava/lang/String;
    .end local v16           #toList:Ljava/lang/String;
    .end local v17           #type:Ljava/lang/String;
    .end local v18           #uri:Landroid/net/Uri;
    :cond_2
    if-eqz v10, :cond_3

    .line 1692
    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 1695
    :cond_3
    :goto_1
    return-void

    .line 1678
    .restart local v9       #ccList:[Ljava/lang/String;
    .restart local v12       #fromList:Ljava/lang/String;
    .restart local v16       #toList:Ljava/lang/String;
    .restart local v17       #type:Ljava/lang/String;
    .restart local v18       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v11

    .line 1679
    .local v11, e:Lcom/google/android/mms/MmsException;
    :try_start_3
    const-string v2, "ConversationListBaseActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get \'From\': "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1687
    .end local v9           #ccList:[Ljava/lang/String;
    .end local v11           #e:Lcom/google/android/mms/MmsException;
    .end local v12           #fromList:Ljava/lang/String;
    .end local v16           #toList:Ljava/lang/String;
    .end local v17           #type:Ljava/lang/String;
    .end local v18           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v11

    .line 1688
    .local v11, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1690
    if-eqz v10, :cond_3

    .line 1692
    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    goto :goto_1

    .line 1690
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_4

    .line 1692
    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    :cond_4
    throw v2
.end method

.method private confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 3
    .parameter "messageId"
    .parameter "title"
    .parameter "listener"

    .prologue
    .line 3244
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3245
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3246
    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3247
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3248
    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3249
    const v1, 0x20c015f

    invoke-virtual {v0, v1, p3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3250
    const v1, 0x20c0164

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3252
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createGroupMessage()V
    .locals 3

    .prologue
    .line 705
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 706
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "category"

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v2}, Lcom/android/mms/category/Category;->value()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 707
    const-string v1, "GroupMessage"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 708
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 709
    return-void
.end method

.method private fillInDraftInfo(Landroid/content/Intent;J)V
    .locals 10
    .parameter "intent"
    .parameter "threadID"

    .prologue
    .line 2401
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDraftsEnhancement()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2403
    const-wide/16 v1, 0x0

    .local v1, time:J
    const-wide/16 v3, 0x0

    .line 2404
    .local v3, time1:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2405
    invoke-direct {p0, p2, p3}, Lcom/android/mms/ui/ConversationListBaseActivity;->getDraftMsgIDFromSnippet(J)Lcom/android/mms/util/DraftResult;

    move-result-object v0

    .line 2406
    .local v0, result:Lcom/android/mms/util/DraftResult;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2407
    const-string v6, "Jerry"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "query draft association time >"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v3, v1

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    if-nez v0, :cond_1

    .line 2433
    .end local v0           #result:Lcom/android/mms/util/DraftResult;
    .end local v1           #time:J
    .end local v3           #time1:J
    :cond_0
    :goto_0
    return-void

    .line 2410
    .restart local v0       #result:Lcom/android/mms/util/DraftResult;
    .restart local v1       #time:J
    .restart local v3       #time1:J
    :cond_1
    iget-object v6, v0, Lcom/android/mms/util/DraftResult;->mMsgType:Ljava/lang/String;

    const-string v7, "mms"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-wide v6, v0, Lcom/android/mms/util/DraftResult;->mMsgID:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    .line 2411
    sget-object v6, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v7, v0, Lcom/android/mms/util/DraftResult;->mMsgID:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 2412
    .local v5, uri:Landroid/net/Uri;
    const-string v6, "msg_uri"

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2414
    iget-object v6, v0, Lcom/android/mms/util/DraftResult;->mSubject:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/android/mms/util/DraftResult;->mSubject:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 2415
    const-string v6, "subject"

    iget-object v7, v0, Lcom/android/mms/util/DraftResult;->mSubject:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2417
    :cond_2
    const-string v6, "msg_type"

    const-string v7, "mms"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2418
    const-string v6, "from_draft"

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2419
    const-string v6, "msg_Id"

    iget-wide v7, v0, Lcom/android/mms/util/DraftResult;->mMsgID:J

    invoke-virtual {p1, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 2421
    .end local v5           #uri:Landroid/net/Uri;
    :cond_3
    iget-object v6, v0, Lcom/android/mms/util/DraftResult;->mMsgType:Ljava/lang/String;

    const-string v7, "sms"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-wide v6, v0, Lcom/android/mms/util/DraftResult;->mMsgID:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 2423
    iget-object v6, v0, Lcom/android/mms/util/DraftResult;->mMsgBody:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->hasSmsVcardBody(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2424
    const-string v6, "sms_body"

    iget-object v7, v0, Lcom/android/mms/util/DraftResult;->mMsgBody:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2425
    const-string v6, "msg_type"

    const-string v7, "sms"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2426
    const-string v6, "from_draft"

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2427
    const-string v6, "msg_Id"

    iget-wide v7, v0, Lcom/android/mms/util/DraftResult;->mMsgID:J

    invoke-virtual {p1, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getDraftMsgIDFromSnippet(J)Lcom/android/mms/util/DraftResult;
    .locals 4
    .parameter "threadID"

    .prologue
    .line 2437
    new-instance v0, Lcom/android/mms/util/DraftResult;

    invoke-direct {v0}, Lcom/android/mms/util/DraftResult;-><init>()V

    .line 2439
    .local v0, result:Lcom/android/mms/util/DraftResult;
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getListCursorAdapter()Landroid/widget/CursorAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2440
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/mms/util/DraftCache;->getSnippet(J)Lcom/android/mms/util/DraftCache$DraftSnippet;

    move-result-object v1

    .line 2441
    .local v1, snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    if-eqz v1, :cond_0

    .line 2442
    iget-object v2, v1, Lcom/android/mms/util/DraftCache$DraftSnippet;->type:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/mms/util/DraftResult;->mMsgType:Ljava/lang/String;

    .line 2443
    iget-wide v2, v1, Lcom/android/mms/util/DraftCache$DraftSnippet;->msg_id:J

    iput-wide v2, v0, Lcom/android/mms/util/DraftResult;->mMsgID:J

    .line 2444
    const-string v2, "mms"

    iget-object v3, v1, Lcom/android/mms/util/DraftCache$DraftSnippet;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2445
    iget-object v2, v1, Lcom/android/mms/util/DraftCache$DraftSnippet;->text:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/mms/util/DraftResult;->mSubject:Ljava/lang/String;

    .line 2451
    .end local v1           #snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    :cond_0
    :goto_0
    return-object v0

    .line 2447
    .restart local v1       #snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    :cond_1
    iget-object v2, v1, Lcom/android/mms/util/DraftCache$DraftSnippet;->text:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/mms/util/DraftResult;->mMsgBody:Ljava/lang/String;

    goto :goto_0
.end method

.method private getLastVvmMessageVvmId(J)Ljava/lang/String;
    .locals 11
    .parameter "htcThreadId"

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 2150
    sget-object v8, Landroid/provider/Telephony$HtcThreads;->THREAD_CONTENT_URI:Landroid/net/Uri;

    .line 2151
    .local v8, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2152
    sget-object v8, Landroid/provider/Telephony$HtcThreads;->CONTACTBASE_THREAD_URI:Landroid/net/Uri;

    .line 2155
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v8, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "vvm_id"

    aput-object v5, v3, v10

    const/4 v5, 0x1

    const-string v6, "htcthread_id"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "thread_id"

    aput-object v6, v3, v5

    const-string v6, "normalized_date DESC limit 1"

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2161
    .local v7, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 2162
    .local v9, vvm_id:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 2163
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2164
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2167
    :cond_1
    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 2169
    :cond_2
    return-object v9
.end method

.method private getOptionsMenuList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x6

    .line 810
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mOptionMenuitems:Ljava/util/ArrayList;

    if-nez v3, :cond_e

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mOptionMenuitems:Ljava/util/ArrayList;

    .line 812
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mOptionMenuitems:Ljava/util/ArrayList;

    .line 815
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getThreadsCount()I

    move-result v3

    if-lez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mSearchFlag:Z

    if-nez v3, :cond_0

    .line 816
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 820
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getUndeliveryCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 821
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->hasDraft()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 826
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportWapPush()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 833
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v3

    const-string v4, "2.1"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_f

    .line 834
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->bShowWapPushMenuItem:Z

    if-eqz v3, :cond_3

    .line 835
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    :cond_3
    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsBackup()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 850
    sget-object v3, Lcom/android/mms/category/Category;->GENERAL:Lcom/android/mms/category/Category;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v3, v4}, Lcom/android/mms/category/Category;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 851
    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 857
    sget-object v3, Lcom/android/mms/category/Category;->BLOCKED:Lcom/android/mms/category/Category;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v3, v4}, Lcom/android/mms/category/Category;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 858
    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getListCursorAdapter()Landroid/widget/CursorAdapter;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getListCursorAdapter()Landroid/widget/CursorAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_6

    .line 861
    sget-object v3, Lcom/android/mms/category/Category;->GENERAL:Lcom/android/mms/category/Category;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v3, v4}, Lcom/android/mms/category/Category;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 862
    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    :cond_6
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMarkAllAsRead()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 874
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getUnreadCount()I

    move-result v3

    if-lez v3, :cond_7

    .line 875
    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeletedItems()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 882
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getDeletedItemsCount()I

    move-result v3

    if-lez v3, :cond_8

    .line 883
    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportGroupMessage()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 889
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 892
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTextSizeMenuInConversation()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 893
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsApp;->isShowMenuShowMe()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 898
    const/16 v3, 0x13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    :cond_b
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSortConversation()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 903
    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    :cond_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 907
    .local v0, count:I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 908
    .local v1, index:I
    if-gt v0, v7, :cond_12

    .line 920
    :cond_d
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTextSizeMenuInConversation()Z

    move-result v3

    if-nez v3, :cond_14

    .line 921
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 926
    :goto_4
    return-object v2

    .line 811
    .end local v0           #count:I
    .end local v1           #index:I
    .end local v2           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_e
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mOptionMenuitems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 839
    .restart local v2       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 863
    :cond_10
    sget-object v3, Lcom/android/mms/category/Category;->SECURE:Lcom/android/mms/category/Category;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v3, v4}, Lcom/android/mms/category/Category;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 864
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 865
    :cond_11
    sget-object v3, Lcom/android/mms/category/Category;->BLOCKED:Lcom/android/mms/category/Category;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v3, v4}, Lcom/android/mms/category/Category;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 866
    const/16 v3, 0x11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 911
    .restart local v0       #count:I
    .restart local v1       #index:I
    :cond_12
    if-lt v0, v8, :cond_13

    if-gt v0, v9, :cond_13

    .line 913
    const/4 v1, 0x1

    goto :goto_3

    .line 914
    :cond_13
    if-lt v0, v5, :cond_d

    .line 916
    const/4 v1, 0x2

    goto :goto_3

    .line 923
    :cond_14
    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4
.end method

.method private getReplyAllIntent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
    .locals 12
    .parameter "fromList"
    .parameter "toList"
    .parameter "ccList"

    .prologue
    const/4 v11, 0x1

    .line 1602
    new-instance v6, Landroid/content/Intent;

    const-class v10, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v6, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1603
    .local v6, intent:Landroid/content/Intent;
    const-string v10, "compose_mode"

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1604
    const-string v10, "exit_on_sent"

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1605
    const-string v10, "category"

    iget-object v11, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v11}, Lcom/android/mms/category/Category;->value()I

    move-result v11

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1606
    const-string v2, ""

    .line 1607
    .local v2, addresses:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1608
    .local v8, number:Ljava/lang/String;
    const-string v10, "phone"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/ConversationListBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 1609
    .local v9, tm:Landroid/telephony/TelephonyManager;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1610
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1613
    :cond_0
    if-eqz p1, :cond_2

    if-eqz v8, :cond_1

    invoke-static {p1, v8}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1614
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1615
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1618
    :cond_2
    if-eqz p2, :cond_3

    .line 1619
    if-nez v8, :cond_6

    .line 1620
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1621
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1633
    :cond_3
    if-eqz p3, :cond_8

    .line 1634
    move-object v3, p3

    .local v3, arr$:[Ljava/lang/String;
    array-length v7, v3

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_8

    aget-object v1, v3, v5

    .line 1635
    .local v1, address:Ljava/lang/String;
    if-eqz v8, :cond_4

    invoke-static {v1, v8}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1636
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1637
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1634
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1623
    .end local v1           #address:Ljava/lang/String;
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    :cond_6
    const-string v10, ";"

    invoke-virtual {p2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1624
    .local v0, Tos:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v10, v0

    if-ge v4, v10, :cond_3

    .line 1625
    aget-object v10, v0, v4

    invoke-static {v10, v8}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 1626
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v0, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1627
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1624
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1642
    .end local v0           #Tos:[Ljava/lang/String;
    .end local v4           #i:I
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_9

    .line 1643
    const-string v10, "address"

    invoke-virtual {v6, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1645
    :cond_9
    return-object v6
.end method

.method private initMemberFields(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 4
    .parameter "icicle"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 2126
    const/4 v1, 0x0

    .line 2127
    .local v1, nDefault:I
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    if-eqz v2, :cond_0

    .line 2129
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v2}, Lcom/android/mms/category/Category;->value()I

    move-result v1

    .line 2131
    :cond_0
    if-eqz p1, :cond_1

    .line 2132
    const-string v2, "category"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2136
    .local v0, categoryID:I
    :goto_0
    invoke-static {v0}, Lcom/android/mms/category/Category;->getCategory(I)Lcom/android/mms/category/Category;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    .line 2140
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mSearchFlag:Z

    .line 2144
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->bIsSMSLast:Z

    .line 2145
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->sSMSBody:Ljava/lang/String;

    .line 2146
    return-void

    .line 2134
    .end local v0           #categoryID:I
    :cond_1
    const-string v2, "category"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .restart local v0       #categoryID:I
    goto :goto_0
.end method

.method private isNotificationMmsOrRelatedVcard(Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;Ljava/lang/String;I)Z
    .locals 22
    .parameter "iInfo"
    .parameter "snippet"
    .parameter "msg_box"

    .prologue
    .line 1301
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->b_lastestVvm:Z

    if-eqz v2, :cond_0

    .line 1302
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->bIsSMSLast:Z

    .line 1303
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->sSMSBody:Ljava/lang/String;

    .line 1305
    const/4 v2, 0x0

    .line 1430
    :goto_0
    return v2

    .line 1309
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportForwardByEmail()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "sms"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->msgType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1310
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mForwardMsgCursor:Landroid/database/Cursor;

    .line 1311
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->bIsSMSLast:Z

    .line 1312
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->sSMSBody:Ljava/lang/String;

    .line 1313
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->sSMSType:I

    .line 1314
    const/4 v2, 0x0

    goto :goto_0

    .line 1316
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->bIsSMSLast:Z

    .line 1317
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->sSMSBody:Ljava/lang/String;

    .line 1318
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->sSMSType:I

    .line 1322
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->threadId:J

    move-wide/from16 v18, v0

    .line 1325
    .local v18, threadId:J
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1326
    sget-object v9, Landroid/provider/Telephony$Threads;->CONTENT_V2_URI:Landroid/net/Uri;

    .line 1327
    .local v9, baseUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mMode:I

    if-nez v2, :cond_2

    .line 1329
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->htcthreadId:J

    move-wide/from16 v18, v0

    .line 1334
    :cond_2
    :goto_1
    const-string v2, "ConversationListBaseActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forward threadId> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    .line 1337
    .local v10, builder:Landroid/net/Uri$Builder;
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1338
    const-string v2, "category"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v3}, Lcom/android/mms/category/Category;->value()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1340
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/android/mms/ui/ConversationListBaseActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "normalized_date DESC limit 1"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1346
    .local v17, threadCursor:Landroid/database/Cursor;
    if-eqz v17, :cond_8

    .line 1347
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1348
    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/MessageUtils;->duplicateCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mForwardMsgCursor:Landroid/database/Cursor;

    .line 1349
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1350
    .local v21, type:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1375
    .local v14, msgId:J
    const-string v2, "sms"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1378
    const/16 v2, 0xe

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1379
    .local v11, contentType:Ljava/lang/String;
    const-string v2, "application/vnd.wap.multipart.related"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/part"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1382
    .local v20, tspart:Ljava/lang/String;
    const-string v2, "ConversationListBaseActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tspart: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "ct=\'text/x-vCard\'"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1387
    .local v16, partCursor:Landroid/database/Cursor;
    if-eqz v16, :cond_4

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 1388
    const-string v2, "ConversationListBaseActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This is a related vcard, count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 1392
    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 1393
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1332
    .end local v9           #baseUri:Landroid/net/Uri;
    .end local v10           #builder:Landroid/net/Uri$Builder;
    .end local v11           #contentType:Ljava/lang/String;
    .end local v14           #msgId:J
    .end local v16           #partCursor:Landroid/database/Cursor;
    .end local v17           #threadCursor:Landroid/database/Cursor;
    .end local v20           #tspart:Ljava/lang/String;
    .end local v21           #type:Ljava/lang/String;
    :cond_3
    sget-object v9, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    .restart local v9       #baseUri:Landroid/net/Uri;
    goto/16 :goto_1

    .line 1395
    .restart local v10       #builder:Landroid/net/Uri$Builder;
    .restart local v11       #contentType:Ljava/lang/String;
    .restart local v14       #msgId:J
    .restart local v16       #partCursor:Landroid/database/Cursor;
    .restart local v17       #threadCursor:Landroid/database/Cursor;
    .restart local v20       #tspart:Ljava/lang/String;
    .restart local v21       #type:Ljava/lang/String;
    :cond_4
    if-eqz v16, :cond_5

    .line 1396
    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 1403
    .end local v11           #contentType:Ljava/lang/String;
    .end local v16           #partCursor:Landroid/database/Cursor;
    .end local v20           #tspart:Ljava/lang/String;
    :cond_5
    const-string v2, "sms"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1404
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "m_type"

    aput-object v6, v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1409
    .local v12, mType:Landroid/database/Cursor;
    if-eqz v12, :cond_7

    .line 1410
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1411
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1413
    .local v13, mms_type:I
    const/16 v2, 0x82

    if-ne v13, v2, :cond_6

    .line 1415
    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 1417
    invoke-static {v12}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 1418
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1422
    .end local v13           #mms_type:I
    :cond_6
    invoke-static {v12}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 1428
    .end local v12           #mType:Landroid/database/Cursor;
    .end local v14           #msgId:J
    .end local v21           #type:Ljava/lang/String;
    :cond_7
    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 1430
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private newCreateButtonClickListener(Ljava/lang/String;Z)Lcom/android/mms/ui/HtcSaveToContactsDialogView$ICreateButtonOnClickListener;
    .locals 3
    .parameter "address"
    .parameter "isPhoneNum"

    .prologue
    .line 1434
    move-object v0, p1

    .line 1435
    .local v0, add:Ljava/lang/String;
    move v2, p2

    .line 1436
    .local v2, isPhoneNumber:Z
    new-instance v1, Lcom/android/mms/ui/ConversationListBaseActivity$3;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/mms/ui/ConversationListBaseActivity$3;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;Ljava/lang/String;Z)V

    .line 1453
    .local v1, createButtonClickListener:Lcom/android/mms/ui/HtcSaveToContactsDialogView$ICreateButtonOnClickListener;
    return-object v1
.end method

.method private newSaveButtonClickListener(Ljava/lang/String;Z)Lcom/android/mms/ui/HtcSaveToContactsDialogView$ISaveButtonOnClickListener;
    .locals 3
    .parameter "address"
    .parameter "isPhoneNum"

    .prologue
    .line 1456
    move-object v0, p1

    .line 1457
    .local v0, add:Ljava/lang/String;
    move v1, p2

    .line 1458
    .local v1, isPhoneNumber:Z
    new-instance v2, Lcom/android/mms/ui/ConversationListBaseActivity$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity$4;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;Ljava/lang/String;Z)V

    .line 1468
    .local v2, saveButtonClickListener:Lcom/android/mms/ui/HtcSaveToContactsDialogView$ISaveButtonOnClickListener;
    return-object v2
.end method

.method private setContactDialogView(Lcom/android/mms/ui/HtcSaveToContactsDialogView;Ljava/lang/String;Z)V
    .locals 1
    .parameter "mSaveToContDialogView"
    .parameter "address"
    .parameter "isPhoneNum"

    .prologue
    .line 1472
    invoke-virtual {p1, p2}, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->setMsgText(Ljava/lang/String;)V

    .line 1473
    invoke-direct {p0, p2, p3}, Lcom/android/mms/ui/ConversationListBaseActivity;->newCreateButtonClickListener(Ljava/lang/String;Z)Lcom/android/mms/ui/HtcSaveToContactsDialogView$ICreateButtonOnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->setCreateButtonOnClickListener(Lcom/android/mms/ui/HtcSaveToContactsDialogView$ICreateButtonOnClickListener;)V

    .line 1476
    invoke-direct {p0, p2, p3}, Lcom/android/mms/ui/ConversationListBaseActivity;->newSaveButtonClickListener(Ljava/lang/String;Z)Lcom/android/mms/ui/HtcSaveToContactsDialogView$ISaveButtonOnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->setSaveButtonOnClickListener(Lcom/android/mms/ui/HtcSaveToContactsDialogView$ISaveButtonOnClickListener;)V

    .line 1479
    return-void
.end method

.method private setTextLevel(I)V
    .locals 1
    .parameter "textLevel"

    .prologue
    .line 786
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTextSizeChange()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTextSizeMenuInConversation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 788
    :cond_1
    invoke-static {}, Lcom/android/mms/util/TextSizeManager;->getInstance()Lcom/android/mms/util/TextSizeManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 789
    invoke-static {}, Lcom/android/mms/util/TextSizeManager;->getInstance()Lcom/android/mms/util/TextSizeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/util/TextSizeManager;->setTextLevel_CVS(I)V

    .line 791
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getListCursorAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ConversationListBaseAdapter;

    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getListCursorAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ConversationListBaseAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListBaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private setTitleWithComposeImgView(Landroid/view/View;)V
    .locals 2
    .parameter "title1"

    .prologue
    .line 3826
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mNewCompose:Lcom/htc/widget/HeaderBarImage;

    new-instance v1, Lcom/android/mms/ui/ConversationListBaseActivity$17;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListBaseActivity$17;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3831
    return-void
.end method

.method private updateResource()V
    .locals 4

    .prologue
    .line 3901
    const v2, 0x7f0e000b

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationListBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, groupView:Landroid/view/View;
    move-object v1, v0

    .line 3904
    check-cast v1, Lcom/htc/widget/HeaderBarMiddle;

    .line 3905
    .local v1, headerView:Lcom/htc/widget/HeaderBarMiddle;
    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarMiddle;->updateResource()V

    .line 3907
    return-void
.end method

.method private updateTextSize(I)V
    .locals 3
    .parameter "textlevel"

    .prologue
    .line 3912
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTextSizeMenuInConversation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3914
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3915
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3916
    .local v0, conf:Landroid/content/res/Configuration;
    rsub-int/lit8 v2, p1, 0x5

    iput v2, v0, Landroid/content/res/Configuration;->fontsize:I

    .line 3917
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 3920
    .end local v0           #conf:Landroid/content/res/Configuration;
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method


# virtual methods
.method protected IsSortDifferent(I)Z
    .locals 4
    .parameter "iCurrentSort"

    .prologue
    const/4 v2, 0x0

    .line 3597
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSortConversation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3598
    const-string v3, "com.android.mms_preferences"

    invoke-virtual {p0, v3, v2}, Lcom/android/mms/ui/ConversationListBaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3600
    .local v1, sp:Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 3601
    .local v0, iSortBy:I
    if-eqz v1, :cond_0

    const-string v3, "pref_SortBy"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3602
    const-string v3, "pref_SortBy"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3603
    if-eq v0, p1, :cond_0

    .line 3604
    const/4 v2, 0x1

    .line 3613
    .end local v0           #iSortBy:I
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_0
    return v2
.end method

.method protected ModifySortCommand(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 5
    .parameter "strOrderBy"
    .parameter "IsTraditional"
    .parameter "LimitCount"

    .prologue
    const/4 v4, 0x0

    .line 3552
    move-object v0, p1

    .line 3553
    .local v0, Orderby:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSortConversation()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3555
    const-string v3, "com.android.mms_preferences"

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/ui/ConversationListBaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3557
    .local v2, sp:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 3558
    .local v1, iSortBy:I
    if-eqz v2, :cond_0

    const-string v3, "pref_SortBy"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3559
    const-string v3, "pref_SortBy"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3560
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->SetCurrentSort(I)V

    .line 3561
    packed-switch v1, :pswitch_data_0

    .line 3593
    .end local v1           #iSortBy:I
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return-object v0

    .line 3564
    .restart local v1       #iSortBy:I
    .restart local v2       #sp:Landroid/content/SharedPreferences;
    :pswitch_0
    const-string v0, "date2 ASC"

    .line 3565
    if-eqz p2, :cond_1

    .line 3566
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3567
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "date2 ASC LIMIT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3569
    :cond_2
    const-string v0, "date2 ASC"

    goto :goto_0

    .line 3573
    :pswitch_1
    const-string v0, "Name COLLATE NOCASE ASC, date2 DESC"

    .line 3574
    if-eqz p2, :cond_1

    .line 3575
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3576
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Name COLLATE NOCASE ASC LIMIT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3578
    :cond_3
    const-string v0, "Name COLLATE NOCASE ASC"

    goto :goto_0

    .line 3582
    :pswitch_2
    const-string v0, "Name COLLATE NOCASE DESC, date2 DESC"

    .line 3583
    if-eqz p2, :cond_1

    .line 3584
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3585
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Name COLLATE NOCASE DESC LIMIT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3587
    :cond_4
    const-string v0, "Name COLLATE NOCASE DESC"

    goto :goto_0

    .line 3561
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method RegisterTimeBroadcastReceiver()V
    .locals 2

    .prologue
    .line 542
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 543
    .local v0, filterDate:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 544
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 545
    const-string v1, "android.intent.action.TIMEFORMAT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 546
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mRegisterTimeReceiver:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 547
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mReceiverTime:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/ConversationListBaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 548
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mRegisterTimeReceiver:Z

    .line 550
    :cond_0
    return-void
.end method

.method addQueryLimitExtra(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 3821
    return-void
.end method

.method protected createAddMessageItem()Landroid/view/View;
    .locals 15

    .prologue
    const/4 v13, 0x0

    .line 2488
    const/4 v10, 0x0

    .line 2489
    .local v10, v:Landroid/view/View;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDraftsEnhancement()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2490
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v11

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x209005e

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 2493
    const v11, 0x2020105

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 2494
    .local v8, text:Landroid/widget/TextView;
    const v11, 0x7f090168

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(I)V

    .line 2497
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTextSizeMenuInConversation()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2499
    invoke-static {}, Lcom/android/mms/util/TextSizeManager;->getInstance()Lcom/android/mms/util/TextSizeManager;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 2501
    invoke-static {}, Lcom/android/mms/util/TextSizeManager;->getInstance()Lcom/android/mms/util/TextSizeManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/util/TextSizeManager;->getFontSize_CVS()I

    move-result v9

    .line 2503
    .local v9, textSize:I
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b000b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 2504
    .local v7, smallest_size:I
    const/4 v6, 0x0

    .line 2506
    .local v6, offset:I
    sub-int v11, v7, v9

    sget v12, Lcom/android/mms/ui/ConversationListBaseActivity;->TextSize_sel:I

    rsub-int/lit8 v12, v12, 0x4

    mul-int/lit8 v12, v12, 0x2

    add-int v6, v11, v12

    .line 2507
    const/4 v11, 0x0

    add-int v12, v9, v6

    int-to-float v12, v12

    invoke-virtual {v8, v11, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2513
    .end local v6           #offset:I
    .end local v7           #smallest_size:I
    .end local v9           #textSize:I
    :cond_0
    const v11, 0x2020103

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2514
    .local v0, btn:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_1

    .line 2515
    new-instance v11, Lcom/android/mms/ui/ConversationListBaseActivity$7;

    invoke-direct {v11, p0}, Lcom/android/mms/ui/ConversationListBaseActivity$7;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2521
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    .line 2522
    .local v3, nLeft:I
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v5

    .line 2523
    .local v5, nTop:I
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    .line 2524
    .local v4, nRight:I
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    .line 2526
    .local v2, nBottom:I
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "common_button_small"

    const v14, 0x7f0200d4

    invoke-static {v12, v13, v14}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2529
    invoke-virtual {v0, v3, v5, v4, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2540
    .end local v0           #btn:Landroid/widget/LinearLayout;
    .end local v2           #nBottom:I
    .end local v3           #nLeft:I
    .end local v4           #nRight:I
    .end local v5           #nTop:I
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/mms/ui/ConversationListBaseActivity$HtcListItem;

    invoke-direct {v1}, Lcom/android/mms/ui/ConversationListBaseActivity$HtcListItem;-><init>()V

    .line 2541
    .local v1, firstItem:Lcom/android/mms/ui/ConversationListBaseActivity$HtcListItem;
    invoke-virtual {v10, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2542
    return-object v10

    .line 2534
    .end local v1           #firstItem:Lcom/android/mms/ui/ConversationListBaseActivity$HtcListItem;
    .end local v8           #text:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v11

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x2090055

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 2536
    const v11, 0x2020010

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 2537
    .restart local v8       #text:Landroid/widget/TextView;
    const v11, 0x7f090014

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected createNewMessage()V
    .locals 3

    .prologue
    .line 2466
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2467
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "category"

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v2}, Lcom/android/mms/category/Category;->value()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2468
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 2469
    return-void
.end method

.method protected delteMessage(J)V
    .locals 0
    .parameter "msgId"

    .prologue
    .line 2114
    return-void
.end method

.method protected delteThread(JJ)V
    .locals 0
    .parameter "threadId"
    .parameter "htcThreadId"

    .prologue
    .line 2112
    return-void
.end method

.method protected dismissBackupRestoreDialog(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 3661
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mBackupRestoreProgressDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    .line 3663
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mBackupRestoreProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 3664
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mBackupRestoreProgressDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3670
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3671
    .local v1, msg:Landroid/os/Message;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3672
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3674
    return-void

    .line 3665
    .end local v1           #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 3666
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected dismissDBUpgradeDialog()V
    .locals 2

    .prologue
    .line 3390
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mDBUpgradeDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 3392
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mDBUpgradeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3393
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mDBUpgradeDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3398
    :cond_0
    :goto_0
    return-void

    .line 3394
    :catch_0
    move-exception v0

    .line 3395
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected dismissDeleteDialog()V
    .locals 2

    .prologue
    .line 3636
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mDeleteProgressDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 3638
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mDeleteProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 3639
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3644
    :cond_0
    :goto_0
    return-void

    .line 3640
    :catch_0
    move-exception v0

    .line 3641
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected dismissSeparatingDialog()V
    .locals 2

    .prologue
    .line 3364
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mSeparatingDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 3366
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mSeparatingDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 3367
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mSeparatingDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3372
    :cond_0
    :goto_0
    return-void

    .line 3368
    :catch_0
    move-exception v0

    .line 3369
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method displayBackupRestoreResultDialog(IZ)V
    .locals 5
    .parameter "type"
    .parameter "success"

    .prologue
    .line 3927
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    const/4 v0, 0x1

    .line 3929
    .local v0, bbackup:Z
    :goto_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3930
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    if-eqz v0, :cond_2

    const v3, 0x7f09028b

    :goto_1
    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3931
    if-eqz p2, :cond_4

    if-eqz v0, :cond_3

    const v2, 0x7f090277

    .line 3933
    .local v2, message:I
    :goto_2
    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3934
    const v3, 0x20c015f

    new-instance v4, Lcom/android/mms/ui/ConversationListBaseActivity$19;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/ConversationListBaseActivity$19;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V

    invoke-virtual {v1, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3941
    :try_start_0
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mIsForeground:Z

    if-eqz v3, :cond_0

    .line 3942
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3946
    :cond_0
    :goto_3
    return-void

    .line 3927
    .end local v0           #bbackup:Z
    .end local v1           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v2           #message:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3930
    .restart local v0       #bbackup:Z
    .restart local v1       #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :cond_2
    const v3, 0x7f09028c

    goto :goto_1

    .line 3931
    :cond_3
    const v2, 0x7f09027c

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    const v2, 0x7f090278

    goto :goto_2

    :cond_5
    const v2, 0x7f09027d

    goto :goto_2

    .line 3944
    .restart local v2       #message:I
    :catch_0
    move-exception v3

    goto :goto_3
.end method

.method protected executeContextMenuForward()V
    .locals 37

    .prologue
    .line 2173
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/mms/util/SpaceBufferUtil;->isLowStorage(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_0

    .line 2174
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V

    .line 2352
    :goto_0
    return-void

    .line 2177
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mContextMenuItemCache:Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->threadId:J

    move-wide/from16 v27, v0

    .line 2178
    .local v27, threadId:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mMode:I

    move/from16 v32, v0

    if-nez v32, :cond_1

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v32

    if-eqz v32, :cond_1

    .line 2180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mContextMenuItemCache:Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->htcthreadId:J

    move-wide/from16 v27, v0

    .line 2182
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mContextMenuItemCache:Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-wide v9, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->htcthreadId:J

    .line 2183
    .local v9, htcThreadId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mContextMenuItemCache:Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v13, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->b_lastestVvm:Z

    .line 2186
    .local v13, latestIsVvm:Z
    if-eqz v13, :cond_3

    .line 2187
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/android/mms/ui/ConversationListBaseActivity;->getLastVvmMessageVvmId(J)Ljava/lang/String;

    move-result-object v31

    .line 2188
    .local v31, vvm_id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mVvmForwardOnClickListener:Lcom/android/mms/ui/ConversationListBaseActivity$DialogVVMForwardOnClickListener;

    move-object/from16 v32, v0

    if-nez v32, :cond_2

    .line 2189
    new-instance v32, Lcom/android/mms/ui/ConversationListBaseActivity$DialogVVMForwardOnClickListener;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity$DialogVVMForwardOnClickListener;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mVvmForwardOnClickListener:Lcom/android/mms/ui/ConversationListBaseActivity$DialogVVMForwardOnClickListener;

    .line 2191
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mVvmForwardOnClickListener:Lcom/android/mms/ui/ConversationListBaseActivity$DialogVVMForwardOnClickListener;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity$DialogVVMForwardOnClickListener;->setVVmId(Ljava/lang/String;)V

    .line 2192
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->showDialog(I)V

    goto :goto_0

    .line 2195
    .end local v31           #vvm_id:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v32

    if-eqz v32, :cond_7

    .line 2196
    sget-object v3, Landroid/provider/Telephony$Threads;->CONTENT_V2_URI:Landroid/net/Uri;

    .line 2201
    .local v3, baseUri:Landroid/net/Uri;
    :goto_1
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 2202
    .local v4, builder:Landroid/net/Uri$Builder;
    const-string v32, "category"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/mms/category/Category;->value()I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v4, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2203
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 2211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mForwardMsgCursor:Landroid/database/Cursor;

    move-object/from16 v26, v0

    .line 2213
    .local v26, theCursor:Landroid/database/Cursor;
    new-instance v11, Landroid/content/Intent;

    const-class v32, Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2214
    .local v11, intent:Landroid/content/Intent;
    const-string v32, "compose_mode"

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2215
    const-string v32, "exit_on_sent"

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2216
    const-string v32, "category"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/mms/category/Category;->value()I

    move-result v33

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2218
    if-eqz v26, :cond_12

    .line 2220
    :try_start_0
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToLast()Z

    move-result v32

    if-eqz v32, :cond_5

    .line 2221
    const/16 v32, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 2222
    .local v29, type:Ljava/lang/String;
    const/16 v32, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 2223
    .local v16, msgId:J
    const-string v32, "msg_type"

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2224
    const/16 v30, 0x0

    .line 2225
    .local v30, uri:Landroid/net/Uri;
    const-string v32, "sms"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_8

    .line 2226
    sget-object v32, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v32

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v30

    .line 2229
    const/16 v32, 0x7

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 2230
    .local v23, smsType:I
    invoke-static/range {v23 .. v23}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v12

    .line 2231
    .local v12, isMe:Z
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v5

    .line 2232
    .local v5, cache:Lcom/android/mms/util/ContactNameCache;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mContextMenuItemCache:Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->address:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2233
    .local v18, name:Ljava/lang/String;
    if-eqz v12, :cond_4

    .line 2234
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    const v33, 0x7f090022

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2235
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getPrefix(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v24

    .line 2238
    .local v24, subject:Ljava/lang/String;
    const-string v32, "sms_body"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x4

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2328
    .end local v5           #cache:Lcom/android/mms/util/ContactNameCache;
    .end local v12           #isMe:Z
    .end local v18           #name:Ljava/lang/String;
    .end local v23           #smsType:I
    .end local v24           #subject:Ljava/lang/String;
    :goto_2
    const-string v32, "Forward_msg"

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2332
    .end local v16           #msgId:J
    .end local v29           #type:Ljava/lang/String;
    .end local v30           #uri:Landroid/net/Uri;
    :cond_5
    invoke-static/range {v26 .. v26}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 2349
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/ConversationListBaseActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2198
    .end local v3           #baseUri:Landroid/net/Uri;
    .end local v4           #builder:Landroid/net/Uri$Builder;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v26           #theCursor:Landroid/database/Cursor;
    :cond_7
    sget-object v3, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    .restart local v3       #baseUri:Landroid/net/Uri;
    goto/16 :goto_1

    .line 2240
    .restart local v4       #builder:Landroid/net/Uri$Builder;
    .restart local v11       #intent:Landroid/content/Intent;
    .restart local v16       #msgId:J
    .restart local v26       #theCursor:Landroid/database/Cursor;
    .restart local v29       #type:Ljava/lang/String;
    .restart local v30       #uri:Landroid/net/Uri;
    :cond_8
    :try_start_1
    const-string v32, "mms"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_11

    .line 2241
    const/16 v24, 0x0

    .line 2242
    .restart local v24       #subject:Ljava/lang/String;
    new-instance v21, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct/range {v21 .. v21}, Lcom/google/android/mms/pdu/SendReq;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2244
    .local v21, sendReq:Lcom/google/android/mms/pdu/SendReq;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v32

    sget-object v33, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v33

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v19

    check-cast v19, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 2250
    .local v19, pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-static {}, Lcom/android/mms/MmsApp;->isRestrictedMode()Z

    move-result v32

    if-eqz v32, :cond_9

    .line 2251
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v32

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/mms/ui/MessageUtils;->isInCoreContentDomain(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v20

    .line 2252
    .local v20, result:I
    if-eqz v20, :cond_9

    .line 2253
    packed-switch v20, :pswitch_data_0

    .line 2332
    :goto_4
    invoke-static/range {v26 .. v26}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 2255
    :pswitch_0
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v33

    const v34, 0x7f0903d1

    invoke-virtual/range {v33 .. v34}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static {}, Lcom/android/mms/model/CarrierContentRestriction;->getMaxResolutionString()Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 2312
    .end local v19           #pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v20           #result:I
    :catch_0
    move-exception v7

    .line 2313
    .local v7, e:Lcom/google/android/mms/MmsException;
    const v32, 0x7f090060

    const/16 v33, 0x0

    :try_start_4
    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2317
    .end local v7           #e:Lcom/google/android/mms/MmsException;
    :goto_5
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v32

    sget-object v33, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v30

    .line 2322
    :goto_6
    :try_start_6
    const-string v32, "subject"

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2323
    const-string v32, "msg_uri"

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 2332
    .end local v16           #msgId:J
    .end local v21           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .end local v24           #subject:Ljava/lang/String;
    .end local v29           #type:Ljava/lang/String;
    .end local v30           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v32

    invoke-static/range {v26 .. v26}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    throw v32

    .line 2261
    .restart local v16       #msgId:J
    .restart local v19       #pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .restart local v20       #result:I
    .restart local v21       #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .restart local v24       #subject:Ljava/lang/String;
    .restart local v29       #type:Ljava/lang/String;
    .restart local v30       #uri:Landroid/net/Uri;
    :pswitch_1
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v33

    const v34, 0x7f0903d0

    invoke-virtual/range {v33 .. v34}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 2271
    .end local v20           #result:I
    :cond_9
    new-instance v6, Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getContentType()[B

    move-result-object v32

    move-object/from16 v0, v32

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 2272
    .local v6, contentType:Ljava/lang/String;
    const-string v32, "application/vnd.wap.multipart.related"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_a

    .line 2273
    const-string v32, "application/vnd.wap.multipart.related"

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->getBytes()[B

    move-result-object v32

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/SendReq;->setContentType([B)V

    .line 2276
    :cond_a
    const/4 v12, 0x0

    .line 2277
    .restart local v12       #isMe:Z
    const/16 v32, 0xd

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 2278
    .local v14, mmsType:I
    const/16 v32, 0x84

    move/from16 v0, v32

    if-eq v14, v0, :cond_b

    .line 2279
    const/4 v12, 0x1

    .line 2281
    :cond_b
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v5

    .line 2282
    .restart local v5       #cache:Lcom/android/mms/util/ContactNameCache;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mContextMenuItemCache:Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->address:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2283
    .restart local v18       #name:Ljava/lang/String;
    if-eqz v12, :cond_c

    .line 2284
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    const v33, 0x7f090022

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2285
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getPrefix(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v24

    .line 2288
    const/16 v32, 0x9

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_e

    .line 2290
    const/16 v32, 0x9

    const/16 v33, 0xa

    move-object/from16 v0, v26

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v8

    .line 2294
    .local v8, encstr:Ljava/lang/String;
    const-string v25, ""

    .line 2295
    .local v25, substr:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v32

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_d

    .line 2296
    const/16 v32, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 2299
    :cond_d
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v32

    if-eqz v32, :cond_f

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 2302
    .end local v8           #encstr:Ljava/lang/String;
    .end local v25           #substr:Ljava/lang/String;
    :cond_e
    :goto_7
    new-instance v32, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 2304
    const-string v32, "application/vnd.wap.multipart.related"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_10

    .line 2305
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v22

    .line 2306
    .local v22, slideshow:Lcom/android/mms/model/SlideshowModel;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v32

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    goto/16 :goto_5

    .line 2300
    .end local v22           #slideshow:Lcom/android/mms/model/SlideshowModel;
    .restart local v8       #encstr:Ljava/lang/String;
    .restart local v25       #substr:Ljava/lang/String;
    :cond_f
    move-object/from16 v24, v8

    goto :goto_7

    .line 2308
    .end local v8           #encstr:Ljava/lang/String;
    .end local v25           #substr:Ljava/lang/String;
    :cond_10
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/mms/model/MixedMultimediaMessageBody;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/MixedMultimediaMessageBody;

    move-result-object v15

    .line 2309
    .local v15, msgBody:Lcom/android/mms/model/MixedMultimediaMessageBody;
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/mms/model/MixedMultimediaMessageBody;->makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v32

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_5

    .line 2319
    .end local v5           #cache:Lcom/android/mms/util/ContactNameCache;
    .end local v6           #contentType:Ljava/lang/String;
    .end local v12           #isMe:Z
    .end local v14           #mmsType:I
    .end local v15           #msgBody:Lcom/android/mms/model/MixedMultimediaMessageBody;
    .end local v18           #name:Ljava/lang/String;
    .end local v19           #pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :catch_1
    move-exception v7

    .line 2320
    .restart local v7       #e:Lcom/google/android/mms/MmsException;
    const v32, 0x7f09005f

    const/16 v33, 0x0

    :try_start_8
    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 2326
    .end local v7           #e:Lcom/google/android/mms/MmsException;
    .end local v21           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .end local v24           #subject:Ljava/lang/String;
    :cond_11
    const-string v32, "ConversationListBaseActivity"

    const-string v33, "can not recongnize message type."

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 2336
    .end local v16           #msgId:J
    .end local v29           #type:Ljava/lang/String;
    .end local v30           #uri:Landroid/net/Uri;
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->bIsSMSLast:Z

    move/from16 v32, v0

    if-eqz v32, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->sSMSBody:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_6

    .line 2337
    const-string v32, "msg_type"

    const-string v33, "sms"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2339
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->sSMSType:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v12

    .line 2340
    .restart local v12       #isMe:Z
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v5

    .line 2341
    .restart local v5       #cache:Lcom/android/mms/util/ContactNameCache;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mContextMenuItemCache:Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->address:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2342
    .restart local v18       #name:Ljava/lang/String;
    if-eqz v12, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    const v33, 0x7f090022

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2343
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getPrefix(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v24

    .line 2344
    .restart local v24       #subject:Ljava/lang/String;
    const-string v32, "sms_body"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->sSMSBody:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2345
    const-string v32, "Forward_msg"

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3

    .line 2253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected extractContextMenuDataFromCursor(Landroid/database/Cursor;Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;)V
    .locals 0
    .parameter "c"
    .parameter "iInfo"

    .prologue
    .line 1290
    return-void
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 2457
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    if-nez v0, :cond_0

    .line 2458
    const/4 v0, -0x1

    .line 2460
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v0}, Lcom/android/mms/category/Category;->value()I

    move-result v0

    goto :goto_0
.end method

.method protected getDeletedItemsCount()I
    .locals 3

    .prologue
    .line 678
    const-string v0, "ConversationListBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Deleted Messages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mDeletedItemsCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mDeletedItemsCount:I

    return v0
.end method

.method protected getListCursorAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 1699
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getListHeaderView()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 727
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mListHeaderView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 728
    invoke-static {p0, v1, v1}, Lcom/android/mms/ui/ConversationListBaseAdapter;->newListItemView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mListHeaderView:Landroid/view/View;

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mListHeaderView:Landroid/view/View;

    return-object v0
.end method

.method protected getListHeaderViewCache()Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mListHeaderViewCache:Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;

    if-nez v0, :cond_0

    .line 721
    new-instance v0, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mListHeaderViewCache:Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mListHeaderViewCache:Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;

    return-object v0
.end method

.method protected getMoveToGeneralBoxIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 700
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected getMoveToSecureBoxIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 696
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected getMultipleDeleteIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 692
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method getPhoneList(J)V
    .locals 12
    .parameter "threadID"

    .prologue
    const/4 v2, 0x0

    .line 3736
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3739
    .local v9, phones:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 3742
    .local v8, phonecount:I
    new-array v0, v8, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mPhoneList:[Ljava/lang/String;

    .line 3744
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3745
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v8, :cond_0

    .line 3746
    const-string v0, "data2"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 3747
    .local v10, type:I
    const-string v0, "data1"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3748
    .local v7, number:Ljava/lang/String;
    invoke-static {v10}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v11

    .line 3750
    .local v11, typeLabelResource:I
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mPhoneList:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/ConversationListBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 3751
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 3745
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3753
    .end local v7           #number:Ljava/lang/String;
    .end local v10           #type:I
    .end local v11           #typeLabelResource:I
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3754
    return-void
.end method

.method protected getSelectPhoneNumberDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "args"

    .prologue
    .line 3757
    const-string v3, "items"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 3758
    .local v1, items:[Ljava/lang/CharSequence;
    const-string v3, "defaultPosition"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 3759
    .local v2, position:I
    move-object v0, p1

    .line 3761
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "selected"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3763
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0902e4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/mms/ui/ConversationListBaseActivity$16;

    invoke-direct {v4, p0, v0}, Lcom/android/mms/ui/ConversationListBaseActivity$16;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;Landroid/os/Bundle;)V

    invoke-virtual {v3, v1, v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20c015f

    new-instance v5, Lcom/android/mms/ui/ConversationListBaseActivity$15;

    invoke-direct {v5, p0, v1, v0}, Lcom/android/mms/ui/ConversationListBaseActivity$15;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;[Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20c0164

    new-instance v5, Lcom/android/mms/ui/ConversationListBaseActivity$14;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ConversationListBaseActivity$14;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/mms/ui/ConversationListBaseActivity$13;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/ConversationListBaseActivity$13;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    return-object v3
.end method

.method protected getSortByDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3862
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->Sortitems:[Ljava/lang/CharSequence;

    const v3, 0x7f0903c8

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationListBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 3863
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->Sortitems:[Ljava/lang/CharSequence;

    const/4 v3, 0x1

    const v4, 0x7f0903c9

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationListBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 3864
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->Sortitems:[Ljava/lang/CharSequence;

    const/4 v3, 0x2

    const v4, 0x7f0903ca

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationListBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 3865
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->Sortitems:[Ljava/lang/CharSequence;

    const/4 v3, 0x3

    const v4, 0x7f0903cb

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationListBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 3866
    const-string v2, "com.android.mms_preferences"

    invoke-virtual {p0, v2, v5}, Lcom/android/mms/ui/ConversationListBaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3868
    .local v1, sp:Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 3869
    .local v0, iSortBy:I
    if-eqz v1, :cond_0

    const-string v2, "pref_SortBy"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3870
    const-string v2, "pref_SortBy"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3872
    :cond_0
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0903c7

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->Sortitems:[Ljava/lang/CharSequence;

    new-instance v4, Lcom/android/mms/ui/ConversationListBaseActivity$18;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/ConversationListBaseActivity$18;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V

    invoke-virtual {v2, v3, v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    return-object v2
.end method

.method protected getThreadsCount()I
    .locals 1

    .prologue
    .line 673
    const/4 v0, 0x0

    return v0
.end method

.method protected getUndeliveryCount()I
    .locals 1

    .prologue
    .line 684
    iget v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUndeliveryCount:I

    return v0
.end method

.method protected getUnreadCount()I
    .locals 1

    .prologue
    .line 2119
    const/4 v0, 0x0

    return v0
.end method

.method protected handleCmasHeaderViewQuery()V
    .locals 14

    .prologue
    .line 736
    const-string v0, "ConversationListBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCmasHeaderViewQuery> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 738
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getListHeaderViewCache()Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->isQuerying:Z

    .line 739
    sget-object v0, Landroid/provider/Telephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 740
    .local v8, builder:Landroid/net/Uri$Builder;
    const-string v0, "limit"

    const-string v1, "1"

    invoke-virtual {v8, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 742
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "presidential DESC, date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 746
    .local v6, _cursor:Landroid/database/Cursor;
    if-nez v6, :cond_2

    .line 777
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getListHeaderViewCache()Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->isQuerying:Z

    .line 778
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getListHeaderViewCache()Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->valid:Z

    .line 779
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 747
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->isFinishing()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 777
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getListHeaderViewCache()Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->isQuerying:Z

    .line 778
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getListHeaderViewCache()Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->valid:Z

    .line 779
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 750
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getListHeaderViewCache()Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;

    move-result-object v9

    .line 751
    .local v9, cache:Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;
    invoke-virtual {v9}, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->reset()V

    .line 752
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 753
    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->visible:Z

    .line 755
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportEarthquakeAlert()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 756
    const-string v0, "body"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 758
    .local v7, body:Ljava/lang/String;
    iput-object v7, v9, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->subTitle:Ljava/lang/String;

    .line 765
    .end local v7           #body:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f09030c

    invoke-static {v0, v1}, Lcom/android/mms/custom/CustomizedManager;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->title:Ljava/lang/String;

    .line 767
    const-string v0, "date"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 768
    .local v12, time:J
    const-string v0, "ConversationListBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get time> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iput-wide v12, v9, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->time:J

    .line 773
    .end local v12           #time:J
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 774
    .local v11, msg:Landroid/os/Message;
    iput-object v9, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 775
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 777
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getListHeaderViewCache()Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->isQuerying:Z

    .line 778
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getListHeaderViewCache()Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->valid:Z

    .line 779
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 761
    .end local v11           #msg:Landroid/os/Message;
    :cond_4
    :try_start_2
    const-string v0, "c_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 763
    .local v10, ctype:I
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v9, v0, v10}, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->setCmasSubtitle(Landroid/content/Context;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 777
    .end local v9           #cache:Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;
    .end local v10           #ctype:I
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getListHeaderViewCache()Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->isQuerying:Z

    .line 778
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getListHeaderViewCache()Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->valid:Z

    .line 779
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 771
    .restart local v9       #cache:Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;
    :cond_6
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, v9, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->visible:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method protected hasDraft()Z
    .locals 2

    .prologue
    .line 688
    iget v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mSmsDraftCount:I

    iget v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mMmsDraftCount:I

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initCommonResources(Landroid/view/View;)V
    .locals 5
    .parameter "title2"

    .prologue
    .line 3837
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTextSizeMenuInConversation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3839
    invoke-static {}, Lcom/android/mms/util/TextSizeManager;->getInstance()Lcom/android/mms/util/TextSizeManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3841
    invoke-static {}, Lcom/android/mms/util/TextSizeManager;->getInstance()Lcom/android/mms/util/TextSizeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/util/TextSizeManager;->getFontSize_CVS()I

    move-result v2

    .line 3842
    .local v2, textSize:I
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3844
    .local v1, smallest_size:I
    const/4 v0, 0x0

    .line 3845
    .local v0, offset:I
    sub-int v3, v1, v2

    sget v4, Lcom/android/mms/ui/ConversationListBaseActivity;->TextSize_sel:I

    rsub-int/lit8 v4, v4, 0x4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 3855
    .end local v0           #offset:I
    .end local v1           #smallest_size:I
    .end local v2           #textSize:I
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportComposeMsgAtTitle()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3856
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity;->setTitleWithComposeImgView(Landroid/view/View;)V

    .line 3858
    :cond_1
    return-void
.end method

.method protected markAllAsRead()V
    .locals 0

    .prologue
    .line 2121
    return-void
.end method

.method protected moveToGeneralFolder(J)V
    .locals 0
    .parameter "threadId"

    .prologue
    .line 2111
    return-void
.end method

.method protected moveToSecureFolder(J)V
    .locals 0
    .parameter "threadId"

    .prologue
    .line 2110
    return-void
.end method

.method protected onCmasChange(Z)V
    .locals 0
    .parameter "selfUpdate"

    .prologue
    .line 716
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 554
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 555
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 560
    :cond_0
    sget v0, Lcom/android/mms/ui/ConversationListBaseActivity;->TextSize_sel:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListBaseActivity;->updateTextSize(I)V

    .line 562
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 43
    .parameter "item"

    .prologue
    .line 1924
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v28

    check-cast v28, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    .line 1926
    .local v28, info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    const-string v2, "ConversationListBaseActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onContextItemSelected position> "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v28

    iget v11, v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    const-string v2, "ConversationListBaseActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onContextItemSelected targetView> "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v28

    iget-object v11, v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    const-string v2, "ConversationListBaseActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onContextItemSelected id> "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v28

    iget-wide v11, v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    move-object/from16 v0, v28

    iget v2, v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    if-gez v2, :cond_0

    const/4 v2, 0x0

    .line 2106
    :goto_0
    return v2

    .line 1937
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mContextMenuItemCache:Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;

    iget-wide v3, v2, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->htcthreadId:J

    .line 1940
    .local v3, htcThreadId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mContextMenuItemCache:Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;

    iget-wide v5, v2, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->threadId:J

    .line 1941
    .local v5, threadId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mContextMenuItemCache:Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;

    iget v9, v2, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->threadtype:I

    .line 1942
    .local v9, threadType:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mContextMenuItemCache:Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;

    iget-wide v0, v2, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->date:J

    move-wide/from16 v39, v0

    .line 1943
    .local v39, t_date:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mContextMenuItemCache:Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;

    iget-wide v0, v2, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->latest_date:J

    move-wide/from16 v34, v0

    .line 1944
    .local v34, latest_date:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mContextMenuItemCache:Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;

    iget-object v7, v2, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->address:Ljava/lang/String;

    .line 1945
    .local v7, address:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mContextMenuItemCache:Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;

    iget-boolean v0, v2, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->b_lastestVvm:Z

    move/from16 v33, v0

    .line 1946
    .local v33, latestIsVvm:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mContextMenuItemCache:Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;

    iget v10, v2, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->unreadCount:I

    .line 1948
    .local v10, unreadCount:I
    const-string v2, "ConversationListBaseActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "thread_id> "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    const-string v2, "ConversationListBaseActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "htcThread_id> "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2106
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/htc/app/HtcListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 1957
    :pswitch_1
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v29

    .line 1960
    .local v29, intent:Landroid/content/Intent;
    const-wide/16 v11, 0x0

    cmp-long v2, v3, v11

    if-lez v2, :cond_1

    .end local v3           #htcThreadId:J
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/mms/ui/ConversationListBaseActivity;->getPhoneList(J)V

    .line 1962
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mPhoneList:[Ljava/lang/String;

    array-length v2, v2

    const/4 v8, 0x1

    if-le v2, v8, :cond_3

    .line 1963
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1964
    .local v21, b:Landroid/os/Bundle;
    const-string v2, "items"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mPhoneList:[Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 1965
    const-string v2, "defaultPosition"

    const-string v8, "defaultPosition"

    const/4 v11, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1966
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/16 v8, 0x12

    if-ne v2, v8, :cond_2

    .line 1967
    const-string v2, "isVTCall"

    const/4 v8, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1968
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 1972
    :goto_2
    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v21           #b:Landroid/os/Bundle;
    .restart local v3       #htcThreadId:J
    :cond_1
    move-wide v3, v5

    .line 1960
    goto :goto_1

    .line 1970
    .end local v3           #htcThreadId:J
    .restart local v21       #b:Landroid/os/Bundle;
    :cond_2
    const/4 v2, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_2

    .line 1976
    .end local v21           #b:Landroid/os/Bundle;
    :cond_3
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/16 v8, 0x12

    if-ne v2, v8, :cond_4

    .line 1977
    const-string v2, "isVTCall"

    const/4 v8, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1980
    :cond_4
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v38

    .line 1981
    .local v38, phoneInterface:Lcom/android/internal/telephony/ITelephony;
    const-string v2, "fromDialer"

    const/4 v8, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1982
    move-object/from16 v0, v38

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->dialWithoutDelay(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1983
    const-string v2, "ConversationListBaseActivity"

    const-string v8, "is not Contact make call"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1990
    .end local v38           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    :cond_5
    :goto_3
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1985
    :catch_0
    move-exception v27

    .line 1987
    .local v27, e:Ljava/lang/Exception;
    const-string v2, "HtcDialer"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1997
    .end local v27           #e:Ljava/lang/Exception;
    .end local v29           #intent:Landroid/content/Intent;
    .restart local v3       #htcThreadId:J
    :pswitch_2
    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/mms/ui/ConversationListBaseActivity;->openThread(JJLjava/lang/String;ZII)V

    .line 1998
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2000
    :pswitch_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mProgressDialogMode:I

    .line 2002
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/util/SpaceBufferUtil;->isNoStorage(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2003
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V

    .line 2004
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2007
    :cond_6
    const-wide/16 v11, 0x0

    cmp-long v2, v3, v11

    if-lez v2, :cond_8

    .line 2008
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2010
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v3, v4}, Lcom/android/mms/ui/ConversationListBaseActivity;->delteThread(JJ)V

    .line 2024
    :goto_4
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2012
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v3, v4}, Lcom/android/mms/ui/ConversationListBaseActivity;->delteThread(JJ)V

    goto :goto_4

    .line 2022
    :cond_8
    const-wide/16 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v11, v12}, Lcom/android/mms/ui/ConversationListBaseActivity;->delteThread(JJ)V

    goto :goto_4

    .line 2027
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->executeContextMenuForward()V

    .line 2028
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2030
    :pswitch_5
    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/mms/ui/ConversationListBaseActivity;->openThread(JJLjava/lang/String;ZII)V

    .line 2031
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2034
    :pswitch_6
    new-instance v32, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    move-object/from16 v0, v32

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2035
    .local v32, it:Landroid/content/Intent;
    const-string v2, "android.intent.extra.TEXT"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->sSMSBody:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2036
    const-string v2, "text/plain"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2037
    const v2, 0x7f0902df

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ConversationListBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ConversationListBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 2038
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2041
    .end local v32           #it:Landroid/content/Intent;
    :pswitch_7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mProgressDialogMode:I

    .line 2042
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/mms/ui/ConversationListBaseActivity;->moveToSecureFolder(J)V

    .line 2043
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2045
    :pswitch_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mProgressDialogMode:I

    .line 2046
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/mms/ui/ConversationListBaseActivity;->moveToGeneralFolder(J)V

    .line 2047
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2049
    :pswitch_9
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v29

    .line 2050
    .restart local v29       #intent:Landroid/content/Intent;
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    .line 2051
    .local v24, bundle:Landroid/os/Bundle;
    if-eqz v29, :cond_9

    .line 2052
    const-string v2, "is_phoneNum"

    const-string v8, "is_phoneNum"

    const/4 v11, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2053
    const-string v2, "address"

    const-string v8, "address"

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 2056
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2059
    .end local v24           #bundle:Landroid/os/Bundle;
    .end local v29           #intent:Landroid/content/Intent;
    :pswitch_a
    new-instance v26, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/MmsListActivity;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2060
    .local v26, cmasIntent:Landroid/content/Intent;
    const-string v2, "mode"

    const/4 v8, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2061
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 2062
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2065
    .end local v26           #cmasIntent:Landroid/content/Intent;
    :pswitch_b
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v30

    .line 2066
    .local v30, intent2:Landroid/content/Intent;
    const-string v2, "t_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v41

    .line 2068
    .local v41, t_id:J
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2069
    sget-object v22, Landroid/provider/Telephony$Threads;->CONTENT_V2_URI:Landroid/net/Uri;

    .line 2073
    .local v22, baseUri:Landroid/net/Uri;
    :goto_5
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v23

    .line 2074
    .local v23, builder:Landroid/net/Uri$Builder;
    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2076
    const/16 v25, 0x0

    .line 2077
    .local v25, c:Landroid/database/Cursor;
    const-wide/16 v36, 0x0

    .line 2079
    .local v36, msg_id:J
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v13

    sget-object v14, Lcom/android/mms/ui/ConversationListBaseActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 2083
    if-eqz v25, :cond_e

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_e

    .line 2084
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToLast()Z

    .line 2085
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v14

    .line 2092
    .end local v36           #msg_id:J
    .local v14, msg_id:J
    :goto_6
    if-eqz v25, :cond_a

    .line 2093
    invoke-static/range {v25 .. v25}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 2096
    :cond_a
    :goto_7
    const-string v2, "msgtype"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v2, "snippet"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v2, "Date"

    const-wide/16 v11, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    sget v20, Lcom/android/mms/ui/ConversationList;->search_category:I

    move-object/from16 v11, p0

    move-wide/from16 v12, v41

    invoke-static/range {v11 .. v20}, Lcom/android/mms/ui/MessageUtils;->MyTaskCollectIntent(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;JI)Landroid/content/Intent;

    move-result-object v31

    .line 2101
    .local v31, intent3:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 2102
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2071
    .end local v14           #msg_id:J
    .end local v22           #baseUri:Landroid/net/Uri;
    .end local v23           #builder:Landroid/net/Uri$Builder;
    .end local v25           #c:Landroid/database/Cursor;
    .end local v31           #intent3:Landroid/content/Intent;
    :cond_b
    sget-object v22, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    .restart local v22       #baseUri:Landroid/net/Uri;
    goto :goto_5

    .line 2088
    .restart local v23       #builder:Landroid/net/Uri$Builder;
    .restart local v25       #c:Landroid/database/Cursor;
    .restart local v36       #msg_id:J
    :catch_1
    move-exception v27

    .line 2089
    .restart local v27       #e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2092
    if-eqz v25, :cond_d

    .line 2093
    invoke-static/range {v25 .. v25}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    move-wide/from16 v14, v36

    .end local v36           #msg_id:J
    .restart local v14       #msg_id:J
    goto :goto_7

    .line 2092
    .end local v14           #msg_id:J
    .end local v27           #e:Ljava/lang/Exception;
    .restart local v36       #msg_id:J
    :catchall_0
    move-exception v2

    if-eqz v25, :cond_c

    .line 2093
    invoke-static/range {v25 .. v25}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    :cond_c
    throw v2

    .restart local v27       #e:Ljava/lang/Exception;
    :cond_d
    move-wide/from16 v14, v36

    .end local v36           #msg_id:J
    .restart local v14       #msg_id:J
    goto :goto_7

    .end local v14           #msg_id:J
    .end local v27           #e:Ljava/lang/Exception;
    .restart local v36       #msg_id:J
    :cond_e
    move-wide/from16 v14, v36

    .end local v36           #msg_id:J
    .restart local v14       #msg_id:J
    goto :goto_6

    .line 1951
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const v13, 0x104000e

    const/4 v12, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 345
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 346
    const-string v5, "ConversationListBaseActivity"

    const-string v6, "onCreate() >>>>>>>>>>>>>>>>>>>>"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {p0, v10}, Lcom/android/mms/ui/ConversationListBaseActivity;->requestWindowFeature(I)Z

    .line 351
    new-instance v1, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;

    invoke-direct {v1}, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;-><init>()V

    .line 354
    .local v1, Headercomposer:Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;
    new-array v4, v10, [Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    new-instance v5, Lcom/android/mms/util/CommonActivityLayout$BarImage;

    sget-object v6, Lcom/android/mms/util/CommonActivityLayout$BarImageType;->LABEL:Lcom/android/mms/util/CommonActivityLayout$BarImageType;

    const v7, 0x7f020108

    const v8, 0x7f09001a

    invoke-direct {v5, v6, v7, v8}, Lcom/android/mms/util/CommonActivityLayout$BarImage;-><init>(Lcom/android/mms/util/CommonActivityLayout$BarImageType;II)V

    aput-object v5, v4, v9

    .line 358
    .local v4, right:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;
    const/4 v0, 0x0

    .line 359
    .local v0, Center:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 360
    new-array v0, v10, [Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    .end local v0           #Center:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;
    new-instance v5, Lcom/android/mms/util/CommonActivityLayout$BarDropDown;

    invoke-direct {v5, v13, v12}, Lcom/android/mms/util/CommonActivityLayout$BarDropDown;-><init>(II)V

    aput-object v5, v0, v9

    .line 371
    .restart local v0       #Center:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;
    :goto_0
    iput-object v0, v1, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mCenter:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    .line 372
    iput-object v4, v1, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mRight:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    .line 373
    sget-object v5, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->HEADER_MIDDLE:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    iput-object v5, v1, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mHight:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    .line 377
    invoke-static {}, Lcom/android/mms/util/ViewCache;->getInstance()Lcom/android/mms/util/ViewCache;

    move-result-object v5

    const-class v6, Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const v7, 0x7f030002

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/mms/util/ViewCache;->get(Landroid/content/Context;II)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 378
    .local v2, activityLayout:Landroid/widget/RelativeLayout;
    new-instance v5, Lcom/android/mms/util/CommonActivityLayout;

    invoke-direct {v5, p0, v1, v11, v2}, Lcom/android/mms/util/CommonActivityLayout;-><init>(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;Lcom/android/mms/util/CommonActivityLayout$FooterComposer;Landroid/widget/RelativeLayout;)V

    iput-object v5, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->activityComposer:Lcom/android/mms/util/CommonActivityLayout;

    .line 380
    aget-object v5, v4, v9

    invoke-virtual {v5}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->getView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HeaderBarImage;

    iput-object v5, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mNewCompose:Lcom/htc/widget/HeaderBarImage;

    .line 382
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 383
    aget-object v5, v0, v9

    invoke-virtual {v5}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->getView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HeaderBarDropDown;

    iput-object v5, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mTitleDropDown:Lcom/htc/widget/HeaderBarDropDown;

    .line 387
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportConversationViewCache()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 392
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->activityComposer:Lcom/android/mms/util/CommonActivityLayout;

    invoke-virtual {v5}, Lcom/android/mms/util/CommonActivityLayout;->getActivityContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationListBaseActivity;->setContentView(Landroid/view/View;)V

    .line 399
    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->activityComposer:Lcom/android/mms/util/CommonActivityLayout;

    invoke-virtual {v5}, Lcom/android/mms/util/CommonActivityLayout;->getActivityContentView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0e000f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 400
    .local v3, emptyView:Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 401
    const v5, 0x7f090349

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/mms/ui/ConversationListBaseActivity;->initMemberFields(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 408
    invoke-virtual {p0, v11}, Lcom/android/mms/ui/ConversationListBaseActivity;->initCommonResources(Landroid/view/View;)V

    .line 411
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->setRoundedCorner(Landroid/view/View;)V

    .line 415
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->m_filter:Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.USER_PRESENT"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 416
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->m_filter:Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 417
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->m_filter:Landroid/content/IntentFilter;

    const-string v6, "android.message.RECEIVE_NEW_MESSAGE"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 418
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->m_receiver:Lcom/android/mms/util/PresentReceiver;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->m_filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v5, v6}, Lcom/android/mms/ui/ConversationListBaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 421
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIlistenter:Lcom/android/mms/ui/MessagingListener;

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/MessagingController;->addListener(Lcom/android/mms/ui/MessagingListener;)V

    .line 424
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCMAS()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportEarthquakeAlert()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 425
    :cond_1
    new-instance v5, Lcom/android/mms/ui/ConversationListBaseActivity$CmasContentObserver;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ConversationListBaseActivity$CmasContentObserver;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V

    iput-object v5, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCmasObserver:Landroid/database/ContentObserver;

    .line 426
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCmasObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v10, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 430
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 431
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 439
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTextSizeMenuInConversation()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 441
    invoke-static {}, Lcom/android/mms/util/TextSizeManager;->getInstance()Lcom/android/mms/util/TextSizeManager;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 442
    invoke-static {}, Lcom/android/mms/util/TextSizeManager;->getInstance()Lcom/android/mms/util/TextSizeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/util/TextSizeManager;->getTextLevel_CVS()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x4

    sput v5, Lcom/android/mms/ui/ConversationListBaseActivity;->TextSize_sel:I

    .line 443
    :cond_3
    sget v5, Lcom/android/mms/ui/ConversationListBaseActivity;->TextSize_sel:I

    invoke-direct {p0, v5}, Lcom/android/mms/ui/ConversationListBaseActivity;->updateTextSize(I)V

    .line 447
    :cond_4
    return-void

    .line 365
    .end local v2           #activityLayout:Landroid/widget/RelativeLayout;
    .end local v3           #emptyView:Landroid/widget/TextView;
    :cond_5
    new-array v0, v10, [Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    .end local v0           #Center:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;
    new-instance v5, Lcom/android/mms/util/CommonActivityLayout$BarText;

    invoke-direct {v5, v13, v12}, Lcom/android/mms/util/CommonActivityLayout$BarText;-><init>(II)V

    aput-object v5, v0, v9

    .restart local v0       #Center:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;
    goto/16 :goto_0

    .line 385
    .restart local v2       #activityLayout:Landroid/widget/RelativeLayout;
    :cond_6
    aget-object v5, v0, v9

    invoke-virtual {v5}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->getView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HeaderBarText;

    iput-object v5, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mBarText:Lcom/htc/widget/HeaderBarText;

    goto/16 :goto_1

    .line 397
    :cond_7
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->activityComposer:Lcom/android/mms/util/CommonActivityLayout;

    invoke-virtual {v5}, Lcom/android/mms/util/CommonActivityLayout;->getActivityContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationListBaseActivity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 435
    .restart local v3       #emptyView:Landroid/widget/TextView;
    :cond_8
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 36
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 1706
    const/4 v15, 0x0

    .line 1708
    .local v15, info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object v15, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1713
    const-string v32, "ConversationListBaseActivity"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "onCreateContextMenu position> "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    iget v0, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    const-string v32, "ConversationListBaseActivity"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "onCreateContextMenu targetView> "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    iget-object v0, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    const-string v32, "ConversationListBaseActivity"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "onCreateContextMenu id> "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    iget-wide v0, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->id:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v11

    .line 1719
    .local v11, hCnt:I
    iget v0, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v32, v0

    sub-int v24, v32, v11

    .line 1720
    .local v24, position:I
    const-string v32, "ConversationListBaseActivity"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "hCnt> "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", position> "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    if-gez v24, :cond_2

    .line 1724
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCMAS()Z

    move-result v32

    if-nez v32, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportEarthquakeAlert()Z

    move-result v32

    if-eqz v32, :cond_1

    .line 1725
    :cond_0
    const v32, 0x7f090036

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 1726
    const/16 v32, 0x0

    const/16 v33, 0xb

    const/16 v34, 0x0

    const v35, 0x20c01f4

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1913
    .end local v11           #hCnt:I
    .end local v24           #position:I
    :cond_1
    :goto_0
    return-void

    .line 1709
    :catch_0
    move-exception v10

    .line 1710
    .local v10, e:Ljava/lang/ClassCastException;
    const-string v32, "ConversationListBaseActivity"

    const-string v33, "fail on create context menu"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1733
    .end local v10           #e:Ljava/lang/ClassCastException;
    .restart local v11       #hCnt:I
    .restart local v24       #position:I
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCMASSort()Z

    move-result v32

    if-eqz v32, :cond_3

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCMAS()Z

    move-result v32

    if-eqz v32, :cond_3

    .line 1735
    iget-wide v0, v15, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->id:J

    move-wide/from16 v32, v0

    const-wide/16 v34, -0x3e8

    cmp-long v32, v32, v34

    if-nez v32, :cond_3

    .line 1737
    const v32, 0x7f090036

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 1738
    const/16 v32, 0x0

    const/16 v33, 0xb

    const/16 v34, 0x0

    const v35, 0x20c01f4

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 1744
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getListCursorAdapter()Landroid/widget/CursorAdapter;

    move-result-object v32

    if-eqz v32, :cond_1

    .line 1770
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getListCursorAdapter()Landroid/widget/CursorAdapter;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/database/Cursor;

    .line 1774
    .local v29, threadCursor:Landroid/database/Cursor;
    if-eqz v29, :cond_1

    .line 1776
    const v32, 0x7f090036

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 1777
    const/16 v32, 0x0

    const/16 v33, 0x1

    const/16 v34, 0x0

    const v35, 0x20c01f4

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1778
    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const v35, 0x20c01fc

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mContextMenuItemCache:Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ConversationListBaseActivity;->extractContextMenuDataFromCursor(Landroid/database/Cursor;Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;)V

    .line 1787
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mContextMenuItemCache:Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;

    .line 1789
    .local v14, iInfo:Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;
    iget-wide v0, v14, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->threadId:J

    move-wide/from16 v30, v0

    .line 1791
    .local v30, threadId:J
    iget v0, v14, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->threadtype:I

    move/from16 v32, v0

    if-nez v32, :cond_13

    const/4 v9, 0x1

    .line 1792
    .local v9, commonThreadtype:Z
    :goto_1
    iget-object v8, v14, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->address:Ljava/lang/String;

    .line 1793
    .local v8, address:Ljava/lang/String;
    iget-object v0, v14, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->msgType:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1794
    .local v22, msgType:Ljava/lang/String;
    iget-wide v0, v14, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->latest_date:J

    move-wide/from16 v18, v0

    .line 1795
    .local v18, latest_date:J
    iget-wide v0, v14, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->date:J

    move-wide/from16 v20, v0

    .line 1796
    .local v20, mms_date:J
    iget-boolean v0, v14, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->b_lastestVvm:Z

    move/from16 v17, v0

    .line 1797
    .local v17, latestIsVvm:Z
    const/16 v26, 0x0

    .line 1798
    .local v26, specVvmAdress:Ljava/lang/String;
    const/16 v16, 0x0

    .line 1799
    .local v16, is_private:Z
    if-eqz v17, :cond_4

    .line 1800
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v8}, Lcom/android/mms/util/ContactNameCache;->getSepcVvmAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1801
    iget-wide v0, v14, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->is_private:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-eqz v32, :cond_14

    const/16 v16, 0x1

    .line 1804
    :cond_4
    :goto_2
    if-nez v26, :cond_5

    .line 1805
    if-eqz v9, :cond_15

    .line 1806
    const/16 v32, 0x0

    const/16 v33, 0x2

    const/16 v34, 0x0

    const v35, 0x7f09010d

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1814
    :cond_5
    :goto_3
    const/16 v32, 0xc

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v14, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->msgType:Ljava/lang/String;

    .line 1815
    const/16 v32, 0x5

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1816
    .local v25, snippet:Ljava/lang/String;
    const/16 v32, 0xd

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 1817
    .local v23, msg_box:I
    const-wide/16 v12, -0x1

    .line 1818
    .local v12, iDate:J
    const/4 v5, 0x0

    .line 1819
    .local v5, AllMessage_msgbox:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mMode:I

    move/from16 v32, v0

    if-nez v32, :cond_16

    .line 1821
    const/16 v32, 0xf

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1822
    const/16 v32, 0x16

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1823
    const/16 v32, 0xd

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    move/from16 v0, v32

    int-to-long v12, v0

    .line 1828
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-direct {v0, v14, v1, v2}, Lcom/android/mms/ui/ConversationListBaseActivity;->isNotificationMmsOrRelatedVcard(Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;Ljava/lang/String;I)Z

    move-result v32

    if-nez v32, :cond_6

    if-nez v26, :cond_6

    if-nez v16, :cond_6

    .line 1829
    const/16 v32, 0x0

    const/16 v33, 0x3

    const/16 v34, 0x0

    const v35, 0x7f09002f

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1834
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->bIsSMSLast:Z

    move/from16 v32, v0

    if-eqz v32, :cond_7

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportForwardByEmail()Z

    move-result v32

    if-eqz v32, :cond_7

    if-nez v17, :cond_7

    .line 1835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->sSMSBody:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/mms/ui/MessageUtils;->hasSmsVcardBody(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_7

    .line 1836
    const/16 v32, 0x0

    const/16 v33, 0xa

    const/16 v34, 0x0

    const v35, 0x7f0902e1

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1840
    :cond_7
    if-eqz v9, :cond_8

    if-nez v26, :cond_8

    .line 1841
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/android/mms/ui/ConversationListBaseActivity;->addCallandSaveToPeopleContextMenu(Landroid/view/ContextMenu;Ljava/lang/String;)V

    .line 1845
    :cond_8
    if-nez v22, :cond_a

    const-wide/16 v32, 0x0

    cmp-long v32, v30, v32

    if-lez v32, :cond_a

    if-nez v26, :cond_a

    if-eqz v9, :cond_a

    .line 1846
    iget-wide v0, v14, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->threadId:J

    move-wide/from16 v27, v0

    .line 1847
    .local v27, t_id:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mMode:I

    move/from16 v32, v0

    if-nez v32, :cond_9

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v32

    if-eqz v32, :cond_9

    .line 1849
    iget-wide v0, v14, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->htcthreadId:J

    move-wide/from16 v27, v0

    .line 1851
    :cond_9
    const-string v32, "mms"

    iget-object v0, v14, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->msgType:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_a

    .line 1852
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/ConversationListBaseActivity;->addReplyAllContextMenu(Landroid/view/ContextMenu;J)V

    .line 1857
    .end local v27           #t_id:J
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/mms/MmsApp;->isShowSaveasTask(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_11

    const-string v32, "vvm"

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_11

    .line 1859
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mMode:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_b

    if-eqz v22, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mMode:I

    move/from16 v32, v0

    if-nez v32, :cond_11

    :cond_c
    const-wide/16 v32, 0x0

    cmp-long v32, v30, v32

    if-lez v32, :cond_11

    if-eqz v9, :cond_11

    .line 1860
    iget-wide v0, v14, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->threadId:J

    move-wide/from16 v27, v0

    .line 1861
    .restart local v27       #t_id:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mMode:I

    move/from16 v32, v0

    if-nez v32, :cond_d

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v32

    if-eqz v32, :cond_d

    .line 1863
    iget-wide v0, v14, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->htcthreadId:J

    move-wide/from16 v27, v0

    .line 1866
    :cond_d
    const/16 v32, 0x1

    move/from16 v0, v32

    move/from16 v1, v23

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mMode:I

    move/from16 v32, v0

    if-nez v32, :cond_11

    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v0, v5, :cond_11

    .line 1869
    :cond_e
    new-instance v6, Landroid/content/Intent;

    const-class v32, Lcom/android/mms/ui/ConversationListBaseActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1870
    .local v6, Intent1:Landroid/content/Intent;
    iget-object v7, v14, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->msgType:Ljava/lang/String;

    .line 1871
    .local v7, Msg_Type:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mMode:I

    move/from16 v32, v0

    if-nez v32, :cond_f

    .line 1872
    const/16 v32, 0x15

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1873
    :cond_f
    const-string v32, "msgtype"

    move-object/from16 v0, v32

    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1874
    const-string v32, "mms"

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_10

    .line 1876
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mMode:I

    move/from16 v32, v0

    if-nez v32, :cond_17

    .line 1877
    const/16 v32, 0xf

    const/16 v33, 0x10

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v25

    .line 1889
    :cond_10
    :goto_5
    const-string v32, "snippet"

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1890
    const-string v32, "t_id"

    move-object/from16 v0, v32

    move-wide/from16 v1, v27

    invoke-virtual {v6, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1891
    const-string v32, "Date"

    move-object/from16 v0, v32

    invoke-virtual {v6, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1892
    const/16 v32, 0x0

    const/16 v33, 0xc

    const/16 v34, 0x0

    const v35, 0x7f0903bc

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1902
    .end local v6           #Intent1:Landroid/content/Intent;
    .end local v7           #Msg_Type:Ljava/lang/String;
    .end local v27           #t_id:J
    :cond_11
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v32

    if-eqz v32, :cond_12

    .line 1903
    sget-object v32, Lcom/android/mms/category/Category;->GENERAL:Lcom/android/mms/category/Category;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/android/mms/category/Category;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_18

    .line 1904
    const/16 v32, 0x0

    const/16 v33, 0x8

    const/16 v34, 0x0

    const v35, 0x7f090289

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1912
    :cond_12
    :goto_6
    invoke-super/range {p0 .. p3}, Lcom/htc/app/HtcListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto/16 :goto_0

    .line 1791
    .end local v5           #AllMessage_msgbox:I
    .end local v8           #address:Ljava/lang/String;
    .end local v9           #commonThreadtype:Z
    .end local v12           #iDate:J
    .end local v16           #is_private:Z
    .end local v17           #latestIsVvm:Z
    .end local v18           #latest_date:J
    .end local v20           #mms_date:J
    .end local v22           #msgType:Ljava/lang/String;
    .end local v23           #msg_box:I
    .end local v25           #snippet:Ljava/lang/String;
    .end local v26           #specVvmAdress:Ljava/lang/String;
    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1801
    .restart local v8       #address:Ljava/lang/String;
    .restart local v9       #commonThreadtype:Z
    .restart local v16       #is_private:Z
    .restart local v17       #latestIsVvm:Z
    .restart local v18       #latest_date:J
    .restart local v20       #mms_date:J
    .restart local v22       #msgType:Ljava/lang/String;
    .restart local v26       #specVvmAdress:Ljava/lang/String;
    :cond_14
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1808
    :cond_15
    const/16 v32, 0x0

    const/16 v33, 0x2

    const/16 v34, 0x0

    const v35, 0x7f0901f3

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 1826
    .restart local v5       #AllMessage_msgbox:I
    .restart local v12       #iDate:J
    .restart local v23       #msg_box:I
    .restart local v25       #snippet:Ljava/lang/String;
    :cond_16
    const/16 v32, 0x3

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    goto/16 :goto_4

    .line 1883
    .restart local v6       #Intent1:Landroid/content/Intent;
    .restart local v7       #Msg_Type:Ljava/lang/String;
    .restart local v27       #t_id:J
    :cond_17
    const/16 v32, 0x5

    const/16 v33, 0x6

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_5

    .line 1906
    .end local v6           #Intent1:Landroid/content/Intent;
    .end local v7           #Msg_Type:Ljava/lang/String;
    .end local v27           #t_id:J
    :cond_18
    sget-object v32, Lcom/android/mms/category/Category;->SECURE:Lcom/android/mms/category/Category;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/android/mms/category/Category;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_12

    .line 1907
    const/16 v32, 0x0

    const/16 v33, 0x9

    const/16 v34, 0x0

    const v35, 0x7f09028a

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_6
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v6, 0x1

    .line 1213
    const-string v3, "ConversationListBaseActivity"

    const-string v4, "on create dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    packed-switch p1, :pswitch_data_0

    .line 1243
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v3

    :goto_0
    return-object v3

    .line 1216
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03000c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/HtcSaveToContactsDialogView;

    .line 1218
    .local v2, mSaveToContDialogView:Lcom/android/mms/ui/HtcSaveToContactsDialogView;
    const-string v3, "address"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1219
    .local v0, address:Ljava/lang/String;
    const-string v3, "is_phoneNum"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1220
    .local v1, isPhoneNumber:Z
    invoke-direct {p0, v2, v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->setContactDialogView(Lcom/android/mms/ui/HtcSaveToContactsDialogView;Ljava/lang/String;Z)V

    .line 1221
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0901d7

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    goto :goto_0

    .line 1227
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #isPhoneNumber:Z
    .end local v2           #mSaveToContDialogView:Lcom/android/mms/ui/HtcSaveToContactsDialogView;
    :pswitch_1
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f09002f

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f060026

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mVvmForwardOnClickListener:Lcom/android/mms/ui/ConversationListBaseActivity$DialogVVMForwardOnClickListener;

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    goto :goto_0

    .line 1233
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/ConversationListBaseActivity;->getSelectPhoneNumberDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v3

    goto :goto_0

    .line 1237
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/ConversationListBaseActivity;->getSelectPhoneNumberDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v3

    goto :goto_0

    .line 1240
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getSortByDialog()Landroid/app/Dialog;

    move-result-object v3

    goto :goto_0

    .line 1214
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 669
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 632
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onDestroy()V

    .line 633
    const-string v0, "ConversationListBaseActivity"

    const-string v1, "onDestroy() >>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->m_receiver:Lcom/android/mms/util/PresentReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->m_receiver:Lcom/android/mms/util/PresentReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListBaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 639
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIlistenter:Lcom/android/mms/ui/MessagingListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingController;->removeListener(Lcom/android/mms/ui/MessagingListener;)V

    .line 642
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCmasObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 643
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCmasObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 648
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mRegisterTimeReceiver:Z

    if-eqz v0, :cond_2

    .line 649
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mReceiverTime:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListBaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 650
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mRegisterTimeReceiver:Z

    .line 654
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mForwardMsgCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 655
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mForwardMsgCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 656
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mForwardMsgCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;)V

    .line 657
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mForwardMsgCursor:Landroid/database/Cursor;

    .line 661
    :cond_4
    invoke-static {}, Lcom/android/mms/util/ViewCache;->getInstance()Lcom/android/mms/util/ViewCache;

    move-result-object v0

    const-class v1, Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/util/ViewCache;->reset(I)V

    .line 664
    const-string v0, "ConversationListBaseActivity"

    const-string v1, "onDestroy() <<<<<<<<<<<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 330
    const-string v0, "ConversationListBaseActivity"

    const-string v1, "onNewIntent>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity;->initMemberFields(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 337
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1041
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    .line 1042
    .local v2, pkgContext:Landroid/content/Context;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1201
    :goto_0
    :pswitch_0
    return v6

    .line 1044
    :pswitch_1
    const-string v3, "ANALYTIC_Mms"

    const-string v4, "[ConversationListBaseActivity]Compose new message"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-static {v2}, Lcom/android/mms/util/SpaceBufferUtil;->isLowStorage(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1051
    invoke-static {p0, v6}, Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V

    goto :goto_0

    .line 1053
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->createNewMessage()V

    goto :goto_0

    .line 1056
    :pswitch_2
    const-string v3, "ANALYTIC_Mms"

    const-string v4, "[ConversationListBaseActivity]Search"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->onSearchRequested()Z

    goto :goto_0

    .line 1060
    :pswitch_3
    const-string v3, "ANALYTIC_Mms"

    const-string v4, "[ConversationListBaseActivity]Delete all"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getMultipleDeleteIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1062
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->addQueryLimitExtra(Landroid/content/Intent;)V

    .line 1063
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1066
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_4
    const-string v3, "ANALYTIC_Mms"

    const-string v4, "[ConversationListBaseActivity]Undelivered messages"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/UndeliveredMessagesActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1069
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "category"

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v4}, Lcom/android/mms/category/Category;->value()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1071
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1075
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_5
    const-string v3, "ANALYTIC_Mms"

    const-string v4, "[ConversationListBaseActivity]Preferences"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1080
    .restart local v1       #intent:Landroid/content/Intent;
    const/16 v3, 0x64

    invoke-virtual {p0, v1, v3}, Lcom/android/mms/ui/ConversationListBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1083
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_6
    const-string v3, "ANALYTIC_Mms"

    const-string v4, "[ConversationListBaseActivity]Draft"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/DraftList;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1086
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "category"

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v4}, Lcom/android/mms/category/Category;->value()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1088
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1091
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_7
    const-string v3, "ANALYTIC_Mms"

    const-string v4, "[ConversationListBaseActivity]WAP push"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    invoke-static {v2}, Lcom/android/mms/util/SpaceBufferUtil;->isNoStorage(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1100
    invoke-static {p0, v5}, Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 1103
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1104
    .restart local v1       #intent:Landroid/content/Intent;
    const-class v3, Lcom/android/mms/push/PushMessagesActivity;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1105
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1110
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_8
    const-string v3, "ANALYTIC_Mms"

    const-string v4, "[ConversationListBaseActivity]Backup"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/BackupActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1112
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1115
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_9
    const-string v3, "ANALYTIC_Mms"

    const-string v4, "[ConversationListBaseActivity]Restore"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/RestoreActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1117
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1120
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_a
    const-string v3, "ANALYTIC_Mms"

    const-string v4, "[ConversationListBaseActivity]Restore setting"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/RestoreSettingActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1122
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1125
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_b
    const-string v3, "ANALYTIC_Mms"

    const-string v4, "[ConversationListBaseActivity]Move to secure box"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getMoveToSecureBoxIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1127
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->addQueryLimitExtra(Landroid/content/Intent;)V

    .line 1128
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1131
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_c
    const-string v3, "ANALYTIC_Mms"

    const-string v4, "[ConversationListBaseActivity]Move to general box"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getMoveToGeneralBoxIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1133
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->addQueryLimitExtra(Landroid/content/Intent;)V

    .line 1134
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1138
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_d
    const-string v3, "ANALYTIC_Mms"

    const-string v4, "[ConversationListBaseActivity]Group message"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    invoke-static {v2}, Lcom/android/mms/util/SpaceBufferUtil;->isLowStorage(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1140
    invoke-static {p0, v6}, Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 1142
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->createGroupMessage()V

    goto/16 :goto_0

    .line 1147
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->markAllAsRead()V

    goto/16 :goto_0

    .line 1151
    :pswitch_f
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/BlockListActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1153
    .restart local v1       #intent:Landroid/content/Intent;
    const/16 v3, 0xa

    invoke-virtual {p0, v1, v3}, Lcom/android/mms/ui/ConversationListBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1157
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_10
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/ConversationListBaseActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 1160
    :pswitch_11
    const-string v3, "ANALYTIC_Mms"

    const-string v4, "[ConversationListBaseActivity]Deleted Items"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/DeletedItemsActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1163
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "category"

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v4}, Lcom/android/mms/category/Category;->value()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1165
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1170
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_12
    const-string v3, "ANALYTIC_Mms"

    const-string v4, "[ConversationListBaseActivity]Text size"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/CharSequence;

    sput-object v3, Lcom/android/mms/ui/ConversationListBaseActivity;->items:[Ljava/lang/CharSequence;

    .line 1173
    sget-object v3, Lcom/android/mms/ui/ConversationListBaseActivity;->items:[Ljava/lang/CharSequence;

    const v4, 0x7f0902bc

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationListBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 1174
    sget-object v3, Lcom/android/mms/ui/ConversationListBaseActivity;->items:[Ljava/lang/CharSequence;

    const v4, 0x7f0902bd

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationListBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 1175
    sget-object v3, Lcom/android/mms/ui/ConversationListBaseActivity;->items:[Ljava/lang/CharSequence;

    const/4 v4, 0x2

    const v5, 0x7f0902be

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationListBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1176
    sget-object v3, Lcom/android/mms/ui/ConversationListBaseActivity;->items:[Ljava/lang/CharSequence;

    const/4 v4, 0x3

    const v5, 0x7f0902bf

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationListBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1177
    sget-object v3, Lcom/android/mms/ui/ConversationListBaseActivity;->items:[Ljava/lang/CharSequence;

    const v4, 0x7f0902c0

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationListBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 1179
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1180
    .local v0, alertDlg:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v3, 0x7f0902bb

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1181
    sget-object v3, Lcom/android/mms/ui/ConversationListBaseActivity;->items:[Ljava/lang/CharSequence;

    sget v4, Lcom/android/mms/ui/ConversationListBaseActivity;->TextSize_sel:I

    new-instance v5, Lcom/android/mms/ui/ConversationListBaseActivity$2;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ConversationListBaseActivity$2;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V

    invoke-virtual {v0, v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 1197
    .end local v0           #alertDlg:Lcom/htc/widget/HtcAlertDialog$Builder;
    :pswitch_13
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getShowMeIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1198
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1042
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_d
        :pswitch_e
        :pswitch_11
        :pswitch_f
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 1208
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 1209
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 565
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onPause()V

    .line 566
    const-string v1, "ConversationListBaseActivity"

    const-string v2, "onPause() >>>>>>>>>>>>>>>>>>>>"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mIsForeground:Z

    .line 570
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->removeMessages(I)V

    .line 573
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.eas.intent.resumeSync"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 574
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.eas.extra.tag"

    const-string v2, "com.android.mms.ui.ConversationListBaseActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    const-string v1, "com.htc.eas.extra.delayTime"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 576
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListBaseActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 579
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->RegisterTimeBroadcastReceiver()V

    .line 583
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->updateDate2Task:Lcom/android/mms/task/UpdateDate2Task;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->updateDate2Task:Lcom/android/mms/task/UpdateDate2Task;

    invoke-virtual {v1}, Lcom/android/mms/task/UpdateDate2Task;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 584
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->updateDate2Task:Lcom/android/mms/task/UpdateDate2Task;

    invoke-virtual {v1}, Lcom/android/mms/task/UpdateDate2Task;->pause()V

    .line 589
    :cond_1
    sget-object v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mCheckPendingStatusTask:Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;

    if-eqz v1, :cond_2

    .line 590
    sget-object v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mCheckPendingStatusTask:Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->cancel(Z)Z

    .line 591
    const/4 v1, 0x0

    sput-object v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mCheckPendingStatusTask:Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;

    .line 594
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->confrimDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->confrimDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 595
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->confrimDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 596
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->dismissDBUpgradeDialog()V

    .line 597
    const-string v1, "ConversationListBaseActivity"

    const-string v2, "onPause() <<<<<<<<<<<<<<<<<<<<"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 5
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 1248
    const-string v3, "ConversationListBaseActivity"

    const-string v4, "on prepare dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    packed-switch p1, :pswitch_data_0

    .line 1259
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/app/HtcListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1260
    return-void

    .line 1251
    :pswitch_0
    const-string v3, "is_phoneNum"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1252
    .local v1, isPhoneNum:Z
    const-string v3, "address"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1253
    .local v0, add:Ljava/lang/String;
    const v3, 0x7f0e0049

    invoke-virtual {p2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/HtcSaveToContactsDialogView;

    .line 1254
    .local v2, v:Lcom/android/mms/ui/HtcSaveToContactsDialogView;
    invoke-virtual {v2, v0}, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->setMsgText(Ljava/lang/String;)V

    .line 1255
    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->newCreateButtonClickListener(Ljava/lang/String;Z)Lcom/android/mms/ui/HtcSaveToContactsDialogView$ICreateButtonOnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->setCreateButtonOnClickListener(Lcom/android/mms/ui/HtcSaveToContactsDialogView$ICreateButtonOnClickListener;)V

    .line 1256
    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->newSaveButtonClickListener(Ljava/lang/String;Z)Lcom/android/mms/ui/HtcSaveToContactsDialogView$ISaveButtonOnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/HtcSaveToContactsDialogView;->setSaveButtonOnClickListener(Lcom/android/mms/ui/HtcSaveToContactsDialogView$ISaveButtonOnClickListener;)V

    move-object v3, p2

    .line 1257
    check-cast v3, Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAlertDialog;->setView(Landroid/view/View;)V

    goto :goto_0

    .line 1249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 11
    .parameter "menu"

    .prologue
    const v10, 0x7f02011e

    const/16 v9, 0x9

    const/16 v8, 0x8

    const/4 v7, 0x7

    const/4 v6, 0x0

    .line 931
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 932
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getOptionsMenuList()Ljava/util/ArrayList;

    move-result-object v1

    .line 934
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 935
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 936
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 935
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 938
    :pswitch_1
    const/4 v4, 0x3

    const v5, 0x20c01fc

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020121

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 942
    :pswitch_2
    const v4, 0x7f09001a

    invoke-interface {p1, v6, v6, v6, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020117

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 946
    :pswitch_3
    const/4 v4, 0x2

    const v5, 0x7f090177

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020139

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 951
    :pswitch_4
    const/4 v4, 0x5

    const v5, 0x7f090134

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020132

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 955
    :pswitch_5
    const/4 v4, 0x6

    const v5, 0x7f0901d3

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f02013d

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 959
    :pswitch_6
    const/4 v4, 0x4

    const v5, 0x20c0163

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020136

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 964
    :pswitch_7
    const/4 v3, 0x0

    .line 965
    .local v3, sub:Landroid/view/SubMenu;
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xd8

    if-ne v4, v5, :cond_1

    .line 966
    const v4, 0x7f0902fd

    invoke-interface {p1, v6, v9, v6, v4}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v4

    invoke-interface {v4, v10}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v3

    .line 971
    :goto_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getThreadsCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 972
    const/16 v4, 0xa

    const v5, 0x7f09028b

    invoke-interface {v3, v6, v4, v6, v5}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 974
    :cond_0
    const/16 v4, 0xb

    const v5, 0x7f09028c

    invoke-interface {v3, v6, v4, v6, v5}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 975
    const/16 v4, 0xc

    const v5, 0x7f09028d

    invoke-interface {v3, v6, v4, v6, v5}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 969
    :cond_1
    const v4, 0x7f09028b

    invoke-interface {p1, v6, v9, v6, v4}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v4

    invoke-interface {v4, v10}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v3

    goto :goto_2

    .line 978
    .end local v3           #sub:Landroid/view/SubMenu;
    :pswitch_8
    const v4, 0x7f090289

    invoke-interface {p1, v6, v7, v6, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020134

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 982
    :pswitch_9
    const v4, 0x7f09028a

    invoke-interface {p1, v6, v8, v6, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f02011a

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 986
    :pswitch_a
    const/16 v4, 0x11

    const v5, 0x7f090338

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v4

    const v5, 0x7f020129

    invoke-interface {v4, v5}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v3

    .line 988
    .restart local v3       #sub:Landroid/view/SubMenu;
    const v4, 0x7f09028a

    invoke-interface {v3, v6, v8, v6, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 989
    const v4, 0x7f090289

    invoke-interface {v3, v6, v7, v6, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 993
    .end local v3           #sub:Landroid/view/SubMenu;
    :pswitch_b
    const/16 v4, 0xd

    const v5, 0x7f0902d2

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f02013c

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 999
    :pswitch_c
    const/16 v4, 0xe

    const v5, 0x7f0902d3

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020128

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1005
    :pswitch_d
    const/16 v4, 0xf

    const v5, 0x7f0902fe

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020121

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1010
    :pswitch_e
    const/16 v4, 0x10

    const v5, 0x7f090336

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f02011f

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1015
    :pswitch_f
    const/16 v4, 0x12

    const v5, 0x7f0902bb

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f02000f

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1021
    :pswitch_10
    const/16 v4, 0x13

    const v5, 0x7f090380

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020126

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1027
    :pswitch_11
    const/16 v4, 0x14

    const v5, 0x7f0903c7

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x2080338

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1035
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v4

    return v4

    .line 936
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_a
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 451
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onResume()V

    .line 452
    const-string v1, "ConversationListBaseActivity"

    const-string v2, "onResume() >>>>>>>>>>>>>>>>>>>>"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mIsForeground:Z

    .line 456
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.eas.intent.pauseSync"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.eas.extra.tag"

    const-string v2, "com.android.mms.ui.ConversationListBaseActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListBaseActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 461
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mRegisterTimeReceiver:Z

    if-eqz v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mReceiverTime:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 463
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mRegisterTimeReceiver:Z

    .line 469
    :cond_0
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    .line 482
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->updateShowWapPushMenuItem()V

    .line 486
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->updateDate2Task:Lcom/android/mms/task/UpdateDate2Task;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->updateDate2Task:Lcom/android/mms/task/UpdateDate2Task;

    invoke-virtual {v1}, Lcom/android/mms/task/UpdateDate2Task;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 487
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->updateDate2Task:Lcom/android/mms/task/UpdateDate2Task;

    invoke-virtual {v1}, Lcom/android/mms/task/UpdateDate2Task;->resume()V

    .line 494
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 495
    sget-object v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mCheckPendingStatusTask:Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;

    if-nez v1, :cond_2

    .line 496
    new-instance v1, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V

    sput-object v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mCheckPendingStatusTask:Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;

    .line 497
    sget-object v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mCheckPendingStatusTask:Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 515
    :goto_0
    const-string v1, "ConversationListBaseActivity"

    const-string v2, "onResume() <<<<<<<<<<<<<<<<<<<<"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return-void

    .line 499
    :cond_2
    const-string v1, "ConversationListBaseActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCheckPendingStatusTask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/ConversationListBaseActivity;->mCheckPendingStatusTask:Lcom/android/mms/ui/ConversationListBaseActivity$CheckPendingStatusTask;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->startQueryConversation()V

    .line 502
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->startAsnycQueryCMAS()V

    goto :goto_0

    .line 508
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->startQueryConversation()V

    .line 510
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->startAsnycQueryCMAS()V

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 9

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    .line 3679
    const-string v4, "Jerry1"

    const-string v5, "ConversationList search"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3681
    const/4 v0, 0x0

    .line 3684
    .local v0, bLaunched:Z
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v4, v8, :cond_0

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eq v4, v6, :cond_1

    :cond_0
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x1b

    if-ne v4, v5, :cond_2

    .line 3690
    :cond_1
    const/4 v4, 0x1

    const/4 v5, 0x2

    :try_start_0
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/android/mms/ui/IntentFactory;->newIntent(I[Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationListBaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3695
    const/4 v0, 0x1

    .line 3702
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 3705
    sget-object v4, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 3706
    .local v1, builder:Landroid/net/Uri$Builder;
    const-string v4, "search"

    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3707
    const-string v4, "category"

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v5}, Lcom/android/mms/category/Category;->value()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3708
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const-class v6, Lcom/android/mms/ui/MessageSearch;

    invoke-direct {v3, v4, v5, p0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 3710
    .local v3, intent:Landroid/content/Intent;
    const/high16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3711
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationListBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 3730
    .end local v1           #builder:Landroid/net/Uri$Builder;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_3
    return v8

    .line 3696
    :catch_0
    move-exception v2

    .line 3697
    .local v2, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "ConversationListBaseActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can not start activity. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 603
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onStart()V

    .line 604
    const-string v0, "ConversationListBaseActivity"

    const-string v1, "onStart() >>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    new-instance v0, Lcom/android/mms/ui/ConversationListBaseActivity$WapPushChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListBaseActivity$WapPushChangeObserver;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->WapPushObserver:Lcom/android/mms/ui/ConversationListBaseActivity$WapPushChangeObserver;

    .line 607
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/push/PushMessage;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->WapPushObserver:Lcom/android/mms/ui/ConversationListBaseActivity$WapPushChangeObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 610
    const-string v0, "ConversationListBaseActivity"

    const-string v1, "onStart() <<<<<<<<<<<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 616
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onStop()V

    .line 617
    const-string v0, "ConversationListBaseActivity"

    const-string v1, "onStop() >>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->WapPushObserver:Lcom/android/mms/ui/ConversationListBaseActivity$WapPushChangeObserver;

    if-eqz v0, :cond_0

    .line 621
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->WapPushObserver:Lcom/android/mms/ui/ConversationListBaseActivity$WapPushChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 622
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->WapPushObserver:Lcom/android/mms/ui/ConversationListBaseActivity$WapPushChangeObserver;

    .line 626
    :cond_0
    const-string v0, "ConversationListBaseActivity"

    const-string v1, "onStop() <<<<<<<<<<<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6
    .parameter "hasFocus"

    .prologue
    const-wide/16 v4, 0x0

    const/16 v3, 0xf

    .line 2886
    const-string v0, "ConversationListBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    if-eqz p1, :cond_0

    .line 2889
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgNotifyRule()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2891
    const/16 v0, 0x321

    invoke-virtual {p0, v0, v4, v5, v3}, Lcom/android/mms/ui/ConversationListBaseActivity;->removeNotification(IJI)V

    .line 2898
    :cond_0
    :goto_0
    return-void

    .line 2894
    :cond_1
    const/16 v0, 0x7b

    invoke-virtual {p0, v0, v4, v5, v3}, Lcom/android/mms/ui/ConversationListBaseActivity;->removeNotification(IJI)V

    goto :goto_0
.end method

.method protected openMessage()V
    .locals 0

    .prologue
    .line 2115
    return-void
.end method

.method protected openThread(JJLjava/lang/String;ZII)V
    .locals 7
    .parameter "htcThreadId"
    .parameter "threadId"
    .parameter "address"
    .parameter "reply"
    .parameter "btype"
    .parameter "unreadCount"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    .line 2356
    const-string v1, "ConversationListBaseActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openThread: htcThreadid> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", threadId> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    invoke-static {p0}, Lcom/android/mms/util/SpaceBufferUtil;->isLowStorage(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2360
    invoke-static {p0, v4}, Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V

    .line 2398
    :goto_0
    return-void

    .line 2362
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2364
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "unread_count"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2366
    cmp-long v1, p1, v5

    if-lez v1, :cond_5

    .line 2368
    const-string v1, "htcThread_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2369
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2370
    const-string v1, "thread_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2379
    :goto_1
    if-eqz p6, :cond_1

    const-string v1, "Reply_msg"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2380
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2381
    const-string v1, "address"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2387
    :goto_2
    const-string v1, "broadcast_type"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2388
    const-string v1, "category"

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v2}, Lcom/android/mms/category/Category;->value()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2391
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportEnhancedDrafLoading()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2392
    invoke-direct {p0, v0, p3, p4}, Lcom/android/mms/ui/ConversationListBaseActivity;->fillInDraftInfo(Landroid/content/Intent;J)V

    .line 2396
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListBaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2372
    :cond_3
    cmp-long v1, p3, v5

    if-gez v1, :cond_4

    const-wide/16 p3, 0x0

    .line 2373
    :cond_4
    const-string v1, "thread_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_1

    .line 2376
    :cond_5
    const-string v1, "thread_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_1

    .line 2383
    :cond_6
    const-string v1, "address"

    const v2, 0x7f090021

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationListBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method querFdn(Lcom/android/mms/ui/ConversationListBaseAdapter;)V
    .locals 10
    .parameter "adapter"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 3034
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 3036
    const-string v0, "content://icc/fdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3037
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "name"

    aput-object v4, v2, v9

    const-string v4, "number"

    aput-object v4, v2, v8

    const/4 v4, 0x2

    const-string v5, "emails"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3039
    .local v6, cFdn:Landroid/database/Cursor;
    iget-object v2, p1, Lcom/android/mms/ui/ConversationListBaseAdapter;->mSyncObj:Ljava/lang/Object;

    monitor-enter v2

    .line 3040
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/android/mms/ui/ConversationListBaseAdapter;->mFdns:Ljava/util/ArrayList;

    .line 3041
    monitor-exit v2

    .line 3044
    if-nez v6, :cond_1

    .line 3058
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #cFdn:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 3041
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #cFdn:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3047
    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-ne v0, v8, :cond_2

    .line 3048
    new-instance v7, Lcom/android/mms/ui/ConversationListBaseAdapter$Fdn;

    invoke-direct {v7}, Lcom/android/mms/ui/ConversationListBaseAdapter$Fdn;-><init>()V

    .line 3049
    .local v7, fdn:Lcom/android/mms/ui/ConversationListBaseAdapter$Fdn;
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/mms/ui/ConversationListBaseAdapter$Fdn;->name:Ljava/lang/String;

    .line 3050
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/mms/ui/ConversationListBaseAdapter$Fdn;->number:Ljava/lang/String;

    .line 3051
    iget-object v0, v7, Lcom/android/mms/ui/ConversationListBaseAdapter$Fdn;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3052
    iget-object v0, p1, Lcom/android/mms/ui/ConversationListBaseAdapter;->mFdns:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3054
    .end local v7           #fdn:Lcom/android/mms/ui/ConversationListBaseAdapter$Fdn;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public removeNotification(IJI)V
    .locals 4
    .parameter "id"
    .parameter "millis"
    .parameter "what"

    .prologue
    .line 2547
    const-string v1, "ConversationListBaseActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNotification> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", delay> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", what: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    const-wide/16 v1, -0x3

    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity$Utils;->updateCurrentThreadID(J)J

    .line 2550
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    if-eqz v1, :cond_0

    .line 2551
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2552
    .local v0, msg:Landroid/os/Message;
    iput p4, v0, Landroid/os/Message;->what:I

    .line 2553
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2554
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2559
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 2557
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNormalNotification(Landroid/content/Context;I)Z

    goto :goto_0
.end method

.method public setTitleText(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 3327
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3329
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mTitleDropDown:Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_0

    .line 3330
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mTitleDropDown:Lcom/htc/widget/HeaderBarDropDown;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategorySelector:Lcom/android/mms/category/CategorySelector;

    invoke-virtual {v1}, Lcom/android/mms/category/CategorySelector;->getCategoryTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryText(Ljava/lang/String;)V

    .line 3345
    :cond_0
    :goto_0
    return-void

    .line 3336
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mBarText:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_0

    .line 3338
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mBarText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 3339
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mBarText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    goto :goto_0
.end method

.method protected showBackupRestoreDialog()V
    .locals 3

    .prologue
    .line 3647
    invoke-static {}, Lcom/android/mms/ui/BackupActivity;->isBackuping()Z

    move-result v1

    .line 3648
    .local v1, isBackup:Z
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mBackupRestoreProgressDialog:Landroid/app/Dialog;

    if-nez v2, :cond_0

    .line 3649
    new-instance v2, Lcom/android/mms/ui/ConversationListBaseActivity$BackupRestoreProgressDialog;

    invoke-direct {v2, p0, p0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity$BackupRestoreProgressDialog;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mBackupRestoreProgressDialog:Landroid/app/Dialog;

    .line 3653
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mBackupRestoreProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3657
    :goto_0
    return-void

    .line 3654
    :catch_0
    move-exception v0

    .line 3655
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected showDBUpgradeDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f090167

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3380
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mDBUpgradeDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 3381
    const/4 v1, 0x0

    const v2, 0x7f090167

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationListBaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mDBUpgradeDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3387
    :cond_0
    :goto_0
    return-void

    .line 3383
    :catch_0
    move-exception v0

    .line 3384
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3385
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/ConversationListBaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v8, v1, v6, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mDBUpgradeDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method protected showDeleteDialog()V
    .locals 2

    .prologue
    .line 3617
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mDeleteProgressDialog:Landroid/app/Dialog;

    if-nez v1, :cond_0

    .line 3618
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportBackKeyDeleting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3619
    new-instance v1, Lcom/android/mms/ui/ConversationListBaseActivity$DeleteProgressDialog21;

    invoke-direct {v1, p0, p0}, Lcom/android/mms/ui/ConversationListBaseActivity$DeleteProgressDialog21;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mDeleteProgressDialog:Landroid/app/Dialog;

    .line 3624
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mDeleteProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3633
    :goto_1
    return-void

    .line 3621
    :cond_1
    new-instance v1, Lcom/android/mms/ui/ConversationListBaseActivity$DeleteProgressDialog;

    invoke-direct {v1, p0, p0}, Lcom/android/mms/ui/ConversationListBaseActivity$DeleteProgressDialog;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mDeleteProgressDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 3625
    :catch_0
    move-exception v0

    .line 3626
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3627
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportBackKeyDeleting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3628
    new-instance v1, Lcom/android/mms/ui/ConversationListBaseActivity$DeleteProgressDialog21;

    invoke-direct {v1, p0, p0}, Lcom/android/mms/ui/ConversationListBaseActivity$DeleteProgressDialog21;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mDeleteProgressDialog:Landroid/app/Dialog;

    .line 3631
    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mDeleteProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 3630
    :cond_2
    new-instance v1, Lcom/android/mms/ui/ConversationListBaseActivity$DeleteProgressDialog;

    invoke-direct {v1, p0, p0}, Lcom/android/mms/ui/ConversationListBaseActivity$DeleteProgressDialog;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mDeleteProgressDialog:Landroid/app/Dialog;

    goto :goto_2
.end method

.method protected showSeparatingDialog()V
    .locals 2

    .prologue
    .line 3349
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mSeparatingDialog:Landroid/app/Dialog;

    if-nez v1, :cond_0

    .line 3350
    new-instance v1, Lcom/android/mms/ui/ConversationListBaseActivity$SeparatingProgressDialog;

    invoke-direct {v1, p0, p0}, Lcom/android/mms/ui/ConversationListBaseActivity$SeparatingProgressDialog;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mSeparatingDialog:Landroid/app/Dialog;

    .line 3352
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mSeparatingDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3353
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->resumeSeparating()V

    .line 3354
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mSeparatingDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3361
    :cond_1
    :goto_0
    return-void

    .line 3356
    :catch_0
    move-exception v0

    .line 3357
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3358
    new-instance v1, Lcom/android/mms/ui/ConversationListBaseActivity$SeparatingProgressDialog;

    invoke-direct {v1, p0, p0}, Lcom/android/mms/ui/ConversationListBaseActivity$SeparatingProgressDialog;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mSeparatingDialog:Landroid/app/Dialog;

    .line 3359
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mSeparatingDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method protected startAsnycQueryCMAS()V
    .locals 0

    .prologue
    .line 713
    return-void
.end method

.method protected startQueryConversation()V
    .locals 0

    .prologue
    .line 3547
    return-void
.end method

.method updateDeleteItemsCount()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 3091
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeletedItems()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3113
    :cond_0
    :goto_0
    return-void

    .line 3095
    :cond_1
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "transport_type"

    aput-object v0, v3, v9

    .line 3097
    .local v3, projection:[Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_V2_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 3098
    .local v7, builder:Landroid/net/Uri$Builder;
    const-string v0, "trash"

    invoke-virtual {v7, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3099
    const-string v0, "category"

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v1}, Lcom/android/mms/category/Category;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3101
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const-string v4, "(thread_id > 0 or thread_id is null)"

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3103
    .local v8, deletedMsgCursor:Landroid/database/Cursor;
    iput v9, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mDeletedItemsCount:I

    .line 3104
    if-eqz v8, :cond_0

    .line 3106
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mDeletedItemsCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3108
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public updateShowWapPushMenuItem()V
    .locals 2

    .prologue
    .line 2993
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    const-string v1, "2.1"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 2994
    new-instance v0, Lcom/android/mms/ui/ConversationListBaseActivity$GetWapPushCountTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity$GetWapPushCountTask;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;Lcom/android/mms/ui/ConversationListBaseActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity$GetWapPushCountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2995
    :cond_0
    return-void
.end method

.method protected updateStatusNotification()V
    .locals 2

    .prologue
    .line 2589
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ConversationListBaseActivity$8;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListBaseActivity$8;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2603
    return-void
.end method

.method updateUndeliveryCount()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 3065
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUndeliveryCount:I

    .line 3068
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_UNDELIVERED_V2_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 3069
    .local v7, builder:Landroid/net/Uri$Builder;
    const-string v0, "category"

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v1}, Lcom/android/mms/category/Category;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3072
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/ConversationListBaseActivity;->PROJECTION:[Ljava/lang/String;

    const-string v6, "transport_type limit 1"

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3077
    .local v8, undeliveredMsgCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 3079
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUndeliveryCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3081
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3086
    :cond_0
    return-void

    .line 3081
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method
