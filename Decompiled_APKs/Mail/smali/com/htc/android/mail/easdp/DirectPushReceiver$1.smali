.class Lcom/htc/android/mail/easdp/DirectPushReceiver$1;
.super Ljava/lang/Object;
.source "DirectPushReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easdp/DirectPushReceiver;->cancelRunning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easdp/DirectPushReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$1;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 351
    invoke-static {}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$1;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    #getter for: Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;
    invoke-static {v1}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->access$100(Lcom/htc/android/mail/easdp/DirectPushReceiver;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 353
    const-string v1, "EAS_DPReceiver"

    iget-object v3, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$1;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    #getter for: Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    invoke-static {v3}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->access$200(Lcom/htc/android/mail/easdp/DirectPushReceiver;)Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-result-object v3

    const-string v4, "cancelRunning- abort httpPost"

    invoke-static {v1, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :try_start_1
    iget-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$1;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    #getter for: Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;
    invoke-static {v1}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->access$100(Lcom/htc/android/mail/easdp/DirectPushReceiver;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 359
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$1;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    const/4 v3, 0x0

    #setter for: Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;
    invoke-static {v1, v3}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->access$102(Lcom/htc/android/mail/easdp/DirectPushReceiver;Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/client/methods/HttpPost;

    .line 360
    iget-object v1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$1;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    #calls: Lcom/htc/android/mail/easdp/DirectPushReceiver;->setKillSelfTimerChecker()V
    invoke-static {v1}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->access$300(Lcom/htc/android/mail/easdp/DirectPushReceiver;)V

    .line 363
    :cond_0
    monitor-exit v2

    .line 364
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 363
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
