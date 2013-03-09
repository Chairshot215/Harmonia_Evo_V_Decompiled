.class public Lcom/htc/omadm/libdo/system/Lawmo;
.super Ljava/lang/Object;
.source "Lawmo.java"


# static fields
.field private static final ACTION_OMADM_PIN_CHECK:Ljava/lang/String; = "com.htc.android.omadm.pin.check"

.field private static final ACTION_OMADM_PIN_FAIL:Ljava/lang/String; = "com.htc.android.omadm.pin.fail"

.field private static final ADB_CONTROL:Z = false

.field private static final CMD_NOK:I = -0x1

.field private static final CMD_OK:I = 0x1

.field private static final EXTRA_VALUE_PIN:Ljava/lang/String; = "dm.lawmo.pin"

.field public static final STATE_FLOCK:I = 0x2

.field public static final STATE_PLOCK:I = 0x1

.field public static final STATE_UNLOCK:I = 0x0

.field public static final STATE_WRONG:I = -0x1

.field private static mInstance:Lcom/htc/omadm/libdo/system/Lawmo;


# instance fields
.field private final BC_OMADM_STATE_CHANGE:Ljava/lang/String;

.field private final EXTRA_VALUE_PIN_ENABLE:Ljava/lang/String;

.field private EventHandler:Landroid/os/Handler;

.field private final FIRST_CHECK_SecurityCheck_TIME:I

.field private ForceLockCount:I

.field private final PROP_LOCKSTATE:Ljava/lang/String;

.field private final SECOND_CHECK_SecurityCheck_TIME:I

.field private final TAG:Ljava/lang/String;

.field private mCheckPinReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mLockCtl:Lcom/htc/omadm/libdo/system/LockCtl;

.field private mLockState:I

.field private mTasks:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/omadm/libdo/system/Lawmo;->mInstance:Lcom/htc/omadm/libdo/system/Lawmo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v1, "Lawmo"

    iput-object v1, p0, Lcom/htc/omadm/libdo/system/Lawmo;->TAG:Ljava/lang/String;

    .line 16
    const-string v1, "com.htc.android.omadm.state.change"

    iput-object v1, p0, Lcom/htc/omadm/libdo/system/Lawmo;->BC_OMADM_STATE_CHANGE:Ljava/lang/String;

    .line 17
    const-string v1, "dm.lawmo.lockstate"

    iput-object v1, p0, Lcom/htc/omadm/libdo/system/Lawmo;->PROP_LOCKSTATE:Ljava/lang/String;

    .line 18
    const-string v1, "dm.lawmo.pinenable"

    iput-object v1, p0, Lcom/htc/omadm/libdo/system/Lawmo;->EXTRA_VALUE_PIN_ENABLE:Ljava/lang/String;

    .line 32
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/htc/omadm/libdo/system/Lawmo;->FIRST_CHECK_SecurityCheck_TIME:I

    .line 33
    const/16 v1, 0xbb8

    iput v1, p0, Lcom/htc/omadm/libdo/system/Lawmo;->SECOND_CHECK_SecurityCheck_TIME:I

    .line 35
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/htc/omadm/libdo/system/Lawmo;->EventHandler:Landroid/os/Handler;

    .line 37
    iput v3, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mLockState:I

    .line 163
    new-instance v1, Lcom/htc/omadm/libdo/system/Lawmo$1;

    invoke-direct {v1, p0}, Lcom/htc/omadm/libdo/system/Lawmo$1;-><init>(Lcom/htc/omadm/libdo/system/Lawmo;)V

    iput-object v1, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mTasks:Ljava/lang/Runnable;

    .line 185
    new-instance v1, Lcom/htc/omadm/libdo/system/Lawmo$2;

    invoke-direct {v1, p0}, Lcom/htc/omadm/libdo/system/Lawmo$2;-><init>(Lcom/htc/omadm/libdo/system/Lawmo;)V

    iput-object v1, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mCheckPinReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    iput-object p1, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mContext:Landroid/content/Context;

    .line 48
    new-instance v1, Lcom/htc/omadm/libdo/system/LockCtl;

    iget-object v2, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/omadm/libdo/system/LockCtl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mLockCtl:Lcom/htc/omadm/libdo/system/LockCtl;

    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 51
    .local v0, intentFilter_pincheck:Landroid/content/IntentFilter;
    const-string v1, "com.htc.android.omadm.pin.check"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mCheckPinReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 54
    iput v3, p0, Lcom/htc/omadm/libdo/system/Lawmo;->ForceLockCount:I

    .line 55
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/Lawmo;->EventHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mTasks:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    return-void
.end method

