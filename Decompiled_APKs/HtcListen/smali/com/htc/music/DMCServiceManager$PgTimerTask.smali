.class Lcom/htc/music/DMCServiceManager$PgTimerTask;
.super Ljava/util/TimerTask;
.source "DMCServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMCServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PgTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DMCServiceManager;


# direct methods
.method private constructor <init>(Lcom/htc/music/DMCServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DMCServiceManager$PgTimerTask;->this$0:Lcom/htc/music/DMCServiceManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$PgTimerTask;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$PgTimerTask;->this$0:Lcom/htc/music/DMCServiceManager;

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$PgTimerTask;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v2}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/music/DMCServiceManager$DMCStatus;->PgTimer:Ljava/util/Timer;

    invoke-virtual {v1, v2}, Lcom/htc/music/DMCServiceManager;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->PgTimer:Ljava/util/Timer;

    return-void
.end method
