.class Lcom/htc/android/mail/eassvc/core/BaseSyncSource$1;
.super Ljava/lang/Object;
.source "BaseSyncSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->cancelSync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/eassvc/core/BaseSyncSource;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/eassvc/core/BaseSyncSource;)V
    .locals 0
    .parameter

    .prologue
    .line 647
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource$1;->this$0:Lcom/htc/android/mail/eassvc/core/BaseSyncSource;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 649
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource$1;->this$0:Lcom/htc/android/mail/eassvc/core/BaseSyncSource;

    #getter for: Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;
    invoke-static {v1}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->access$000(Lcom/htc/android/mail/eassvc/core/BaseSyncSource;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 651
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource$1;->this$0:Lcom/htc/android/mail/eassvc/core/BaseSyncSource;

    #getter for: Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;
    invoke-static {v1}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->access$000(Lcom/htc/android/mail/eassvc/core/BaseSyncSource;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource$1;->this$0:Lcom/htc/android/mail/eassvc/core/BaseSyncSource;

    #getter for: Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mHttpClient:Landroid/net/http/AndroidHttpClient;
    invoke-static {v1}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->access$100(Lcom/htc/android/mail/eassvc/core/BaseSyncSource;)Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 657
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource$1;->this$0:Lcom/htc/android/mail/eassvc/core/BaseSyncSource;

    invoke-virtual {v1}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->releaseHttpClient()V

    .line 659
    :cond_1
    return-void

    .line 652
    :catch_0
    move-exception v0

    .line 653
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
