.class public Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader$LoadingTask;
.super Landroid/os/AsyncTask;
.source "ArrayResourceLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LoadingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/htc/fusion/htcbookmarkwidget/IBookmark;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;


# direct methods
.method protected constructor <init>(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader$LoadingTask;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader$LoadingTask;->doInBackground([Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 9
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/fusion/htcbookmarkwidget/IBookmark;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 67
    iget-object v6, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader$LoadingTask;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;
    invoke-static {v6}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->access$100(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 68
    iget-object v6, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader$LoadingTask;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;
    invoke-static {v6}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->access$100(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    move-result-object v6

    invoke-interface {v6}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;->onLoading()V

    .line 71
    :cond_0
    iget-object v6, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader$LoadingTask;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->mWidgetContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->access$200(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;)Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_2

    .line 72
    const-string v6, "HtcBookmarkWidget"

    const-string v7, "Null widget context"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 90
    :cond_1
    return-object v2

    .line 76
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v2, bookmarkItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 79
    .local v0, arrayId:I
    iget-object v6, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader$LoadingTask;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->mWidgetContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->access$200(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, defaultBookmarks:[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 82
    array-length v1, v3

    .line 83
    .local v1, bookmarkArraySize:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 84
    new-instance v6, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;

    aget-object v7, v3, v4

    add-int/lit8 v8, v4, 0x1

    aget-object v8, v3, v8

    invoke-direct {v6, v4, v7, v8, v5}, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v4, v4, 0x2

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 103
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader$LoadingTask;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->access$100(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader$LoadingTask;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->access$100(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;->onCancelLoading()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader$LoadingTask;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;

    const/4 v1, 0x0

    #setter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->bIsLoading:Z
    invoke-static {v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->access$002(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;Z)Z

    .line 107
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader$LoadingTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/fusion/htcbookmarkwidget/IBookmark;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader$LoadingTask;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->access$100(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader$LoadingTask;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->access$100(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;->onPostLoading(Ljava/util/ArrayList;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader$LoadingTask;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;

    const/4 v1, 0x0

    #setter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->bIsLoading:Z
    invoke-static {v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->access$002(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;Z)Z

    .line 99
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader$LoadingTask;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;

    const/4 v1, 0x1

    #setter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->bIsLoading:Z
    invoke-static {v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->access$002(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;Z)Z

    .line 60
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 61
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader$LoadingTask;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->access$100(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader$LoadingTask;->this$0:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;

    #getter for: Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->mLoadingListener:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;
    invoke-static {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;->access$100(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/ArrayResourceLoader;)Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/IBookmarkLoader$Callback;->onPreLoading()V

    .line 64
    :cond_0
    return-void
.end method
