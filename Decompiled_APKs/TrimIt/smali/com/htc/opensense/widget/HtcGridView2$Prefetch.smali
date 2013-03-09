.class Lcom/htc/opensense/widget/HtcGridView2$Prefetch;
.super Ljava/lang/Object;
.source "HtcGridView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/HtcGridView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Prefetch"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfoComparator;,
        Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;,
        Lcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcGridView2.Prefetch"

.field private static final MSG_FETCH_ITEM:I


# instance fields
.field private mCurrentPos:I

.field private mFetchInfoList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSorted:Z

.field private mMaxPosRange:I

.field private mMinPosRange:I

.field private mNumRow:I

.field private mPageElementsSize:I

.field private mPause:Z

.field private mWoringthread:Ljava/lang/Thread;

.field private mWorkingHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3983
    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;

    .line 3984
    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mMinPosRange:I

    .line 3985
    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mMaxPosRange:I

    .line 3986
    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPageElementsSize:I

    .line 3987
    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mCurrentPos:I

    .line 3989
    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWorkingHandler:Landroid/os/Handler;

    .line 3990
    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWoringthread:Ljava/lang/Thread;

    .line 3991
    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPause:Z

    .line 3992
    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mHasSorted:Z

    .line 3998
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;

    .line 4000
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    invoke-direct {v1, p0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;-><init>(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWoringthread:Ljava/lang/Thread;

    .line 4108
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWoringthread:Ljava/lang/Thread;

    const-string v1, "Fetch Thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 4109
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWoringthread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4110
    return-void
.end method

.method static synthetic access$3900(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3868
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPageElementsSize:I

    return v0
.end method

.method static synthetic access$4000(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3868
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWorkingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3868
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWorkingHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3868
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 3868
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPause:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 3868
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mHasSorted:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3868
    iput-boolean p1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mHasSorted:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3868
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mCurrentPos:I

    return v0
.end method

.method static synthetic access$4500(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3868
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mNumRow:I

    return v0
.end method

.method static synthetic access$4600(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3868
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mMinPosRange:I

    return v0
.end method

.method static synthetic access$4700(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3868
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mMaxPosRange:I

    return v0
.end method

.method private prefetchItem(Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 4201
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    .line 4202
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;

    monitor-enter v1

    .line 4203
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4204
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mHasSorted:Z

    .line 4206
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPause:Z

    if-nez v0, :cond_0

    .line 4207
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->fetchNextItem()V

    .line 4210
    :cond_0
    monitor-exit v1

    .line 4212
    :cond_1
    return-void

    .line 4210
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private prefetchItem([Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;)V
    .locals 6
    .parameter "infos"

    .prologue
    .line 4215
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;

    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    .line 4216
    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;

    monitor-enter v5

    .line 4217
    move-object v0, p1

    .local v0, arr$:[Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;
    :try_start_0
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 4218
    .local v2, info:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4219
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4217
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4223
    .end local v2           #info:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mHasSorted:Z

    .line 4224
    iget-boolean v4, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPause:Z

    if-nez v4, :cond_2

    .line 4225
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->fetchNextItem()V

    .line 4227
    :cond_2
    monitor-exit v5

    .line 4229
    .end local v0           #arr$:[Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;
    .end local v1           #i$:I
    .end local v3           #len$:I
    :cond_3
    return-void

    .line 4227
    .restart local v0       #arr$:[Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method


# virtual methods
.method public DeInit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4114
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->stopPrefetch()V

    .line 4116
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWoringthread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 4118
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWorkingHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4119
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWorkingHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 4120
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWoringthread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4124
    :goto_0
    iput-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWorkingHandler:Landroid/os/Handler;

    .line 4125
    iput-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWoringthread:Ljava/lang/Thread;

    .line 4127
    :cond_0
    return-void

    .line 4121
    :catch_0
    move-exception v0

    .line 4122
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public clearPrefetchQueue()V
    .locals 3

    .prologue
    .line 4154
    const/4 v0, 0x0

    .line 4155
    .local v0, doResume:Z
    iget-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPause:Z

    if-nez v1, :cond_0

    .line 4156
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->pausePrefetch()V

    .line 4157
    const/4 v0, 0x1

    .line 4159
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    .line 4160
    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;

    monitor-enter v2

    .line 4161
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 4162
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4164
    :cond_1
    if-eqz v0, :cond_2

    .line 4165
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->resumePrefetch()V

    .line 4167
    :cond_2
    return-void

    .line 4162
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public fetchNextItem()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4148
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWorkingHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWorkingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4149
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWorkingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4151
    :cond_0
    return-void
.end method

.method public pausePrefetch()V
    .locals 1

    .prologue
    .line 4139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPause:Z

    .line 4140
    return-void
.end method

.method public prefetchItem(IIILcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;)V
    .locals 6
    .parameter "pos"
    .parameter "sizex"
    .parameter "sizey"
    .parameter "cb"

    .prologue
    .line 4180
    new-instance v0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;-><init>(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;IIILcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;)V

    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->prefetchItem(Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;)V

    .line 4181
    return-void
.end method

.method public prefetchItem(Ljava/util/List;IILcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;)V
    .locals 11
    .parameter
    .parameter "sizex"
    .parameter "sizey"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;II",
            "Lcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4190
    .local p1, poss:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_1

    .line 4191
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v9, v0, [Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;

    .line 4192
    .local v9, infos:[Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;
    const/4 v6, 0x0

    .line 4193
    .local v6, i:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 4194
    .local v10, pos:Ljava/lang/Integer;
    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .local v7, i:I
    new-instance v0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;-><init>(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;IIILcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;)V

    aput-object v0, v9, v6

    move v6, v7

    .end local v7           #i:I
    .restart local v6       #i:I
    goto :goto_0

    .line 4196
    .end local v10           #pos:Ljava/lang/Integer;
    :cond_0
    invoke-direct {p0, v9}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->prefetchItem([Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;)V

    .line 4198
    .end local v6           #i:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #infos:[Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;
    :cond_1
    return-void
.end method

.method public resumePrefetch()V
    .locals 1

    .prologue
    .line 4143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPause:Z

    .line 4144
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->fetchNextItem()V

    .line 4145
    return-void
.end method

.method public startPrefetch()V
    .locals 0

    .prologue
    .line 4130
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->resumePrefetch()V

    .line 4131
    return-void
.end method

.method public stopPrefetch()V
    .locals 0

    .prologue
    .line 4134
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->pausePrefetch()V

    .line 4135
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->clearPrefetchQueue()V

    .line 4136
    return-void
.end method

.method public updatePrefetchRange(IIIII)V
    .locals 5
    .parameter "min"
    .parameter "max"
    .parameter "pos"
    .parameter "size"
    .parameter "row"

    .prologue
    const/4 v4, 0x0

    .line 4170
    const-string v0, "HtcGridView2.Prefetch"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "updatePrefetchRange() min:"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, " pos:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, " max:"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, " row:"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4171
    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mMinPosRange:I

    .line 4172
    iput p2, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mMaxPosRange:I

    .line 4173
    iput p4, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPageElementsSize:I

    .line 4174
    iput p3, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mCurrentPos:I

    .line 4175
    iput p5, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mNumRow:I

    .line 4176
    iput-boolean v4, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mHasSorted:Z

    .line 4177
    return-void
.end method
