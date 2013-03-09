.class public Lcom/android/mms/ui/DeleteBySelectActivity;
.super Lcom/htc/app/HtcListActivity;
.source "DeleteBySelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;,
        Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;,
        Lcom/android/mms/ui/DeleteBySelectActivity$DeleteThread;,
        Lcom/android/mms/ui/DeleteBySelectActivity$DeleteCookie;,
        Lcom/android/mms/ui/DeleteBySelectActivity$DeleteProgressDialog21;,
        Lcom/android/mms/ui/DeleteBySelectActivity$DeleteProgressDialog;,
        Lcom/android/mms/ui/DeleteBySelectActivity$ViewHolder;
    }
.end annotation


# static fields
.field private static final CANCEL_DIALOG_TOKEN:I = 0x76d

.field private static final DELETE_LIST_TOKEN:I = 0x709

.field private static final DELETE_LIST_TOKEN_CON:I = 0x7d1

.field public static final DEL_SELECT_ALL:I = 0x1

.field private static final DEL_SELECT_NONE:I = 0x2

.field private static final LIST_QUERY_TOKEN:I = 0x6a5

.field private static final LOCAL_LOGV:Z = true

.field private static final MENU_DELETE_ALL:I = 0x0

.field private static final MMS_ID:I = 0x0

.field private static final MMS_THREAD_ID:I = 0x1

.field static final MSG_FILTER_CONTACT_NAME:I = 0x64

