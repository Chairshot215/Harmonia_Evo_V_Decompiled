.class public Lcom/android/mms/util/ViewCache;
.super Ljava/lang/Object;
.source "ViewCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/ViewCache$preload_set;,
        Lcom/android/mms/util/ViewCache$ViewObj;
    }
.end annotation


# static fields
.field public static final ANR_GAP:J = 0x5dcL

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ViewCache"

.field private static mContext:Landroid/content/Context;

.field private static mOrientation:I

.field private static sInstance:Lcom/android/mms/util/ViewCache;


# instance fields
.field private mViewCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/util/ViewCache$ViewObj;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/ViewCache;->mViewCache:Ljava/util/HashMap;

    .line 55
    sput-object p1, Lcom/android/mms/util/ViewCache;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method public static getInstance()Lcom/android/mms/util/ViewCache;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/android/mms/util/ViewCache;->sInstance:Lcom/android/mms/util/ViewCache;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/android/mms/util/ViewCache;

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/util/ViewCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/util/ViewCache;->sInstance:Lcom/android/mms/util/ViewCache;

    .line 48
    const/4 v0, -0x1

    sput v0, Lcom/android/mms/util/ViewCache;->mOrientation:I

    .line 51
    :cond_0
    sget-object v0, Lcom/android/mms/util/ViewCache;->sInstance:Lcom/android/mms/util/ViewCache;

    return-object v0
.end method


# virtual methods
.method public CreatePreload()V
    .locals 10

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x1

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 71
    .local v3, time0:J
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v0, cachelist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/util/ViewCache$preload_set;>;"
    new-instance v5, Lcom/android/mms/util/ViewCache$preload_set;

    const-class v6, Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const v7, 0x7f030002

    invoke-direct {v5, v6, v7, v8}, Lcom/android/mms/util/ViewCache$preload_set;-><init>(III)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v5, Lcom/android/mms/util/ViewCache$preload_set;

    const-class v6, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const v7, 0x7f030007

    invoke-direct {v5, v6, v7, v8}, Lcom/android/mms/util/ViewCache$preload_set;-><init>(III)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMergeLayout()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 75
    new-instance v5, Lcom/android/mms/util/ViewCache$preload_set;

    const-class v6, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const v7, 0x7f03003e

    invoke-direct {v5, v6, v7, v9}, Lcom/android/mms/util/ViewCache$preload_set;-><init>(III)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :goto_0
    new-instance v5, Lcom/android/mms/util/ViewCache$preload_set;

    const-class v6, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const v7, 0x7f030004

    invoke-direct {v5, v6, v7, v8}, Lcom/android/mms/util/ViewCache$preload_set;-><init>(III)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/util/ViewCache$preload_set;

    .line 85
    .local v2, index:Lcom/android/mms/util/ViewCache$preload_set;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v7, 0x5dc

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 90
    .end local v2           #index:Lcom/android/mms/util/ViewCache$preload_set;
    :cond_0
    return-void

    .line 77
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    new-instance v5, Lcom/android/mms/util/ViewCache$preload_set;

    const-class v6, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const v7, 0x7f03003f

    invoke-direct {v5, v6, v7, v9}, Lcom/android/mms/util/ViewCache$preload_set;-><init>(III)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v5, Lcom/android/mms/util/ViewCache$preload_set;

    const-class v6, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const v7, 0x7f03003d

    invoke-direct {v5, v6, v7, v9}, Lcom/android/mms/util/ViewCache$preload_set;-><init>(III)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #index:Lcom/android/mms/util/ViewCache$preload_set;
    :cond_2
    invoke-static {}, Lcom/android/mms/util/ViewCache;->getInstance()Lcom/android/mms/util/ViewCache;

    move-result-object v5

    iget v6, v2, Lcom/android/mms/util/ViewCache$preload_set;->mCode:I

    iget v7, v2, Lcom/android/mms/util/ViewCache$preload_set;->mLayoutId:I

    iget v8, v2, Lcom/android/mms/util/ViewCache$preload_set;->mTimes:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/mms/util/ViewCache;->preload(III)V

    goto :goto_1
