.class Lcom/htc/dmc/HtcDMC$PgTimerTask;
.super Ljava/util/TimerTask;
.source "HtcDMC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/HtcDMC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PgTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dmc/HtcDMC;


# direct methods
.method private constructor <init>(Lcom/htc/dmc/HtcDMC;)V
    .locals 0
    .parameter

    .prologue
    .line 3664
    iput-object p1, p0, Lcom/htc/dmc/HtcDMC$PgTimerTask;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dmc/HtcDMC;Lcom/htc/dmc/HtcDMC$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3664
    invoke-direct {p0, p1}, Lcom/htc/dmc/HtcDMC$PgTimerTask;-><init>(Lcom/htc/dmc/HtcDMC;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3668
    const-string v0, "[HtcDMC]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seek timeout Err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080032

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3671
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$PgTimerTask;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$PgTimerTask;->this$0:Lcom/htc/dmc/HtcDMC;

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$PgTimerTask;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/dmc/HtcDMC$DMCStatus;->PgTimer:Ljava/util/Timer;

    invoke-virtual {v1, v2}, Lcom/htc/dmc/HtcDMC;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->PgTimer:Ljava/util/Timer;

    .line 3672
    return-void
.end method
