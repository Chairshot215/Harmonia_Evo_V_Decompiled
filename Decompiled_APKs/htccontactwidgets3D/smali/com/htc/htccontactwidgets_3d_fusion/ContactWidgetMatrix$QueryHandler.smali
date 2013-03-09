.class Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactWidgetMatrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;


# direct methods
.method public constructor <init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 2270
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$QueryHandler;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    .line 2271
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 2272
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 2276
    const-string v2, "ContactWidgetMatrix"

    const-string v3, "onQueryComplete...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    packed-switch p1, :pswitch_data_0

    .line 2326
    :cond_0
    :goto_0
    return-void

    .line 2281
    :pswitch_0
    const/4 v0, 0x0

    .line 2282
    .local v0, count:I
    if-eqz p3, :cond_3

    .line 2284
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$QueryHandler;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPeopleIDColumn:I
    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4200(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 2285
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$QueryHandler;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->cacheColumnIndices(Landroid/database/Cursor;)V
    invoke-static {v2, p3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4300(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Landroid/database/Cursor;)V

    .line 2288
    :cond_1
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$QueryHandler;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v2, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v2, :cond_0

    .line 2289
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$QueryHandler;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2291
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$QueryHandler;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 2292
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$QueryHandler;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    const/4 v3, 0x1

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mNeedUpdateFavorites:Z
    invoke-static {v2, v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4402(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z

    .line 2295
    :cond_2
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$QueryHandler;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 2296
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x1a10

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2297
    iput-object p3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2298
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$QueryHandler;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    goto :goto_0

    .line 2303
    .end local v1           #msg:Landroid/os/Message;
    :cond_3
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$QueryHandler;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 2304
    .restart local v1       #msg:Landroid/os/Message;
    const/16 v2, 0x1a0e

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2305
    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 2306
    iput v4, v1, Landroid/os/Message;->arg2:I

    .line 2308
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$QueryHandler;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    .line 2309
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$QueryHandler;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mFavoritesChanged:Z
    invoke-static {v2, v4}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$902(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z

    .line 2312
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$QueryHandler;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSyncObject:Ljava/lang/Object;
    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1900(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2313
    :try_start_0
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$QueryHandler;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z
    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2000(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2314
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$QueryHandler;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    const/4 v4, 0x0

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z
    invoke-static {v2, v4}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2002(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z

    .line 2318
    :cond_4
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$QueryHandler;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;
    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2100(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2319
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$QueryHandler;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;
    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2100(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/LockUtil;->releasePowerLock(Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;)V

    .line 2321
    :cond_5
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2278
    nop

    :pswitch_data_0
    .packed-switch 0x1e61
        :pswitch_0
    .end packed-switch
.end method
