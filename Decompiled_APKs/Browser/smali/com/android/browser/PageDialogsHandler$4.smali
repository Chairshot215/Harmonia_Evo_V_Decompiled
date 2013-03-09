.class Lcom/android/browser/PageDialogsHandler$4;
.super Ljava/lang/Object;
.source "PageDialogsHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/PageDialogsHandler;->showPageInfo(Lcom/android/browser/Tab;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/PageDialogsHandler;

.field final synthetic val$fromShowSSLCertificateOnError:Z


# direct methods
.method constructor <init>(Lcom/android/browser/PageDialogsHandler;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler$4;->this$0:Lcom/android/browser/PageDialogsHandler;

    iput-boolean p2, p0, Lcom/android/browser/PageDialogsHandler$4;->val$fromShowSSLCertificateOnError:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler$4;->this$0:Lcom/android/browser/PageDialogsHandler;

    #setter for: Lcom/android/browser/PageDialogsHandler;->mPageInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/browser/PageDialogsHandler;->access$202(Lcom/android/browser/PageDialogsHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 173
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler$4;->this$0:Lcom/android/browser/PageDialogsHandler;

    #setter for: Lcom/android/browser/PageDialogsHandler;->mPageInfoView:Lcom/android/browser/Tab;
    invoke-static {v0, v1}, Lcom/android/browser/PageDialogsHandler;->access$302(Lcom/android/browser/PageDialogsHandler;Lcom/android/browser/Tab;)Lcom/android/browser/Tab;

    .line 176
    iget-boolean v0, p0, Lcom/android/browser/PageDialogsHandler$4;->val$fromShowSSLCertificateOnError:Z

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler$4;->this$0:Lcom/android/browser/PageDialogsHandler;

    iget-object v1, p0, Lcom/android/browser/PageDialogsHandler$4;->this$0:Lcom/android/browser/PageDialogsHandler;

    #getter for: Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/android/browser/PageDialogsHandler;->access$400(Lcom/android/browser/PageDialogsHandler;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/PageDialogsHandler$4;->this$0:Lcom/android/browser/PageDialogsHandler;

    #getter for: Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;
    invoke-static {v2}, Lcom/android/browser/PageDialogsHandler;->access$500(Lcom/android/browser/PageDialogsHandler;)Landroid/webkit/SslErrorHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/PageDialogsHandler$4;->this$0:Lcom/android/browser/PageDialogsHandler;

    #getter for: Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;
    invoke-static {v3}, Lcom/android/browser/PageDialogsHandler;->access$600(Lcom/android/browser/PageDialogsHandler;)Landroid/net/http/SslError;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/browser/PageDialogsHandler;->showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 183
    :cond_0
    return-void
.end method
