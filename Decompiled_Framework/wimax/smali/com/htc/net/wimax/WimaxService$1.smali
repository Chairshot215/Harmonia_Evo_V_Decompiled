.class Lcom/htc/net/wimax/WimaxService$1;
.super Landroid/telephony/PhoneStateListener;
.source "WimaxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/wimax/WimaxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/net/wimax/WimaxService;


# direct methods
.method constructor <init>(Lcom/htc/net/wimax/WimaxService;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/net/wimax/WimaxService$1;->this$0:Lcom/htc/net/wimax/WimaxService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKtProject()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneSerivceStateChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService$1;->this$0:Lcom/htc/net/wimax/WimaxService;

    #getter for: Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;
    invoke-static {v0}, Lcom/htc/net/wimax/WimaxService;->access$000(Lcom/htc/net/wimax/WimaxService;)Lcom/htc/net/wimax/WimaxStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->updateLock()V

    :cond_0
    return-void
.end method
