.class Lcom/htc/android/epst/LPMReceiver$1;
.super Ljava/lang/Thread;
.source "LPMReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/LPMReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/LPMReceiver;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/LPMReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/android/epst/LPMReceiver$1;->this$0:Lcom/htc/android/epst/LPMReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/android/epst/LPMReceiver$1;->this$0:Lcom/htc/android/epst/LPMReceiver;

    #getter for: Lcom/htc/android/epst/LPMReceiver;->DBG:Z
    invoke-static {v0}, Lcom/htc/android/epst/LPMReceiver;->access$000(Lcom/htc/android/epst/LPMReceiver;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LPMReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current Thread id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    const-string v0, "LPMReceiver"

    const-string v1, "Received intent LPM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {}, Lcom/htc/android/epst/internal/DataObject;->getSingleton()Lcom/htc/android/epst/internal/DataObject;

    move-result-object v0

    sget v1, Lcom/htc/android/epst/internal/DataObject;->executeCMDType:I

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/internal/DataObject;->executeCommands(I)V

    .line 28
    const/4 v0, -0x1

    sput v0, Lcom/htc/android/epst/internal/DataObject;->executeCMDType:I

    .line 29
    return-void
.end method
