.class Lcom/htc/android/mail/mailservice/DirectPushService$ConnectivityChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DirectPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/mailservice/DirectPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectivityChangedBroadcastReceiver"
.end annotation


# instance fields
.field private mInitialed:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1209
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ConnectivityChangedBroadcastReceiver;->mInitialed:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/mailservice/DirectPushService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1209
    invoke-direct {p0}, Lcom/htc/android/mail/mailservice/DirectPushService$ConnectivityChangedBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1214
    iget-boolean v2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ConnectivityChangedBroadcastReceiver;->mInitialed:Z

    if-eqz v2, :cond_1

    .line 1215
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1216
    .local v0, info:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 1217
    .local v1, state:Landroid/net/NetworkInfo$State;
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "DirectPushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "network state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    :cond_0
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_2

    .line 1219
    invoke-static {p1}, Lcom/htc/android/mail/mailservice/DirectPushService;->networkConnected(Landroid/content/Context;)V

    .line 1224
    .end local v0           #info:Landroid/net/NetworkInfo;
    .end local v1           #state:Landroid/net/NetworkInfo$State;
    :cond_1
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ConnectivityChangedBroadcastReceiver;->mInitialed:Z

    .line 1225
    return-void

    .line 1220
    .restart local v0       #info:Landroid/net/NetworkInfo;
    .restart local v1       #state:Landroid/net/NetworkInfo$State;
    :cond_2
    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_1

    .line 1221
    invoke-static {p1}, Lcom/htc/android/mail/mailservice/DirectPushService;->networkDisconnected(Landroid/content/Context;)V

    goto :goto_0
.end method
