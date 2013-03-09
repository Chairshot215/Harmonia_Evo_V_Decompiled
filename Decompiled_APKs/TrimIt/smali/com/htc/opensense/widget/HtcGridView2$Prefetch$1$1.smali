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
    .parameter

    .prologue
    .line 4003
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v11, 0x1

    .line 4005
    iget v8, p1, Landroid/os/Message;->what:I

    if-nez v8, :cond_0

    .line 4006
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4100(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Ljava/util/LinkedList;

    move-result-object v9

    monitor-enter v9

    .line 4007
    :try_start_0
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPause:Z
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4200(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Z

    move-result v8

    if-ne v11, v8, :cond_1

    .line 4008
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    const/4 v10, 0x0

    #setter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mHasSorted:Z
    invoke-static {v8, v10}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4302(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;Z)Z

    .line 4009
    monitor-exit v9

    .line 4103
    :cond_0
    :goto_0
    return-void

    .line 4012
    :cond_1
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4100(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 4013
    new-instance v1, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfoComparator;

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v10, v10, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mCurrentPos:I
    invoke-static {v10}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4400(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)I

    move-result v10

    invoke-direct {v1, v8, v10}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfoComparator;-><init>(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;I)V

    .line 4014
    .local v1, cmptor:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfoComparator;
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mHasSorted:Z
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4300(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 4015
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4100(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-static {v8, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4016
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    const/4 v10, 0x1

    #setter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mHasSorted:Z
    invoke-static {v8, v10}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4302(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;Z)Z

    .line 4019
    :cond_2
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mNumRow:I
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4500(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)I

    move-result v6

    .line 4020
    .local v6, numReady:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 4022
    .local v7, totalInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;>;"
    const/4 v5, 0x0

    .line 4023
    .local v5, item:I
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

    .line 4026
    const/4 v2, 0x0

    .line 4029
    .local v2, currInfo:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;
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

    .line 4031
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

    .line 4033
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

    .line 4036
    :catch_0
    move-exception v4

    .line 4037
    .local v4, e:Ljava/lang/Exception;
    move v5, v6

    .line 4088
    .end local v2           #currInfo:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;
    .end local v4           #e:Ljava/lang/Exception;
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

    .line 4092
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->cb:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;

    invoke-interface {v8, v7}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;->onDatasReady(Ljava/util/List;)V

    .line 4096
    .end local v1           #cmptor:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfoComparator;
    .end local v5           #item:I
    .end local v6           #numReady:I
    .end local v7           #totalInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;>;"
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

    .line 4097
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

    .line 4098
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWorkingHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4000(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Landroid/os/Handler;

    move-result-object v8

    const/4 v10, 0x0

    const-wide/16 v11, 0x64

    invoke-virtual {v8, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4101
    :cond_7
    monitor-exit v9

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 4042
    .restart local v1       #cmptor:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfoComparator;
    .restart local v2       #currInfo:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;
    .restart local v5       #item:I
    .restart local v6       #numReady:I
    .restart local v7       #totalInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;>;"
    :cond_8
    :try_start_3
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPause:Z
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4200(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Z

    move-result v8

    if-eq v11, v8, :cond_5

    .line 4046
    iget v8, v2, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    invoke-virtual {v1, v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfoComparator;->getPriority(I)I

    move-result v8

    if-nez v8, :cond_9

    .line 4047
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

    .line 4050
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4100(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 4051
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 4057
    :cond_9
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPause:Z
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4200(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Z

    move-result v8

    if-eq v11, v8, :cond_5

    .line 4061
    iget v8, v2, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    rem-int v3, v8, v6

    .line 4063
    .local v3, current:I
    if-ne v3, v5, :cond_a

    .line 4064
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4100(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 4065
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

    .line 4067
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4070
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 4073
    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_b

    .line 4074
    move v5, v6

    .line 4075
    goto/16 :goto_2

    .line 4078
    :cond_b
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    iget-object v8, v8, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4100(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 4079
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

    .line 4081
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4084
    add-int/lit8 v5, v3, 0x1

    goto/16 :goto_1
.end method
