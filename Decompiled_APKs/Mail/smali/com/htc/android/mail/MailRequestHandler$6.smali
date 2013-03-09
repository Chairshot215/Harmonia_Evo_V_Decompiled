.class Lcom/htc/android/mail/MailRequestHandler$6;
.super Ljava/lang/Object;
.source "MailRequestHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailRequestHandler;->showSSLCertificateOnError(Landroid/content/Context;Lcom/htc/android/mail/RequestController$CertificateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailRequestHandler;

.field final synthetic val$callback:Lcom/htc/android/mail/RequestController$CertificateCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailRequestHandler;Landroid/content/Context;Lcom/htc/android/mail/RequestController$CertificateCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/htc/android/mail/MailRequestHandler$6;->this$0:Lcom/htc/android/mail/MailRequestHandler;

    iput-object p2, p0, Lcom/htc/android/mail/MailRequestHandler$6;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/htc/android/mail/MailRequestHandler$6;->val$callback:Lcom/htc/android/mail/RequestController$CertificateCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/htc/android/mail/MailRequestHandler$6;->this$0:Lcom/htc/android/mail/MailRequestHandler;

    iget-object v1, p0, Lcom/htc/android/mail/MailRequestHandler$6;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/mail/MailRequestHandler$6;->val$callback:Lcom/htc/android/mail/RequestController$CertificateCallback;

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/MailRequestHandler;->onReceivedSslError(Landroid/content/Context;Lcom/htc/android/mail/RequestController$CertificateCallback;)V

    .line 331
    return-void
.end method
