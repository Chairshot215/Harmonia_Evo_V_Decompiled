.class public Lcom/android/mms/ui/MultipleDeleteActivity;
.super Lcom/htc/app/HtcListActivity;
.source "MultipleDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;,
        Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;,
        Lcom/android/mms/ui/MultipleDeleteActivity$DeleteThread;,
        Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;,
        Lcom/android/mms/ui/MultipleDeleteActivity$DeleteProgressDialog21;,
        Lcom/android/mms/ui/MultipleDeleteActivity$DeleteProgressDialog;
    }
.end annotation


# static fields
.field public static final CANCEL_DIALOG_TOKEN:I = 0x899

.field public static final DELETE_BLOCKLIST:I = 0x6

.field public static final DELETE_CMAS:I = 0x8

.field public static final DELETE_DELETED_MSG:I = 0x7

.field public static final DELETE_HTC_THREAD:I = 0x2

.field public static final DELETE_LIST_TOKEN:I = 0x709

.field public static final DELETE_LIST_TOKEN_CON:I = 0x76d

.field public static final DELETE_MESSAGE:I = 0x1

.field public static final DELETE_SMS_NOTIFICATION:I = 0x5

.field public static final DELETE_THREAD:I = 0x0

.field public static final DEL_SELECT_ALL:I = 0x3

.field private static final DEL_SELECT_NONE:I = 0x4

.field private static final LIST_QUERY_TOKEN:I = 0x6a5

.field private static final LOCAL_LOGV:Z = true

.field private static final MENU_DELETE_ALL:I = 0x0

.field private static final MENU_MOVE_ALL_TO_GENERIC:I = 0x1

.field private static final MENU_MOVE_ALL_TO_SECURE:I = 0x2

.field private static final MMS_ID:I = 0x0