.method private CheckPhoneLock()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 170
    const/4 v0, -0x1

    .line 171
    .local v0, Result:I
    invoke-virtual {p0, v4}, Lcom/htc/omadm/libdo/system/Lawmo;->SecurityCheck(Z)I

    move-result v0

    .line 172
    const-string v1, "Lawmo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckPhoneLock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 174
    iget v1, p0, Lcom/htc/omadm/libdo/system/Lawmo;->ForceLockCount:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 176
    invoke-virtual {p0, v4}, Lcom/htc/omadm/libdo/system/Lawmo;->SecurityCheck(Z)I

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget v1, p0, Lcom/htc/omadm/libdo/system/Lawmo;->ForceLockCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/omadm/libdo/system/Lawmo;->ForceLockCount:I

    .line 180
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/Lawmo;->EventHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mTasks:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private Checkpincodeunlock(Ljava/lang/String;)V
    .locals 5
    .parameter "pincode"

    .prologue
    .line 202
    const-string v2, "Lawmo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unlock!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v0, -0x1

    .line 204
    .local v0, Result:I
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mLockCtl:Lcom/htc/omadm/libdo/system/LockCtl;

    invoke-virtual {v2, p1}, Lcom/htc/omadm/libdo/system/LockCtl;->UnLock(Ljava/lang/String;)I

    move-result v0

    .line 205
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 206
    const-string v2, "Lawmo"

    const-string v3, "Unlock success!"

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mLockState:I

    .line 208
    invoke-direct {p0}, Lcom/htc/omadm/libdo/system/Lawmo;->LockStateNotify()V

    .line 218
    :goto_0
    return-void

    .line 209
    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 210
    const-string v2, "Lawmo"

    const-string v3, "Unlock failed!"

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.android.omadm.pin.fail"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v1, intent_pinerror:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 214
    .end local v1           #intent_pinerror:Landroid/content/Intent;
    :cond_1
    const-string v2, "Lawmo"

    const-string v3, "unLock Result failed"

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.android.omadm.pin.fail"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .restart local v1       #intent_pinerror:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private LockStateNotify()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.omadm.state.change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, intent:Landroid/content/Intent;
    iget v1, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mLockState:I

    if-nez v1, :cond_0

    .line 145
    const-string v1, "dm.lawmo.lockstate"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    const-string v1, "dm.lawmo.pinenable"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 148
    :cond_0
    iget v1, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mLockState:I

    if-ne v1, v3, :cond_1

    .line 157
    const-string v1, "dm.lawmo.lockstate"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    const-string v1, "dm.lawmo.pinenable"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/htc/omadm/libdo/system/Lawmo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/htc/omadm/libdo/system/Lawmo;->CheckPhoneLock()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/omadm/libdo/system/Lawmo;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/htc/omadm/libdo/system/Lawmo;->Checkpincodeunlock(Ljava/lang/String;)V

    return-void
.end method

.method public static getSingleton(Landroid/content/Context;)Lcom/htc/omadm/libdo/system/Lawmo;
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    sget-object v0, Lcom/htc/omadm/libdo/system/Lawmo;->mInstance:Lcom/htc/omadm/libdo/system/Lawmo;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/htc/omadm/libdo/system/Lawmo;

    invoke-direct {v0, p0}, Lcom/htc/omadm/libdo/system/Lawmo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/omadm/libdo/system/Lawmo;->mInstance:Lcom/htc/omadm/libdo/system/Lawmo;

    .line 62
    :cond_0
    sget-object v0, Lcom/htc/omadm/libdo/system/Lawmo;->mInstance:Lcom/htc/omadm/libdo/system/Lawmo;

    return-object v0
.end method


