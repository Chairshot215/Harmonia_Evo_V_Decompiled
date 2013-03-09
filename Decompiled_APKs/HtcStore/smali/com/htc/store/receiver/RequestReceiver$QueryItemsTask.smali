.class Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;
.super Landroid/os/AsyncTask;
.source "RequestReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/receiver/RequestReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryItemsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field mBundlesToSDM:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field mContentType:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mOnlineIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mOnlineIdsFailed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mOnlineIdsToSDM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/store/receiver/RequestReceiver;


# direct methods
.method public constructor <init>(Lcom/htc/store/receiver/RequestReceiver;Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 264
    .local p3, onlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->this$0:Lcom/htc/store/receiver/RequestReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 265
    iput-object p2, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mContext:Landroid/content/Context;

    .line 266
    iput-object p3, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mOnlineIds:Ljava/util/ArrayList;

    .line 267
    iput-object p4, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mContentType:Ljava/lang/String;

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mOnlineIdsFailed:Ljava/util/ArrayList;

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mOnlineIdsToSDM:Ljava/util/ArrayList;

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mBundlesToSDM:Ljava/util/HashMap;

    .line 271
    return-void
.end method

.method private collectBundlesByDetailItemCall()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 360
    const/4 v0, 0x0

    .line 362
    .local v0, audioBundle:Landroid/os/Bundle;
    new-instance v4, Lcom/htc/store/module/rest/RestHelper;

    iget-object v7, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/htc/store/module/rest/RestHelper;-><init>(Landroid/content/Context;)V

    .line 364
    .local v4, restHelper:Lcom/htc/store/module/rest/RestHelper;
    iget-object v7, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mOnlineIds:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 365
    .local v3, onlineId:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/htc/store/util/CommonUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 366
    invoke-virtual {v4, v3}, Lcom/htc/store/module/rest/RestHelper;->getDetailItem(Ljava/lang/String;)Lcom/htc/store/module/rest/RestResult;

    move-result-object v5

    .line 367
    .local v5, result:Lcom/htc/store/module/rest/RestResult;
    iget v7, v5, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_4

    .line 368
    iget-object v7, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mContentType:Ljava/lang/String;

    const-string v8, "Alarm"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mContentType:Ljava/lang/String;

    const-string v8, "Notification"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mContentType:Ljava/lang/String;

    const-string v8, "Ringtone"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 371
    :cond_1
    iget-object v2, v5, Lcom/htc/store/module/rest/RestResult;->mResultData:Ljava/lang/Object;

    check-cast v2, Lcom/htc/store/module/vo/ItemItem;

    .line 372
    .local v2, item:Lcom/htc/store/module/vo/ItemItem;
    iget-object v7, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mContext:Landroid/content/Context;

    invoke-static {v7, v2, v10, v10}, Lcom/htc/store/util/MediaUtils;->getAudioParcelableBundle(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;IZ)Landroid/os/Bundle;

    move-result-object v0

    .line 373
    if-eqz v0, :cond_0

    .line 374
    iget-object v7, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mOnlineIdsToSDM:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object v7, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mBundlesToSDM:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    invoke-static {}, Lcom/htc/store/receiver/RequestReceiver;->access$000()Ljava/lang/String;

    move-result-object v7

    new-array v8, v12, [Ljava/lang/Object;

    const-string v9, "add bundle for "

    aput-object v9, v8, v10

    invoke-virtual {v2}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    iget-object v7, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mOnlineIdsFailed:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 379
    .end local v2           #item:Lcom/htc/store/module/vo/ItemItem;
    :cond_2
    iget-object v7, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mContentType:Ljava/lang/String;

    const-string v8, "Soundset"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 380
    iget-object v6, v5, Lcom/htc/store/module/rest/RestResult;->mResultData:Ljava/lang/Object;

    check-cast v6, Lcom/htc/store/module/vo/SoundsetItem;

    .line 381
    .local v6, soundsetItem:Lcom/htc/store/module/vo/SoundsetItem;
    iget-object v7, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mContext:Landroid/content/Context;

    invoke-static {v7, v6, v10}, Lcom/htc/store/util/MediaUtils;->getSoundsetParcelableBundle(Landroid/content/Context;Lcom/htc/store/module/vo/SoundsetItem;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 382
    if-eqz v0, :cond_0

    .line 383
    iget-object v7, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mOnlineIdsToSDM:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/htc/store/module/vo/SoundsetItem;->getOnlineId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v7, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mBundlesToSDM:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/htc/store/module/vo/SoundsetItem;->getOnlineId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-static {}, Lcom/htc/store/receiver/RequestReceiver;->access$000()Ljava/lang/String;

    move-result-object v7

    new-array v8, v12, [Ljava/lang/Object;

    const-string v9, "add bundle for "

    aput-object v9, v8, v10

    invoke-virtual {v6}, Lcom/htc/store/module/vo/SoundsetItem;->getOnlineId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    iget-object v7, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mOnlineIdsFailed:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 389
    .end local v6           #soundsetItem:Lcom/htc/store/module/vo/SoundsetItem;
    :cond_3
    invoke-static {}, Lcom/htc/store/receiver/RequestReceiver;->access$000()Ljava/lang/String;

    move-result-object v7

    new-array v8, v12, [Ljava/lang/Object;

    const-string v9, "unknow type "

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mContentType:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 392
    :cond_4
    invoke-static {}, Lcom/htc/store/receiver/RequestReceiver;->access$000()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "query "

    aput-object v9, v8, v10

    aput-object v3, v8, v11

    const-string v9, " failed"

    aput-object v9, v8, v12

    invoke-static {v7, v8}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 395
    .end local v5           #result:Lcom/htc/store/module/rest/RestResult;
    :cond_5
    invoke-static {}, Lcom/htc/store/receiver/RequestReceiver;->access$000()Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    const-string v9, "give up due to network issue"

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    .end local v3           #onlineId:Ljava/lang/String;
    :cond_6
    invoke-virtual {v4}, Lcom/htc/store/module/rest/RestHelper;->destroy()V

    .line 400
    return-void
.end method

.method private collectBundlesByQueryDatabase()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 318
    new-instance v0, Lcom/htc/store/provider/AccessHelper;

    iget-object v6, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    .line 320
    .local v0, accessHelper:Lcom/htc/store/provider/AccessHelper;
    iget-object v6, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mOnlineIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 321
    .local v4, onlineId:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 322
    iget-object v6, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mContentType:Ljava/lang/String;

    const-string v7, "Alarm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mContentType:Ljava/lang/String;

    const-string v7, "Notification"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mContentType:Ljava/lang/String;

    const-string v7, "Ringtone"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 325
    :cond_1
    invoke-virtual {v0, v4}, Lcom/htc/store/provider/AccessHelper;->getItem(Ljava/lang/String;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v3

    .line 326
    .local v3, item:Lcom/htc/store/module/vo/ItemItem;
    if-eqz v3, :cond_0

    .line 327
    iget-object v6, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mContext:Landroid/content/Context;

    invoke-static {v6, v3, v9, v9}, Lcom/htc/store/util/MediaUtils;->getAudioParcelableBundle(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;IZ)Landroid/os/Bundle;

    move-result-object v1

    .line 328
    .local v1, audioBundle:Landroid/os/Bundle;
    if-nez v1, :cond_2

    invoke-virtual {v3}, Lcom/htc/store/module/vo/ItemItem;->getOnlineGenres()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 329
    :cond_2
    iget-object v6, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mOnlineIdsToSDM:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v6, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mBundlesToSDM:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-static {}, Lcom/htc/store/receiver/RequestReceiver;->access$000()Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    const-string v8, "add bundle for "

    aput-object v8, v7, v9

    invoke-virtual {v3}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    iget-object v6, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mOnlineIdsFailed:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 335
    .end local v1           #audioBundle:Landroid/os/Bundle;
    .end local v3           #item:Lcom/htc/store/module/vo/ItemItem;
    :cond_3
    iget-object v6, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mContentType:Ljava/lang/String;

    const-string v7, "Soundset"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 336
    invoke-virtual {v0, v4}, Lcom/htc/store/provider/AccessHelper;->getSoundsetItemByOnlineId(Ljava/lang/String;)Lcom/htc/store/module/vo/SoundsetItem;

    move-result-object v5

    .line 337
    .local v5, soundsetItem:Lcom/htc/store/module/vo/SoundsetItem;
    if-eqz v5, :cond_0

    .line 338
    iget-object v6, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mContext:Landroid/content/Context;

    invoke-static {v6, v5, v9}, Lcom/htc/store/util/MediaUtils;->getSoundsetParcelableBundle(Landroid/content/Context;Lcom/htc/store/module/vo/SoundsetItem;Z)Landroid/os/Bundle;

    move-result-object v1

    .line 339
    .restart local v1       #audioBundle:Landroid/os/Bundle;
    if-nez v1, :cond_4

    invoke-virtual {v5}, Lcom/htc/store/module/vo/SoundsetItem;->getOnlineGenres()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 340
    :cond_4
    iget-object v6, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mOnlineIdsToSDM:Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/htc/store/module/vo/SoundsetItem;->getOnlineId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v6, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mBundlesToSDM:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/htc/store/module/vo/SoundsetItem;->getOnlineId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-static {}, Lcom/htc/store/receiver/RequestReceiver;->access$000()Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    const-string v8, "add bundle for "

    aput-object v8, v7, v9

    invoke-virtual {v5}, Lcom/htc/store/module/vo/SoundsetItem;->getOnlineId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    iget-object v6, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mOnlineIdsFailed:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 347
    .end local v1           #audioBundle:Landroid/os/Bundle;
    .end local v5           #soundsetItem:Lcom/htc/store/module/vo/SoundsetItem;
    :cond_5
    invoke-static {}, Lcom/htc/store/receiver/RequestReceiver;->access$000()Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    const-string v8, "unknow type "

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mContentType:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 350
    :cond_6
    invoke-static {}, Lcom/htc/store/receiver/RequestReceiver;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "empty online id"

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 353
    .end local v4           #onlineId:Ljava/lang/String;
    :cond_7
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "params"

    .prologue
    .line 275
    invoke-static {}, Lcom/htc/store/receiver/RequestReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "QueryItemsTask:doInBackground"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    iget-object v1, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mOnlineIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 278
    iget-object v1, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/store/util/CommonUtils;->isLocaleChanged(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mOnlineIdsFailed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 282
    iget-object v1, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mOnlineIdsFailed:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mOnlineIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 283
    invoke-direct {p0}, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->collectBundlesByQueryDatabase()V

    .line 284
    iget-object v1, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mOnlineIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 285
    iget-object v1, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mOnlineIds:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mOnlineIdsFailed:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 288
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 289
    iget-object v1, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mOnlineIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mOnlineIdsFailed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 291
    iget-object v1, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mOnlineIdsFailed:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mOnlineIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 292
    invoke-direct {p0}, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->collectBundlesByDetailItemCall()V

    .line 293
    iget-object v1, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mOnlineIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 294
    iget-object v1, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mOnlineIds:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mOnlineIdsFailed:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 288
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    .end local v0           #i:I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 7
    .parameter "result"

    .prologue
    .line 303
    invoke-static {}, Lcom/htc/store/receiver/RequestReceiver;->access$000()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "QueryItemsTask:onPostExecute"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 305
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.htc.store.action.GET_ONLINE_ITEMS_RESULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const-string v3, "online_item_ids"

    iget-object v4, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mOnlineIdsToSDM:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 307
    const-string v3, "online_item_content_type"

    iget-object v4, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    iget-object v3, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mOnlineIdsToSDM:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 309
    .local v2, onlineId:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mBundlesToSDM:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0

    .line 312
    .end local v2           #onlineId:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 314
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->mContext:Landroid/content/Context;

    .line 315
    return-void
.end method
