.class Lcom/htc/fm/FMTunerController$5;
.super Ljava/lang/Thread;
.source "FMTunerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fm/FMTunerController;->startVolumePolling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMTunerController;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMTunerController;)V
    .locals 0
    .parameter

    .prologue
    .line 1519
    iput-object p1, p0, Lcom/htc/fm/FMTunerController$5;->this$0:Lcom/htc/fm/FMTunerController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1521
    const-string v0, "FMTunerController"

    const-string v1, " VolumeHandler Thread entered"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1523
    iget-object v0, p0, Lcom/htc/fm/FMTunerController$5;->this$0:Lcom/htc/fm/FMTunerController;

    new-instance v1, Lcom/htc/fm/FMTunerController$VolumeHandler;

    iget-object v2, p0, Lcom/htc/fm/FMTunerController$5;->this$0:Lcom/htc/fm/FMTunerController;

    invoke-direct {v1, v2, v3}, Lcom/htc/fm/FMTunerController$VolumeHandler;-><init>(Lcom/htc/fm/FMTunerController;Lcom/htc/fm/FMTunerController$1;)V

    #setter for: Lcom/htc/fm/FMTunerController;->mVolumeHandler:Lcom/htc/fm/FMTunerController$VolumeHandler;
    invoke-static {v0, v1}, Lcom/htc/fm/FMTunerController;->access$902(Lcom/htc/fm/FMTunerController;Lcom/htc/fm/FMTunerController$VolumeHandler;)Lcom/htc/fm/FMTunerController$VolumeHandler;

    .line 1524
    iget-object v0, p0, Lcom/htc/fm/FMTunerController$5;->this$0:Lcom/htc/fm/FMTunerController;

    const/4 v1, 0x0

    #setter for: Lcom/htc/fm/FMTunerController;->mVolumeStopPooling:Z
    invoke-static {v0, v1}, Lcom/htc/fm/FMTunerController;->access$802(Lcom/htc/fm/FMTunerController;Z)Z

    .line 1525
    iget-object v0, p0, Lcom/htc/fm/FMTunerController$5;->this$0:Lcom/htc/fm/FMTunerController;

    #getter for: Lcom/htc/fm/FMTunerController;->mVolumeHandler:Lcom/htc/fm/FMTunerController$VolumeHandler;
    invoke-static {v0}, Lcom/htc/fm/FMTunerController;->access$900(Lcom/htc/fm/FMTunerController;)Lcom/htc/fm/FMTunerController$VolumeHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/FMTunerController$VolumeHandler;->sendEmptyMessage(I)Z

    .line 1526
    const-string v0, "FMTunerController"

    const-string v1, " VolumeHandler Thread is looping"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1528
    const-string v0, "FMTunerController"

    const-string v1, " VolumeHandler Thread is quited"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    iget-object v0, p0, Lcom/htc/fm/FMTunerController$5;->this$0:Lcom/htc/fm/FMTunerController;

    #setter for: Lcom/htc/fm/FMTunerController;->mVolumeHandler:Lcom/htc/fm/FMTunerController$VolumeHandler;
    invoke-static {v0, v3}, Lcom/htc/fm/FMTunerController;->access$902(Lcom/htc/fm/FMTunerController;Lcom/htc/fm/FMTunerController$VolumeHandler;)Lcom/htc/fm/FMTunerController$VolumeHandler;

    .line 1530
    return-void
.end method
