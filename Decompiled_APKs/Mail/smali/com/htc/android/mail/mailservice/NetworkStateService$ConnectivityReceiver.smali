.class public Lcom/htc/android/mail/mailservice/NetworkStateService$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/mailservice/NetworkStateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/mailservice/NetworkStateService;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/mailservice/NetworkStateService;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/NetworkStateService$ConnectivityReceiver;->this$0:Lcom/htc/android/mail/mailservice/NetworkStateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 100
    .local v1, b:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 101
    const-string v3, "networkInfo"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 102
    .local v0, a:Landroid/net/NetworkInfo;
    invoke-static {}, Lcom/htc/android/mail/mailservice/NetworkStateService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/htc/android/mail/mailservice/NetworkStateService;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connectivity info for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 104
    .local v2, state:Landroid/net/NetworkInfo$State;
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_2

    .line 105
    invoke-static {}, Lcom/htc/android/mail/mailservice/NetworkStateService;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Network is connected"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .end local v0           #a:Landroid/net/NetworkInfo;
    .end local v1           #b:Landroid/os/Bundle;
    .end local v2           #state:Landroid/net/NetworkInfo$State;
    :cond_1
    :goto_0
    return-void

    .line 106
    .restart local v0       #a:Landroid/net/NetworkInfo;
    .restart local v1       #b:Landroid/os/Bundle;
    .restart local v2       #state:Landroid/net/NetworkInfo$State;
    :cond_2
    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_1

    .line 107
    invoke-static {}, Lcom/htc/android/mail/mailservice/NetworkStateService;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Network is disconnected"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
