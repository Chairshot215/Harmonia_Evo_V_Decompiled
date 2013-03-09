.class Lcom/htc/app/HtcShutdownThread$7;
.super Landroid/os/storage/IMountShutdownObserver$Stub;
.source "HtcShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/HtcShutdownThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/HtcShutdownThread;


# direct methods
.method constructor <init>(Lcom/htc/app/HtcShutdownThread;)V
    .locals 0
    .parameter

    .prologue
    .line 787
    iput-object p1, p0, Lcom/htc/app/HtcShutdownThread$7;->this$0:Lcom/htc/app/HtcShutdownThread;

    invoke-direct {p0}, Landroid/os/storage/IMountShutdownObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutDownComplete(I)V
    .locals 3
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 790
    const-string v0, "HtcShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from MountService.shutdown"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v0, p0, Lcom/htc/app/HtcShutdownThread$7;->this$0:Lcom/htc/app/HtcShutdownThread;

    invoke-virtual {v0}, Lcom/htc/app/HtcShutdownThread;->actionDone()V

    .line 792
    return-void
.end method
