.class Lcom/android/browser/Tab$7;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Tab;->createSubWindow()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter

    .prologue
    .line 1610
    iput-object p1, p0, Lcom/android/browser/Tab$7;->this$0:Lcom/android/browser/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "contentLength"

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/android/browser/Tab$7;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$7;->this$0:Lcom/android/browser/Tab;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/browser/WebViewController;->onDownloadStart(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1616
    iget-object v0, p0, Lcom/android/browser/Tab$7;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/android/browser/Tab;->access$1500(Lcom/android/browser/Tab;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v0

    if-nez v0, :cond_0

    .line 1619
    iget-object v0, p0, Lcom/android/browser/Tab$7;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$7;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1}, Lcom/android/browser/WebViewController;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 1621
    :cond_0
    return-void
.end method
