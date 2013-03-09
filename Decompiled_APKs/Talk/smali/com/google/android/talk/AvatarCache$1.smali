.class final Lcom/google/android/talk/AvatarCache$1;
.super Ljava/lang/Object;
.source "AvatarCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AvatarCache;->startQueryThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 154
    const/16 v7, 0xa

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 156
    :cond_0
    :goto_0
    invoke-static {}, Lcom/google/android/talk/AvatarCache;->access$000()Z

    move-result v7

    if-nez v7, :cond_3

    .line 157
    const/4 v6, 0x0

    .line 158
    .local v6, workItem:Lcom/google/android/talk/AvatarCache$WorkItem;
    invoke-static {}, Lcom/google/android/talk/AvatarCache;->access$100()Ljava/util/ArrayList;

    move-result-object v8

    monitor-enter v8

    .line 159
    :try_start_0
    invoke-static {}, Lcom/google/android/talk/AvatarCache;->access$100()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 160
    invoke-static {}, Lcom/google/android/talk/AvatarCache;->access$100()Ljava/util/ArrayList;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/google/android/talk/AvatarCache$WorkItem;

    move-object v6, v0

    .line 167
    :goto_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    if-eqz v6, :cond_0

    .line 170
    iget-object v7, v6, Lcom/google/android/talk/AvatarCache$WorkItem;->mAvatarData:[B

    invoke-static {v7}, Lcom/google/android/talk/DatabaseUtils;->decodeAvatar([B)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 172
    .local v1, b:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 173
    const/4 v3, 0x1

    .line 177
    .local v3, isSource:Z
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 178
    .local v2, d:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v7, v6, Lcom/google/android/talk/AvatarCache$WorkItem;->mCache:Lcom/google/android/talk/AvatarCache$BitmapCache;

    iget-object v8, v6, Lcom/google/android/talk/AvatarCache$WorkItem;->mUsername:Ljava/lang/String;

    iget-object v9, v6, Lcom/google/android/talk/AvatarCache$WorkItem;->mAvatarHash:Ljava/lang/String;

    invoke-virtual {v7, v8, v2, v9, v3}, Lcom/google/android/talk/AvatarCache$BitmapCache;->add(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Z)V

    .line 182
    .end local v2           #d:Landroid/graphics/drawable/BitmapDrawable;
    .end local v3           #isSource:Z
    :cond_1
    invoke-static {}, Lcom/google/android/talk/AvatarCache;->access$100()Ljava/util/ArrayList;

    move-result-object v8

    monitor-enter v8

    .line 183
    :try_start_1
    invoke-static {}, Lcom/google/android/talk/AvatarCache;->access$100()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 184
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 186
    iget-object v5, v6, Lcom/google/android/talk/AvatarCache$WorkItem;->mAvatarLoadedMessage:Landroid/os/Message;

    .line 187
    .local v5, message:Landroid/os/Message;
    if-eqz v5, :cond_0

    .line 188
    iget-object v4, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    .line 189
    .local v4, map:Ljava/util/HashMap;
    const-string v7, "bitmap"

    invoke-virtual {v4, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 163
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v4           #map:Ljava/util/HashMap;
    .end local v5           #message:Landroid/os/Message;
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/google/android/talk/AvatarCache;->access$100()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 164
    :catch_0
    move-exception v7

    goto :goto_1

    .line 167
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 184
    .restart local v1       #b:Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v7

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7

    .line 196
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v6           #workItem:Lcom/google/android/talk/AvatarCache$WorkItem;
    :cond_3
    return-void
.end method
