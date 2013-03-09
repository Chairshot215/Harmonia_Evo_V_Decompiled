.class Lcom/android/htcdialer/search/SearchModule$SearchHandler;
.super Landroid/os/Handler;
.source "SearchModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/search/SearchModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/search/SearchModule;


# direct methods
.method public constructor <init>(Lcom/android/htcdialer/search/SearchModule;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/htcdialer/search/SearchModule$SearchHandler;->this$0:Lcom/android/htcdialer/search/SearchModule;

    .line 290
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 291
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 295
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 297
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_2

    const-string v1, ""

    .line 301
    .local v1, searchPattern:Ljava/lang/String;
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/android/htcdialer/search/SearchModule;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/android/htcdialer/search/SearchModule$SearchHandler;->this$0:Lcom/android/htcdialer/search/SearchModule;

    iget v2, v2, Lcom/android/htcdialer/search/SearchModule;->mSearchMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/htcdialer/search/SearchModule$SearchHandler;->this$0:Lcom/android/htcdialer/search/SearchModule;

    iget v2, v2, Lcom/android/htcdialer/search/SearchModule;->mSearchMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/htcdialer/search/SearchModule$SearchHandler;->this$0:Lcom/android/htcdialer/search/SearchModule;

    iget v2, v2, Lcom/android/htcdialer/search/SearchModule;->mSearchMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 305
    :cond_1
    iget-object v2, p0, Lcom/android/htcdialer/search/SearchModule$SearchHandler;->this$0:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v2, v1}, Lcom/android/htcdialer/search/SearchModule;->getSearchResultHandwrite(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HtcBaseSmartSearchList: MSG_SEARCH Exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 297
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #searchPattern:Ljava/lang/String;
    :cond_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_1

    .line 307
    .restart local v1       #searchPattern:Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/htcdialer/search/SearchModule$SearchHandler;->this$0:Lcom/android/htcdialer/search/SearchModule;

    #calls: Lcom/android/htcdialer/search/SearchModule;->getSearchResult(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/htcdialer/search/SearchModule;->access$100(Lcom/android/htcdialer/search/SearchModule;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 317
    .end local v1           #searchPattern:Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 319
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/htcdialer/search/SearchModule$SearchHandler;->removeMessages(I)V

    goto :goto_0

    .line 295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