# virtual methods
.method public FullyLock(Ljava/lang/String;)I
    .locals 5
    .parameter "pincode"

    .prologue
    const/4 v1, 0x1

    .line 66
    const-string v2, "Lawmo"

    const-string v3, "FullyLock"

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mLockCtl:Lcom/htc/omadm/libdo/system/LockCtl;

    invoke-virtual {v2, p1}, Lcom/htc/omadm/libdo/system/LockCtl;->PartialLock(Ljava/lang/String;)I

    move-result v0

    .line 68
    .local v0, Result:I
    const-string v2, "Lawmo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Lock::Result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    if-ne v0, v1, :cond_0

    .line 70
    const/4 v2, 0x2

    iput v2, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mLockState:I

    .line 71
    invoke-direct {p0}, Lcom/htc/omadm/libdo/system/Lawmo;->LockStateNotify()V

    .line 74
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public GetState()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 106
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mLockCtl:Lcom/htc/omadm/libdo/system/LockCtl;

    invoke-virtual {v1}, Lcom/htc/omadm/libdo/system/LockCtl;->QueryLock()I

    move-result v0

    .line 107
    .local v0, Result:I
    const-string v1, "Lawmo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LockState::Result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-nez v0, :cond_0

    .line 109
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mLockState:I

    .line 110
    :cond_0
    if-ne v0, v4, :cond_1

    .line 111
    iput v4, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mLockState:I

    .line 112
    :cond_1
    if-ne v0, v5, :cond_2

    .line 113
    iput v5, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mLockState:I

    .line 115
    :cond_2
    iget v1, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mLockState:I

    return v1
.end method

.method public PartialLock(Ljava/lang/String;)I
    .locals 5
    .parameter "pincode"

    .prologue
    const/4 v1, 0x1

    .line 78
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mLockCtl:Lcom/htc/omadm/libdo/system/LockCtl;

    invoke-virtual {v2, p1}, Lcom/htc/omadm/libdo/system/LockCtl;->PartialLock(Ljava/lang/String;)I

    move-result v0

    .line 79
    .local v0, Result:I
    const-string v2, "Lawmo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Lock::Result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    if-ne v0, v1, :cond_0

    .line 81
    iput v1, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mLockState:I

    .line 82
    invoke-direct {p0}, Lcom/htc/omadm/libdo/system/Lawmo;->LockStateNotify()V

    .line 85
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public SecurityCheck(Z)I
    .locals 4
    .parameter "bForceLock"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 119
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mLockCtl:Lcom/htc/omadm/libdo/system/LockCtl;

    invoke-virtual {v1}, Lcom/htc/omadm/libdo/system/LockCtl;->QueryLock()I

    move-result v0

    .line 120
    .local v0, Result:I
    if-ne p1, v2, :cond_0

    .line 121
    iput v2, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mLockState:I

    .line 123
    :cond_0
    if-nez v0, :cond_1

    .line 124
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mLockState:I

    .line 125
    :cond_1
    if-ne v0, v2, :cond_2

    .line 126
    iput v2, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mLockState:I

    .line 127
    :cond_2
    if-ne v0, v3, :cond_3

    .line 128
    iput v3, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mLockState:I

    .line 130
    :cond_3
    invoke-direct {p0}, Lcom/htc/omadm/libdo/system/Lawmo;->LockStateNotify()V

    .line 131
    return v0
.end method

.method public SetPinCode(Ljava/lang/String;)I
    .locals 1
    .parameter "pincode"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mLockCtl:Lcom/htc/omadm/libdo/system/LockCtl;

    invoke-virtual {v0, p1}, Lcom/htc/omadm/libdo/system/LockCtl;->SetPinCodeToSB(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public UnLock(Ljava/lang/String;)I
    .locals 5
    .parameter "pincode"

    .prologue
    const/4 v1, 0x1

    .line 89
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mLockCtl:Lcom/htc/omadm/libdo/system/LockCtl;

    invoke-virtual {v2, p1}, Lcom/htc/omadm/libdo/system/LockCtl;->UnLock(Ljava/lang/String;)I

    move-result v0

    .line 90
    .local v0, Result:I
    const-string v2, "Lawmo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unLock::Result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    if-ne v0, v1, :cond_0

    .line 92
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mLockState:I

    .line 93
    invoke-direct {p0}, Lcom/htc/omadm/libdo/system/Lawmo;->LockStateNotify()V

    .line 96
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 221
    const-string v0, "Lawmo"

    const-string v1, "Release"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/htc/omadm/libdo/system/Lawmo;->EventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mTasks:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 224
    iget-object v0, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/omadm/libdo/system/Lawmo;->mCheckPinReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 225
    return-void
.end method
