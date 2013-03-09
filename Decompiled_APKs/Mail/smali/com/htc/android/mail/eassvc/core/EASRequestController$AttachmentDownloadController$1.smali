.class Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController$1;
.super Ljava/lang/Object;
.source "EASRequestController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->cancelFetchEMailAttach(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;

.field final synthetic val$httpPost:Lorg/apache/http/client/methods/HttpPost;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;Ljava/lang/String;Lorg/apache/http/client/methods/HttpPost;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2363
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController$1;->this$1:Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;

    iput-object p2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController$1;->val$httpPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2365
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EASRequestController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelFetchEMailAttach() key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController$1;->val$key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2367
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController$1;->val$httpPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2371
    :goto_0
    return-void

    .line 2368
    :catch_0
    move-exception v0

    .line 2369
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
