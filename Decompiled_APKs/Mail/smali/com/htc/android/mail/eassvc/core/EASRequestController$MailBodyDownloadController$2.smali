.class Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController$2;
.super Ljava/lang/Object;
.source "EASRequestController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->getOOF(Lcom/htc/android/mail/eassvc/core/EASRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;

.field final synthetic val$existReq:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2723
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController$2;->this$1:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;

    iput-object p2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController$2;->val$existReq:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2726
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController$2;->val$existReq:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2730
    :goto_0
    return-void

    .line 2727
    :catch_0
    move-exception v0

    .line 2728
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
