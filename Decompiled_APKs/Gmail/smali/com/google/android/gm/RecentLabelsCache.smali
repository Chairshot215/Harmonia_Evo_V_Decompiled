.class public Lcom/google/android/gm/RecentLabelsCache;
.super Ljava/lang/Object;
.source "RecentLabelsCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;,
        Lcom/google/android/gm/RecentLabelsCache$SaveTask;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/google/android/gm/RecentLabelsCache;


# instance fields
.field private mAccount:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDefaultRecentLabels:[Ljava/lang/String;

.field private final mDisplayComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/gm/provider/Label;",
            ">;"
        }
    .end annotation
.end field

.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateLists:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/RecentLabelsCache;->mUpdateLists:Ljava/util/Set;

    .line 48
    iput-object p1, p0, Lcom/google/android/gm/RecentLabelsCache;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/RecentLabelsCache;->mMap:Ljava/util/Map;

    .line 50
    new-instance v0, Lcom/google/android/gm/RecentLabelsCache$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/RecentLabelsCache$1;-><init>(Lcom/google/android/gm/RecentLabelsCache;)V

    iput-object v0, p0, Lcom/google/android/gm/RecentLabelsCache;->mDisplayComparator:Ljava/util/Comparator;

    .line 56
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gm/RecentLabelsCache;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gm/RecentLabelsCache;->mUpdateLists:Ljava/util/Set;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/android/gm/RecentLabelsCache;
    .locals 3
    .parameter "context"

    .prologue
    .line 59
    const-class v1, Lcom/google/android/gm/RecentLabelsCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gm/RecentLabelsCache;->sInstance:Lcom/google/android/gm/RecentLabelsCache;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/google/android/gm/RecentLabelsCache;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gm/RecentLabelsCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gm/RecentLabelsCache;->sInstance:Lcom/google/android/gm/RecentLabelsCache;

    .line 62
    :cond_0
    sget-object v0, Lcom/google/android/gm/RecentLabelsCache;->sInstance:Lcom/google/android/gm/RecentLabelsCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSortedRecentCanonicalNames(Lcom/google/android/gm/provider/LabelList;)Ljava/util/List;
    .locals 6
    .parameter "ll"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/provider/LabelList;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 190
    .local v4, orderedLabelList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/provider/Label;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gm/provider/LabelList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 191
    invoke-virtual {p1, v0}, Lcom/google/android/gm/provider/LabelList;->get(I)Lcom/google/android/gm/provider/Label;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_0
    new-instance v5, Lcom/google/android/gm/RecentLabelsCache$3;

    invoke-direct {v5, p0}, Lcom/google/android/gm/RecentLabelsCache$3;-><init>(Lcom/google/android/gm/RecentLabelsCache;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 202
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 203
    .local v3, orderedCanonicalNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/provider/Label;

    .line 204
    .local v2, l:Lcom/google/android/gm/provider/Label;
    invoke-virtual {v2}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 206
    .end local v2           #l:Lcom/google/android/gm/provider/Label;
    :cond_1
    return-object v3
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/gm/RecentLabelsCache;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 179
    return-void
.end method

.method public getRecentLabelDisplayComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/gm/provider/Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/gm/RecentLabelsCache;->mDisplayComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getRecentLabelNames(Ljava/lang/String;ILcom/google/android/gm/UiHandler;)Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;
    .locals 1
    .parameter "account"
    .parameter "numLabels"
    .parameter "defaultTouchHandler"

    .prologue
    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gm/RecentLabelsCache;->getRecentLabelNames(Ljava/lang/String;ILcom/google/android/gm/UiHandler;Z)Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;

    move-result-object v0

    return-object v0
.end method

.method getRecentLabelNames(Ljava/lang/String;ILcom/google/android/gm/UiHandler;Z)Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;
    .locals 9
    .parameter "account"
    .parameter "numLabels"
    .parameter "defaultTouchHandler"
    .parameter "useDefaults"

    .prologue
    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/RecentLabelsCache;->getRecentLabels(Ljava/lang/String;I)Lcom/google/android/gm/provider/LabelList;

    move-result-object v5

    .line 91
    .local v5, ll:Lcom/google/android/gm/provider/LabelList;
    invoke-direct {p0, v5}, Lcom/google/android/gm/RecentLabelsCache;->getSortedRecentCanonicalNames(Lcom/google/android/gm/provider/LabelList;)Ljava/util/List;

    move-result-object v6

    .line 93
    .local v6, orderedCanonicalNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p4, :cond_2

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 94
    iget-object v7, p0, Lcom/google/android/gm/RecentLabelsCache;->mDefaultRecentLabels:[Ljava/lang/String;

    if-nez v7, :cond_0

    .line 95
    iget-object v7, p0, Lcom/google/android/gm/RecentLabelsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0005

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/gm/RecentLabelsCache;->mDefaultRecentLabels:[Ljava/lang/String;

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/RecentLabelsCache;->mDefaultRecentLabels:[Ljava/lang/String;

    .line 99
    .local v2, defaults:[Ljava/lang/String;
    array-length v7, v2

    if-lez v7, :cond_2

    .line 100
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 101
    .local v1, def:Ljava/lang/String;
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    .end local v1           #def:Ljava/lang/String;
    :cond_1
    new-instance v7, Lcom/google/android/gm/RecentLabelsCache$2;

    invoke-direct {v7, p0, v2}, Lcom/google/android/gm/RecentLabelsCache$2;-><init>(Lcom/google/android/gm/RecentLabelsCache;[Ljava/lang/String;)V

    invoke-virtual {p3, v7}, Lcom/google/android/gm/UiHandler;->post(Ljava/lang/Runnable;)V

    .line 116
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #defaults:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    new-instance v7, Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v6, p2, v8}, Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;-><init>(Lcom/google/android/gm/RecentLabelsCache;Ljava/util/List;ILcom/google/android/gm/RecentLabelsCache$1;)V

    return-object v7
.end method

.method public getRecentLabelNames(Ljava/lang/String;Lcom/google/android/gm/UiHandler;)Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;
    .locals 1
    .parameter "account"
    .parameter "defaultTouchHandler"

    .prologue
    .line 66
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gm/RecentLabelsCache;->getRecentLabelNames(Ljava/lang/String;ILcom/google/android/gm/UiHandler;)Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;

    move-result-object v0

    return-object v0
.end method

.method getRecentLabels(Ljava/lang/String;I)Lcom/google/android/gm/provider/LabelList;
    .locals 4
    .parameter "account"
    .parameter "numLabels"

    .prologue
    .line 127
    iget-object v1, p0, Lcom/google/android/gm/RecentLabelsCache;->mAccount:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/RecentLabelsCache;->mAccount:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/google/android/gm/RecentLabelsCache;->save()V

    .line 130
    iget-object v1, p0, Lcom/google/android/gm/RecentLabelsCache;->mUpdateLists:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 134
    :cond_0
    iput-object p1, p0, Lcom/google/android/gm/RecentLabelsCache;->mAccount:Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lcom/google/android/gm/RecentLabelsCache;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, p1, v2, v3, p2}, Lcom/google/android/gm/provider/LabelManager;->getRecentLabelList(Landroid/content/Context;Ljava/lang/String;JI)Lcom/google/android/gm/provider/LabelList;

    move-result-object v0

    .line 137
    .local v0, labels:Lcom/google/android/gm/provider/LabelList;
    return-object v0
.end method

.method public save()V
    .locals 4

    .prologue
    .line 157
    iget-object v1, p0, Lcom/google/android/gm/RecentLabelsCache;->mMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/google/android/gm/RecentLabelsCache;->mMap:Ljava/util/Map;

    invoke-static {v1}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    .line 163
    .local v0, mapToBeSaved:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v1, Lcom/google/android/gm/RecentLabelsCache$SaveTask;

    iget-object v2, p0, Lcom/google/android/gm/RecentLabelsCache;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gm/RecentLabelsCache;->mAccount:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gm/RecentLabelsCache$SaveTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gm/RecentLabelsCache$SaveTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 166
    iget-object v1, p0, Lcom/google/android/gm/RecentLabelsCache;->mMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 168
    .end local v0           #mapToBeSaved:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_0
    return-void
.end method

.method saveSync()V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/gm/RecentLabelsCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/RecentLabelsCache;->mAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/RecentLabelsCache;->mMap:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LabelManager;->updateRecentLabels(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 174
    return-void
.end method

.method public touch(Ljava/lang/String;)V
    .locals 2
    .parameter "canonicalName"

    .prologue
    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gm/RecentLabelsCache;->touch(Ljava/lang/String;J)V

    .line 154
    return-void
.end method

.method touch(Ljava/lang/String;J)V
    .locals 4
    .parameter "canonicalName"
    .parameter "timestamp"

    .prologue
    .line 143
    iget-object v2, p0, Lcom/google/android/gm/RecentLabelsCache;->mMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v2, p0, Lcom/google/android/gm/RecentLabelsCache;->mUpdateLists:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;

    .line 147
    .local v1, listToUpdate:Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;
    #calls: Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;->addLabel(Ljava/lang/String;)V
    invoke-static {v1, p1}, Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;->access$100(Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1}, Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;->notifyChanged()V

    goto :goto_0

    .line 150
    .end local v1           #listToUpdate:Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;
    :cond_0
    return-void
.end method
