.class Lcom/htc/clock/util/social/SocialNetworkCtrl$2;
.super Landroid/content/BroadcastReceiver;
.source "SocialNetworkCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/clock/util/social/SocialNetworkCtrl;->registerReceiverLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock/util/social/SocialNetworkCtrl;


# direct methods
.method constructor <init>(Lcom/htc/clock/util/social/SocialNetworkCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl$2;->this$0:Lcom/htc/clock/util/social/SocialNetworkCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialNetworkCtrl registerReceiverLocked~ action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl$2;->this$0:Lcom/htc/clock/util/social/SocialNetworkCtrl;

    #calls: Lcom/htc/clock/util/social/SocialNetworkCtrl;->removeBGMsg(I)V
    invoke-static {v0, v3}, Lcom/htc/clock/util/social/SocialNetworkCtrl;->access$200(Lcom/htc/clock/util/social/SocialNetworkCtrl;I)V

    .line 155
    iget-object v0, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl$2;->this$0:Lcom/htc/clock/util/social/SocialNetworkCtrl;

    const-wide/16 v1, 0x1388

    #calls: Lcom/htc/clock/util/social/SocialNetworkCtrl;->sendBGMsg(IJ)V
    invoke-static {v0, v3, v1, v2}, Lcom/htc/clock/util/social/SocialNetworkCtrl;->access$300(Lcom/htc/clock/util/social/SocialNetworkCtrl;IJ)V

    .line 156
    return-void
.end method
