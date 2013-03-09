.class Lcom/android/providers/media/MediaProvider$4;
.super Landroid/os/Handler;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/MediaProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 901
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 904
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 905
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1300(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;

    move-result-object v6

    monitor-enter v6

    .line 906
    :try_start_0
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1300(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/providers/media/MediaThumbRequest;

    #setter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v7, v5}, Lcom/android/providers/media/MediaProvider;->access$1402(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaThumbRequest;)Lcom/android/providers/media/MediaThumbRequest;

    .line 907
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 908
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1400(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v5

    if-nez v5, :cond_1

    .line 909
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$900()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Have message but no request?"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_0
    :goto_0
    return-void

    .line 907
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 913
    :cond_1
    :try_start_2
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1400(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v5

    iget-object v5, v5, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 914
    .local v4, origFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 915
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1400(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/providers/media/MediaThumbRequest;->execute()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    .line 940
    :goto_1
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1400(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v6

    monitor-enter v6

    .line 941
    :try_start_3
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1400(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v5

    sget-object v7, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v7, v5, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 942
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1400(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 943
    monitor-exit v6

    goto :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 918
    :cond_2
    :try_start_4
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1300(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;

    move-result-object v6

    monitor-enter v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2

    .line 920
    :try_start_5
    monitor-exit v6

    goto :goto_1

    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_2

    .line 922
    .end local v4           #origFile:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 923
    .local v3, ex:Ljava/io/IOException;
    :try_start_7
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$900()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 940
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1400(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v6

    monitor-enter v6

    .line 941
    :try_start_8
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1400(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v5

    sget-object v7, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v7, v5, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 942
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1400(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 943
    monitor-exit v6

    goto :goto_0

    :catchall_3
    move-exception v5

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v5

    .line 924
    .end local v3           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 927
    .local v3, ex:Ljava/lang/UnsupportedOperationException;
    :try_start_9
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$900()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 940
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1400(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v6

    monitor-enter v6

    .line 941
    :try_start_a
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1400(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v5

    sget-object v7, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v7, v5, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 942
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1400(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 943
    monitor-exit v6

    goto/16 :goto_0

    :catchall_4
    move-exception v5

    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v5

    .line 928
    .end local v3           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v2

    .line 938
    .local v2, err:Ljava/lang/OutOfMemoryError;
    :try_start_b
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$900()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 940
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1400(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v6

    monitor-enter v6

    .line 941
    :try_start_c
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1400(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v5

    sget-object v7, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v7, v5, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 942
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1400(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 943
    monitor-exit v6

    goto/16 :goto_0

    :catchall_5
    move-exception v5

    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v5

    .line 940
    .end local v2           #err:Ljava/lang/OutOfMemoryError;
    :catchall_6
    move-exception v5

    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$1400(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v6

    monitor-enter v6

    .line 941
    :try_start_d
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$1400(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    sget-object v8, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v8, v7, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 942
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$1400(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 943
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    throw v5

    :catchall_7
    move-exception v5

    :try_start_e
    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    throw v5

    .line 946
    :cond_3
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 948
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1500(Lcom/android/providers/media/MediaProvider;)Ljava/util/Stack;

    move-result-object v6

    monitor-enter v6

    .line 949
    :try_start_f
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1500(Lcom/android/providers/media/MediaProvider;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$ThumbData;

    .line 950
    .local v0, d:Lcom/android/providers/media/MediaProvider$ThumbData;
    monitor-exit v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 952
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #calls: Lcom/android/providers/media/MediaProvider;->makeThumbInternal(Lcom/android/providers/media/MediaProvider$ThumbData;)Landroid/os/ParcelFileDescriptor;
    invoke-static {v5, v0}, Lcom/android/providers/media/MediaProvider;->access$1600(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$ThumbData;)Landroid/os/ParcelFileDescriptor;

    .line 953
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1700(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashSet;

    move-result-object v6

    monitor-enter v6

    .line 954
    :try_start_10
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1700(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashSet;

    move-result-object v5

    iget-object v7, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->path:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 955
    monitor-exit v6

    goto/16 :goto_0

    :catchall_8
    move-exception v5

    monitor-exit v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    throw v5

    .line 950
    .end local v0           #d:Lcom/android/providers/media/MediaProvider$ThumbData;
    :catchall_9
    move-exception v5

    :try_start_11
    monitor-exit v6
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    throw v5

    .line 959
    :cond_4
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 960
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mWorkerLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1800(Lcom/android/providers/media/MediaProvider;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 962
    :try_start_12
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$900()Ljava/lang/String;

    move-result-object v5

    const-string v7, "lock thumbnail worker"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mWorkerLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1800(Lcom/android/providers/media/MediaProvider;)Ljava/lang/Object;

    move-result-object v5

    const-wide/32 v7, 0x493e0

    invoke-virtual {v5, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 964
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$900()Ljava/lang/String;

    move-result-object v5

    const-string v7, "un-lock thumbnail worker"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_3

    .line 969
    :goto_2
    :try_start_13
    monitor-exit v6

    goto/16 :goto_0

    :catchall_a
    move-exception v5

    monitor-exit v6
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    throw v5

    .line 966
    :catch_3
    move-exception v1

    .line 967
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_14
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$900()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "thumbnial worker "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    goto :goto_2
.end method
