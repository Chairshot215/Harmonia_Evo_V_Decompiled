.class Lcom/google/android/gsf/gtalkservice/rmq/RmqManager$1;
.super Ljava/lang/Object;
.source "RmqManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->resendRmqPackets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager$1;->this$0:Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager$1;->this$0:Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;

    #calls: Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->resendPackets()V
    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->access$000(Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;)V

    .line 250
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager$1;->this$0:Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;

    const-string v1, "finished resending packets"

    #calls: Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->access$100(Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;Ljava/lang/String;)V

    .line 253
    :cond_0
    return-void
.end method
