.class Lcom/android/updater/util/IconDownloader$IconDownloadThread;
.super Ljava/lang/Thread;
.source "IconDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/util/IconDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IconDownloadThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/util/IconDownloader;


# direct methods
.method constructor <init>(Lcom/android/updater/util/IconDownloader;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/updater/util/IconDownloader$IconDownloadThread;->this$0:Lcom/android/updater/util/IconDownloader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 109
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/updater/util/IconDownloader$IconDownloadThread;->this$0:Lcom/android/updater/util/IconDownloader;

    #getter for: Lcom/android/updater/util/IconDownloader;->mIconQueue:Lcom/android/updater/util/IconDownloader$IconQueue;
    invoke-static {v5}, Lcom/android/updater/util/IconDownloader;->access$100(Lcom/android/updater/util/IconDownloader;)Lcom/android/updater/util/IconDownloader$IconQueue;

    move-result-object v5

    #getter for: Lcom/android/updater/util/IconDownloader$IconQueue;->mQueueElementStack:Ljava/util/Stack;
    invoke-static {v5}, Lcom/android/updater/util/IconDownloader$IconQueue;->access$000(Lcom/android/updater/util/IconDownloader$IconQueue;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 110
    iget-object v5, p0, Lcom/android/updater/util/IconDownloader$IconDownloadThread;->this$0:Lcom/android/updater/util/IconDownloader;

    #getter for: Lcom/android/updater/util/IconDownloader;->mIconQueue:Lcom/android/updater/util/IconDownloader$IconQueue;
    invoke-static {v5}, Lcom/android/updater/util/IconDownloader;->access$100(Lcom/android/updater/util/IconDownloader;)Lcom/android/updater/util/IconDownloader$IconQueue;

    move-result-object v5

    #getter for: Lcom/android/updater/util/IconDownloader$IconQueue;->mQueueElementStack:Ljava/util/Stack;
    invoke-static {v5}, Lcom/android/updater/util/IconDownloader$IconQueue;->access$000(Lcom/android/updater/util/IconDownloader$IconQueue;)Ljava/util/Stack;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    :try_start_1
    iget-object v5, p0, Lcom/android/updater/util/IconDownloader$IconDownloadThread;->this$0:Lcom/android/updater/util/IconDownloader;

    #getter for: Lcom/android/updater/util/IconDownloader;->mIconQueue:Lcom/android/updater/util/IconDownloader$IconQueue;
    invoke-static {v5}, Lcom/android/updater/util/IconDownloader;->access$100(Lcom/android/updater/util/IconDownloader;)Lcom/android/updater/util/IconDownloader$IconQueue;

    move-result-object v5

    #getter for: Lcom/android/updater/util/IconDownloader$IconQueue;->mQueueElementStack:Ljava/util/Stack;
    invoke-static {v5}, Lcom/android/updater/util/IconDownloader$IconQueue;->access$000(Lcom/android/updater/util/IconDownloader$IconQueue;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 112
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/updater/util/IconDownloader$IconDownloadThread;->this$0:Lcom/android/updater/util/IconDownloader;

    #getter for: Lcom/android/updater/util/IconDownloader;->mIconQueue:Lcom/android/updater/util/IconDownloader$IconQueue;
    invoke-static {v5}, Lcom/android/updater/util/IconDownloader;->access$100(Lcom/android/updater/util/IconDownloader;)Lcom/android/updater/util/IconDownloader$IconQueue;

    move-result-object v5

    #getter for: Lcom/android/updater/util/IconDownloader$IconQueue;->mQueueElementStack:Ljava/util/Stack;
    invoke-static {v5}, Lcom/android/updater/util/IconDownloader$IconQueue;->access$000(Lcom/android/updater/util/IconDownloader$IconQueue;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-eqz v5, :cond_3

    .line 115
    iget-object v5, p0, Lcom/android/updater/util/IconDownloader$IconDownloadThread;->this$0:Lcom/android/updater/util/IconDownloader;

    #getter for: Lcom/android/updater/util/IconDownloader;->mIconQueue:Lcom/android/updater/util/IconDownloader$IconQueue;
    invoke-static {v5}, Lcom/android/updater/util/IconDownloader;->access$100(Lcom/android/updater/util/IconDownloader;)Lcom/android/updater/util/IconDownloader$IconQueue;

    move-result-object v5

    #getter for: Lcom/android/updater/util/IconDownloader$IconQueue;->mQueueElementStack:Ljava/util/Stack;
    invoke-static {v5}, Lcom/android/updater/util/IconDownloader$IconQueue;->access$000(Lcom/android/updater/util/IconDownloader$IconQueue;)Ljava/util/Stack;

    move-result-object v6

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 116
    :try_start_3
    iget-object v5, p0, Lcom/android/updater/util/IconDownloader$IconDownloadThread;->this$0:Lcom/android/updater/util/IconDownloader;

    #getter for: Lcom/android/updater/util/IconDownloader;->mIconQueue:Lcom/android/updater/util/IconDownloader$IconQueue;
    invoke-static {v5}, Lcom/android/updater/util/IconDownloader;->access$100(Lcom/android/updater/util/IconDownloader;)Lcom/android/updater/util/IconDownloader$IconQueue;

    move-result-object v5

    #getter for: Lcom/android/updater/util/IconDownloader$IconQueue;->mQueueElementStack:Ljava/util/Stack;
    invoke-static {v5}, Lcom/android/updater/util/IconDownloader$IconQueue;->access$000(Lcom/android/updater/util/IconDownloader$IconQueue;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/updater/util/IconDownloader$QueueElement;

    .line 117
    .local v4, queueElement:Lcom/android/updater/util/IconDownloader$QueueElement;
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    :try_start_4
    iget-object v5, p0, Lcom/android/updater/util/IconDownloader$IconDownloadThread;->this$0:Lcom/android/updater/util/IconDownloader;

    iget-object v6, v4, Lcom/android/updater/util/IconDownloader$QueueElement;->mIconDownloadPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/updater/util/IconDownloader;->getURLBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 121
    .local v2, bmp:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_3

    .line 122
    iget-object v5, p0, Lcom/android/updater/util/IconDownloader$IconDownloadThread;->this$0:Lcom/android/updater/util/IconDownloader;

    #getter for: Lcom/android/updater/util/IconDownloader;->mIconCache:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/updater/util/IconDownloader;->access$200(Lcom/android/updater/util/IconDownloader;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, v4, Lcom/android/updater/util/IconDownloader$QueueElement;->mIconDownloadPath:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v5, v4, Lcom/android/updater/util/IconDownloader$QueueElement;->mApkIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v4, Lcom/android/updater/util/IconDownloader$QueueElement;->mIconDownloadPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 126
    new-instance v1, Lcom/android/updater/util/IconDownloader$BitmapDisplayer;

    iget-object v5, p0, Lcom/android/updater/util/IconDownloader$IconDownloadThread;->this$0:Lcom/android/updater/util/IconDownloader;

    iget-object v6, v4, Lcom/android/updater/util/IconDownloader$QueueElement;->mApkIcon:Landroid/widget/ImageView;

    invoke-direct {v1, v5, v2, v6}, Lcom/android/updater/util/IconDownloader$BitmapDisplayer;-><init>(Lcom/android/updater/util/IconDownloader;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    .line 127
    .local v1, bd:Lcom/android/updater/util/IconDownloader$BitmapDisplayer;
    iget-object v5, v4, Lcom/android/updater/util/IconDownloader$QueueElement;->mApkIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 128
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 132
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #bd:Lcom/android/updater/util/IconDownloader$BitmapDisplayer;
    :cond_2
    iget-object v5, p0, Lcom/android/updater/util/IconDownloader$IconDownloadThread;->this$0:Lcom/android/updater/util/IconDownloader;

    #calls: Lcom/android/updater/util/IconDownloader;->saveToCache(Landroid/graphics/Bitmap;)V
    invoke-static {v5, v2}, Lcom/android/updater/util/IconDownloader;->access$300(Lcom/android/updater/util/IconDownloader;Landroid/graphics/Bitmap;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 139
    .end local v2           #bmp:Landroid/graphics/Bitmap;
    .end local v4           #queueElement:Lcom/android/updater/util/IconDownloader$QueueElement;
    :cond_3
    :goto_0
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    :goto_1
    return-void

    .line 112
    :catchall_0
    move-exception v5

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v5
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 143
    :catch_0
    move-exception v3

    .line 144
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 117
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v5

    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v5
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 145
    :catch_1
    move-exception v3

    .line 146
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 135
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v4       #queueElement:Lcom/android/updater/util/IconDownloader$QueueElement;
    :catch_2
    move-exception v3

    .line 136
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_0
.end method
