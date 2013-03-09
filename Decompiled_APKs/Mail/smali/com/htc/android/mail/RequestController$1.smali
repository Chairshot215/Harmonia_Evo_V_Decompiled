.class Lcom/htc/android/mail/RequestController$1;
.super Ljava/lang/Object;
.source "RequestController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/RequestController;->stopRequest(Ljava/lang/ref/WeakReference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/RequestController;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/RequestController;)V
    .locals 0
    .parameter

    .prologue
    .line 1510
    iput-object p1, p0, Lcom/htc/android/mail/RequestController$1;->this$0:Lcom/htc/android/mail/RequestController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$1;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;
    invoke-static {v0}, Lcom/htc/android/mail/RequestController;->access$2000(Lcom/htc/android/mail/RequestController;)Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1513
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$1;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;
    invoke-static {v0}, Lcom/htc/android/mail/RequestController;->access$2000(Lcom/htc/android/mail/RequestController;)Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->stopRequest()V

    .line 1515
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$1;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailbodyRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;
    invoke-static {v0}, Lcom/htc/android/mail/RequestController;->access$2100(Lcom/htc/android/mail/RequestController;)Lcom/htc/android/mail/RequestController$RequestStackThread;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1516
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$1;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailbodyRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;
    invoke-static {v0}, Lcom/htc/android/mail/RequestController;->access$2100(Lcom/htc/android/mail/RequestController;)Lcom/htc/android/mail/RequestController$RequestStackThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/RequestController$RequestStackThread;->stopRequest()V

    .line 1518
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$1;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mAttachmentRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;
    invoke-static {v0}, Lcom/htc/android/mail/RequestController;->access$2200(Lcom/htc/android/mail/RequestController;)Lcom/htc/android/mail/RequestController$RequestStackThread;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1519
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$1;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mAttachmentRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;
    invoke-static {v0}, Lcom/htc/android/mail/RequestController;->access$2200(Lcom/htc/android/mail/RequestController;)Lcom/htc/android/mail/RequestController$RequestStackThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/RequestController$RequestStackThread;->stopRequest()V

    .line 1521
    :cond_2
    return-void
.end method
