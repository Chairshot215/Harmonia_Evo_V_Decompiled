.class Lcom/htc/android/mail/easdp/DirectPushReceiver$3$2;
.super Ljava/lang/Object;
.source "DirectPushReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easdp/DirectPushReceiver$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/easdp/DirectPushReceiver$3;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easdp/DirectPushReceiver$3;)V
    .locals 0
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$3$2;->this$1:Lcom/htc/android/mail/easdp/DirectPushReceiver$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 460
    invoke-static {}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$3$2;->this$1:Lcom/htc/android/mail/easdp/DirectPushReceiver$3;

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver$3;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    #getter for: Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;
    invoke-static {v0}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->access$100(Lcom/htc/android/mail/easdp/DirectPushReceiver;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    const-string v0, "EAS_DPReceiver"

    iget-object v2, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$3$2;->this$1:Lcom/htc/android/mail/easdp/DirectPushReceiver$3;

    iget-object v2, v2, Lcom/htc/android/mail/easdp/DirectPushReceiver$3;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    #getter for: Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    invoke-static {v2}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->access$200(Lcom/htc/android/mail/easdp/DirectPushReceiver;)Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-result-object v2

    const-string v3, "connect timeout- abort httpPost"

    invoke-static {v0, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$3$2;->this$1:Lcom/htc/android/mail/easdp/DirectPushReceiver$3;

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver$3;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    #getter for: Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;
    invoke-static {v0}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->access$100(Lcom/htc/android/mail/easdp/DirectPushReceiver;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 464
    iget-object v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$3$2;->this$1:Lcom/htc/android/mail/easdp/DirectPushReceiver$3;

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver$3;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    const/4 v2, 0x0

    #setter for: Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;
    invoke-static {v0, v2}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->access$102(Lcom/htc/android/mail/easdp/DirectPushReceiver;Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/client/methods/HttpPost;

    .line 465
    iget-object v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$3$2;->this$1:Lcom/htc/android/mail/easdp/DirectPushReceiver$3;

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver$3;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    #calls: Lcom/htc/android/mail/easdp/DirectPushReceiver;->setKillSelfTimerChecker()V
    invoke-static {v0}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->access$300(Lcom/htc/android/mail/easdp/DirectPushReceiver;)V

    .line 466
    iget-object v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$3$2;->this$1:Lcom/htc/android/mail/easdp/DirectPushReceiver$3;

    iget-object v0, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver$3;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mCancelByAbort:Z

    .line 469
    :cond_0
    monitor-exit v1

    .line 470
    return-void

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
