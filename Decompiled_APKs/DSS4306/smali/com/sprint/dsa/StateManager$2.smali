.class Lcom/sprint/dsa/StateManager$2;
.super Ljava/util/TimerTask;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/StateManager;->setBGState(Lcom/sprint/dsa/StateManager$dsaBackgroundState;)V
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
    iput-object p1, p0, Lcom/sprint/dsa/StateManager$2;->this$0:Lcom/sprint/dsa/StateManager;

    .line 174
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sprint/dsa/StateManager$2;->this$0:Lcom/sprint/dsa/StateManager;

    #calls: Lcom/sprint/dsa/StateManager;->pingServer()V
    invoke-static {v0}, Lcom/sprint/dsa/StateManager;->access$0(Lcom/sprint/dsa/StateManager;)V

    .line 177
    return-void
.end method
