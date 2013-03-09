.class Lcom/sprint/dsa/StateManager$1;
.super Ljava/util/TimerTask;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/StateManager;->startWDEnableUI(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/StateManager;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/StateManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/StateManager$1;->this$0:Lcom/sprint/dsa/StateManager;

    .line 99
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sprint/dsa/StateManager$1;->this$0:Lcom/sprint/dsa/StateManager;

    #calls: Lcom/sprint/dsa/StateManager;->pingServer()V
    invoke-static {v0}, Lcom/sprint/dsa/StateManager;->access$0(Lcom/sprint/dsa/StateManager;)V

    .line 103
    invoke-static {}, Lcom/sprint/dsa/StateManager;->access$1()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    .line 104
    sget-object v0, Lcom/sprint/dsa/StateManager;->uiTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sprint/dsa/StateManager;->uiTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 105
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/dsa/StateManager;->uiTimer:Ljava/util/Timer;

    .line 106
    iget-object v0, p0, Lcom/sprint/dsa/StateManager$1;->this$0:Lcom/sprint/dsa/StateManager;

    #getter for: Lcom/sprint/dsa/StateManager;->mDsaClient:Lcom/sprint/dsa/DsaClient;
    invoke-static {v0}, Lcom/sprint/dsa/StateManager;->access$2(Lcom/sprint/dsa/StateManager;)Lcom/sprint/dsa/DsaClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/DsaClient;->close(I)V

    .line 108
    :cond_1
    return-void
.end method
