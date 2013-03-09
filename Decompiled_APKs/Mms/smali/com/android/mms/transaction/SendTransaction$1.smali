.class Lcom/android/mms/transaction/SendTransaction$1;
.super Ljava/lang/Object;
.source "SendTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/SendTransaction;->runDeviceTimeOut(Ljava/lang/Runnable;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/SendTransaction;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/SendTransaction;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/mms/transaction/SendTransaction$1;->this$0:Lcom/android/mms/transaction/SendTransaction;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 359
    const-string v2, "SendTransaction"

    const-string v3, "Run SelfTimeout start...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction$1;->this$0:Lcom/android/mms/transaction/SendTransaction;

    #getter for: Lcom/android/mms/transaction/SendTransaction;->mIsSelfTimeout:Z
    invoke-static {v2}, Lcom/android/mms/transaction/SendTransaction;->access$000(Lcom/android/mms/transaction/SendTransaction;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    const-string v2, "SendTransaction"

    const-string v3, "mIsSelfTimeout true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    sget-object v2, Lcom/android/mms/transport/HttpUtils;->mClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v2, :cond_0

    .line 364
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeviceTimeOutResize()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 365
    sget-object v2, Lcom/android/mms/transport/HttpUtils;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 366
    const-string v2, "SendTransaction"

    const-string v3, "HttpUtils.mClient close"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction$1;->this$0:Lcom/android/mms/transaction/SendTransaction;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/SendTransaction;->setRetryMode(I)V

    .line 369
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/transaction/SendTransaction$1;->this$0:Lcom/android/mms/transaction/SendTransaction;

    #calls: Lcom/android/mms/transaction/SendTransaction;->resizeImageBeforeNextSending()V
    invoke-static {v2}, Lcom/android/mms/transaction/SendTransaction;->access$100(Lcom/android/mms/transaction/SendTransaction;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v2, "SendTransaction"

    const-string v3, "failed to resize Image before send"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 376
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :cond_1
    sget-object v2, Lcom/android/mms/transport/HttpUtils;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    if-eqz v2, :cond_0

    .line 377
    sget-object v2, Lcom/android/mms/transport/HttpUtils;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v3, "http.request_sent"

    invoke-interface {v2, v3}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 378
    .local v1, isSent:Ljava/lang/Boolean;
    if-eqz v1, :cond_2

    const-string v2, "SendTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "m-send-req is sent? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 380
    sget-object v2, Lcom/android/mms/transport/HttpUtils;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 381
    const-string v2, "SendTransaction"

    const-string v3, "HttpUtils.mClient close"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
