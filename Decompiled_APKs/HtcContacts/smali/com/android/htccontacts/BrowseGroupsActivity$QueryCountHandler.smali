.class Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;
.super Landroid/os/Handler;
.source "BrowseGroupsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseGroupsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryCountHandler"
.end annotation


# instance fields
.field private idleHandler:Landroid/os/MessageQueue$IdleHandler;

.field isAllUpdating:Z

.field isBreak:Z

.field isSetIdleHandler:Z

.field longUpdatingItemSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mActRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/BrowseGroupsActivity;",
            ">;"
        }
    .end annotation
.end field

.field mPauseCacheQuery:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;",
            ">;"
        }
    .end annotation
.end field

.field mReleaseCacheQuery:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/htccontacts/BrowseGroupsActivity;)V
    .locals 1
    .parameter "looper"
    .parameter "activity"

    .prologue
    .line 2078
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2071
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->longUpdatingItemSet:Ljava/util/HashMap;

    .line 2072
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->mPauseCacheQuery:Ljava/util/LinkedList;

    .line 2073
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->mReleaseCacheQuery:Ljava/util/LinkedList;

    .line 2079
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->mActRef:Ljava/lang/ref/WeakReference;

    .line 2080
    return-void
.end method


# virtual methods
.method public declared-synchronized flushPauseCacheQuery()V
    .locals 6

    .prologue
    .line 2089
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->isBreak:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 2101
    :goto_0
    monitor-exit p0

    return-void

    .line 2092
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->mPauseCacheQuery:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;

    .line 2093
    .local v1, notfication:Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;
    iget-boolean v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->isBreak:Z

    if-eqz v3, :cond_2

    .line 2099
    .end local v1           #notfication:Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->mPauseCacheQuery:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2089
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2096
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #notfication:Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;
    :cond_2
    :try_start_2
    iget-object v2, v1, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;->itemRef:Ljava/lang/ref/WeakReference;

    .line 2097
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;>;"
    iget-object v4, v1, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;->name:Ljava/lang/String;

    iget v5, v1, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;->groupIsReadOnly:I

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;

    :goto_2
    invoke-virtual {p0, v4, v5, v3}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->updateItem(Ljava/lang/String;ILcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public declared-synchronized flushReleaseCacheQuery()V
    .locals 6

    .prologue
    .line 2103
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->mReleaseCacheQuery:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;

    .line 2104
    .local v1, notfication:Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;
    iget-object v2, v1, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;->itemRef:Ljava/lang/ref/WeakReference;

    .line 2105
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;>;"
    iget-object v4, v1, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;->name:Ljava/lang/String;

    iget v5, v1, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;->groupIsReadOnly:I

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;

    :goto_1
    invoke-virtual {p0, v4, v5, v3}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->updateItem(Ljava/lang/String;ILcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2103
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #notfication:Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2105
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #notfication:Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;
    .restart local v2       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 2107
    .end local v1           #notfication:Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;>;"
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->mReleaseCacheQuery:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2108
    monitor-exit p0

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/16 v13, 0x7ee

    const/4 v12, 0x0

    .line 2190
    invoke-static {}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$000()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "BrowseGroupsActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "QueryCountHandler handleMessage:   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    :cond_0
    iget-object v9, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->mActRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/BrowseGroupsActivity;

    .line 2192
    .local v0, activity:Lcom/android/htccontacts/BrowseGroupsActivity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->isFinishing()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2248
    :cond_1
    :goto_0
    return-void

    .line 2196
    :cond_2
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2227
    :pswitch_1
    invoke-static {}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$000()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "BrowseGroupsActivity"

    const-string v10, "Go TOKEN_QUERY_ALL_COUNTS"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    :cond_3
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    .line 2231
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2232
    .local v7, key:Ljava/lang/String;
    iget-boolean v9, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->isBreak:Z

    if-eqz v9, :cond_9

    .line 2242
    .end local v7           #key:Ljava/lang/String;
    :cond_5
    iget-object v9, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupListHandler:Landroid/os/Handler;

    invoke-virtual {v9, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2199
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_2
    iget-boolean v9, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->isSetIdleHandler:Z

    if-nez v9, :cond_1

    .line 2200
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->isSetIdleHandler:Z

    .line 2202
    iget-object v9, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->idleHandler:Landroid/os/MessageQueue$IdleHandler;

    if-eqz v9, :cond_6

    .line 2204
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v9

    iget-object v10, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->idleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v9, v10}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2207
    :cond_6
    new-instance v9, Lcom/android/htccontacts/BrowseGroupsActivity$StartIndicatorIdleHandler;

    invoke-direct {v9, v0}, Lcom/android/htccontacts/BrowseGroupsActivity$StartIndicatorIdleHandler;-><init>(Lcom/android/htccontacts/BrowseGroupsActivity;)V

    iput-object v9, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->idleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 2208
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v9

    iget-object v10, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->idleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v9, v10}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_0

    .line 2211
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;

    .line 2212
    .local v1, cache:Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;
    iget-object v9, v1, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;->name:Ljava/lang/String;

    #calls: Lcom/android/htccontacts/BrowseGroupsActivity;->fillupCountHashMap(Ljava/lang/String;)I
    invoke-static {v0, v9}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$3400(Lcom/android/htccontacts/BrowseGroupsActivity;Ljava/lang/String;)I

    move-result v3

    .line 2214
    .local v3, counts:I
    iget-object v9, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->longUpdatingItemSet:Ljava/util/HashMap;

    iget-object v10, v1, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2215
    invoke-static {}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$000()Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "BrowseGroupsActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage:  (TOKEN_QUERY_ITEM_COUNT) result:  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  :  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    :cond_7
    iget-object v9, v1, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;->itemRef:Ljava/lang/ref/WeakReference;

    if-eqz v9, :cond_8

    .line 2217
    iget-object v9, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupListHandler:Landroid/os/Handler;

    const/16 v10, 0x7f8

    invoke-virtual {v9, v10, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 2218
    .local v4, fMsg:Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2221
    .end local v4           #fMsg:Landroid/os/Message;
    :cond_8
    iget-object v9, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupListHandler:Landroid/os/Handler;

    invoke-virtual {v9, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 2222
    .restart local v4       #fMsg:Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2235
    .end local v1           #cache:Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;
    .end local v3           #counts:I
    .end local v4           #fMsg:Landroid/os/Message;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v7       #key:Ljava/lang/String;
    .restart local v8       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    iget-object v9, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupCacheList:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2236
    iget-object v9, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupCacheList:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 2237
    .local v5, groupItem:[Ljava/lang/String;
    aget-object v9, v5, v12

    #calls: Lcom/android/htccontacts/BrowseGroupsActivity;->fillupCountHashMap(Ljava/lang/String;)I
    invoke-static {v0, v9}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$3400(Lcom/android/htccontacts/BrowseGroupsActivity;Ljava/lang/String;)I

    move-result v2

    .line 2238
    .local v2, cot:I
    iget-object v9, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->longUpdatingItemSet:Ljava/util/HashMap;

    aget-object v10, v5, v12

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2239
    invoke-static {}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$000()Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "BrowseGroupsActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage:  (TOKEN_QUERY_ALL_COUNTS) result:  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2245
    .end local v2           #cot:I
    .end local v5           #groupItem:[Ljava/lang/String;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_4
    iput-boolean v12, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIsFirstQueryCountNotDone:Z

    goto/16 :goto_0

    .line 2196
    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public isInUpdateCountQueue(Ljava/lang/String;I)Z
    .locals 1
    .parameter "name"
    .parameter "groupIsReadOnly"

    .prologue
    .line 2184
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->longUpdatingItemSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeIdler()V
    .locals 2

    .prologue
    .line 2083
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->idleHandler:Landroid/os/MessageQueue$IdleHandler;

    if-eqz v0, :cond_0

    .line 2084
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->idleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2086
    :cond_0
    return-void
.end method

.method public setEnable()V
    .locals 1

    .prologue
    .line 2258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->isBreak:Z

    .line 2259
    return-void
.end method

.method public declared-synchronized setEnableAndFlush()V
    .locals 3

    .prologue
    .line 2262
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BrowseGroupsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnableAndFlush  isBreak? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->isBreak:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    :cond_0
    iget-boolean v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->isBreak:Z

    if-eqz v0, :cond_1

    .line 2264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->isBreak:Z

    .line 2265
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->flushPauseCacheQuery()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2267
    :cond_1
    monitor-exit p0

    return-void

    .line 2262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPause()V
    .locals 3

    .prologue
    .line 2250
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BrowseGroupsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnableAndFlush  isBreak? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->isBreak:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    :cond_0
    iget-boolean v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->isBreak:Z

    if-nez v0, :cond_1

    .line 2252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->isBreak:Z

    .line 2253
    const/16 v0, 0x3ec

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->removeMessages(I)V

    .line 2254
    iget-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->mPauseCacheQuery:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2256
    :cond_1
    monitor-exit p0

    return-void

    .line 2250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateItem(Ljava/lang/String;ILcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;)V
    .locals 6
    .parameter "name"
    .parameter "groupIsReadOnly"
    .parameter "cache"

    .prologue
    .line 2113
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "BrowseGroupsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateItem: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   pause? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->isBreak:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    :cond_0
    iget-object v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->mActRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/BrowseGroupsActivity;

    .line 2115
    .local v0, act:Lcom/android/htccontacts/BrowseGroupsActivity;
    iget-boolean v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->isBreak:Z

    if-eqz v3, :cond_2

    .line 2116
    new-instance v2, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;

    invoke-direct {v2, p3}, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;-><init>(Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;)V

    .line 2117
    .local v2, notification:Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;
    iput-object p1, v2, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;->name:Ljava/lang/String;

    .line 2118
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;->itemRef:Ljava/lang/ref/WeakReference;

    .line 2123
    iget-object v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->mPauseCacheQuery:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2146
    .end local v2           #notification:Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 2127
    :cond_2
    :try_start_1
    iget-boolean v3, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->isQueryCountThreadReleased:Z

    if-eqz v3, :cond_3

    .line 2128
    new-instance v2, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;

    invoke-direct {v2, p3}, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;-><init>(Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;)V

    .line 2129
    .restart local v2       #notification:Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;
    iput-object p1, v2, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;->name:Ljava/lang/String;

    .line 2130
    iput p2, v2, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;->groupIsReadOnly:I

    .line 2131
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;->itemRef:Ljava/lang/ref/WeakReference;

    .line 2132
    iget-object v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->mReleaseCacheQuery:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2113
    .end local v0           #act:Lcom/android/htccontacts/BrowseGroupsActivity;
    .end local v2           #notification:Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2136
    .restart local v0       #act:Lcom/android/htccontacts/BrowseGroupsActivity;
    :cond_3
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->isInUpdateCountQueue(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2137
    invoke-static {}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "BrowseGroupsActivity"

    const-string v4, "isInUpdateCountQueue: "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2140
    :cond_4
    new-instance v2, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;

    invoke-direct {v2, p3}, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;-><init>(Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;)V

    .line 2141
    .restart local v2       #notification:Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;
    iput-object p1, v2, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;->name:Ljava/lang/String;

    .line 2142
    iput p2, v2, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;->groupIsReadOnly:I

    .line 2143
    const/16 v3, 0x3ec

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2144
    .local v1, msg:Landroid/os/Message;
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2145
    const-wide/16 v3, 0x64

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized updateTheFirstItemOneByOne(Ljava/util/HashMap;I)V
    .locals 11
    .parameter
    .parameter "counts"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2149
    .local p1, nameList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    monitor-enter p0

    const/4 v9, 0x0

    :try_start_0
    iput-boolean v9, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->isBreak:Z

    .line 2150
    iget-object v9, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->mPauseCacheQuery:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->clear()V

    .line 2151
    const/16 v9, 0x3ec

    invoke-virtual {p0, v9}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->removeMessages(I)V

    .line 2152
    const/16 v9, 0x3eb

    invoke-virtual {p0, v9}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->removeMessages(I)V

    .line 2153
    const-wide/16 v2, 0x0

    .line 2156
    .local v2, delayMills:J
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2157
    .local v1, clone:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2159
    iget-object v9, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->mActRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/BrowseGroupsActivity;

    .line 2160
    .local v0, act:Lcom/android/htccontacts/BrowseGroupsActivity;
    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mIsFirstQueryCountNotDone:Z

    .line 2164
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2166
    .local v6, key:Ljava/lang/String;
    const/16 v9, 0x3ec

    invoke-virtual {p0, v9}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 2167
    .local v7, msg:Landroid/os/Message;
    new-instance v8, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;

    invoke-direct {v8}, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;-><init>()V

    .line 2168
    .local v8, notification:Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 2169
    .local v4, groupItem:[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v4, v9

    iput-object v9, v8, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;->name:Ljava/lang/String;

    .line 2171
    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2172
    iget-object v9, p0, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->longUpdatingItemSet:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2173
    invoke-virtual {p0, v7, v2, v3}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2174
    const-wide/16 v9, 0x32

    add-long/2addr v2, v9

    .line 2175
    goto :goto_0

    .line 2177
    .end local v4           #groupItem:[Ljava/lang/String;
    .end local v6           #key:Ljava/lang/String;
    .end local v7           #msg:Landroid/os/Message;
    .end local v8           #notification:Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;
    :cond_0
    const/16 v9, 0x3f1

    invoke-virtual {p0, v9, v2, v3}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2180
    monitor-exit p0

    return-void

    .line 2149
    .end local v0           #act:Lcom/android/htccontacts/BrowseGroupsActivity;
    .end local v1           #clone:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v2           #delayMills:J
    .end local v5           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method
