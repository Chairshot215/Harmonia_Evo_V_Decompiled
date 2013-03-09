.class final Lcom/google/android/talk/PictureCache$1;
.super Ljava/lang/Object;
.source "PictureCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/PictureCache;->startQueryThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 183
    const/16 v9, 0xa

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 185
    :cond_0
    :goto_0
    invoke-static {}, Lcom/google/android/talk/PictureCache;->access$000()Z

    move-result v9

    if-nez v9, :cond_a

    .line 186
    const/4 v8, 0x0

    .line 187
    .local v8, workItem:Lcom/google/android/talk/PictureCache$WorkItem;
    invoke-static {}, Lcom/google/android/talk/PictureCache;->access$100()Ljava/util/ArrayList;

    move-result-object v10

    monitor-enter v10

    .line 188
    :try_start_0
    invoke-static {}, Lcom/google/android/talk/PictureCache;->access$100()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 189
    invoke-static {}, Lcom/google/android/talk/PictureCache;->access$100()Ljava/util/ArrayList;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/google/android/talk/PictureCache$WorkItem;

    move-object v8, v0

    .line 196
    :goto_1
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    if-eqz v8, :cond_0

    .line 202
    const/4 v2, 0x0

    .line 203
    .local v2, cacheItem:Lcom/google/android/talk/PictureCache$PictureData;
    iget-object v9, v8, Lcom/google/android/talk/PictureCache$WorkItem;->mUrl:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 204
    .local v7, uri:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, host:Ljava/lang/String;
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 206
    .local v6, scheme:Ljava/lang/String;
    const-string v9, "http"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "https"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 207
    :cond_1
    const-string v9, "www.flickr.com"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 211
    iget-object v9, v8, Lcom/google/android/talk/PictureCache$WorkItem;->mUrl:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/talk/PictureCache;->access$200()I

    move-result v10

    invoke-static {}, Lcom/google/android/talk/PictureCache;->access$300()I

    move-result v11

    #calls: Lcom/google/android/talk/PictureCache;->getFlickrPicture(Ljava/lang/String;II)Lcom/google/android/talk/PictureCache$PictureData;
    invoke-static {v9, v10, v11}, Lcom/google/android/talk/PictureCache;->access$400(Ljava/lang/String;II)Lcom/google/android/talk/PictureCache$PictureData;

    move-result-object v2

    .line 249
    :cond_2
    :goto_2
    if-nez v2, :cond_9

    .line 250
    new-instance v2, Lcom/google/android/talk/PictureCache$PictureData;

    .end local v2           #cacheItem:Lcom/google/android/talk/PictureCache$PictureData;
    iget-object v9, v8, Lcom/google/android/talk/PictureCache$WorkItem;->mUrl:Ljava/lang/String;

    invoke-direct {v2, v9}, Lcom/google/android/talk/PictureCache$PictureData;-><init>(Ljava/lang/String;)V

    .line 251
    .restart local v2       #cacheItem:Lcom/google/android/talk/PictureCache$PictureData;
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/google/android/talk/PictureCache$PictureData;->setDrawable(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 255
    :cond_3
    :goto_3
    iget-object v9, v8, Lcom/google/android/talk/PictureCache$WorkItem;->mCache:Lcom/google/android/talk/PictureCache$BitmapCache;

    invoke-virtual {v9, v2}, Lcom/google/android/talk/PictureCache$BitmapCache;->add(Lcom/google/android/talk/PictureCache$PictureData;)V

    .line 257
    invoke-static {}, Lcom/google/android/talk/PictureCache;->access$100()Ljava/util/ArrayList;

    move-result-object v10

    monitor-enter v10

    .line 258
    :try_start_1
    invoke-static {}, Lcom/google/android/talk/PictureCache;->access$100()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 259
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 265
    invoke-virtual {v2}, Lcom/google/android/talk/PictureCache$PictureData;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 266
    iget-object v5, v8, Lcom/google/android/talk/PictureCache$WorkItem;->mPictureLoadedMessage:Landroid/os/Message;

    .line 267
    .local v5, message:Landroid/os/Message;
    if-eqz v5, :cond_0

    .line 268
    iget-object v4, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    .line 269
    .local v4, map:Ljava/util/HashMap;
    const-string v9, "bitmap"

    invoke-virtual {v2}, Lcom/google/android/talk/PictureCache$PictureData;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 192
    .end local v2           #cacheItem:Lcom/google/android/talk/PictureCache$PictureData;
    .end local v3           #host:Ljava/lang/String;
    .end local v4           #map:Ljava/util/HashMap;
    .end local v5           #message:Landroid/os/Message;
    .end local v6           #scheme:Ljava/lang/String;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/google/android/talk/PictureCache;->access$100()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 193
    :catch_0
    move-exception v9

    goto :goto_1

    .line 196
    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v9

    .line 212
    .restart local v2       #cacheItem:Lcom/google/android/talk/PictureCache$PictureData;
    .restart local v3       #host:Ljava/lang/String;
    .restart local v6       #scheme:Ljava/lang/String;
    .restart local v7       #uri:Landroid/net/Uri;
    :cond_5
    const-string v9, "picasaweb.google.com"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 216
    iget-object v9, v8, Lcom/google/android/talk/PictureCache$WorkItem;->mUrl:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/talk/PictureCache;->access$200()I

    move-result v10

    invoke-static {}, Lcom/google/android/talk/PictureCache;->access$300()I

    move-result v11

    #calls: Lcom/google/android/talk/PictureCache;->getPicasaPicture(Ljava/lang/String;II)Lcom/google/android/talk/PictureCache$PictureData;
    invoke-static {v9, v10, v11}, Lcom/google/android/talk/PictureCache;->access$500(Ljava/lang/String;II)Lcom/google/android/talk/PictureCache$PictureData;

    move-result-object v2

    goto :goto_2

    .line 217
    :cond_6
    const-string v9, "picasaweb.google.com"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 221
    const-string v9, "www.youtube.com"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 225
    iget-object v9, v8, Lcom/google/android/talk/PictureCache$WorkItem;->mUrl:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/talk/PictureCache;->access$200()I

    move-result v10

    invoke-static {}, Lcom/google/android/talk/PictureCache;->access$300()I

    move-result v11

    #calls: Lcom/google/android/talk/PictureCache;->getYouTubeThumbnail(Ljava/lang/String;II)Lcom/google/android/talk/PictureCache$PictureData;
    invoke-static {v9, v10, v11}, Lcom/google/android/talk/PictureCache;->access$600(Ljava/lang/String;II)Lcom/google/android/talk/PictureCache$PictureData;

    move-result-object v2

    goto :goto_2

    .line 226
    :cond_7
    iget-object v9, v8, Lcom/google/android/talk/PictureCache$WorkItem;->mUrl:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, v8, Lcom/google/android/talk/PictureCache$WorkItem;->mUrl:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".gif"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 231
    :cond_8
    iget-object v9, v8, Lcom/google/android/talk/PictureCache$WorkItem;->mUrl:Ljava/lang/String;

    #calls: Lcom/google/android/talk/PictureCache;->getJpgPicture(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v9}, Lcom/google/android/talk/PictureCache;->access$700(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 232
    .local v1, bm:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 233
    new-instance v2, Lcom/google/android/talk/PictureCache$PictureData;

    .end local v2           #cacheItem:Lcom/google/android/talk/PictureCache$PictureData;
    iget-object v9, v8, Lcom/google/android/talk/PictureCache$WorkItem;->mUrl:Ljava/lang/String;

    invoke-direct {v2, v9}, Lcom/google/android/talk/PictureCache$PictureData;-><init>(Ljava/lang/String;)V

    .line 234
    .restart local v2       #cacheItem:Lcom/google/android/talk/PictureCache$PictureData;
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v9}, Lcom/google/android/talk/PictureCache$PictureData;->setDrawable(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 235
    invoke-virtual {v2, v12}, Lcom/google/android/talk/PictureCache$PictureData;->setType(I)V

    goto/16 :goto_2

    .line 252
    .end local v1           #bm:Landroid/graphics/Bitmap;
    :cond_9
    invoke-virtual {v2}, Lcom/google/android/talk/PictureCache$PictureData;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 253
    invoke-virtual {v2, v12}, Lcom/google/android/talk/PictureCache$PictureData;->setIsSourceBitmap(Z)V

    goto/16 :goto_3

    .line 259
    :catchall_1
    move-exception v9

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v9

    .line 288
    .end local v2           #cacheItem:Lcom/google/android/talk/PictureCache$PictureData;
    .end local v3           #host:Ljava/lang/String;
    .end local v6           #scheme:Ljava/lang/String;
    .end local v7           #uri:Landroid/net/Uri;
    .end local v8           #workItem:Lcom/google/android/talk/PictureCache$WorkItem;
    :cond_a
    return-void
.end method