.field private static final MMS_SIMPLE_PROJECTION:[Ljava/lang/String; = null

.field private static final MMS_THREAD_ID:I = 0x1

.field public static final MOVE_TO_GENERAL_BOX:I = 0x4

.field public static final MOVE_TO_SECURE_BOX:I = 0x3

.field static final MSG_FILTER_CONTACT_NAME:I = 0x64

.field private static PROJECTION:[Ljava/lang/String; = null

.field private static final SMS_ID:I = 0x0

.field private static final SMS_INDEX_ON_SIM:I = 0x2

.field private static final SMS_SIMPLE_PROJECTION:[Ljava/lang/String; = null

.field private static final SMS_THREAD_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MultipleDeleteActivity"

.field public static final UPDATE_LIST_TOKEN:I = 0x7d1

.field public static final UPDATE_LIST_TOKEN_CON:I = 0x835

.field static final mCOLUMN_ID:I = 0x1

.field static final mCOLUMN_MMS_MSG_TYPE:I = 0x5

.field static final mCOLUMN_MSG_TYPE:I = 0x0

.field static final mCOLUMN_SMS_ADDRESS:I = 0x2

.field static final mCOLUMN_SMS_BODY:I = 0x3

.field static final mCOLUMN_SMS_DATE:I = 0x4

.field static mCancelDeletion:Z

.field private static final mCursorLock:Ljava/lang/Object;

.field private static mEnableMultiDelSize:I

.field private static mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

.field static mbDeleteImmediately:Z

.field private static mmmsids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static msmsIdxSIM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static msmsids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public checkArray:[Z

.field private delStr:Ljava/lang/String;

.field private mAdapter:Lcom/android/mms/ui/MultipleDeleteListAdapter;

.field private final mCancelDeleteMessagesListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCategoryFrom:I

.field private mCategoty:I

.field private mCheckDeleteOk:Landroid/widget/Button;

.field private mCheckDelteCancel:Landroid/widget/Button;

.field private final mConfirmDeleteAllMessagesListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCursor:Landroid/database/Cursor;

.field private mDeleteComplete:I

.field private mDeleteProgressDialog:Landroid/app/Dialog;

.field private final mEditorHandler:Landroid/os/Handler;

.field private mIsThread:Z

.field mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

.field private mLocked:I

.field private mMode:I

.field private mMultiDelUnitsize:I

.field mQueryLimit:I

.field private mSelectedCount:I

.field private mSpecificOrder:Ljava/lang/String;

.field private mTitle:Lcom/htc/widget/HeaderBarText;

.field private mUIHandler:Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;

.field private mUIlistenter:Lcom/android/mms/ui/MessagingListener;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mdeleteUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/MultipleDeleteActivity;->PROJECTION:[Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCursorLock:Ljava/lang/Object;

    .line 129
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "index_on_sim"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/ui/MultipleDeleteActivity;->SMS_SIMPLE_PROJECTION:[Ljava/lang/String;

    .line 137
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/ui/MultipleDeleteActivity;->MMS_SIMPLE_PROJECTION:[Ljava/lang/String;

    .line 155
    const/16 v0, 0x32

    sput v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mEnableMultiDelSize:I

    .line 162
    sput-boolean v2, Lcom/android/mms/ui/MultipleDeleteActivity;->mCancelDeletion:Z

    .line 1162
    sput-boolean v2, Lcom/android/mms/ui/MultipleDeleteActivity;->mbDeleteImmediately:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    .line 97
    iput-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->checkArray:[Z

    .line 98
    iput-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCursor:Landroid/database/Cursor;

    .line 143
    new-instance v0, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;-><init>(Lcom/android/mms/ui/MultipleDeleteActivity;Lcom/android/mms/ui/MultipleDeleteActivity$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mUIHandler:Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;

    .line 147
    iput v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteComplete:I

    .line 154
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMultiDelUnitsize:I

    .line 157
    iput-boolean v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mIsThread:Z

    .line 159
    iput v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mSelectedCount:I

    .line 160
    iput-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->delStr:Ljava/lang/String;

    .line 164
    iput v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryLimit:I

    .line 165
    const-string v0, "date DESC"

    iput-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mSpecificOrder:Ljava/lang/String;

    .line 167
    iput-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mTitle:Lcom/htc/widget/HeaderBarText;

    .line 204
    iput-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 599
    iput-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteProgressDialog:Landroid/app/Dialog;

    .line 977
    new-instance v0, Lcom/android/mms/ui/MultipleDeleteActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MultipleDeleteActivity$5;-><init>(Lcom/android/mms/ui/MultipleDeleteActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCancelDeleteMessagesListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1486
    new-instance v0, Lcom/android/mms/ui/MultipleDeleteActivity$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MultipleDeleteActivity$9;-><init>(Lcom/android/mms/ui/MultipleDeleteActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mConfirmDeleteAllMessagesListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1944
    new-instance v0, Lcom/android/mms/ui/MultipleDeleteActivity$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MultipleDeleteActivity$11;-><init>(Lcom/android/mms/ui/MultipleDeleteActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mUIlistenter:Lcom/android/mms/ui/MessagingListener;

    .line 1952
    new-instance v0, Lcom/android/mms/ui/MultipleDeleteActivity$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MultipleDeleteActivity$12;-><init>(Lcom/android/mms/ui/MultipleDeleteActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mEditorHandler:Landroid/os/Handler;

    .line 2073
    return-void
.end method

.method public static CancelDeletion()V
    .locals 2

    .prologue
    .line 966
    sget-object v1, Lcom/android/mms/ui/MultipleDeleteActivity;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 967
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCancelDeletion:Z

    .line 968
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    sget-object v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    if-eqz v0, :cond_0

    .line 970
    sget-object v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/16 v1, 0x76d

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->cancelOperation(I)V

    .line 972
    sget-object v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/16 v1, 0x835

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->cancelOperation(I)V

    .line 975
    :cond_0
    return-void

    .line 968
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MultipleDeleteActivity;)Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mUIHandler:Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MultipleDeleteActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/mms/ui/MultipleDeleteActivity;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteProgressDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/mms/ui/MultipleDeleteActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteProgressDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/mms/ui/MultipleDeleteActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/MultipleDeleteActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteComplete:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/mms/ui/MultipleDeleteActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteComplete:I

    return p1
.end method

.method static synthetic access$1308(Lcom/android/mms/ui/MultipleDeleteActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteComplete:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteComplete:I

    return v0
.end method

.method static synthetic access$1400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/mms/ui/MultipleDeleteActivity;->SMS_SIMPLE_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/mms/ui/MultipleDeleteActivity;->MMS_SIMPLE_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mmmsids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1602(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    sput-object p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mmmsids:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1700()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/mms/ui/MultipleDeleteActivity;->msmsids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800()I
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mEnableMultiDelSize:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/MultipleDeleteActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mIsThread:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCheckDeleteOk:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/MultipleDeleteActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MultipleDeleteActivity;->deleteCmasByList(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/MultipleDeleteActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/mms/ui/MultipleDeleteActivity;->acquireWakeLock()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/MultipleDeleteActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/mms/ui/MultipleDeleteActivity;->initListView()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/MultipleDeleteActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/mms/ui/MultipleDeleteActivity;->initDeleteButton()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mEditorHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/MultipleDeleteActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mSelectedCount:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/mms/ui/MultipleDeleteActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mSelectedCount:I

    return p1
.end method

.method static synthetic access$2608(Lcom/android/mms/ui/MultipleDeleteActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mSelectedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mSelectedCount:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/MultipleDeleteActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->delStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MultipleDeleteActivity;)Lcom/android/mms/ui/MultipleDeleteListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mAdapter:Lcom/android/mms/ui/MultipleDeleteListAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/MultipleDeleteActivity;Lcom/android/mms/ui/MultipleDeleteListAdapter;)Lcom/android/mms/ui/MultipleDeleteListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mAdapter:Lcom/android/mms/ui/MultipleDeleteListAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MultipleDeleteActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCancelDeleteMessagesListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MultipleDeleteActivity;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MultipleDeleteActivity;->confirmDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$700()Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MultipleDeleteActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCategoty:I

    return v0
.end method

.method static synthetic access$900()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCursorLock:Ljava/lang/Object;

    return-object v0
.end method

.method private acquireWakeLock()V
    .locals 2

    .prologue
    .line 396
    const-string v0, "MultipleDeleteActivity"

    const-string v1, "acquire wakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 398
    :cond_0
    return-void
.end method

.method private confirmDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "messageId"
    .parameter "listener"

    .prologue
    .line 1535
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1537
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1538
    :cond_0
    const v1, 0x7f09029c

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1542
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1543
    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1544
    const v1, 0x20c015f

    invoke-virtual {v0, v1, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1545
    const v1, 0x20c0164

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1547
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 1548
    return-void

    .line 1540
    :cond_1
    const v1, 0x20c01fc

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0
.end method

.method private deleteCmasByList(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 2028
    sget-object v3, Landroid/provider/Telephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    .line 2029
    .local v3, delUri:Landroid/net/Uri;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2030
    .local v8, idsSize:I
    iget v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMultiDelUnitsize:I

    add-int/2addr v0, v8

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMultiDelUnitsize:I

    div-int v9, v0, v1

    .line 2031
    .local v9, nSetcount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v9, :cond_2

    .line 2032
    iget v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMultiDelUnitsize:I

    mul-int/2addr v0, v6

    iget v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMultiDelUnitsize:I

    invoke-direct {p0, p2, v0, v1}, Lcom/android/mms/ui/MultipleDeleteActivity;->getIdList(Ljava/util/ArrayList;II)Ljava/lang/String;

    move-result-object v7

    .line 2033
    .local v7, idList:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2034
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_id"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " IN (%s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v7, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2035
    .local v4, selection:Ljava/lang/String;
    add-int/lit8 v0, v9, -0x1

    if-ne v6, v0, :cond_1

    .line 2036
    sget-object v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/16 v1, 0x709

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2031
    .end local v4           #selection:Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2038
    .restart local v4       #selection:Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/16 v1, 0x76d

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 2042
    .end local v4           #selection:Ljava/lang/String;
    .end local v7           #idList:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method static deleteMessageByCursor(Landroid/content/Context;Landroid/database/Cursor;[ZZ)V
    .locals 18
    .parameter "context"
    .parameter "cursor"
    .parameter "checkArray"
    .parameter "isDeleteAll"

    .prologue
    .line 1641
    const-string v1, "MultipleDeleteActivity"

    const-string v2, "deleteMessageByCursor: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 1643
    .local v11, len:I
    const/4 v9, 0x0

    .line 1644
    .local v9, hasSms:Z
    if-gtz v11, :cond_1

    .line 1741
    :cond_0
    :goto_0
    return-void

    .line 1646
    :cond_1
    const/4 v14, -0x1

    .line 1647
    .local v14, nLastOne:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v11, :cond_4

    .line 1648
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1649
    if-nez p3, :cond_2

    aget-boolean v1, p2, v10

    if-eqz v1, :cond_3

    .line 1650
    :cond_2
    move v14, v10

    .line 1647
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1653
    :cond_4
    const/4 v1, -0x1

    if-eq v14, v1, :cond_0

    .line 1658
    new-instance v3, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;

    invoke-direct {v3}, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;-><init>()V

    .line 1659
    .local v3, cookie:Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v3, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;->sTime:J

    .line 1662
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v11, :cond_6

    .line 1663
    sget-object v2, Lcom/android/mms/ui/MultipleDeleteActivity;->mCursorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1664
    :try_start_0
    sget-boolean v1, Lcom/android/mms/ui/MultipleDeleteActivity;->mCancelDeletion:Z

    if-eqz v1, :cond_8

    .line 1665
    const-string v1, "MultipleDeleteActivity"

    const-string v6, "deleteMessageByCursor Cancel in thread"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    sget-object v1, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    if-eqz v1, :cond_5

    .line 1667
    sget-object v1, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/16 v6, 0x76d

    invoke-virtual {v1, v6}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->cancelOperation(I)V

    .line 1668
    sget-object v1, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/16 v6, 0x709

    invoke-virtual {v1, v6}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->cancelOperation(I)V

    .line 1669
    sget-object v1, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    sget-object v6, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/16 v17, 0x899

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1671
    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1730
    :cond_6
    sget-object v2, Lcom/android/mms/ui/MultipleDeleteActivity;->mCursorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1731
    const/4 v1, 0x0

    :try_start_1
    sput-boolean v1, Lcom/android/mms/ui/MultipleDeleteActivity;->mCancelDeletion:Z

    .line 1732
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1734
    const/4 v1, 0x1

    if-ne v9, v1, :cond_7

    .line 1738
    const/16 v1, 0x315

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 1740
    :cond_7
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1673
    :cond_8
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1675
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1676
    if-nez p3, :cond_9

    aget-boolean v1, p2, v10

    if-eqz v1, :cond_b

    .line 1677
    :cond_9
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1678
    .local v16, type:Ljava/lang/String;
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1680
    .local v12, msgId:J
    const-string v1, "sms"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1682
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_id"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " in (%s) AND locked=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1688
    .local v5, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1689
    .local v4, delUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeletedItems()Z

    move-result v1

    if-eqz v1, :cond_a

    sget-boolean v1, Lcom/android/mms/ui/MultipleDeleteActivity;->mbDeleteImmediately:Z

    if-nez v1, :cond_a

    .line 1690
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 1691
    .local v7, builder:Landroid/net/Uri$Builder;
    const-string v1, "trash"

    const-string v2, "true"

    invoke-virtual {v7, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1692
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 1696
    .end local v7           #builder:Landroid/net/Uri$Builder;
    :cond_a
    if-eq v10, v14, :cond_c

    .line 1697
    sget-object v1, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/16 v2, 0x76d

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1700
    :goto_3
    const/4 v9, 0x1

    .line 1662
    .end local v4           #delUri:Landroid/net/Uri;
    .end local v5           #where:Ljava/lang/String;
    .end local v12           #msgId:J
    .end local v16           #type:Ljava/lang/String;
    :cond_b
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 1673
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 1699
    .restart local v4       #delUri:Landroid/net/Uri;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v12       #msgId:J
    .restart local v16       #type:Ljava/lang/String;
    :cond_c
    sget-object v1, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/16 v2, 0x709

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    .line 1703
    .end local v4           #delUri:Landroid/net/Uri;
    .end local v5           #where:Ljava/lang/String;
    :cond_d
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 1704
    .local v8, deleteUri:Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1705
    .local v15, suri:Ljava/lang/String;
    const-string v1, "Goven"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Multipledelete Uri string: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v1

    move-object/from16 v0, p0

    invoke-static {v0, v15, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelMMSNotification(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1710
    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 1711
    .restart local v4       #delUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeletedItems()Z

    move-result v1

    if-eqz v1, :cond_e

    sget-boolean v1, Lcom/android/mms/ui/MultipleDeleteActivity;->mbDeleteImmediately:Z

    if-nez v1, :cond_e

    .line 1712
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 1713
    .restart local v7       #builder:Landroid/net/Uri$Builder;
    const-string v1, "trash"

    const-string v2, "true"

    invoke-virtual {v7, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1714
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 1719
    .end local v7           #builder:Landroid/net/Uri$Builder;
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_id"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " in (%s) AND locked=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1722
    .restart local v5       #where:Ljava/lang/String;
    if-eq v10, v14, :cond_f

    .line 1723
    sget-object v1, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/16 v2, 0x76d

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_4

    .line 1725
    :cond_f
    sget-object v1, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/16 v2, 0x709

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1732
    .end local v4           #delUri:Landroid/net/Uri;
    .end local v5           #where:Ljava/lang/String;
    .end local v8           #deleteUri:Landroid/net/Uri;
    .end local v12           #msgId:J
    .end local v15           #suri:Ljava/lang/String;
    .end local v16           #type:Ljava/lang/String;
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method static getDeleteCmasIds(Landroid/database/Cursor;[ZZ)Ljava/util/ArrayList;
    .locals 6
    .parameter "cursor"
    .parameter "checkArray"
    .parameter "isDeleteAll"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "[ZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2058
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2059
    .local v4, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 2060
    .local v3, len:I
    if-gtz v3, :cond_1

    const/4 v4, 0x0

    .line 2068
    .end local v4           #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    return-object v4

    .line 2061
    .restart local v4       #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 2062
    invoke-interface {p0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2063
    if-nez p2, :cond_2

    aget-boolean v5, p1, v2

    if-eqz v5, :cond_3

    .line 2064
    :cond_2
    const-string v5, "_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 2065
    .local v0, cMasId:J
    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2061
    .end local v0           #cMasId:J
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static getDeleteThreadIdList(Landroid/database/Cursor;[ZZ)Ljava/lang/String;
    .locals 9
    .parameter "cursor"
    .parameter "checkArray"
    .parameter "isDeleteAll"

    .prologue
    .line 1769
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1770
    .local v5, threadIds:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 1771
    .local v2, len:I
    if-gtz v2, :cond_0

    const/4 v6, 0x0

    .line 1787
    :goto_0
    return-object v6

    .line 1772
    :cond_0
    const/4 v0, 0x0

    .line 1773
    .local v0, hasThreadid:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 1774
    invoke-interface {p0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1775
    if-nez p2, :cond_1

    aget-boolean v6, p1, v1

    if-eqz v6, :cond_3

    .line 1776
    :cond_1
    const/4 v6, 0x0

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1777
    .local v3, threadId:J
    if-eqz v0, :cond_2

    .line 1778
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1780
    :cond_2
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1781
    const/4 v0, 0x1

    .line 1773
    .end local v3           #threadId:J
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1786
    :cond_4
    const-string v6, "MultipleDeleteActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDeleteThreadIdList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method static getDeleteThreadIds(Landroid/database/Cursor;[ZZ)Ljava/util/ArrayList;
    .locals 7
    .parameter "cursor"
    .parameter "checkArray"
    .parameter "isDeleteAll"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "[ZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1965
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1966
    .local v2, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1967
    .local v1, len:I
    if-gtz v1, :cond_1

    const/4 v2, 0x0

    .line 1975
    .end local v2           #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    return-object v2

    .line 1968
    .restart local v2       #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1969
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1970
    if-nez p2, :cond_2

    aget-boolean v5, p1, v0

    if-eqz v5, :cond_3

    .line 1971
    :cond_2
    const/4 v5, 0x0

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1972
    .local v3, threadId:J
    new-instance v5, Ljava/lang/Integer;

    long-to-int v6, v3

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1968
    .end local v3           #threadId:J
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getIdList(Ljava/util/ArrayList;II)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2045
    .local p1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2046
    .local v2, idsSize:I
    if-lez v2, :cond_0

    if-lez p3, :cond_0

    if-ltz p2, :cond_0

    if-lt p2, v2, :cond_1

    :cond_0
    const/4 v4, 0x0

    .line 2054
    :goto_0
    return-object v4

    .line 2047
    :cond_1
    const/4 v0, 0x0

    .line 2048
    .local v0, addSeperate:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2049
    .local v3, threadIds:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, p3, :cond_3

    add-int v4, p2, v1

    if-ge v4, v2, :cond_3

    .line 2050
    if-eqz v0, :cond_2

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2051
    :cond_2
    add-int v4, p2, v1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2052
    const/4 v0, 0x1

    .line 2049
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2054
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method static getdeleteMMSIds(Landroid/database/Cursor;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .parameter "cursor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2009
    .local p1, in_threadlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2011
    .local v3, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 2012
    .local v1, len:I
    const/4 v4, -0x1

    .line 2013
    .local v4, threadId:I
    if-gtz v1, :cond_1

    const/4 v3, 0x0

    .line 2023
    .end local v3           #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    return-object v3

    .line 2014
    .restart local v3       #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2015
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2016
    const/4 v5, 0x1

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    long-to-int v4, v5

    .line 2018
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2019
    const/4 v5, 0x0

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    long-to-int v2, v5

    .line 2020
    .local v2, mmsId:I
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2014
    .end local v2           #mmsId:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static getdeleteSMSIds(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 9
    .parameter "cursor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1981
    .local p1, in_threadlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 1982
    .local v2, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 1984
    .local v3, retidxonsim:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1985
    .local v1, len:I
    const/4 v6, -0x1

    .line 1986
    .local v6, threadId:I
    if-lez v1, :cond_1

    .line 1987
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1988
    .restart local v2       #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #retidxonsim:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1990
    .restart local v3       #retidxonsim:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1991
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1992
    const/4 v7, 0x1

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    long-to-int v6, v7

    .line 1994
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1995
    const/4 v7, 0x0

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    long-to-int v4, v7

    .line 1996
    .local v4, smsId:I
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1997
    const/4 v7, 0x2

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    long-to-int v5, v7

    .line 1998
    .local v5, smsIdonsim:I
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1990
    .end local v4           #smsId:I
    .end local v5           #smsIdonsim:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2002
    .end local v0           #i:I
    :cond_1
    sput-object v2, Lcom/android/mms/ui/MultipleDeleteActivity;->msmsids:Ljava/util/ArrayList;

    .line 2003
    sput-object v3, Lcom/android/mms/ui/MultipleDeleteActivity;->msmsIdxSIM:Ljava/util/ArrayList;

    .line 2005
    return-void
.end method

.method private initActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 504
    const-string v0, "Jerry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMode1 >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 507
    :cond_0
    const v0, 0x7f09029d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->delStr:Ljava/lang/String;

    .line 511
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCheckDeleteOk:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->delStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mSelectedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCheckDeleteOk:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 524
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCheckDeleteOk:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setFocusable(Z)V

    .line 525
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCheckDelteCancel:Landroid/widget/Button;

    const v1, 0x20c0164

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 529
    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleDeleteActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mUIlistenter:Lcom/android/mms/ui/MessagingListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingController;->addListener(Lcom/android/mms/ui/MessagingListener;)V

    .line 532
    return-void

    .line 509
    :cond_1
    const v0, 0x20c01fc

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->delStr:Ljava/lang/String;

    goto :goto_0
.end method

.method private initCommonResources(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 171
    const-string v2, "title"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 172
    .local v0, titleId:I
    const-string v2, "title"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, titleName:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 186
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mTitle:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 194
    :goto_0
    const-string v2, "query_order"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mSpecificOrder:Ljava/lang/String;

    .line 195
    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mSpecificOrder:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mSpecificOrder:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 196
    :cond_1
    const-string v2, "date DESC"

    iput-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mSpecificOrder:Ljava/lang/String;

    .line 198
    :cond_2
    const-string v2, "query_limit"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryLimit:I

    .line 199
    const-string v2, "Jerry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MultipleDeleteActivity  mQueryLimit >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryLimit:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void

    .line 190
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mTitle:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initDeleteButton()V
    .locals 3

    .prologue
    .line 1336
    move-object v0, p0

    .line 1339
    .local v0, mThis:Lcom/android/mms/ui/MultipleDeleteActivity;
    iget-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCheckDeleteOk:Landroid/widget/Button;

    new-instance v2, Lcom/android/mms/ui/MultipleDeleteActivity$7;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/MultipleDeleteActivity$7;-><init>(Lcom/android/mms/ui/MultipleDeleteActivity;Lcom/android/mms/ui/MultipleDeleteActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1394
    iget-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCheckDelteCancel:Landroid/widget/Button;

    new-instance v2, Lcom/android/mms/ui/MultipleDeleteActivity$8;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MultipleDeleteActivity$8;-><init>(Lcom/android/mms/ui/MultipleDeleteActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1400
    return-void
.end method

.method private initListHeaderView()V
    .locals 4

    .prologue
    .line 206
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/mms/ui/HtcListItemComposer;->createCheckboxListItem(Landroid/content/Context;Z)Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    move-result-object v0

    .line 207
    .local v0, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    const v2, 0x20c013a

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 208
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 209
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Checkbox:Lcom/htc/widget/HtcListItemCheckBox;

    iput-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 210
    iget-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    const-string v2, "common_checkbox"

    const v3, 0x2080012

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemCheckBox;->setButtonDrawable(I)V

    .line 212
    iget-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 213
    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleDeleteActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    iget-object v2, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;)V

    .line 214
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    check-cast v1, Lcom/htc/widget/HtcListItem;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    .line 215
    return-void
.end method

.method private initListView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 539
    iget-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mAdapter:Lcom/android/mms/ui/MultipleDeleteListAdapter;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MultipleDeleteActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 541
    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleDeleteActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->checkArray:[Z

    .line 542
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleDeleteActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 543
    iget-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->checkArray:[Z

    aput-boolean v3, v1, v0

    .line 542
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 545
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleDeleteActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setClickable(Z)V

    .line 546
    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleDeleteActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setFillEmpty(Z)V

    .line 548
    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleDeleteActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 550
    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleDeleteActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/MultipleDeleteActivity$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MultipleDeleteActivity$1;-><init>(Lcom/android/mms/ui/MultipleDeleteActivity;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 596
    return-void
.end method

.method private newWakeLock()V
    .locals 3

    .prologue
    .line 389
    iget-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 390
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MultipleDeleteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 391
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "MultipleDeleteActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 393
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 401
    const-string v0, "MultipleDeleteActivity"

    const-string v1, "release wakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 403
    :cond_0
    return-void
.end method

.method private static updateStatusNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1796
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/MultipleDeleteActivity$10;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MultipleDeleteActivity$10;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1812
    return-void
.end method


# virtual methods
.method deleteContactBasehtcThreadByList(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "context"
    .parameter "threadIdList"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1000
    .local p3, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v2, "MultipleDeleteActivity"

    const-string v3, "deleteThreadByList"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const-string v1, "locked=0"

    .line 1002
    .local v1, selection:Ljava/lang/String;
    move-object v0, p3

    .line 1004
    .local v0, ids2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v2, 0x81

    new-instance v3, Lcom/android/mms/ui/MultipleDeleteActivity$6;

    invoke-direct {v3, p0, v0}, Lcom/android/mms/ui/MultipleDeleteActivity$6;-><init>(Lcom/android/mms/ui/MultipleDeleteActivity;Ljava/util/ArrayList;)V

    invoke-static {p1, p2, v2, v3}, Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 1081
    return-void
.end method

.method deleteHtcThreads(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 9
    .parameter "context"
    .parameter "HtcthreadIdList"
    .parameter "threadIdList"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 673
    .local p4, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v0, "MultipleDeleteActivity"

    const-string v1, "deleteHtcThreads"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    sget-object v3, Landroid/provider/Telephony$HtcThreads;->THREAD_CONTENT_URI:Landroid/net/Uri;

    .line 676
    .local v3, delUri:Landroid/net/Uri;
    move-object v6, p4

    .line 677
    .local v6, ids2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p2, :cond_0

    .line 710
    :goto_0
    return-void

    .line 678
    :cond_0
    const-string v0, "_id in (%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 680
    .local v4, selection:Ljava/lang/String;
    const-string v0, "MultipleDeleteActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delUri: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const-string v0, "MultipleDeleteActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selection: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 684
    const/16 v0, 0x81

    new-instance v1, Lcom/android/mms/ui/MultipleDeleteActivity$2;

    invoke-direct {v1, p0, v6, v3, v4}, Lcom/android/mms/ui/MultipleDeleteActivity$2;-><init>(Lcom/android/mms/ui/MultipleDeleteActivity;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-static {p1, p3, v0, v1}, Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Runnable;)V

    goto :goto_0

    .line 703
    :cond_1
    new-instance v2, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;

    invoke-direct {v2}, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;-><init>()V

    .line 704
    .local v2, cookie:Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;->sTime:J

    .line 705
    const-string v0, "MultipleDeleteActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startDelete: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v7, v2, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;->sTime:J

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    sget-object v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/16 v1, 0x709

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method deleteSMSMMSByList(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 22
    .parameter "context"
    .parameter
    .parameter "bSMS"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 759
    .local p2, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 760
    .local v5, delUri:Landroid/net/Uri;
    if-eqz p3, :cond_1

    .line 761
    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 765
    :goto_0
    const/4 v6, 0x0

    .line 767
    .local v6, selection:Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_2

    .line 768
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSimSms()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 769
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_2

    .line 770
    sget-object v2, Lcom/android/mms/ui/MultipleDeleteActivity;->msmsIdxSIM:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    .line 771
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://sms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 772
    .local v19, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MultipleDeleteActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/android/mms/util/SimIoUtil;->deleteSimSms(Landroid/content/Context;Landroid/net/Uri;)V

    .line 769
    .end local v19           #uri:Landroid/net/Uri;
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 763
    .end local v6           #selection:Ljava/lang/String;
    .end local v11           #i:I
    :cond_1
    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 781
    .restart local v6       #selection:Ljava/lang/String;
    :cond_2
    new-instance v4, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;

    invoke-direct {v4}, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;-><init>()V

    .line 782
    .local v4, cookie:Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v4, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;->sTime:J

    .line 783
    const-string v2, "MultipleDeleteActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startDelete: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v0, v4, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;->sTime:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMultiDelUnitsize:I

    div-int v12, v2, v3

    .line 785
    .local v12, nSetcount:I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMultiDelUnitsize:I

    rem-int v13, v2, v3

    .line 788
    .local v13, nSetremain:I
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_2
    if-gt v11, v12, :cond_b

    .line 791
    if-ge v11, v12, :cond_4

    .line 792
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMultiDelUnitsize:I

    mul-int v18, v11, v2

    .line 793
    .local v18, startidx:I
    add-int/lit8 v2, v11, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMultiDelUnitsize:I

    mul-int/2addr v2, v3

    add-int/lit8 v10, v2, -0x1

    .line 800
    .local v10, endidx:I
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 801
    .local v8, Idbuilder:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 802
    .local v9, binit:Z
    move/from16 v15, v18

    .local v15, si:I
    :goto_4
    if-gt v15, v10, :cond_5

    .line 803
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    .line 809
    .local v16, smsId:J
    if-eqz v9, :cond_3

    .line 810
    const-string v2, ", "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    :cond_3
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    const/4 v9, 0x1

    .line 802
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 796
    .end local v8           #Idbuilder:Ljava/lang/StringBuilder;
    .end local v9           #binit:Z
    .end local v10           #endidx:I
    .end local v15           #si:I
    .end local v16           #smsId:J
    .end local v18           #startidx:I
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMultiDelUnitsize:I

    mul-int v18, v11, v2

    .line 797
    .restart local v18       #startidx:I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v10, v2, -0x1

    .restart local v10       #endidx:I
    goto :goto_3

    .line 815
    .restart local v8       #Idbuilder:Ljava/lang/StringBuilder;
    .restart local v9       #binit:Z
    .restart local v15       #si:I
    :cond_5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 818
    .local v14, selstring:Ljava/lang/String;
    if-eqz p3, :cond_7

    .line 819
    const-string v2, "_id in (%s) AND locked=0"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v14, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 824
    :goto_5
    if-ne v11, v12, :cond_a

    .line 825
    if-eqz p3, :cond_9

    .line 826
    sget-object v2, Lcom/android/mms/ui/MultipleDeleteActivity;->mmmsids:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/mms/ui/MultipleDeleteActivity;->mmmsids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_8

    .line 827
    :cond_6
    sget-object v2, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/16 v3, 0x709

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 788
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 821
    :cond_7
    const-string v2, "_id in (%s) AND locked=0"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v14, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 829
    :cond_8
    sget-object v2, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_6

    .line 832
    :cond_9
    sget-object v2, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/16 v3, 0x709

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_6

    .line 837
    :cond_a
    sget-object v2, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_6

    .line 840
    .end local v8           #Idbuilder:Ljava/lang/StringBuilder;
    .end local v9           #binit:Z
    .end local v10           #endidx:I
    .end local v14           #selstring:Ljava/lang/String;
    .end local v15           #si:I
    .end local v18           #startidx:I
    :cond_b
    return-void
.end method

.method deleteThreadByList(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "context"
    .parameter "threadIdList"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 713
    .local p3, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v3, "MultipleDeleteActivity"

    const-string v4, "deleteThreadByList"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    .line 716
    .local v0, delUri:Landroid/net/Uri;
    move-object v1, p3

    .line 718
    .local v1, ids2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_0

    .line 719
    const-string v3, "thread_id in (%s) AND locked=0"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 725
    .local v2, selection:Ljava/lang/String;
    :goto_0
    const-string v3, "MultipleDeleteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delUri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const-string v3, "MultipleDeleteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const/16 v3, 0x81

    new-instance v4, Lcom/android/mms/ui/MultipleDeleteActivity$3;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/android/mms/ui/MultipleDeleteActivity$3;-><init>(Lcom/android/mms/ui/MultipleDeleteActivity;Ljava/util/ArrayList;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p1, p2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 756
    return-void

    .line 721
    .end local v2           #selection:Ljava/lang/String;
    :cond_0
    const-string v2, "locked=0"

    .restart local v2       #selection:Ljava/lang/String;
    goto :goto_0
.end method

.method deleteThreadByListV2(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "context"
    .parameter "threadIdList"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 843
    .local p3, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v3, "MultipleDeleteActivity"

    const-string v4, "deleteThreadByListV2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id in ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 848
    .local v2, selection:Ljava/lang/String;
    move-object v0, p3

    .line 849
    .local v0, ids2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    .line 851
    .local v1, queryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;
    const/16 v3, 0x81

    new-instance v4, Lcom/android/mms/ui/MultipleDeleteActivity$4;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/mms/ui/MultipleDeleteActivity$4;-><init>(Lcom/android/mms/ui/MultipleDeleteActivity;Ljava/util/ArrayList;Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;)V

    invoke-static {p1, p2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 962
    return-void
.end method

.method moveMessageByCursor(Landroid/content/Context;Landroid/database/Cursor;[ZZ)V
    .locals 17
    .parameter "context"
    .parameter "cursor"
    .parameter "checkArray"
    .parameter "isMoveAll"

    .prologue
    .line 1553
    const-string v1, "MultipleDeleteActivity"

    const-string v2, "moveMessageByCursor: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 1555
    .local v11, len:I
    const/4 v9, 0x0

    .line 1556
    .local v9, hasSms:Z
    new-instance v5, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v5, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1557
    .local v5, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1558
    const-string v1, "htc_category"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1563
    :goto_0
    if-gtz v11, :cond_2

    .line 1633
    :cond_0
    :goto_1
    return-void

    .line 1560
    :cond_1
    const-string v1, "htc_category"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1565
    :cond_2
    const/4 v14, -0x1

    .line 1566
    .local v14, nLastOne:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    if-ge v10, v11, :cond_5

    .line 1567
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1568
    if-nez p4, :cond_3

    aget-boolean v1, p3, v10

    if-eqz v1, :cond_4

    .line 1569
    :cond_3
    move v14, v10

    .line 1566
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1572
    :cond_5
    const/4 v1, -0x1

    if-eq v14, v1, :cond_0

    .line 1577
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v11, :cond_8

    .line 1578
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1579
    if-nez p4, :cond_6

    aget-boolean v1, p3, v10

    if-eqz v1, :cond_b

    .line 1580
    :cond_6
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1581
    .local v16, type:Ljava/lang/String;
    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1583
    .local v12, msgId:J
    sget-object v2, Lcom/android/mms/ui/MultipleDeleteActivity;->mCursorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1584
    :try_start_0
    sget-boolean v1, Lcom/android/mms/ui/MultipleDeleteActivity;->mCancelDeletion:Z

    if-eqz v1, :cond_a

    .line 1585
    const-string v1, "MultipleDeleteActivity"

    const-string v3, "moveMessageByCursor Cancel in thread"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    sget-object v1, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    if-eqz v1, :cond_7

    .line 1587
    sget-object v1, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/16 v3, 0x835

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->cancelOperation(I)V

    .line 1588
    sget-object v1, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/16 v3, 0x7d1

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->cancelOperation(I)V

    .line 1589
    sget-object v1, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    sget-object v3, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/16 v4, 0x899

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1591
    :cond_7
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1622
    .end local v12           #msgId:J
    .end local v16           #type:Ljava/lang/String;
    :cond_8
    const/4 v1, 0x1

    if-ne v9, v1, :cond_9

    .line 1625
    const/16 v1, 0x315

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 1628
    :cond_9
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 1630
    sget-object v2, Lcom/android/mms/ui/MultipleDeleteActivity;->mCursorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1631
    const/4 v1, 0x0

    :try_start_1
    sput-boolean v1, Lcom/android/mms/ui/MultipleDeleteActivity;->mCancelDeletion:Z

    .line 1632
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1593
    .restart local v12       #msgId:J
    .restart local v16       #type:Ljava/lang/String;
    :cond_a
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1595
    const-string v1, "sms"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1596
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_id"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " in (%s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1599
    .local v6, where:Ljava/lang/String;
    if-eq v14, v10, :cond_c

    .line 1600
    sget-object v1, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/16 v2, 0x835

    const/4 v3, 0x0

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1577
    .end local v6           #where:Ljava/lang/String;
    .end local v12           #msgId:J
    .end local v16           #type:Ljava/lang/String;
    :cond_b
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 1593
    .restart local v12       #msgId:J
    .restart local v16       #type:Ljava/lang/String;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 1602
    .restart local v6       #where:Ljava/lang/String;
    :cond_c
    sget-object v1, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/16 v2, 0x7d1

    const/4 v3, 0x0

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_4

    .line 1605
    .end local v6           #where:Ljava/lang/String;
    :cond_d
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 1606
    .local v8, deleteUri:Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1607
    .local v15, suri:Ljava/lang/String;
    const-string v1, "Goven"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MultipleMove Uri string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v1

    move-object/from16 v0, p1

    invoke-static {v0, v15, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelMMSNotification(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1611
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_id"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " in (%s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1614
    .restart local v6       #where:Ljava/lang/String;
    if-eq v14, v10, :cond_e

    .line 1615
    sget-object v1, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/16 v2, 0x835

    const/4 v3, 0x0

    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_4

    .line 1617
    :cond_e
    sget-object v1, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/16 v2, 0x7d1

    const/4 v3, 0x0

    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_4
.end method

.method moveThreadByList(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 12
    .parameter "context"
    .parameter "threadIdList"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1086
    .local p3, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v0, "MultipleDeleteActivity"

    const-string v1, "moveThreadByList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    move-object v10, p3

    .line 1092
    .local v10, ids2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1093
    .local v4, values:Landroid/content/ContentValues;
    iget v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 1094
    const-string v0, "htc_category"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1095
    iget v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCategoryFrom:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1097
    const-string v5, "htc_category=2"

    .line 1111
    .local v5, selection:Ljava/lang/String;
    :goto_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1112
    .local v11, length:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v11, :cond_3

    .line 1113
    sget-object v7, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    .line 1114
    .local v7, baseUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1115
    sget-object v7, Landroid/provider/Telephony$Threads;->CONTENT_V2_URI:Landroid/net/Uri;

    .line 1119
    :cond_0
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I

    if-ne v0, v1, :cond_1

    .line 1120
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 1121
    .local v8, builder:Landroid/net/Uri$Builder;
    const-string v0, "filter_index_on_sim"

    const-string v1, "1"

    invoke-virtual {v8, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1122
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 1126
    .end local v8           #builder:Landroid/net/Uri$Builder;
    :cond_1
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v7, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1132
    .local v3, moveUri:Landroid/net/Uri;
    sget-object v1, Lcom/android/mms/ui/MultipleDeleteActivity;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1133
    :try_start_0
    sget-boolean v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCancelDeletion:Z

    if-eqz v0, :cond_7

    .line 1134
    const-string v0, "MultipleDeleteActivity"

    const-string v2, "moveThreadByList Cancel in thread"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    sget-object v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    if-eqz v0, :cond_2

    .line 1136
    sget-object v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/16 v2, 0x835

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->cancelOperation(I)V

    .line 1137
    sget-object v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/16 v2, 0x7d1

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->cancelOperation(I)V

    .line 1138
    sget-object v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    sget-object v2, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/16 v6, 0x899

    invoke-virtual {v2, v6}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1140
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    .end local v3           #moveUri:Landroid/net/Uri;
    .end local v7           #baseUri:Landroid/net/Uri;
    :cond_3
    sget-object v1, Lcom/android/mms/ui/MultipleDeleteActivity;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1151
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCancelDeletion:Z

    .line 1152
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1157
    const-string v0, "MultipleDeleteActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "move_selection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    return-void

    .line 1100
    .end local v5           #selection:Ljava/lang/String;
    .end local v9           #i:I
    .end local v11           #length:I
    :cond_4
    const-string v5, "htc_category=0"

    .restart local v5       #selection:Ljava/lang/String;
    goto/16 :goto_0

    .line 1102
    .end local v5           #selection:Ljava/lang/String;
    :cond_5
    const-string v0, "htc_category"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1103
    iget v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCategoryFrom:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 1105
    const-string v5, "htc_category=2"

    .restart local v5       #selection:Ljava/lang/String;
    goto/16 :goto_0

    .line 1108
    .end local v5           #selection:Ljava/lang/String;
    :cond_6
    const-string v5, "htc_category=1"

    .restart local v5       #selection:Ljava/lang/String;
    goto/16 :goto_0

    .line 1142
    .restart local v3       #moveUri:Landroid/net/Uri;
    .restart local v7       #baseUri:Landroid/net/Uri;
    .restart local v9       #i:I
    .restart local v11       #length:I
    :cond_7
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1144
    add-int/lit8 v0, v11, -0x1

    if-ne v9, v0, :cond_8

    .line 1145
    sget-object v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/16 v1, 0x7d1

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1112
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1142
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1147
    :cond_8
    sget-object v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/16 v1, 0x835

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    .line 1152
    .end local v3           #moveUri:Landroid/net/Uri;
    .end local v7           #baseUri:Landroid/net/Uri;
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 345
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 347
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleDeleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 352
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 219
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MultipleDeleteActivity;->requestWindowFeature(I)Z

    .line 220
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 227
    .local v5, intent:Landroid/content/Intent;
    new-instance v1, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;

    invoke-direct {v1}, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;-><init>()V

    .line 229
    .local v1, Headercomposer:Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;
    const/4 v9, 0x1

    new-array v0, v9, [Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    const/4 v9, 0x0

    new-instance v10, Lcom/android/mms/util/CommonActivityLayout$BarText;

    const v11, 0x7f09010c

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Lcom/android/mms/util/CommonActivityLayout$BarText;-><init>(II)V

    aput-object v10, v0, v9

    .line 232
    .local v0, Center:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;
    iput-object v0, v1, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mCenter:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    .line 233
    sget-object v9, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->HEADER_SHORT:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    iput-object v9, v1, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mHight:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    .line 235
    new-instance v4, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;

    invoke-direct {v4}, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;-><init>()V

    .line 236
    .local v4, footer:Lcom/android/mms/util/CommonActivityLayout$FooterComposer;
    const/4 v9, 0x2

    new-array v9, v9, [Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    const/4 v10, 0x0

    new-instance v11, Lcom/android/mms/util/CommonActivityLayout$FootButton;

    const v12, 0x20c0164

    invoke-direct {v11, v12}, Lcom/android/mms/util/CommonActivityLayout$FootButton;-><init>(I)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/android/mms/util/CommonActivityLayout$FootButton;

    const v12, 0x20c01fc

    invoke-direct {v11, v12}, Lcom/android/mms/util/CommonActivityLayout$FootButton;-><init>(I)V

    aput-object v11, v9, v10

    iput-object v9, v4, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;->mChild:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    .line 241
    new-instance v2, Lcom/android/mms/util/CommonActivityLayout;

    invoke-direct {v2, p0, v1, v4}, Lcom/android/mms/util/CommonActivityLayout;-><init>(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;Lcom/android/mms/util/CommonActivityLayout$FooterComposer;)V

    .line 242
    .local v2, activityComposer:Lcom/android/mms/util/CommonActivityLayout;
    invoke-virtual {v2}, Lcom/android/mms/util/CommonActivityLayout;->getController()Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    move-result-object v6

    .line 243
    .local v6, mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;
    invoke-virtual {v6}, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->getActivityContentView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MultipleDeleteActivity;->setContentView(Landroid/view/View;)V

    .line 245
    const/4 v9, 0x0

    aget-object v9, v0, v9

    invoke-virtual {v9}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->getView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HeaderBarText;

    iput-object v9, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mTitle:Lcom/htc/widget/HeaderBarText;

    .line 246
    iget-object v9, v4, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;->mChild:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->getView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCheckDeleteOk:Landroid/widget/Button;

    .line 247
    iget-object v9, v4, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;->mChild:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->getView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCheckDelteCancel:Landroid/widget/Button;

    .line 249
    invoke-direct {p0, v5}, Lcom/android/mms/ui/MultipleDeleteActivity;->initCommonResources(Landroid/content/Intent;)V

    .line 251
    const-string v9, "title"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 253
    .local v8, titleId:I
    const v9, 0x7f09010c

    if-eq v8, v9, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v9

    if-eqz v9, :cond_8

    const v9, 0x7f09010c

    if-eq v8, v9, :cond_0

    const v9, 0x7f090288

    if-eq v8, v9, :cond_0

    const v9, 0x7f090334

    if-eq v8, v9, :cond_0

    const v9, 0x7f0902d2

    if-eq v8, v9, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAppLable()I

    move-result v9

    if-ne v8, v9, :cond_8

    .line 257
    :cond_0
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I

    .line 262
    :goto_0
    const-string v9, "htcThread_mode"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 263
    const/4 v9, 0x2

    iput v9, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I

    .line 267
    :cond_1
    const-string v9, "cmas_mode"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 268
    const/16 v9, 0x8

    iput v9, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I

    .line 272
    :cond_2
    const-string v9, "sms_notification"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 273
    const/4 v9, 0x5

    iput v9, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I

    .line 275
    :cond_3
    const v9, 0x7f09001d

    if-ne v8, v9, :cond_4

    .line 277
    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleDeleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/16 v10, 0x315

    invoke-static {v9, v10}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 282
    :cond_4
    const-string v9, "category"

    const/4 v10, -0x1

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 283
    .local v3, category:I
    const-string v9, "category"

    const/4 v10, -0x1

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCategoryFrom:I

    .line 284
    const-string v9, "mode"

    const/4 v10, -0x1

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 285
    .local v7, mode:I
    const-string v9, "isThread"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mIsThread:Z

    .line 286
    const/4 v9, 0x3

    if-ne v7, v9, :cond_9

    .line 287
    const/4 v9, 0x3

    iput v9, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I

    .line 297
    :cond_5
    :goto_1
    const-string v9, "htc_category"

    const/4 v10, -0x1

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCategoty:I

    .line 300
    const-string v9, "uri"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    iput-object v9, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mdeleteUri:Landroid/net/Uri;

    .line 301
    const-string v9, "Jerry"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mdeleteUri >"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mdeleteUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v9, "projection"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/android/mms/ui/MultipleDeleteActivity;->PROJECTION:[Ljava/lang/String;

    .line 304
    new-instance v9, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;-><init>(Lcom/android/mms/ui/MultipleDeleteActivity;Landroid/content/ContentResolver;)V

    sput-object v9, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    .line 306
    const-string v9, "locked"

    const/4 v10, -0x1

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mLocked:I

    .line 309
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSelectAllOnTop()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 310
    invoke-direct {p0}, Lcom/android/mms/ui/MultipleDeleteActivity;->initListHeaderView()V

    .line 314
    :cond_6
    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleDeleteActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v9

    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->setRoundedCorner(Landroid/view/View;)V

    .line 316
    invoke-direct {p0}, Lcom/android/mms/ui/MultipleDeleteActivity;->initActivity()V

    .line 317
    invoke-direct {p0}, Lcom/android/mms/ui/MultipleDeleteActivity;->newWakeLock()V

    .line 325
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/mms/ui/ConversationListBaseActivity;->sStartDeleting:Z

    .line 327
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 328
    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleDeleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 332
    :cond_7
    return-void

    .line 259
    .end local v3           #category:I
    .end local v7           #mode:I
    :cond_8
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I

    goto/16 :goto_0

    .line 288
    .restart local v3       #category:I
    .restart local v7       #mode:I
    :cond_9
    const/4 v9, 0x4

    if-ne v7, v9, :cond_a

    .line 289
    const/4 v9, 0x4

    iput v9, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I

    goto/16 :goto_1

    .line 290
    :cond_a
    const/4 v9, 0x6

    if-ne v7, v9, :cond_b

    .line 291
    const/4 v9, 0x6

    iput v9, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I

    goto/16 :goto_1

    .line 292
    :cond_b
    if-lez v7, :cond_5

    .line 293
    iput v7, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I

    goto/16 :goto_1
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 1404
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1406
    const/4 v0, 0x3

    const v1, 0x20c013a

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MultipleDeleteActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020135

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1407
    const/4 v0, 0x4

    const v1, 0x7f0902b3

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MultipleDeleteActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02013a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1411
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 366
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onDestroy()V

    .line 368
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mAdapter:Lcom/android/mms/ui/MultipleDeleteListAdapter;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mAdapter:Lcom/android/mms/ui/MultipleDeleteListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MultipleDeleteListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 374
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleDeleteActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mUIlistenter:Lcom/android/mms/ui/MessagingListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingController;->removeListener(Lcom/android/mms/ui/MessagingListener;)V

    .line 377
    sget-object v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    if-eqz v0, :cond_1

    .line 378
    sget-object v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->sendEmptyMessage(I)Z

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 383
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 384
    iput-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteProgressDialog:Landroid/app/Dialog;

    .line 386
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 1451
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1481
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 1483
    :goto_0
    return v0

    .line 1454
    :pswitch_0
    const-string v1, "ANALYTIC_Mms"

    const-string v2, "[MultipleDeleteActivity]Delete all"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    const v1, 0x7f0900ae

    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mConfirmDeleteAllMessagesListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MultipleDeleteActivity;->confirmDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 1460
    :pswitch_1
    const-string v1, "ANALYTIC_Mms"

    const-string v2, "[MultipleDeleteActivity]Move all to generic"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    const v1, 0x7f09028a

    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mConfirmDeleteAllMessagesListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MultipleDeleteActivity;->confirmDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 1465
    :pswitch_2
    const-string v1, "ANALYTIC_Mms"

    const-string v2, "[MultipleDeleteActivity]Move all to secure"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    const v1, 0x7f090289

    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mConfirmDeleteAllMessagesListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MultipleDeleteActivity;->confirmDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 1471
    :pswitch_3
    const-string v1, "ANALYTIC_Mms"

    const-string v2, "[MultipleDeleteActivity]Delete select all"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    iget-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mUIHandler:Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1476
    :pswitch_4
    const-string v1, "ANALYTIC_Mms"

    const-string v2, "[MultipleDeleteActivity]Delete select none"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    iget-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mUIHandler:Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MultipleDeleteActivity$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1451
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 1418
    iget-object v4, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mAdapter:Lcom/android/mms/ui/MultipleDeleteListAdapter;

    if-eqz v4, :cond_4

    .line 1420
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1421
    .local v1, selAll:Landroid/view/MenuItem;
    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1422
    .local v2, selNone:Landroid/view/MenuItem;
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1423
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1424
    const/4 v0, 0x0

    .line 1425
    .local v0, listItemCount:I
    iget-object v4, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1426
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_3

    if-lez v0, :cond_3

    .line 1427
    iget v4, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mSelectedCount:I

    if-gtz v4, :cond_1

    .line 1428
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1429
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1445
    .end local v0           #listItemCount:I
    .end local v1           #selAll:Landroid/view/MenuItem;
    .end local v2           #selNone:Landroid/view/MenuItem;
    :goto_0
    return v3

    .line 1430
    .restart local v0       #listItemCount:I
    .restart local v1       #selAll:Landroid/view/MenuItem;
    .restart local v2       #selNone:Landroid/view/MenuItem;
    :cond_1
    iget v4, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mSelectedCount:I

    if-lt v4, v0, :cond_2

    .line 1431
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1432
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1434
    :cond_2
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1435
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1438
    :cond_3
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1439
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1445
    .end local v0           #listItemCount:I
    .end local v1           #selAll:Landroid/view/MenuItem;
    .end local v2           #selNone:Landroid/view/MenuItem;
    :cond_4
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 336
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onResume()V

    .line 339
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->checkArray:[Z

    if-nez v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleDeleteActivity;->startAsyncQuery()V

    .line 342
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 356
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onStop()V

    .line 360
    invoke-static {p0}, Lcom/android/mms/ui/MultipleDeleteActivity;->updateStatusNotification(Landroid/content/Context;)V

    .line 361
    return-void
.end method

.method public refreshContactName()V
    .locals 3

    .prologue
    .line 1940
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mEditorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity;->mEditorHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1941
    return-void
.end method

.method startAsyncQuery()V
    .locals 24

    .prologue
    .line 407
    :try_start_0
    sget-object v23, Lcom/android/mms/ui/MultipleDeleteActivity;->mCursorLock:Ljava/lang/Object;

    monitor-enter v23
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    const/4 v9, 0x0

    .line 411
    .local v9, order:Ljava/lang/String;
    :try_start_1
    sget-object v2, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/16 v3, 0x6a5

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->cancelOperation(I)V

    .line 412
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 414
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mSpecificOrder:Ljava/lang/String;

    .line 418
    sget-object v2, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/4 v3, 0x0

    const/16 v4, 0x6a5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mdeleteUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/mms/ui/MultipleDeleteActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :goto_0
    monitor-exit v23

    .line 497
    .end local v9           #order:Ljava/lang/String;
    :goto_1
    return-void

    .line 424
    .restart local v9       #order:Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    .line 425
    .local v7, selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mLocked:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mLocked:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 427
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    .line 428
    :cond_2
    if-nez v7, :cond_7

    .line 429
    const-string v7, "(thread_id > 0 OR thread_id isnull)"

    .line 433
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mSpecificOrder:Ljava/lang/String;

    .line 438
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 439
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCategoryFrom:I

    if-lez v2, :cond_3

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mdeleteUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v18

    .line 441
    .local v18, Builder1:Landroid/net/Uri$Builder;
    const-string v2, "category"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCategoryFrom:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 442
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mdeleteUri:Landroid/net/Uri;

    .line 450
    .end local v18           #Builder1:Landroid/net/Uri$Builder;
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mIsThread:Z

    if-nez v2, :cond_6

    .line 452
    const/16 v20, 0x0

    .line 453
    .local v20, findIndexOnSim:Z
    const/16 v21, 0x0

    .local v21, i:I
    :goto_3
    sget-object v2, Lcom/android/mms/ui/MultipleDeleteActivity;->PROJECTION:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_4

    .line 454
    const-string v2, "index_on_sim"

    sget-object v3, Lcom/android/mms/ui/MultipleDeleteActivity;->PROJECTION:[Ljava/lang/String;

    aget-object v3, v3, v21

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 455
    const/16 v20, 0x1

    .line 460
    :cond_4
    if-nez v20, :cond_5

    .line 461
    sget-object v2, Lcom/android/mms/ui/MultipleDeleteActivity;->PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/android/mms/ui/MultipleDeleteActivity;->PROJECTION:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    sput-object v2, Lcom/android/mms/ui/MultipleDeleteActivity;->PROJECTION:[Ljava/lang/String;

    .line 462
    sget-object v2, Lcom/android/mms/ui/MultipleDeleteActivity;->PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/android/mms/ui/MultipleDeleteActivity;->PROJECTION:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    const-string v4, "index_on_sim"

    aput-object v4, v2, v3

    .line 465
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND ((index_on_sim = -1 OR index_on_sim = 0 OR Length(index_on_sim) = 0 OR index_on_sim isnull ) OR transport_type = \'mms\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 469
    .end local v20           #findIndexOnSim:Z
    .end local v21           #i:I
    :cond_6
    sget-object v2, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/4 v3, 0x0

    const/16 v4, 0x6a5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mdeleteUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/mms/ui/MultipleDeleteActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 493
    .end local v7           #selection:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 494
    .end local v9           #order:Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 495
    .local v19, e:Landroid/database/sqlite/SQLiteException;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto/16 :goto_1

    .line 431
    .end local v19           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v7       #selection:Ljava/lang/String;
    .restart local v9       #order:Ljava/lang/String;
    :cond_7
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND (thread_id > 0 OR thread_id isnull)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 453
    .restart local v20       #findIndexOnSim:Z
    .restart local v21       #i:I
    :cond_8
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 472
    .end local v20           #findIndexOnSim:Z
    .end local v21           #i:I
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_b

    .line 474
    if-nez v7, :cond_a

    .line 475
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    .local v22, sb:Ljava/lang/StringBuilder;
    :goto_4
    const-string v2, "presidential"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    sget-object v10, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/4 v11, 0x0

    const/16 v2, 0x6a5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mdeleteUri:Landroid/net/Uri;

    sget-object v14, Lcom/android/mms/ui/MultipleDeleteActivity;->PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const-string v17, "presidential DESC, date DESC"

    invoke-virtual/range {v10 .. v17}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 477
    .end local v22           #sb:Ljava/lang/StringBuilder;
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .restart local v22       #sb:Ljava/lang/StringBuilder;
    goto :goto_4

    .line 485
    .end local v22           #sb:Ljava/lang/StringBuilder;
    :cond_b
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mSpecificOrder:Ljava/lang/String;

    .line 489
    sget-object v2, Lcom/android/mms/ui/MultipleDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/4 v3, 0x0

    const/16 v4, 0x6a5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mdeleteUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/mms/ui/MultipleDeleteActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method
