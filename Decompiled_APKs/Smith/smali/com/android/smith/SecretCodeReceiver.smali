.class public Lcom/android/smith/SecretCodeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecretCodeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/smith/SecretCodeReceiver$TaskRunner;
    }
.end annotation


# static fields
.field private static final MSG_BUGREPORT_BEGIN:I = 0x1

.field private static final MSG_BUGREPORT_END:I = 0x2

.field private static final SEC_LOG:Ljava/lang/String; = "cdma564"

.field private static final SEC_SMITH:Ljava/lang/String; = "76484"

.field private static final TAG:Ljava/lang/String; = "SM:SecretCodeReceiver"

.field private static final VIBRATE_TIME_OFF:I = 0x32

.field private static final VIBRATE_TIME_ON:I = 0x64

.field private static mBugreport:Z

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/android/smith/SecretCodeReceiver;->mContext:Landroid/content/Context;

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/smith/SecretCodeReceiver;->mBugreport:Z

    .line 83
    new-instance v0, Lcom/android/smith/SecretCodeReceiver$1;

    invoke-direct {v0}, Lcom/android/smith/SecretCodeReceiver$1;-><init>()V

    sput-object v0, Lcom/android/smith/SecretCodeReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 137
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/android/smith/SecretCodeReceiver;->mBugreport:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    sput-boolean p0, Lcom/android/smith/SecretCodeReceiver;->mBugreport:Z

    return p0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/smith/SecretCodeReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/smith/SecretCodeReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/high16 v6, 0x1000

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, action:Ljava/lang/String;
    sput-object p1, Lcom/android/smith/SecretCodeReceiver;->mContext:Landroid/content/Context;

    .line 55
    const-string v3, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, host:Ljava/lang/String;
    const-string v3, "SM:SecretCodeReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "host "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v3, "76484"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v2, i:Landroid/content/Intent;
    const-class v3, Lcom/android/smith/MainActivity;

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 65
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 66
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 78
    .end local v1           #host:Ljava/lang/String;
    .end local v2           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 68
    .restart local v1       #host:Ljava/lang/String;
    :cond_1
    const-string v3, "cdma564"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .restart local v2       #i:Landroid/content/Intent;
    const-class v3, Lcom/android/smith/SnapshotReport;

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 72
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 73
    const-string v3, "oem"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
