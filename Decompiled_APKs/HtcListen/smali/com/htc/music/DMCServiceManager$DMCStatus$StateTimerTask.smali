.class Lcom/htc/music/DMCServiceManager$DMCStatus$StateTimerTask;
.super Ljava/util/TimerTask;
.source "DMCServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMCServiceManager$DMCStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateTimerTask"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/DMCServiceManager$DMCStatus;


# direct methods
.method private constructor <init>(Lcom/htc/music/DMCServiceManager$DMCStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DMCServiceManager$DMCStatus$StateTimerTask;->this$1:Lcom/htc/music/DMCServiceManager$DMCStatus;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/DMCServiceManager$DMCStatus;Lcom/htc/music/DMCServiceManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/DMCServiceManager$DMCStatus$StateTimerTask;-><init>(Lcom/htc/music/DMCServiceManager$DMCStatus;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v2, 0x68

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$DMCStatus$StateTimerTask;->this$1:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v1, v1, Lcom/htc/music/DMCServiceManager$DMCStatus;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$1700(Lcom/htc/music/DMCServiceManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$DMCStatus$StateTimerTask;->this$1:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v1, v1, Lcom/htc/music/DMCServiceManager$DMCStatus;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$1700(Lcom/htc/music/DMCServiceManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$DMCStatus$StateTimerTask;->this$1:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v1, v1, Lcom/htc/music/DMCServiceManager$DMCStatus;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$1700(Lcom/htc/music/DMCServiceManager;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
