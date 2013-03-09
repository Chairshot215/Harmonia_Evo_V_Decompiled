.class public Lcom/google/android/gm/ConversationSelectionSet;
.super Ljava/lang/Object;
.source "ConversationSelectionSet.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gm/ConversationSelectionSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mInternalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLockedForChanges:Z

.field final mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 290
    new-instance v0, Lcom/google/android/gm/ConversationSelectionSet$1;

    invoke-direct {v0}, Lcom/google/android/gm/ConversationSelectionSet$1;-><init>()V

    sput-object v0, Lcom/google/android/gm/ConversationSelectionSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/ConversationSelectionSet;->mLockedForChanges:Z

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/ConversationSelectionSet;->mObservers:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method private declared-synchronized dispatchOnBecomeUnempty(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, observers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;

    .line 107
    .local v1, observer:Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;
    invoke-interface {v1, p0}, Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;->onSetBecomeUnempty(Lcom/google/android/gm/ConversationSelectionSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 106
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 109
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized dispatchOnChange(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, observers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;

    .line 94
    .local v1, observer:Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;
    invoke-interface {v1, p0}, Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;->onSetChanged(Lcom/google/android/gm/ConversationSelectionSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 93
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 96
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized dispatchOnEmpty(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, observers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;

    .line 100
    .local v1, observer:Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;
    invoke-interface {v1, p0}, Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;->onSetEmpty(Lcom/google/android/gm/ConversationSelectionSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 99
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 102
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized addObserver(Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/ConversationSelectionSet;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 3

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gm/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 176
    .local v0, initiallyNotEmpty:Z
    :goto_0
    iget-object v2, p0, Lcom/google/android/gm/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 178
    iget-boolean v2, p0, Lcom/google/android/gm/ConversationSelectionSet;->mLockedForChanges:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 187
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 175
    .end local v0           #initiallyNotEmpty:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 182
    .restart local v0       #initiallyNotEmpty:Z
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gm/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 183
    iget-object v2, p0, Lcom/google/android/gm/ConversationSelectionSet;->mObservers:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 184
    .local v1, observersCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;>;"
    invoke-direct {p0, v1}, Lcom/google/android/gm/ConversationSelectionSet;->dispatchOnChange(Ljava/util/ArrayList;)V

    .line 185
    invoke-direct {p0, v1}, Lcom/google/android/gm/ConversationSelectionSet;->dispatchOnEmpty(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 175
    .end local v0           #initiallyNotEmpty:Z
    .end local v1           #observersCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized containsKey(Ljava/lang/Long;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized get(Ljava/lang/Long;)Lcom/google/android/gm/ConversationInfo;
    .locals 1
    .parameter "id"

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ConversationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLabels()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gm/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 207
    :cond_0
    monitor-exit p0

    return-object v2

    .line 198
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 202
    .local v2, labelMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 203
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/gm/ConversationInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ConversationInfo;

    .line 205
    .local v0, conversation:Lcom/google/android/gm/ConversationInfo;
    invoke-virtual {v0}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 195
    .end local v0           #conversation:Lcom/google/android/gm/ConversationInfo;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/gm/ConversationInfo;>;"
    .end local v2           #labelMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized keySet()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onLabelChanged(Lcom/google/android/gm/provider/Label;JZ)V
    .locals 2
    .parameter "label"
    .parameter "conversationId"
    .parameter "added"

    .prologue
    .line 327
    monitor-enter p0

    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gm/ConversationSelectionSet;->containsKey(Ljava/lang/Long;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gm/ConversationSelectionSet;->get(Ljava/lang/Long;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    .line 329
    .local v0, info:Lcom/google/android/gm/ConversationInfo;
    invoke-virtual {v0, p1, p4}, Lcom/google/android/gm/ConversationInfo;->updateLabel(Lcom/google/android/gm/provider/Label;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    .end local v0           #info:Lcom/google/android/gm/ConversationInfo;
    :cond_0
    monitor-exit p0

    return-void

    .line 327
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized put(Ljava/lang/Long;Lcom/google/android/gm/ConversationInfo;)V
    .locals 3
    .parameter "id"
    .parameter "info"

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gm/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    .line 119
    .local v0, initiallyEmpty:Z
    iget-object v2, p0, Lcom/google/android/gm/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-boolean v2, p0, Lcom/google/android/gm/ConversationSelectionSet;->mLockedForChanges:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 130
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 125
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gm/ConversationSelectionSet;->mObservers:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 126
    .local v1, observersCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;>;"
    invoke-direct {p0, v1}, Lcom/google/android/gm/ConversationSelectionSet;->dispatchOnChange(Ljava/util/ArrayList;)V

    .line 127
    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0, v1}, Lcom/google/android/gm/ConversationSelectionSet;->dispatchOnBecomeUnempty(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    .end local v0           #initiallyEmpty:Z
    .end local v1           #observersCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized remove(Ljava/lang/Long;)V
    .locals 3
    .parameter "id"

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gm/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 135
    .local v0, initiallyNotEmpty:Z
    :goto_0
    iget-object v2, p0, Lcom/google/android/gm/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-boolean v2, p0, Lcom/google/android/gm/ConversationSelectionSet;->mLockedForChanges:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 146
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 134
    .end local v0           #initiallyNotEmpty:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 141
    .restart local v0       #initiallyNotEmpty:Z
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gm/ConversationSelectionSet;->mObservers:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 142
    .local v1, observersCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;>;"
    invoke-direct {p0, v1}, Lcom/google/android/gm/ConversationSelectionSet;->dispatchOnChange(Ljava/util/ArrayList;)V

    .line 143
    iget-object v2, p0, Lcom/google/android/gm/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 144
    invoke-direct {p0, v1}, Lcom/google/android/gm/ConversationSelectionSet;->dispatchOnEmpty(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 134
    .end local v0           #initiallyNotEmpty:Z
    .end local v1           #observersCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized removeObserver(Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/ConversationSelectionSet;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toggle(JJLjava/util/Map;)V
    .locals 7
    .parameter "conversationId"
    .parameter "maxMessageId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p5, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ConversationSelectionSet;->containsKey(Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ConversationSelectionSet;->remove(Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :goto_0
    monitor-exit p0

    return-void

    .line 319
    :cond_0
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-instance v0, Lcom/google/android/gm/ConversationInfo;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/ConversationInfo;-><init>(JJLjava/util/Map;)V

    invoke-virtual {p0, v6, v0}, Lcom/google/android/gm/ConversationSelectionSet;->put(Ljava/lang/Long;Lcom/google/android/gm/ConversationInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized validateAgainstCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V
    .locals 9
    .parameter "cursor"

    .prologue
    const/4 v8, -0x1

    .line 217
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationSelectionSet;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 277
    :goto_0
    monitor-exit p0

    return-void

    .line 221
    :cond_0
    if-nez p1, :cond_1

    .line 222
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationSelectionSet;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 227
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->position()I

    move-result v3

    .line 228
    .local v3, currentPosition:I
    if-eq v3, v8, :cond_2

    .line 232
    const/4 v7, -0x1

    invoke-virtual {p1, v7}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    .line 238
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/gm/ConversationSelectionSet;->keySet()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 251
    .local v6, selectedConversationsToToggle:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 252
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 255
    :cond_3
    const/4 v0, 0x0

    .line 258
    .local v0, changed:Z
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/google/android/gm/ConversationSelectionSet;->mLockedForChanges:Z

    .line 259
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 262
    .local v1, conversationId:J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/gm/ConversationSelectionSet;->remove(Ljava/lang/Long;)V

    .line 263
    const/4 v0, 0x1

    goto :goto_2

    .line 265
    .end local v1           #conversationId:J
    :cond_4
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/google/android/gm/ConversationSelectionSet;->mLockedForChanges:Z

    .line 267
    iget-object v7, p0, Lcom/google/android/gm/ConversationSelectionSet;->mObservers:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v5

    .line 268
    .local v5, observersCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;>;"
    if-eqz v0, :cond_5

    .line 269
    invoke-direct {p0, v5}, Lcom/google/android/gm/ConversationSelectionSet;->dispatchOnChange(Ljava/util/ArrayList;)V

    .line 272
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationSelectionSet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 273
    invoke-direct {p0, v5}, Lcom/google/android/gm/ConversationSelectionSet;->dispatchOnEmpty(Ljava/util/ArrayList;)V

    .line 276
    :cond_6
    invoke-virtual {p1, v3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gm/ConversationSelectionSet;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gm/ConversationInfo;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gm/ConversationInfo;

    .line 287
    .local v0, values:[Lcom/google/android/gm/ConversationInfo;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 288
    return-void
.end method
