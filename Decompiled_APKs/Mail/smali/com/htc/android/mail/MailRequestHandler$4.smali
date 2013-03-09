.class Lcom/htc/android/mail/MailRequestHandler$4;
.super Ljava/lang/Object;
.source "MailRequestHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailRequestHandler;->onReceivedSslError(Landroid/content/Context;Lcom/htc/android/mail/RequestController$CertificateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailRequestHandler;

.field final synthetic val$callback:Lcom/htc/android/mail/RequestController$CertificateCallback;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailRequestHandler;Lcom/htc/android/mail/RequestController$CertificateCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/htc/android/mail/MailRequestHandler$4;->this$0:Lcom/htc/android/mail/MailRequestHandler;

    iput-object p2, p0, Lcom/htc/android/mail/MailRequestHandler$4;->val$callback:Lcom/htc/android/mail/RequestController$CertificateCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/htc/android/mail/MailRequestHandler$4;->val$callback:Lcom/htc/android/mail/RequestController$CertificateCallback;

    invoke-virtual {v0}, Lcom/htc/android/mail/RequestController$CertificateCallback;->acceptCertificate()V

    .line 187
    return-void
.end method
