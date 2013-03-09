.class public Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;
.super Landroid/app/ListActivity;
.source "EASPolicyConfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DIALOG_CONFIRM:I = 0x0

.field private static final DIALOG_PROGRESS:I = 0x1

.field public static final MAX_WAIT_SERVICE_TIME:I = 0x1388

.field public static final MSG_ACTIVITY_RESULT:I = 0x2

.field public static final MSG_OK_BUTTON_CLICK:I = 0x1

.field public static final REQUEST_CODE_ADD_ADMIN:I = 0x64

.field public static final REQUEST_CODE_LOCK:I = 0x320

.field public static final REQUEST_CODE_SET_DISK_ENCRYPTION:I = 0x68

.field public static final REQUEST_CODE_SET_PASS:I = 0x65

.field public static final REQUEST_CODE_SET_SDCARD_ENCRYPTION:I = 0x67

.field public static final RETCODE_CANCEL:I = -0x1

.field public static final RETCODE_FINISH:I = 0x5

.field private static final TAG:Ljava/lang/String; = "EASPolicyConfirmDialog"


# instance fields
.field private mContext:Landroid/content/Context;

.field mDpManager:Landroid/app/admin/DevicePolicyManager;

.field mExAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

.field mMainHandler:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;

.field mProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

.field private mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

.field mStorageManager:Landroid/os/storage/StorageManager;

.field private mSvcConnection:Landroid/content/ServiceConnection;

