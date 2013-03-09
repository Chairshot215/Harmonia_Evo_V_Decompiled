.class public Lcom/android/smith/BootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompleteReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/smith/BootCompleteReceiver$BootRunner;
    }
.end annotation


# static fields
.field private static final MSG_INIT_BEGIN:I = 0x1

.field private static final MSG_INIT_END:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SM:BootCompleteReceiver"

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field private static mIsBootCompleted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/smith/BootCompleteReceiver;->mIsBootCompleted:Z

    .line 79
    new-instance v0, Lcom/android/smith/BootCompleteReceiver$1;

    invoke-direct {v0}, Lcom/android/smith/BootCompleteReceiver$1;-><init>()V

    sput-object v0, Lcom/android/smith/BootCompleteReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 106
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    sput-boolean p0, Lcom/android/smith/BootCompleteReceiver;->mIsBootCompleted:Z

    return p0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/smith/BootCompleteReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/smith/BootCompleteReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static isBootCompleted()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/android/smith/BootCompleteReceiver;->mIsBootCompleted:Z

    return v0
.end method

.method public static setBootCompleted(Z)V
    .locals 0
    .parameter "completed"

    .prologue
    .line 44
    sput-boolean p0, Lcom/android/smith/BootCompleteReceiver;->mIsBootCompleted:Z

    .line 45
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, action:Ljava/lang/String;
    sput-object p1, Lcom/android/smith/BootCompleteReceiver;->mContext:Landroid/content/Context;

    .line 56
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    const-string v1, "SM:BootCompleteReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive(): boot complete!! tool version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f040001

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object v1, Lcom/android/smith/BootCompleteReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 61
    sget-object v1, Lcom/android/smith/BootCompleteReceiver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 63
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/smith/BootCompleteReceiver;->mIsBootCompleted:Z

    .line 68
    sget-object v1, Lcom/android/smith/BootCompleteReceiver;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/smith/BootCompleteReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    const-string v1, "SM:BootCompleteReceiver"

    const-string v2, "user present!"

    invoke-static {v1, v2}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