.field private static PROJECTION:[Ljava/lang/String; = null

.field private static final SMS_ID:I = 0x0

.field private static final SMS_INDEX_ON_SIM:I = 0x2

.field private static final SMS_THREAD_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DeleteBySelectActivity"

.field static final mCOLUMN_ID:I = 0x1

.field static final mCOLUMN_MMS_MSG_TYPE:I = 0x5

.field static final mCOLUMN_MSG_TYPE:I = 0x0

.field static final mCOLUMN_SMS_ADDRESS:I = 0x2

.field static final mCOLUMN_SMS_BODY:I = 0x3

.field static final mCOLUMN_SMS_DATE:I = 0x4

.field static mCancelDeletion:Z

.field private static final mCursorLock:Ljava/lang/Object;

.field private static mDeleteThread:Lcom/android/mms/ui/DeleteBySelectActivity$DeleteThread;

.field private static mQueryHandler:Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;

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

.field private mAdapter:Lcom/android/mms/ui/DeleteBySelectListAdapter;

.field private final mCancelDeleteMessagesListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCheckDeleteOk:Landroid/widget/Button;

.field private mCheckDelteCancel:Landroid/widget/Button;

.field private final mConfirmDeleteAllMessagesListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCursor:Landroid/database/Cursor;

.field private mDeleteAll:Z

.field private mDeleteComplete:I

.field private mDeleteProgressDialog:Landroid/app/Dialog;

.field private final mEditorHandler:Landroid/os/Handler;

.field mListItemCheckBox:Lcom/android/mms/ui/MessageListItem;

.field private mMultiDelUnitsize:I

.field private mSelectedCount:I

.field private mUIHandler:Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;

.field private mUIlistenter:Lcom/android/mms/ui/MessagingListener;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mdeleteUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    sput-object v1, Lcom/android/mms/ui/DeleteBySelectActivity;->PROJECTION:[Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/ui/DeleteBySelectActivity;->mCursorLock:Ljava/lang/Object;

    .line 149
    sput-object v1, Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteThread:Lcom/android/mms/ui/DeleteBySelectActivity$DeleteThread;

    .line 471
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/DeleteBySelectActivity;->mCancelDeletion:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    .line 104
    iput-object v1, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->checkArray:[Z

    .line 105
    iput-object v1, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mCursor:Landroid/database/Cursor;

    .line 134
    new-instance v0, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;-><init>(Lcom/android/mms/ui/DeleteBySelectActivity;Lcom/android/mms/ui/DeleteBySelectActivity$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mUIHandler:Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;

    .line 136
    iput v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteComplete:I

    .line 143
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mMultiDelUnitsize:I

    .line 145
    iput v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mSelectedCount:I

    .line 146
    iput-object v1, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->delStr:Ljava/lang/String;

    .line 147
    iput-boolean v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteAll:Z

    .line 314
    iput-object v1, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mListItemCheckBox:Lcom/android/mms/ui/MessageListItem;

    .line 415
    iput-object v1, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteProgressDialog:Landroid/app/Dialog;

    .line 481
    new-instance v0, Lcom/android/mms/ui/DeleteBySelectActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DeleteBySelectActivity$2;-><init>(Lcom/android/mms/ui/DeleteBySelectActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mCancelDeleteMessagesListener:Landroid/content/DialogInterface$OnClickListener;

    .line 883
    new-instance v0, Lcom/android/mms/ui/DeleteBySelectActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DeleteBySelectActivity$5;-><init>(Lcom/android/mms/ui/DeleteBySelectActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mConfirmDeleteAllMessagesListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1353
    new-instance v0, Lcom/android/mms/ui/DeleteBySelectActivity$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DeleteBySelectActivity$7;-><init>(Lcom/android/mms/ui/DeleteBySelectActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mUIlistenter:Lcom/android/mms/ui/MessagingListener;

    .line 1361
    new-instance v0, Lcom/android/mms/ui/DeleteBySelectActivity$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DeleteBySelectActivity$8;-><init>(Lcom/android/mms/ui/DeleteBySelectActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mEditorHandler:Landroid/os/Handler;

    .line 1435
    return-void
.end method

.method public static CancelDeletion()V
    .locals 2

    .prologue
    .line 473
    sget-object v1, Lcom/android/mms/ui/DeleteBySelectActivity;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 474
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/android/mms/ui/DeleteBySelectActivity;->mCancelDeletion:Z

    .line 475
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    sget-object v0, Lcom/android/mms/ui/DeleteBySelectActivity;->mQueryHandler:Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;

    if-eqz v0, :cond_0

    .line 477
    sget-object v0, Lcom/android/mms/ui/DeleteBySelectActivity;->mQueryHandler:Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->cancelOperation(I)V

    .line 479
    :cond_0
    return-void

    .line 475
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/DeleteBySelectActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mSelectedCount:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/mms/ui/DeleteBySelectActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteComplete:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/mms/ui/DeleteBySelectActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mSelectedCount:I

    return p1
.end method

.method static synthetic access$108(Lcom/android/mms/ui/DeleteBySelectActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mSelectedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mSelectedCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/DeleteBySelectActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteAll:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/mms/ui/DeleteBySelectActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteAll:Z

    return p1
.end method

.method static synthetic access$1200()Lcom/android/mms/ui/DeleteBySelectActivity$DeleteThread;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteThread:Lcom/android/mms/ui/DeleteBySelectActivity$DeleteThread;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/mms/ui/DeleteBySelectActivity$DeleteThread;)Lcom/android/mms/ui/DeleteBySelectActivity$DeleteThread;
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    sput-object p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteThread:Lcom/android/mms/ui/DeleteBySelectActivity$DeleteThread;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/DeleteBySelectActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/mms/ui/DeleteBySelectActivity;->acquireWakeLock()V

    return-void
.end method

.method static synthetic access$1400()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/mms/ui/DeleteBySelectActivity;->mCursorLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/DeleteBySelectActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/mms/ui/DeleteBySelectActivity;->initListView()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/DeleteBySelectActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/mms/ui/DeleteBySelectActivity;->initDeleteButton()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/DeleteBySelectActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mEditorHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/DeleteBySelectActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->delStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/DeleteBySelectActivity;)Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mUIHandler:Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/DeleteBySelectActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mCheckDeleteOk:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/DeleteBySelectActivity;)Lcom/android/mms/ui/DeleteBySelectListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mAdapter:Lcom/android/mms/ui/DeleteBySelectListAdapter;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/DeleteBySelectActivity;Lcom/android/mms/ui/DeleteBySelectListAdapter;)Lcom/android/mms/ui/DeleteBySelectListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mAdapter:Lcom/android/mms/ui/DeleteBySelectListAdapter;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/DeleteBySelectActivity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mCancelDeleteMessagesListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/DeleteBySelectActivity;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/DeleteBySelectActivity;->confirmDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/DeleteBySelectActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteProgressDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/mms/ui/DeleteBySelectActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteProgressDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/mms/ui/DeleteBySelectActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/mms/ui/DeleteBySelectActivity;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/DeleteBySelectActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/mms/ui/DeleteBySelectActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private acquireWakeLock()V
    .locals 2

    .prologue
    .line 264
    const-string v0, "DeleteBySelectActivity"

    const-string v1, "acquire wakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 266
    :cond_0
    return-void
.end method

.method private confirmDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "messageId"
    .parameter "listener"

    .prologue
    .line 913
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 914
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x20c01fc

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 915
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 916
    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 917
    const v1, 0x20c015f

    invoke-virtual {v0, v1, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 918
    const v1, 0x20c0164

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 920
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 921
    return-void
.end method

.method static deleteMessageByCursorV2(Landroid/content/Context;Landroid/database/Cursor;[ZZ)V
    .locals 26
    .parameter "context"
    .parameter "cursor"
    .parameter "checkArray"
    .parameter "isDeleteAll"

    .prologue
    .line 925
    const-string v2, "DeleteBySelectActivity"

    const-string v3, "deleteMessageByCursorV2: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 927
    .local v16, len:I
    const/4 v12, 0x0

    .line 928
    .local v12, hasSms:Z
    if-gtz v16, :cond_1

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 929
    :cond_1
    const/4 v15, -0x1

    .line 930
    .local v15, lastNum:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_4

    .line 931
    if-nez p3, :cond_2

    aget-boolean v2, p2, v13

    if-eqz v2, :cond_3

    .line 932
    :cond_2
    if-le v13, v15, :cond_3

    .line 933
    move v15, v13

    .line 930
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 936
    :cond_4
    const/4 v2, -0x1

    if-eq v15, v2, :cond_0

    .line 938
    const-string v23, ""

    .line 939
    .local v23, type:Ljava/lang/String;
    const-wide/16 v17, -0x1

    .line 941
    .local v17, msgId:J
    const-wide/16 v10, -0x1

    .line 943
    .local v10, gid:J
    const/4 v4, 0x0

    .line 944
    .local v4, cookie:Lcom/android/mms/ui/DeleteBySelectActivity$DeleteCookie;
    const/4 v5, 0x0

    .line 945
    .local v5, deleteUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 946
    .local v6, where:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/DeletedItemsActivity;->isDeleteImmediatelyEnabled(Landroid/content/Context;)Z

    move-result v8

    .line 947
    .local v8, bDeleteImmediately:Z
    const/4 v13, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_6

    .line 948
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 950
    sget-object v3, Lcom/android/mms/ui/DeleteBySelectActivity;->mCursorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 951
    :try_start_0
    sget-boolean v2, Lcom/android/mms/ui/DeleteBySelectActivity;->mCancelDeletion:Z

    if-eqz v2, :cond_7

    .line 952
    const-string v2, "DeleteBySelectActivity"

    const-string v7, "Deleting Cancel in thread"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    sget-object v2, Lcom/android/mms/ui/DeleteBySelectActivity;->mQueryHandler:Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;

    if-eqz v2, :cond_5

    .line 954
    sget-object v2, Lcom/android/mms/ui/DeleteBySelectActivity;->mQueryHandler:Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;

    const/16 v7, 0x709

    invoke-virtual {v2, v7}, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->cancelOperation(I)V

    .line 955
    sget-object v2, Lcom/android/mms/ui/DeleteBySelectActivity;->mQueryHandler:Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;

    sget-object v7, Lcom/android/mms/ui/DeleteBySelectActivity;->mQueryHandler:Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;

    const/16 v24, 0x76d

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 957
    :cond_5
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1085
    :cond_6
    :goto_3
    sget-object v3, Lcom/android/mms/ui/DeleteBySelectActivity;->mCursorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1086
    const/4 v2, 0x0

    :try_start_1
    sput-boolean v2, Lcom/android/mms/ui/DeleteBySelectActivity;->mCancelDeletion:Z

    .line 1087
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1089
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 959
    :cond_7
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 961
    if-nez p3, :cond_8

    aget-boolean v2, p2, v13

    if-eqz v2, :cond_15

    .line 962
    :cond_8
    if-eqz p1, :cond_6

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 965
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 966
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 968
    const-string v2, "gid"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 970
    const/4 v12, 0x0

    .line 971
    new-instance v4, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteCookie;

    .end local v4           #cookie:Lcom/android/mms/ui/DeleteBySelectActivity$DeleteCookie;
    invoke-direct {v4}, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteCookie;-><init>()V

    .line 972
    .restart local v4       #cookie:Lcom/android/mms/ui/DeleteBySelectActivity$DeleteCookie;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v4, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteCookie;->sTime:J

    .line 973
    const-string v2, "sms"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 974
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/mms/util/SimIoUtil;->deleteSimSms(Landroid/content/Context;Landroid/net/Uri;)V

    .line 976
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-gtz v2, :cond_f

    .line 977
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    .line 979
    .local v14, ids:Ljava/lang/String;
    if-nez p3, :cond_9

    add-int/lit8 v2, v13, 0x1

    move-object/from16 v0, p2

    array-length v3, v0

    if-ge v2, v3, :cond_a

    add-int/lit8 v2, v13, 0x1

    aget-boolean v2, p2, v2

    if-eqz v2, :cond_a

    :cond_9
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 980
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 981
    .local v21, nType:Ljava/lang/String;
    const-string v2, "sms"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 982
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 983
    .local v19, nMsgId:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 984
    add-int/lit8 v13, v13, 0x1

    .line 985
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/mms/util/SimIoUtil;->deleteSimSms(Landroid/content/Context;Landroid/net/Uri;)V

    .line 989
    .end local v19           #nMsgId:J
    .end local v21           #nType:Ljava/lang/String;
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " in (%s) AND locked=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v14, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 997
    .end local v14           #ids:Ljava/lang/String;
    :goto_4
    const-string v2, "DeleteBySelectActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sms msgId: where> "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const-string v2, "DeleteBySelectActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startDelete: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v0, v4, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteCookie;->sTime:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 1006
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportBackgroundDeletion()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1007
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 1008
    .local v9, builder:Landroid/net/Uri$Builder;
    const-string v2, "bg"

    const-string v3, "true"

    invoke-virtual {v9, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1009
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 1011
    .end local v9           #builder:Landroid/net/Uri$Builder;
    :cond_b
    const/4 v12, 0x1

    .line 1014
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeletedItems()Z

    move-result v2

    if-eqz v2, :cond_c

    if-nez v8, :cond_c

    .line 1015
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 1016
    .restart local v9       #builder:Landroid/net/Uri$Builder;
    const-string v2, "trash"

    const-string v3, "true"

    invoke-virtual {v9, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1017
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 1059
    .end local v9           #builder:Landroid/net/Uri$Builder;
    :cond_c
    :goto_5
    if-ne v13, v15, :cond_d

    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteCookie;->isFinished:Z

    .line 1061
    :cond_d
    sget-object v3, Lcom/android/mms/ui/DeleteBySelectActivity;->mCursorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1062
    :try_start_3
    sget-boolean v2, Lcom/android/mms/ui/DeleteBySelectActivity;->mCancelDeletion:Z

    if-eqz v2, :cond_13

    .line 1063
    const-string v2, "DeleteBySelectActivity"

    const-string v7, "Deleting Cancel in thread"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    sget-object v2, Lcom/android/mms/ui/DeleteBySelectActivity;->mQueryHandler:Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;

    if-eqz v2, :cond_e

    .line 1065
    sget-object v2, Lcom/android/mms/ui/DeleteBySelectActivity;->mQueryHandler:Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;

    const/16 v7, 0x709

    invoke-virtual {v2, v7}, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->cancelOperation(I)V

    .line 1066
    sget-object v2, Lcom/android/mms/ui/DeleteBySelectActivity;->mQueryHandler:Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;

    sget-object v7, Lcom/android/mms/ui/DeleteBySelectActivity;->mQueryHandler:Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;

    const/16 v24, 0x76d

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1068
    :cond_e
    monitor-exit v3

    goto/16 :goto_3

    .line 1070
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 959
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 993
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gid"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " in (%s) AND locked=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_4

    .line 1020
    :cond_10
    const-string v2, "mms"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1022
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v17

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 1023
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1024
    .local v22, suri:Ljava/lang/String;
    const-string v2, "Goven"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Multipledelete Uri string: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->hashCode()I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->cancelMMSNotification(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1029
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " in (%s) AND locked=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1031
    const-string v2, "DeleteBySelectActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mms msgId: where> "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const-string v2, "DeleteBySelectActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startDelete: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v0, v4, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteCookie;->sTime:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 1036
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportBackgroundDeletion()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1037
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 1038
    .restart local v9       #builder:Landroid/net/Uri$Builder;
    const-string v2, "bg"

    const-string v3, "true"

    invoke-virtual {v9, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1039
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 1043
    .end local v9           #builder:Landroid/net/Uri$Builder;
    :cond_11
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeletedItems()Z

    move-result v2

    if-eqz v2, :cond_c

    if-nez v8, :cond_c

    .line 1044
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 1045
    .restart local v9       #builder:Landroid/net/Uri$Builder;
    const-string v2, "trash"

    const-string v3, "true"

    invoke-virtual {v9, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1046
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_5

    .line 1049
    .end local v9           #builder:Landroid/net/Uri$Builder;
    .end local v22           #suri:Ljava/lang/String;
    :cond_12
    const-string v2, "htcmsgs"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1051
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " in (%s) AND locked=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1053
    const-string v2, "DeleteBySelectActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vvm msgId: where> "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    const-string v2, "DeleteBySelectActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startDelete vvm: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v0, v4, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteCookie;->sTime:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    sget-object v5, Landroid/provider/Telephony$HtcVvm;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_5

    .line 1070
    :cond_13
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1072
    if-eqz v5, :cond_14

    if-eqz v6, :cond_14

    .line 1073
    if-ne v13, v15, :cond_16

    .line 1074
    sget-object v2, Lcom/android/mms/ui/DeleteBySelectActivity;->mQueryHandler:Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;

    const/16 v3, 0x709

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1079
    :cond_14
    :goto_6
    const/4 v2, 0x1

    if-ne v12, v2, :cond_15

    .line 1081
    const/16 v2, 0x315

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 947
    :cond_15
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 1076
    :cond_16
    sget-object v2, Lcom/android/mms/ui/DeleteBySelectActivity;->mQueryHandler:Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;

    const/16 v3, 0x7d1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_6

    .line 1087
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2
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
    .line 1374
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1375
    .local v2, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1376
    .local v1, len:I
    if-gtz v1, :cond_1

    const/4 v2, 0x0

    .line 1384
    .end local v2           #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    return-object v2

    .line 1377
    .restart local v2       #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1378
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1379
    if-nez p2, :cond_2

    aget-boolean v5, p1, v0

    if-eqz v5, :cond_3

    .line 1380
    :cond_2
    const/4 v5, 0x0

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1381
    .local v3, threadId:J
    new-instance v5, Ljava/lang/Integer;

    long-to-int v6, v3

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1377
    .end local v3           #threadId:J
    :cond_3
    add-int/lit8 v0, v0, 0x1

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
    .line 1417
    .local p1, in_threadlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1419
    .local v3, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1420
    .local v1, len:I
    const/4 v4, -0x1

    .line 1421
    .local v4, threadId:I
    if-gtz v1, :cond_1

    const/4 v3, 0x0

    .line 1431
    .end local v3           #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    return-object v3

    .line 1422
    .restart local v3       #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1423
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1424
    const/4 v5, 0x1

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    long-to-int v4, v5

    .line 1426
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1427
    const/4 v5, 0x0

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    long-to-int v2, v5

    .line 1428
    .local v2, mmsId:I
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1422
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
    .line 1390
    .local p1, in_threadlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 1391
    .local v2, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 1393
    .local v3, retidxonsim:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1394
    .local v1, len:I
    const/4 v6, -0x1

    .line 1395
    .local v6, threadId:I
    if-lez v1, :cond_1

    .line 1396
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1397
    .restart local v2       #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #retidxonsim:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1399
    .restart local v3       #retidxonsim:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1400
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1401
    const/4 v7, 0x1

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    long-to-int v6, v7

    .line 1403
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1404
    const/4 v7, 0x0

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    long-to-int v4, v7

    .line 1405
    .local v4, smsId:I
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1406
    const/4 v7, 0x2

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    long-to-int v5, v7

    .line 1407
    .local v5, smsIdonsim:I
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1399
    .end local v4           #smsId:I
    .end local v5           #smsIdonsim:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1411
    .end local v0           #i:I
    :cond_1
    sput-object v2, Lcom/android/mms/ui/DeleteBySelectActivity;->msmsids:Ljava/util/ArrayList;

    .line 1412
    sput-object v3, Lcom/android/mms/ui/DeleteBySelectActivity;->msmsIdxSIM:Ljava/util/ArrayList;

    .line 1414
    return-void
.end method

.method private initActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 291
    const-string v0, "DeleteBySelectActivity"

    const-string v1, "initActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const v0, 0x20c01fc

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeleteBySelectActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->delStr:Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mCheckDeleteOk:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->delStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mSelectedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mCheckDeleteOk:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 297
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mCheckDeleteOk:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setFocusable(Z)V

    .line 300
    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteBySelectActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mUIlistenter:Lcom/android/mms/ui/MessagingListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingController;->addListener(Lcom/android/mms/ui/MessagingListener;)V

    .line 302
    return-void
.end method

.method private initDeleteButton()V
    .locals 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mCheckDeleteOk:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/DeleteBySelectActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/DeleteBySelectActivity$3;-><init>(Lcom/android/mms/ui/DeleteBySelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 796
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mCheckDelteCancel:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/DeleteBySelectActivity$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/DeleteBySelectActivity$4;-><init>(Lcom/android/mms/ui/DeleteBySelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 802
    return-void
.end method

.method private initListHeaderView()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 316
    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteBySelectActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f030019

    iget-object v6, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v4, v6, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 317
    .local v13, v:Landroid/view/View;
    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 318
    new-instance v5, Lcom/android/mms/msg/util/ColumnsMap;

    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mCursor:Landroid/database/Cursor;

    invoke-direct {v5, v2}, Lcom/android/mms/msg/util/ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 319
    .local v5, cm:Lcom/android/mms/msg/util/ColumnsMap;
    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mCursor:Landroid/database/Cursor;

    iget v4, v5, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMsgType:I

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 322
    .local v3, type:Ljava/lang/String;
    :try_start_0
    new-instance v1, Lcom/android/mms/ui/MessageItem;

    iget-object v4, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/msg/util/ColumnsMap;Ljava/lang/String;)V

    .line 323
    .local v1, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v1, :cond_0

    .line 324
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/mms/ui/MessageItem;->bInDelMode:Z

    .line 325
    move-object v0, v13

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    move-object v2, v0

    iput-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mListItemCheckBox:Lcom/android/mms/ui/MessageListItem;

    .line 326
    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mListItemCheckBox:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/MessageListItem;->bind(Lcom/android/mms/ui/MessageItem;)V

    .line 327
    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mListItemCheckBox:Lcom/android/mms/ui/MessageListItem;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MessageListItem;->changeCheckboxResource2(Z)V

    .line 329
    :cond_0
    const v2, 0x7f0e0063

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 330
    .local v11, listitem:Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    .line 331
    const v2, 0x7f0e0050

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListItemQuickContactBadge;

    .line 332
    .local v7, badgeView:Lcom/htc/widget/HtcListItemQuickContactBadge;
    const/16 v2, 0x8

    invoke-virtual {v7, v2}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setVisibility(I)V

    .line 334
    const v2, 0x7f0e0057

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 335
    .local v12, text:Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    const v2, 0x20c013a

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .end local v1           #msgItem:Lcom/android/mms/ui/MessageItem;
    .end local v7           #badgeView:Lcom/htc/widget/HtcListItemQuickContactBadge;
    .end local v11           #listitem:Landroid/view/View;
    .end local v12           #text:Landroid/widget/TextView;
    :goto_0
    new-instance v10, Lcom/android/mms/ui/DeleteBySelectActivity$ViewHolder;

    invoke-direct {v10, p0}, Lcom/android/mms/ui/DeleteBySelectActivity$ViewHolder;-><init>(Lcom/android/mms/ui/DeleteBySelectActivity;)V

    .line 342
    .local v10, holder:Lcom/android/mms/ui/DeleteBySelectActivity$ViewHolder;
    invoke-virtual {v13, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 343
    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteBySelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0007

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 344
    .local v9, hieght:I
    invoke-virtual {v13, v9}, Landroid/view/View;->setMinimumHeight(I)V

    .line 345
    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteBySelectActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;)V

    .line 346
    return-void

    .line 337
    .end local v9           #hieght:I
    .end local v10           #holder:Lcom/android/mms/ui/DeleteBySelectActivity$ViewHolder;
    :catch_0
    move-exception v8

    .line 339
    .local v8, e:Ljava/lang/Exception;
    const-string v2, "DeleteBySelectActivity"

    const-string v4, "HeaderView inital fail"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initListView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 350
    const-string v2, "DeleteBySelectActivity"

    const-string v3, "initListView"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSelectAllOnTop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    invoke-direct {p0}, Lcom/android/mms/ui/DeleteBySelectActivity;->initListHeaderView()V

    .line 356
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mAdapter:Lcom/android/mms/ui/DeleteBySelectListAdapter;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DeleteBySelectActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 358
    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteBySelectActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    .line 359
    .local v1, listView:Lcom/htc/widget/HtcListView;
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->setRoundedCorner(Landroid/view/View;)V

    .line 361
    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v2

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->checkArray:[Z

    .line 362
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 363
    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->checkArray:[Z

    aput-boolean v4, v2, v0

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setClickable(Z)V

    .line 366
    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListView;->setFillEmpty(Z)V

    .line 368
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 370
    new-instance v2, Lcom/android/mms/ui/DeleteBySelectActivity$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/DeleteBySelectActivity$1;-><init>(Lcom/android/mms/ui/DeleteBySelectActivity;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 412
    return-void
.end method

.method private newWakeLock()V
    .locals 3

    .prologue
    .line 257
    iget-object v1, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 258
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DeleteBySelectActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 259
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "DeleteBySelectActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 261
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 269
    const-string v0, "DeleteBySelectActivity"

    const-string v1, "release wakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 271
    :cond_0
    return-void
.end method

.method private startAsyncQuery()V
    .locals 10

    .prologue
    .line 274
    const-string v0, "DeleteBySelectActivity"

    const-string v1, "startAsyncQuery"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :try_start_0
    sget-object v9, Lcom/android/mms/ui/DeleteBySelectActivity;->mCursorLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :try_start_1
    sget-object v0, Lcom/android/mms/ui/DeleteBySelectActivity;->mQueryHandler:Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;

    const/16 v1, 0x6a5

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->cancelOperation(I)V

    .line 281
    const-string v5, "locked=0"

    .line 282
    .local v5, selection:Ljava/lang/String;
    sget-object v0, Lcom/android/mms/ui/DeleteBySelectActivity;->mQueryHandler:Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;

    const/4 v1, 0x0

    const/16 v2, 0x6a5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mdeleteUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/ui/DeleteBySelectActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    monitor-exit v9

    .line 288
    .end local v5           #selection:Ljava/lang/String;
    :goto_0
    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 285
    :catch_0
    move-exception v8

    .line 286
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private static updateStatusNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1231
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/DeleteBySelectActivity$6;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/DeleteBySelectActivity$6;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1245
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 212
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 214
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteBySelectActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteBySelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 219
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 158
    invoke-virtual {p0, v10}, Lcom/android/mms/ui/DeleteBySelectActivity;->requestWindowFeature(I)Z

    .line 159
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    const-string v6, "DeleteBySelectActivity"

    const-string v7, "onCreate"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteBySelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 165
    .local v4, intent:Landroid/content/Intent;
    new-instance v1, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;

    invoke-direct {v1}, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;-><init>()V

    .line 166
    .local v1, Headercomposer:Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;
    new-array v0, v10, [Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    new-instance v6, Lcom/android/mms/util/CommonActivityLayout$BarText;

    const v7, 0x7f0902c6

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Lcom/android/mms/util/CommonActivityLayout$BarText;-><init>(II)V

    aput-object v6, v0, v9

    .line 167
    .local v0, Center:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;
    iput-object v0, v1, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mCenter:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    .line 168
    sget-object v6, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->HEADER_SHORT:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    iput-object v6, v1, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mHight:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    .line 169
    new-instance v3, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;

    invoke-direct {v3}, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;-><init>()V

    .line 170
    .local v3, footer:Lcom/android/mms/util/CommonActivityLayout$FooterComposer;
    const/4 v6, 0x2

    new-array v6, v6, [Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    new-instance v7, Lcom/android/mms/util/CommonActivityLayout$FootButton;

    const v8, 0x20c0164

    invoke-direct {v7, v8}, Lcom/android/mms/util/CommonActivityLayout$FootButton;-><init>(I)V

    aput-object v7, v6, v9

    new-instance v7, Lcom/android/mms/util/CommonActivityLayout$FootButton;

    const v8, 0x20c01fc

    invoke-direct {v7, v8}, Lcom/android/mms/util/CommonActivityLayout$FootButton;-><init>(I)V

    aput-object v7, v6, v10

    iput-object v6, v3, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;->mChild:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    .line 174
    new-instance v2, Lcom/android/mms/util/CommonActivityLayout;

    invoke-direct {v2, p0, v1, v3}, Lcom/android/mms/util/CommonActivityLayout;-><init>(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;Lcom/android/mms/util/CommonActivityLayout$FooterComposer;)V

    .line 175
    .local v2, activityComposer:Lcom/android/mms/util/CommonActivityLayout;
    invoke-virtual {v2}, Lcom/android/mms/util/CommonActivityLayout;->getController()Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    move-result-object v5

    .line 176
    .local v5, mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;
    invoke-virtual {v5}, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->getActivityContentView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/DeleteBySelectActivity;->setContentView(Landroid/view/View;)V

    .line 177
    iget-object v6, v3, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;->mChild:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    aget-object v6, v6, v10

    invoke-virtual {v6}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->getView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mCheckDeleteOk:Landroid/widget/Button;

    .line 178
    iget-object v6, v3, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;->mChild:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    aget-object v6, v6, v9

    invoke-virtual {v6}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->getView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mCheckDelteCancel:Landroid/widget/Button;

    .line 184
    const-string v6, "uri"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iput-object v6, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mdeleteUri:Landroid/net/Uri;

    .line 185
    const-string v6, "projection"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/mms/ui/DeleteBySelectActivity;->PROJECTION:[Ljava/lang/String;

    .line 187
    new-instance v6, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteBySelectActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;-><init>(Lcom/android/mms/ui/DeleteBySelectActivity;Landroid/content/ContentResolver;)V

    sput-object v6, Lcom/android/mms/ui/DeleteBySelectActivity;->mQueryHandler:Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;

    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/DeleteBySelectActivity;->initActivity()V

    .line 190
    invoke-direct {p0}, Lcom/android/mms/ui/DeleteBySelectActivity;->newWakeLock()V

    .line 192
    sput-boolean v9, Lcom/android/mms/ui/ConversationListBaseActivity;->sStartDeleting:Z

    .line 194
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteBySelectActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteBySelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 199
    :cond_0
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 806
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 808
    const v0, 0x20c013a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeleteBySelectActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020135

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 809
    const/4 v0, 0x2

    const v1, 0x7f0902b3

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DeleteBySelectActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02013a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 811
    return v3
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 230
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onDestroy()V

    .line 232
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteBySelectActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mUIlistenter:Lcom/android/mms/ui/MessagingListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingController;->removeListener(Lcom/android/mms/ui/MessagingListener;)V

    .line 240
    sget-object v0, Lcom/android/mms/ui/DeleteBySelectActivity;->mQueryHandler:Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;

    if-eqz v0, :cond_1

    .line 241
    sget-object v0, Lcom/android/mms/ui/DeleteBySelectActivity;->mQueryHandler:Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DeleteBySelectActivity$MainListQueryHandler;->sendEmptyMessage(I)Z

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteProgressDialog:Landroid/app/Dialog;

    .line 254
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 861
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 878
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 880
    :goto_0
    return v0

    .line 864
    :pswitch_0
    const-string v1, "ANALYTIC_Mms"

    const-string v2, "[DeleteBySelectActivity]Delete all"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const v1, 0x7f0900ae

    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mConfirmDeleteAllMessagesListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/DeleteBySelectActivity;->confirmDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 869
    :pswitch_1
    const-string v1, "ANALYTIC_Mms"

    const-string v2, "[DeleteBySelectActivity]Delete select all"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-object v1, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mUIHandler:Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 873
    :pswitch_2
    const-string v1, "ANALYTIC_Mms"

    const-string v2, "[DeleteBySelectActivity]Delete select none"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget-object v1, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mUIHandler:Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/DeleteBySelectActivity$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 861
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 818
    iget-object v4, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mAdapter:Lcom/android/mms/ui/DeleteBySelectListAdapter;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mAdapter:Lcom/android/mms/ui/DeleteBySelectListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/ui/DeleteBySelectListAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_4

    .line 820
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 821
    .local v1, selAll:Landroid/view/MenuItem;
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 822
    .local v2, selNone:Landroid/view/MenuItem;
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 823
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 824
    const/4 v0, 0x0

    .line 825
    .local v0, listItemCount:I
    iget-object v4, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 826
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_3

    if-lez v0, :cond_3

    .line 827
    iget v4, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mSelectedCount:I

    if-gtz v4, :cond_1

    .line 828
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 829
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 855
    .end local v0           #listItemCount:I
    :goto_0
    return v3

    .line 831
    .restart local v0       #listItemCount:I
    :cond_1
    iget v4, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mSelectedCount:I

    if-lt v4, v0, :cond_2

    .line 832
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 833
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 836
    :cond_2
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 837
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 841
    :cond_3
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 842
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 850
    .end local v0           #listItemCount:I
    .end local v1           #selAll:Landroid/view/MenuItem;
    .end local v2           #selNone:Landroid/view/MenuItem;
    :cond_4
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 851
    .restart local v1       #selAll:Landroid/view/MenuItem;
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 852
    .restart local v2       #selNone:Landroid/view/MenuItem;
    if-eqz v1, :cond_5

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 853
    :cond_5
    if-eqz v2, :cond_6

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 855
    :cond_6
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onResume()V

    .line 204
    const-string v0, "DeleteBySelectActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->checkArray:[Z

    if-nez v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/android/mms/ui/DeleteBySelectActivity;->startAsyncQuery()V

    .line 209
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 223
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onStop()V

    .line 224
    invoke-static {p0}, Lcom/android/mms/ui/DeleteBySelectActivity;->updateStatusNotification(Landroid/content/Context;)V

    .line 225
    return-void
.end method

.method public refreshContactName()V
    .locals 3

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mEditorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/DeleteBySelectActivity;->mEditorHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1350
    return-void
.end method
