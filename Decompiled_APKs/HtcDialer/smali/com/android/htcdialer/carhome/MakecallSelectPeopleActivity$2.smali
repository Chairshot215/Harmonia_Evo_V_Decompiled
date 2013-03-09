.class Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;
.super Landroid/os/Handler;
.source "MakecallSelectPeopleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2222
    iput-object p1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x1a14

    .line 2226
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2348
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2229
    :pswitch_1
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mIsShown:Z
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$900(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mMyListView:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$300(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2230
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mMyListView:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$300(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->prepareContactPair()V

    .line 2231
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mMyListView:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$300(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->updateList(Ljava/lang/Object;)V

    goto :goto_0

    .line 2237
    :pswitch_2
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mIsShown:Z
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$900(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mMyListView:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$300(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2238
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_1

    .line 2239
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mMyListView:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$300(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->setDefaultItem()V

    .line 2244
    :goto_1
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mFavoritesChanged:Z
    invoke-static {v1, v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$502(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Z)Z

    goto :goto_0

    .line 2242
    :cond_1
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mMyListView:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$300(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->updateList(Ljava/lang/Object;)V

    goto :goto_1

    .line 2251
    :pswitch_3
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mIsShown:Z
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$900(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2254
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->isReadyToHandleQueryMessage:Z
    invoke-static {v1, v4}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$3702(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Z)Z

    .line 2256
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mFavoritesChanged:Z
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$500(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mNeedRefreshCursor:Z
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2257
    :cond_2
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mFavoritesChanged:Z
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$500(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2258
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mInitialize:Z
    invoke-static {v1, v4}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$3802(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Z)Z

    .line 2259
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mFavoritesChanged:Z
    invoke-static {v1, v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$502(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Z)Z

    .line 2261
    :cond_3
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2262
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2263
    :cond_4
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2270
    :pswitch_4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2$1;

    invoke-direct {v1, p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2$1;-><init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2277
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 2284
    .end local v0           #thread:Ljava/lang/Thread;
    :pswitch_5
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mIsShown:Z
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$900(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2287
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mInitialize:Z
    invoke-static {v1, v4}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$3802(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Z)Z

    .line 2288
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2289
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2290
    :cond_5
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2295
    :pswitch_6
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mMyListView:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$300(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2296
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mNeedUpdateFavorites:Z
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2900(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2297
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mNeedUpdateFavorites:Z
    invoke-static {v1, v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2902(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Z)Z

    .line 2298
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #setter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mProcessFavoriteIndex:I
    invoke-static {v1, v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$2302(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;I)I

    .line 2299
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mMyListView:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$300(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/database/Cursor;

    invoke-virtual {v2, v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->extractFavorites(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 2301
    :cond_6
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mMyListView:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$300(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/database/Cursor;

    invoke-virtual {v2, v1, v4}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->setCursor(Landroid/database/Cursor;Z)V

    goto/16 :goto_0

    .line 2309
    :pswitch_7
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2$2;

    invoke-direct {v1, p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2$2;-><init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2341
    .restart local v0       #thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 2226
    nop

    :pswitch_data_0
    .packed-switch 0x1a0c
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method
