.class Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;
.super Landroid/os/Handler;
.source "HtcGridView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    const/4 v11, 0x1

    iget v8, p1, Landroid/os/Message;->what:I

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4100(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Ljava/util/LinkedList;

    move-result-object v9

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPause:Z
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4200(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Z

    move-result v8

    if-ne v11, v8, :cond_1

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    const/4 v10, 0x0

    #setter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mHasSorted:Z
    invoke-static {v8, v10}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4302(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;Z)Z

    monitor-exit v9

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4100(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-lez v8, :cond_6

    new-instance v1, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfoComparator;

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v10, v10, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mCurrentPos:I
    invoke-static {v10}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4400(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)I

    move-result v10

    invoke-direct {v1, v8, v10}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfoComparator;-><init>(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;I)V

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mHasSorted:Z
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4300(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4100(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-static {v8, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    const/4 v10, 0x1

    #setter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mHasSorted:Z
    invoke-static {v8, v10}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4302(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;Z)Z

    :cond_2
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mNumRow:I
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4500(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :cond_3
    :goto_1
    if-ge v5, v6, :cond_5

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPause:Z
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4200(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_5

    const/4 v2, 0x0

    :try_start_1
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4100(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;

    move-object v2, v0

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mMinPosRange:I
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4600(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)I

    move-result v8

    iget v10, v2, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    if-gt v8, v10, :cond_4

    iget v8, v2, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v10, v10, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mMaxPosRange:I
    invoke-static {v10}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4700(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)I

    move-result v10

    if-le v8, v10, :cond_8

    :cond_4
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4100(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    move v5, v6

    :cond_5
    :goto_2
    :try_start_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_6

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPause:Z
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4200(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->cb:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;

    invoke-interface {v8, v7}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;->onDatasReady(Ljava/util/List;)V

    :cond_6
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4100(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-lez v8, :cond_7

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPause:Z
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4200(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWorkingHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4000(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Landroid/os/Handler;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWorkingHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4000(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Landroid/os/Handler;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWorkingHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4000(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Landroid/os/Handler;

    move-result-object v8

    const/4 v10, 0x0

    const-wide/16 v11, 0x64

    invoke-virtual {v8, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_7
    monitor-exit v9

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    :cond_8
    :try_start_3
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPause:Z
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4200(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Z

    move-result v8

    if-eq v11, v8, :cond_5

    iget v8, v2, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    invoke-virtual {v1, v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfoComparator;->getPriority(I)I

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, v2, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->cb:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mMinPosRange:I
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4600(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)I

    move-result v8

    iget v10, v2, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    if-gt v8, v10, :cond_9

    iget v8, v2, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v10, v10, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mMaxPosRange:I
    invoke-static {v10}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4700(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)I

    move-result v10

    if-gt v8, v10, :cond_9

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4100(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPause:Z
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4200(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Z

    move-result v8

    if-eq v11, v8, :cond_5

    iget v8, v2, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    rem-int v3, v8, v6

    if-ne v3, v5, :cond_a

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4100(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    iget-object v8, v2, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->cb:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mMinPosRange:I
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4600(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)I

    move-result v8

    iget v10, v2, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    if-gt v8, v10, :cond_3

    iget v8, v2, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v10, v10, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mMaxPosRange:I
    invoke-static {v10}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4700(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)I

    move-result v10

    if-gt v8, v10, :cond_3

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_b

    move v5, v6

    goto/16 :goto_2

    :cond_b
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4100(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    iget-object v8, v2, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->cb:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mMinPosRange:I
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4600(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)I

    move-result v8

    iget v10, v2, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    if-gt v8, v10, :cond_3

    iget v8, v2, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v10, v10, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mMaxPosRange:I
    invoke-static {v10}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4700(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)I

    move-result v10

    if-gt v8, v10, :cond_3

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v5, v3, 0x1

    goto/16 :goto_1
.end method
