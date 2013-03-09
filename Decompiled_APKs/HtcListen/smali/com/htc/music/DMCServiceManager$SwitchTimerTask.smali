.class Lcom/htc/music/DMCServiceManager$SwitchTimerTask;
.super Ljava/util/TimerTask;
.source "DMCServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMCServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DMCServiceManager;


# direct methods
.method private constructor <init>(Lcom/htc/music/DMCServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DMCServiceManager$SwitchTimerTask;->this$0:Lcom/htc/music/DMCServiceManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/DMCServiceManager;Lcom/htc/music/DMCServiceManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/DMCServiceManager$SwitchTimerTask;-><init>(Lcom/htc/music/DMCServiceManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$SwitchTimerTask;->this$0:Lcom/htc/music/DMCServiceManager;

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$SwitchTimerTask;->this$0:Lcom/htc/music/DMCServiceManager;

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$SwitchTimerTask;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mSwitchTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/htc/music/DMCServiceManager;->access$3400(Lcom/htc/music/DMCServiceManager;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/DMCServiceManager;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    #setter for: Lcom/htc/music/DMCServiceManager;->mSwitchTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/htc/music/DMCServiceManager;->access$3402(Lcom/htc/music/DMCServiceManager;Ljava/util/Timer;)Ljava/util/Timer;

    return-void
.end method