.field mSyncAfterApplyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    .line 61
    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mExAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 62
    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mContext:Landroid/content/Context;

    .line 63
    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mMainHandler:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;

    .line 65
    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 66
    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mDpManager:Landroid/app/admin/DevicePolicyManager;

    .line 73
    new-instance v0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$1;-><init>(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 42
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;)Lcom/htc/android/mail/eassvc/pim/IEASService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;Lcom/htc/android/mail/eassvc/pim/IEASService;)Lcom/htc/android/mail/eassvc/pim/IEASService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->execPolicy()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->userCancel()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private execPolicy()V
    .locals 8

    .prologue
    .line 380
    const-string v5, "EASPolicyConfirmDialog"

    iget-object v6, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mExAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v7, "execPolicy()"

    invoke-static {v5, v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 381
    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mContext:Landroid/content/Context;

    const-class v6, Lcom/htc/android/mail/eassvc/provision/EASDeviceAdmin;

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 382
    .local v0, deviceAdmin:Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    invoke-static {v5, v6}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->isPasswordSufficient(Landroid/content/Context;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)Z

    move-result v4

    .line 383
    .local v4, passwordSufficient:Z
    invoke-static {}, Lcom/htc/android/mail/util/StorageControl;->isSDCardAvailable()Z

    move-result v1

    .line 385
    .local v1, hasRemovableStorageSlot:Z
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 386
    const-string v5, "EASPolicyConfirmDialog"

    iget-object v6, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mExAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v7, "execPolicy(): need admin"

    invoke-static {v5, v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 387
    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->enableEASAdmin(Landroid/content/Context;)V

    .line 388
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 389
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 390
    const/16 v5, 0x64

    invoke-virtual {p0, v2, v5}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->startActivityForResult(Landroid/content/Intent;I)V

    .line 410
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 391
    :cond_0
    if-nez v4, :cond_1

    .line 392
    const-string v5, "EASPolicyConfirmDialog"

    iget-object v6, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mExAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v7, "execPolicy(): need device password"

    invoke-static {v5, v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->setPassword()V

    goto :goto_0

    .line 394
    :cond_1
    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    invoke-static {v5, v6}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->needEncryptSdCard(Landroid/content/Context;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    .line 395
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.settings.START_ENCRYPTION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v5, "action_type"

    const-string v6, "encrypt"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    const-string v5, "storage_type"

    const-string v6, "sd_card"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const/16 v5, 0x67

    invoke-virtual {p0, v2, v5}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 399
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    invoke-static {v5, v6}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->needEncryptDisk(Landroid/content/Context;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 400
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.settings.START_ENCRYPTION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v5, "action_type"

    const-string v6, "encrypt"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const-string v5, "storage_type"

    const-string v6, "internal_storage"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    const/16 v5, 0x68

    invoke-virtual {p0, v2, v5}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 405
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    const-string v5, "EASPolicyConfirmDialog"

    iget-object v6, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mExAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v7, "execPolicy(): finish."

    invoke-static {v5, v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 406
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 407
    .local v3, msg:Landroid/os/Message;
    const/4 v5, 0x2

    iput v5, v3, Landroid/os/Message;->what:I

    .line 408
    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mMainHandler:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;

    invoke-virtual {v5, v3}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private userCancel()V
    .locals 5

    .prologue
    .line 179
    const-string v2, "EASPolicyConfirmDialog"

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mExAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v4, "userCancel()"

    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 180
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 181
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "Result"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 183
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 184
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 185
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mMainHandler:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;

    invoke-virtual {v2, v1}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 186
    return-void
.end method


# virtual methods
.method applyPolicy()V
    .locals 10

    .prologue
    .line 304
    iget-object v6, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mExAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    if-nez v6, :cond_0

    .line 305
    const-string v6, "EASPolicyConfirmDialog"

    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mExAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v8, "applyPolicy(): skip, account is null."

    invoke-static {v6, v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 354
    :goto_0
    return-void

    .line 308
    :cond_0
    sget-boolean v6, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "EASPolicyConfirmDialog"

    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mExAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v8, "applyPolicy()"

    invoke-static {v6, v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 310
    :cond_1
    new-instance v6, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$6;

    invoke-direct {v6, p0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$6;-><init>(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;)V

    invoke-virtual {p0, v6}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 317
    :try_start_0
    iget-object v6, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mExAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-interface {v6, v7}, Lcom/htc/android/mail/eassvc/pim/IEASService;->applyPolicy(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    .line 320
    iget-object v6, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mSyncAfterApplyList:Ljava/util/ArrayList;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mSyncAfterApplyList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 321
    iget-object v6, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mExAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v0, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    .line 322
    .local v0, accountId:J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_2

    .line 323
    const-string v6, "EASPolicyConfirmDialog"

    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mExAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v8, "Error account Id."

    invoke-static {v6, v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    new-instance v6, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$7;

    invoke-direct {v6, p0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$7;-><init>(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;)V

    .end local v0           #accountId:J
    :goto_1
    invoke-virtual {p0, v6}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 326
    .restart local v0       #accountId:J
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mSyncAfterApplyList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 327
    .local v5, syncType:Ljava/lang/String;
    sget-boolean v6, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->DEBUG:Z

    if-eqz v6, :cond_4

    .line 328
    const-string v6, "EASPolicyConfirmDialog"

    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mExAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "applyPolicy(): sync source "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Need to sync."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 330
    :cond_4
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 331
    iget-object v6, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    invoke-interface {v6, v0, v1}, Lcom/htc/android/mail/eassvc/pim/IEASService;->syncContacts(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 345
    .end local v0           #accountId:J
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #syncType:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 346
    .local v3, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 348
    new-instance v6, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$7;

    invoke-direct {v6, p0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$7;-><init>(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;)V

    goto :goto_1

    .line 332
    .end local v3           #e:Landroid/os/RemoteException;
    .restart local v0       #accountId:J
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #syncType:Ljava/lang/String;
    :cond_5
    const/4 v6, 0x2

    :try_start_3
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 333
    iget-object v6, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    invoke-interface {v6, v0, v1}, Lcom/htc/android/mail/eassvc/pim/IEASService;->syncCalendar(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 348
    .end local v0           #accountId:J
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #syncType:Ljava/lang/String;
    :catchall_0
    move-exception v6

    new-instance v7, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$7;

    invoke-direct {v7, p0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$7;-><init>(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;)V

    invoke-virtual {p0, v7}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->runOnUiThread(Ljava/lang/Runnable;)V

    throw v6

    .line 334
    .restart local v0       #accountId:J
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #syncType:Ljava/lang/String;
    :cond_6
    const/4 v6, 0x3

    :try_start_4
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 335
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 336
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, arr:[Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    const/4 v7, 0x1

    aget-object v7, v2, v7

    const/4 v8, 0x0

    invoke-interface {v6, v0, v1, v7, v8}, Lcom/htc/android/mail/eassvc/pim/IEASService;->syncMailbox(JLjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 339
    .end local v2           #arr:[Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    invoke-interface {v6, v0, v1}, Lcom/htc/android/mail/eassvc/pim/IEASService;->syncMail(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 348
    .end local v0           #accountId:J
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #syncType:Ljava/lang/String;
    :cond_8
    new-instance v6, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$7;

    invoke-direct {v6, p0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$7;-><init>(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;)V

    goto/16 :goto_1
.end method

.method broadcastPasswordSetupFinish(Z)V
    .locals 2
    .parameter "result"

    .prologue
    .line 299
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.eas.password_setup.finish"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 301
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->sendBroadcast(Landroid/content/Intent;)V

    .line 302
    return-void
.end method

.method getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mDpManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mDpManager:Landroid/app/admin/DevicePolicyManager;

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mDpManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method needShowConfirm()Z
    .locals 5

    .prologue
    .line 366
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mContext:Landroid/content/Context;

    const-class v4, Lcom/htc/android/mail/eassvc/provision/EASDeviceAdmin;

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 368
    .local v1, deviceAdmin:Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    .line 369
    .local v0, adminActive:Z
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->isPasswordSufficient(Landroid/content/Context;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)Z

    move-result v2

    .line 370
    .local v2, passwordSufficient:Z
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->needEncryptDisk(Landroid/content/Context;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->needEncryptSdCard(Landroid/content/Context;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 372
    :cond_0
    const/4 v3, 0x1

    .line 374
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 148
    sget-boolean v0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EASPolicyConfirmDialog"

    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mExAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 149
    :cond_0
    const/16 v0, 0x64

    if-ne p1, v0, :cond_3

    .line 150
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->enforcePolicyToAdmin(Landroid/content/Context;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)V

    .line 152
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->execPolicy()V

    .line 177
    :cond_1
    :goto_0
    return-void

    .line 154
    :cond_2
    const-string v0, "EASPolicyConfirmDialog"

    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mExAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v2, "exchange admin check fail."

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->userCancel()V

    goto :goto_0

    .line 158
    :cond_3
    const/16 v0, 0x65

    if-ne p1, v0, :cond_5

    .line 159
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->isPasswordSufficient(Landroid/content/Context;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 160
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->execPolicy()V

    goto :goto_0

    .line 162
    :cond_4
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->userCancel()V

    goto :goto_0

    .line 164
    :cond_5
    const/16 v0, 0x67

    if-ne p1, v0, :cond_7

    .line 165
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->needEncryptSdCard(Landroid/content/Context;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 166
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->execPolicy()V

    goto :goto_0

    .line 168
    :cond_6
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->userCancel()V

    goto :goto_0

    .line 170
    :cond_7
    const/16 v0, 0x68

    if-ne p1, v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->needEncryptDisk(Landroid/content/Context;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 172
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->execPolicy()V

    goto :goto_0

    .line 174
    :cond_8
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->userCancel()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    sget-boolean v1, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EASPolicyConfirmDialog"

    const-string v2, "- onCreate()"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    iput-object p0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "provisionDoc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    iput-object v1, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    .line 112
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "accountInfo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iput-object v1, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mExAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 113
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "syncList"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mSyncAfterApplyList:Ljava/util/ArrayList;

    .line 115
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    if-nez v1, :cond_2

    .line 116
    const-string v1, "EASPolicyConfirmDialog"

    const-string v2, "onCreate(): Error, mExAccount or mProvisionDoc is null"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->finish()V

    .line 130
    :cond_1
    :goto_0
    return-void

    .line 121
    :cond_2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EASPolicyThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, mainThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 123
    new-instance v1, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;-><init>(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mMainHandler:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;

    .line 124
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mSvcConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    sget-boolean v1, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "EASPolicyConfirmDialog"

    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mExAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v3, "Fail to bind EAS AppSvc!"

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 127
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->broadcastPasswordSetupFinish(Z)V

    .line 128
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->finish()V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v6, 0x1

    .line 195
    sget-boolean v2, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 196
    const-string v2, "EASPolicyConfirmDialog"

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mExAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateDialog: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 198
    :cond_0
    move-object v0, p2

    .line 199
    .local v0, data:Landroid/os/Bundle;
    packed-switch p1, :pswitch_data_0

    .line 245
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 201
    :pswitch_0
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b02b0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b02b1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0291

    new-instance v4, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$5;

    invoke-direct {v4, p0, v0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$5;-><init>(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b008e

    new-instance v4, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$4;

    invoke-direct {v4, p0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$4;-><init>(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$3;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$3;-><init>(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$2;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$2;-><init>(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 238
    :pswitch_1
    new-instance v1, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v1, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 239
    .local v1, progressDialog:Lcom/htc/app/HtcProgressDialog;
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f0b028d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {v1, v6}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 241
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 133
    sget-boolean v0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EASPolicyConfirmDialog"

    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mExAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v2, "onDestroy()"

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 134
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->removeDialog(I)V

    .line 135
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mMainHandler:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mMainHandler:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;

    invoke-virtual {v0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 138
    :cond_1
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 140
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPassword()V
    .locals 2

    .prologue
    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->startActivityForResult(Landroid/content/Intent;I)V

    .line 192
    return-void
.end method

.method setScreenLockImmediatlly()V
    .locals 3

    .prologue
    .line 357
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-ne v0, v1, :cond_0

    .line 358
    const-string v0, "EASPolicyConfirmDialog"

    const-string v1, "Settings.System.INACTIVITY_TIME=0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "inactivity_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 364
    :cond_0
    return-void
.end method