.end method

.method public declared-synchronized get(Landroid/content/Context;II)Landroid/view/View;
    .locals 9
    .parameter "context"
    .parameter "code"
    .parameter "resource"

    .prologue
    .line 120
    monitor-enter p0

    const/4 v3, 0x0

    .line 122
    .local v3, view:Landroid/view/View;
    const/4 v1, 0x0

    .line 124
    .local v1, cacheObj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/android/mms/util/ViewCache$ViewObj;>;>;"
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/util/ViewCache;->mViewCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 125
    iget-object v6, p0, Lcom/android/mms/util/ViewCache;->mViewCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/HashMap;

    move-object v1, v0

    .line 126
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 127
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 128
    .local v4, viewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/util/ViewCache$ViewObj;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 129
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/util/ViewCache$ViewObj;

    .line 130
    .local v5, viewObj:Lcom/android/mms/util/ViewCache$ViewObj;
    if-eqz v5, :cond_2

    iget-boolean v6, v5, Lcom/android/mms/util/ViewCache$ViewObj;->used:Z

    if-nez v6, :cond_2

    .line 131
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/mms/util/ViewCache$ViewObj;->used:Z

    .line 132
    iget-object v3, v5, Lcom/android/mms/util/ViewCache$ViewObj;->view:Landroid/view/View;

    .line 139
    .end local v2           #i:I
    .end local v4           #viewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/util/ViewCache$ViewObj;>;"
    .end local v5           #viewObj:Lcom/android/mms/util/ViewCache$ViewObj;
    :cond_0
    if-nez v3, :cond_1

    .line 140
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, p3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 143
    :cond_1
    monitor-exit p0

    return-object v3

    .line 128
    .restart local v2       #i:I
    .restart local v4       #viewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/util/ViewCache$ViewObj;>;"
    .restart local v5       #viewObj:Lcom/android/mms/util/ViewCache$ViewObj;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    .end local v2           #i:I
    .end local v4           #viewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/util/ViewCache$ViewObj;>;"
    .end local v5           #viewObj:Lcom/android/mms/util/ViewCache$ViewObj;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized preload(III)V
    .locals 8
    .parameter "code"
    .parameter "resource"
    .parameter "count"

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportComposeMsgActivityPreload()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 117
    :goto_0
    monitor-exit p0

    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    .line 98
    .local v0, cacheObj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/android/mms/util/ViewCache$ViewObj;>;>;"
    :try_start_1
    iget-object v5, p0, Lcom/android/mms/util/ViewCache;->mViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 99
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #cacheObj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/android/mms/util/ViewCache$ViewObj;>;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    .restart local v0       #cacheObj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/android/mms/util/ViewCache$ViewObj;>;>;"
    iget-object v5, p0, Lcom/android/mms/util/ViewCache;->mViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 105
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v3, viewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/util/ViewCache$ViewObj;>;"
    sget-object v5, Lcom/android/mms/util/ViewCache;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 107
    .local v2, inflator:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, p3, :cond_2

    .line 108
    new-instance v4, Lcom/android/mms/util/ViewCache$ViewObj;

    invoke-direct {v4, p0}, Lcom/android/mms/util/ViewCache$ViewObj;-><init>(Lcom/android/mms/util/ViewCache;)V

    .line 109
    .local v4, viewObj:Lcom/android/mms/util/ViewCache$ViewObj;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, p2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/android/mms/util/ViewCache$ViewObj;->view:Landroid/view/View;

    .line 110
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/mms/util/ViewCache$ViewObj;->used:Z

    .line 111
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 102
    .end local v1           #i:I
    .end local v2           #inflator:Landroid/view/LayoutInflater;
    .end local v3           #viewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/util/ViewCache$ViewObj;>;"
    .end local v4           #viewObj:Lcom/android/mms/util/ViewCache$ViewObj;
    :cond_1
    iget-object v5, p0, Lcom/android/mms/util/ViewCache;->mViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cacheObj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/android/mms/util/ViewCache$ViewObj;>;>;"
    check-cast v0, Ljava/util/HashMap;

    .restart local v0       #cacheObj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/android/mms/util/ViewCache$ViewObj;>;>;"
    goto :goto_1

    .line 113
    .restart local v1       #i:I
    .restart local v2       #inflator:Landroid/view/LayoutInflater;
    .restart local v3       #viewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/util/ViewCache$ViewObj;>;"
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    .end local v0           #cacheObj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/android/mms/util/ViewCache$ViewObj;>;>;"
    .end local v1           #i:I
    .end local v2           #inflator:Landroid/view/LayoutInflater;
    .end local v3           #viewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/util/ViewCache$ViewObj;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 116
    .restart local v0       #cacheObj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/android/mms/util/ViewCache$ViewObj;>;>;"
    :cond_3
    :try_start_2
    const-string v5, "ViewCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "already preload resouce: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized reset(I)V
    .locals 14
    .parameter "code"

    .prologue
    .line 147
    monitor-enter p0

    const/4 v1, 0x0

    .line 148
    .local v1, cacheObj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/android/mms/util/ViewCache$ViewObj;>;>;"
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 150
    .local v6, time0:J
    iget-object v10, p0, Lcom/android/mms/util/ViewCache;->mViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 151
    iget-object v10, p0, Lcom/android/mms/util/ViewCache;->mViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/util/HashMap;

    move-object v1, v0

    .line 152
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 153
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 154
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 155
    .local v5, resource:I
    sget-object v10, Lcom/android/mms/util/ViewCache;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 156
    .local v3, inflator:Landroid/view/LayoutInflater;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 157
    .local v8, viewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/util/ViewCache$ViewObj;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_0

    .line 158
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/util/ViewCache$ViewObj;

    .line 159
    .local v9, viewObj:Lcom/android/mms/util/ViewCache$ViewObj;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v5, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    iput-object v10, v9, Lcom/android/mms/util/ViewCache$ViewObj;->view:Landroid/view/View;

    .line 160
    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/mms/util/ViewCache$ViewObj;->used:Z

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    sub-long/2addr v10, v6

    const-wide/16 v12, 0x5dc

    cmp-long v10, v10, v12

    if-lez v10, :cond_2

    .line 167
    .end local v2           #i:I
    .end local v3           #inflator:Landroid/view/LayoutInflater;
    .end local v4           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v5           #resource:I
    .end local v8           #viewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/util/ViewCache$ViewObj;>;"
    .end local v9           #viewObj:Lcom/android/mms/util/ViewCache$ViewObj;
    :cond_1
    monitor-exit p0

    return-void

    .line 157
    .restart local v2       #i:I
    .restart local v3       #inflator:Landroid/view/LayoutInflater;
    .restart local v4       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v5       #resource:I
    .restart local v8       #viewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/util/ViewCache$ViewObj;>;"
    .restart local v9       #viewObj:Lcom/android/mms/util/ViewCache$ViewObj;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    .end local v2           #i:I
    .end local v3           #inflator:Landroid/view/LayoutInflater;
    .end local v4           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v5           #resource:I
    .end local v6           #time0:J
    .end local v8           #viewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/util/ViewCache$ViewObj;>;"
    .end local v9           #viewObj:Lcom/android/mms/util/ViewCache$ViewObj;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method public declared-synchronized resetAll(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 171
    .local v0, orientation:I
    sget v1, Lcom/android/mms/util/ViewCache;->mOrientation:I

    if-ne v1, v0, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/mms/util/ViewCache;->mViewCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 174
    :cond_0
    sput v0, Lcom/android/mms/util/ViewCache;->mOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 170
    .end local v0           #orientation:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
