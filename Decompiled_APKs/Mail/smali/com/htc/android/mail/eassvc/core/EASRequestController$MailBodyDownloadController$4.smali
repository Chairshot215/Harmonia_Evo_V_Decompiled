.class Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController$4;
.super Ljava/lang/Object;
.source "EASRequestController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->cancelOOF(Lcom/htc/android/mail/eassvc/core/EASRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;

.field final synthetic val$httpPost:Lorg/apache/http/client/methods/HttpPost;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;Lorg/apache/http/client/methods/HttpPost;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2829
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController$4;->this$1:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;

    iput-object p2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController$4;->val$httpPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2832
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController$4;->val$httpPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2836
    :goto_0
    return-void

    .line 2833
    :catch_0
    move-exception v0

    .line 2834
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
