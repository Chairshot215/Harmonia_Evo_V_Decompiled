.class Lcom/android/settings/ISActivity$13;
.super Landroid/content/BroadcastReceiver;
.source "ISActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ISActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ISActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/ISActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/settings/ISActivity$13;->this$0:Lcom/android/settings/ISActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 459
    const-string v1, "NetSharing_ISActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 463
    iget-object v1, p0, Lcom/android/settings/ISActivity$13;->this$0:Lcom/android/settings/ISActivity;

    invoke-virtual {v1}, Lcom/android/settings/ISActivity;->finish()V

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 468
    .local v0, netinfo:Landroid/net/NetworkInfo;
    const-string v1, "NetSharing_ISActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "netinfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->getDataConnection()Z

    move-result v1

    if-nez v1, :cond_0

    .line 471
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/ISActivity$13;->this$0:Lcom/android/settings/ISActivity;

    invoke-static {v1, v2}, Lcom/android/settings/ModemLinkEnabler;->setDataConnection(ZLandroid/content/Context;)V

    .line 472
    iget-object v1, p0, Lcom/android/settings/ISActivity$13;->this$0:Lcom/android/settings/ISActivity;

    invoke-static {v4, v1}, Lcom/android/settings/ModemLinkEnabler;->setDiagEnabled(ZLandroid/content/Context;)V

    .line 473
    iget-object v1, p0, Lcom/android/settings/ISActivity$13;->this$0:Lcom/android/settings/ISActivity;

    invoke-static {v4, v1}, Lcom/android/settings/ModemLinkEnabler;->setMLEnabled(ZLandroid/content/Context;)V

    .line 474
    iget-object v1, p0, Lcom/android/settings/ISActivity$13;->this$0:Lcom/android/settings/ISActivity;

    invoke-static {v4, v1}, Lcom/android/settings/ModemLinkEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 478
    iget-object v1, p0, Lcom/android/settings/ISActivity$13;->this$0:Lcom/android/settings/ISActivity;

    invoke-virtual {v1}, Lcom/android/settings/ISActivity;->finish()V

    goto :goto_0
.end method
