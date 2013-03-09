.class Lcom/android/browser/Tab$2$6;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Tab$2;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/Tab$2;

.field final synthetic val$error:Landroid/net/http/SslError;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab$2;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 788
    iput-object p1, p0, Lcom/android/browser/Tab$2$6;->this$1:Lcom/android/browser/Tab$2;

    iput-object p2, p0, Lcom/android/browser/Tab$2$6;->val$view:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/android/browser/Tab$2$6;->val$handler:Landroid/webkit/SslErrorHandler;

    iput-object p4, p0, Lcom/android/browser/Tab$2$6;->val$error:Landroid/net/http/SslError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/browser/Tab$2$6;->this$1:Lcom/android/browser/Tab$2;

    iget-object v0, v0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$2$6;->val$view:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/android/browser/Tab$2$6;->val$handler:Landroid/webkit/SslErrorHandler;

    iget-object v3, p0, Lcom/android/browser/Tab$2$6;->val$error:Landroid/net/http/SslError;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/browser/WebViewController;->showSslCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 794
    return-void
.end method
