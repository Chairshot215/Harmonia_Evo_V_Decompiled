.class Lcom/android/browser/PageDialogsHandler$8;
.super Ljava/lang/Object;
.source "PageDialogsHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/PageDialogsHandler;->showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/PageDialogsHandler;

.field final synthetic val$error:Landroid/net/http/SslError;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/android/browser/PageDialogsHandler;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler$8;->this$0:Lcom/android/browser/PageDialogsHandler;

    iput-object p2, p0, Lcom/android/browser/PageDialogsHandler$8;->val$view:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/android/browser/PageDialogsHandler$8;->val$handler:Landroid/webkit/SslErrorHandler;

    iput-object p4, p0, Lcom/android/browser/PageDialogsHandler$8;->val$error:Landroid/net/http/SslError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 322
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler$8;->this$0:Lcom/android/browser/PageDialogsHandler;

    #setter for: Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/browser/PageDialogsHandler;->access$1002(Lcom/android/browser/PageDialogsHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 323
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler$8;->this$0:Lcom/android/browser/PageDialogsHandler;

    #setter for: Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;
    invoke-static {v0, v1}, Lcom/android/browser/PageDialogsHandler;->access$402(Lcom/android/browser/PageDialogsHandler;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 324
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler$8;->this$0:Lcom/android/browser/PageDialogsHandler;

    #setter for: Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;
    invoke-static {v0, v1}, Lcom/android/browser/PageDialogsHandler;->access$502(Lcom/android/browser/PageDialogsHandler;Landroid/webkit/SslErrorHandler;)Landroid/webkit/SslErrorHandler;

    .line 325
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler$8;->this$0:Lcom/android/browser/PageDialogsHandler;

    #setter for: Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;
    invoke-static {v0, v1}, Lcom/android/browser/PageDialogsHandler;->access$602(Lcom/android/browser/PageDialogsHandler;Landroid/net/http/SslError;)Landroid/net/http/SslError;

    .line 327
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler$8;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/PageDialogsHandler$8;->val$view:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/android/browser/PageDialogsHandler$8;->val$handler:Landroid/webkit/SslErrorHandler;

    iget-object v3, p0, Lcom/android/browser/PageDialogsHandler$8;->val$error:Landroid/net/http/SslError;

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 329
    return-void
.end method
