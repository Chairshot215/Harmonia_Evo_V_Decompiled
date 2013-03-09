.class Lcom/android/browser/UrlHandler$RLZTask;
.super Landroid/os/AsyncTask;
.source "UrlHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/UrlHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RLZTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mSiteUri:Landroid/net/Uri;

.field private mTab:Lcom/android/browser/Tab;

.field private mWebView:Landroid/webkit/WebView;

.field final synthetic this$0:Lcom/android/browser/UrlHandler;


# direct methods
.method public constructor <init>(Lcom/android/browser/UrlHandler;Lcom/android/browser/Tab;Landroid/net/Uri;Landroid/webkit/WebView;)V
    .locals 0
    .parameter
    .parameter "tab"
    .parameter "uri"
    .parameter "webView"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/browser/UrlHandler$RLZTask;->this$0:Lcom/android/browser/UrlHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 243
    iput-object p2, p0, Lcom/android/browser/UrlHandler$RLZTask;->mTab:Lcom/android/browser/Tab;

    .line 244
    iput-object p3, p0, Lcom/android/browser/UrlHandler$RLZTask;->mSiteUri:Landroid/net/Uri;

    .line 245
    iput-object p4, p0, Lcom/android/browser/UrlHandler$RLZTask;->mWebView:Landroid/webkit/WebView;

    .line 246
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 237
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/UrlHandler$RLZTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 8
    .parameter "unused"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/browser/UrlHandler$RLZTask;->mSiteUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 250
    .local v7, result:Ljava/lang/String;
    const/4 v6, 0x0

    .line 252
    .local v6, cur:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/UrlHandler$RLZTask;->this$0:Lcom/android/browser/UrlHandler;

    iget-object v0, v0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/UrlHandler$RLZTask;->this$0:Lcom/android/browser/UrlHandler;

    #calls: Lcom/android/browser/UrlHandler;->getRlzUri()Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/browser/UrlHandler;->access$000(Lcom/android/browser/UrlHandler;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 254
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/browser/UrlHandler$RLZTask;->mSiteUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "rlz"

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 260
    :cond_0
    if-eqz v6, :cond_1

    .line 261
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 264
    :cond_1
    return-object v7

    .line 260
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 261
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 237
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/UrlHandler$RLZTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/browser/UrlHandler$RLZTask;->this$0:Lcom/android/browser/UrlHandler;

    iget-object v0, v0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/android/browser/UrlHandler$RLZTask;->this$0:Lcom/android/browser/UrlHandler;

    iget-object v0, v0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/UrlHandler$RLZTask;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->getTabPosition(Lcom/android/browser/Tab;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/browser/UrlHandler$RLZTask;->this$0:Lcom/android/browser/UrlHandler;

    iget-object v1, p0, Lcom/android/browser/UrlHandler$RLZTask;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v0, v1, p1}, Lcom/android/browser/UrlHandler;->startActivityForUrl(Lcom/android/browser/Tab;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/browser/UrlHandler$RLZTask;->this$0:Lcom/android/browser/UrlHandler;

    iget-object v1, p0, Lcom/android/browser/UrlHandler$RLZTask;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v0, v1, p1}, Lcom/android/browser/UrlHandler;->handleMenuClick(Lcom/android/browser/Tab;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/browser/UrlHandler$RLZTask;->this$0:Lcom/android/browser/UrlHandler;

    iget-object v0, v0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    iget-object v1, p0, Lcom/android/browser/UrlHandler$RLZTask;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v0, v1, p1}, Lcom/android/browser/Controller;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V

    goto :goto_0
.end method
