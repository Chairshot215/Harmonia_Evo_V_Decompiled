.class Landroid/webkit/HTCQuickSearch$1;
.super Ljava/lang/Thread;
.source "HTCQuickSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/HTCQuickSearch;->startTranslation(Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTCQuickSearch;

.field final synthetic val$selectionHandler:Landroid/os/Handler;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/webkit/HTCQuickSearch;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/HTCQuickSearch$1;->this$0:Landroid/webkit/HTCQuickSearch;

    iput-object p2, p0, Landroid/webkit/HTCQuickSearch$1;->val$text:Ljava/lang/String;

    iput-object p3, p0, Landroid/webkit/HTCQuickSearch$1;->val$selectionHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    const-string v0, "JuLOG"

    const-string/jumbo v1, "translate start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/HTCQuickSearch$1;->this$0:Landroid/webkit/HTCQuickSearch;

    iget-object v0, v0, Landroid/webkit/HTCQuickSearch;->mProvider:Landroid/content/IContentProvider;

    sget-object v1, Landroid/webkit/HTCQuickSearch;->QUICKLOOKUP_TRANSLATE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/webkit/HTCQuickSearch$1;->val$text:Ljava/lang/String;

    iget-object v4, p0, Landroid/webkit/HTCQuickSearch$1;->this$0:Landroid/webkit/HTCQuickSearch;

    iget-object v4, v4, Landroid/webkit/HTCQuickSearch;->mLanguagePair:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Landroid/webkit/HTCQuickSearch$1;->this$0:Landroid/webkit/HTCQuickSearch;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/webkit/HTCQuickSearch;->mTranslateResult:Ljava/lang/String;

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    const-string v0, "JuLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTranslateThread end: result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/HTCQuickSearch$1;->this$0:Landroid/webkit/HTCQuickSearch;

    iget-object v2, v2, Landroid/webkit/HTCQuickSearch;->mTranslateResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkit/HTCQuickSearch$1;->val$selectionHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/HTCQuickSearch$1;->val$selectionHandler:Landroid/os/Handler;

    const/16 v2, 0xcb

    iget-object v3, p0, Landroid/webkit/HTCQuickSearch$1;->this$0:Landroid/webkit/HTCQuickSearch;

    iget-object v3, v3, Landroid/webkit/HTCQuickSearch;->mTranslateResult:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Landroid/webkit/HTCQuickSearch$1;->this$0:Landroid/webkit/HTCQuickSearch;

    #getter for: Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/HTCQuickSearch;->access$000(Landroid/webkit/HTCQuickSearch;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTCQuickSearch$1;->this$0:Landroid/webkit/HTCQuickSearch;

    iget-object v1, v1, Landroid/webkit/HTCQuickSearch;->mProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    iget-object v0, p0, Landroid/webkit/HTCQuickSearch$1;->this$0:Landroid/webkit/HTCQuickSearch;

    iput-object v8, v0, Landroid/webkit/HTCQuickSearch;->mProvider:Landroid/content/IContentProvider;

    return-void

    :catch_0
    move-exception v7

    const-string v0, "JuLOG"

    const-string v1, "Cursor query error!"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
