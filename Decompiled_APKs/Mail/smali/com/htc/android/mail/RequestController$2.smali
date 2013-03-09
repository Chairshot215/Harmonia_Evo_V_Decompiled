.class Lcom/htc/android/mail/RequestController$2;
.super Ljava/lang/Object;
.source "RequestController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/RequestController;->removeRequest(JLjava/lang/ref/WeakReference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/RequestController;

.field final synthetic val$accountId:J

.field final synthetic val$weakHandler:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/RequestController;JLjava/lang/ref/WeakReference;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1540
    iput-object p1, p0, Lcom/htc/android/mail/RequestController$2;->this$0:Lcom/htc/android/mail/RequestController;

    iput-wide p2, p0, Lcom/htc/android/mail/RequestController$2;->val$accountId:J

    iput-object p4, p0, Lcom/htc/android/mail/RequestController$2;->val$weakHandler:Ljava/lang/ref/WeakReference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$2;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;
    invoke-static {v0}, Lcom/htc/android/mail/RequestController;->access$2000(Lcom/htc/android/mail/RequestController;)Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1543
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$2;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;
    invoke-static {v0}, Lcom/htc/android/mail/RequestController;->access$2000(Lcom/htc/android/mail/RequestController;)Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/android/mail/RequestController$2;->val$accountId:J

    iget-object v3, p0, Lcom/htc/android/mail/RequestController$2;->val$weakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->removeRequest(JLjava/lang/ref/WeakReference;)V

    .line 1545
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$2;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailbodyRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;
    invoke-static {v0}, Lcom/htc/android/mail/RequestController;->access$2100(Lcom/htc/android/mail/RequestController;)Lcom/htc/android/mail/RequestController$RequestStackThread;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1546
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$2;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailbodyRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;
    invoke-static {v0}, Lcom/htc/android/mail/RequestController;->access$2100(Lcom/htc/android/mail/RequestController;)Lcom/htc/android/mail/RequestController$RequestStackThread;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/android/mail/RequestController$2;->val$accountId:J

    iget-object v3, p0, Lcom/htc/android/mail/RequestController$2;->val$weakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/RequestController$RequestStackThread;->removeRequest(JLjava/lang/ref/WeakReference;)V

    .line 1548
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$2;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mAttachmentRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;
    invoke-static {v0}, Lcom/htc/android/mail/RequestController;->access$2200(Lcom/htc/android/mail/RequestController;)Lcom/htc/android/mail/RequestController$RequestStackThread;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1549
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$2;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mAttachmentRequestStackThread:Lcom/htc/android/mail/RequestController$RequestStackThread;
    invoke-static {v0}, Lcom/htc/android/mail/RequestController;->access$2200(Lcom/htc/android/mail/RequestController;)Lcom/htc/android/mail/RequestController$RequestStackThread;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/android/mail/RequestController$2;->val$accountId:J

    iget-object v3, p0, Lcom/htc/android/mail/RequestController$2;->val$weakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/RequestController$RequestStackThread;->removeRequest(JLjava/lang/ref/WeakReference;)V

    .line 1551
    :cond_2
    return-void
.end method
