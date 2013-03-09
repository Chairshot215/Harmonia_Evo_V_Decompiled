.class Lcom/android/phone/NetworkSimLock$7;
.super Ljava/lang/Object;
.source "NetworkSimLock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSimLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSimLock;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSimLock;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/phone/NetworkSimLock$7;->this$0:Lcom/android/phone/NetworkSimLock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock$7;->this$0:Lcom/android/phone/NetworkSimLock;

    const-wide/high16 v1, 0x4000

    invoke-static {}, Lcom/android/phone/NetworkSimLock;->access$1100()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-long v1, v1

    const-wide/16 v3, 0x1e

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/phone/NetworkSimLock;->delayTime:J

    .line 309
    const-string v0, "NetworkSimLock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delayTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSimLock$7;->this$0:Lcom/android/phone/NetworkSimLock;

    iget-wide v2, v2, Lcom/android/phone/NetworkSimLock;->delayTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/NetworkSimLock;->access$1202(Z)Z

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock$7;->this$0:Lcom/android/phone/NetworkSimLock;

    iget-wide v0, v0, Lcom/android/phone/NetworkSimLock;->delayTime:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    iget-object v0, p0, Lcom/android/phone/NetworkSimLock$7;->this$0:Lcom/android/phone/NetworkSimLock;

    #getter for: Lcom/android/phone/NetworkSimLock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/NetworkSimLock;->access$900(Lcom/android/phone/NetworkSimLock;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkSimLock$7;->this$0:Lcom/android/phone/NetworkSimLock;

    #getter for: Lcom/android/phone/NetworkSimLock;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/NetworkSimLock;->access$900(Lcom/android/phone/NetworkSimLock;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 320
    const-string v0, "NetworkSimLock"

    const-string v1, "timeout!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/NetworkSimLock;->access$1202(Z)Z

    .line 323
    return-void

    .line 315
    :catch_0
    move-exception v0

    goto :goto_0
.end method
