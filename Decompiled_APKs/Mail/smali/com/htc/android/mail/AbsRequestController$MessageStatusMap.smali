.class public Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;
.super Ljava/lang/Object;
.source "AbsRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/AbsRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageStatusMap"
.end annotation


# instance fields
.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/android/mail/AbsRequestController$MessageStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 146
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->mMap:Ljava/util/Map;

    .line 148
    iget-object v0, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->mMap:Ljava/util/Map;

    const-string v1, "READ"

    new-instance v2, Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    invoke-direct {v2}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->mMap:Ljava/util/Map;

    const-string v1, "FLAG"

    new-instance v2, Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    invoke-direct {v2}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->mMap:Ljava/util/Map;

    const-string v1, "DELETE"

    new-instance v2, Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    invoke-direct {v2}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/android/mail/AbsRequestController$MessageStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/android/mail/AbsRequestController$MessageStatus;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->mMap:Ljava/util/Map;

    .line 155
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 5

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->mMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 193
    .local v2, s:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 195
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 196
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 197
    .local v1, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->mMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    .line 198
    .local v3, status:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    if-eqz v3, :cond_0

    .line 199
    invoke-virtual {v3}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 192
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #s:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3           #status:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 202
    .restart local v0       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2       #s:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized clone()Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;
    .locals 6

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/android/mail/AbsRequestController$MessageStatus;>;"
    iget-object v4, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->mMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 164
    .local v3, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/android/mail/AbsRequestController$MessageStatus;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 165
    .local v2, me:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/android/mail/AbsRequestController$MessageStatus;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    invoke-virtual {v4}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->clone1()Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 162
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/android/mail/AbsRequestController$MessageStatus;>;"
    .end local v2           #me:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/android/mail/AbsRequestController$MessageStatus;>;"
    .end local v3           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/android/mail/AbsRequestController$MessageStatus;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 167
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/android/mail/AbsRequestController$MessageStatus;>;"
    .restart local v3       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/android/mail/AbsRequestController$MessageStatus;>;>;"
    :cond_0
    :try_start_1
    new-instance v4, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    invoke-direct {v4, v1}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;-><init>(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v4
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->clone()Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    .locals 1
    .parameter "tag"

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 6

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->mMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 176
    .local v2, s:Ljava/util/Set;,"Ljava/util/Set<*>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 178
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    const/4 v3, 0x0

    .line 179
    .local v3, size:I
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 180
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 181
    .local v1, key:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 182
    iget-object v5, p0, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->mMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    .line 183
    .local v4, value:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    if-eqz v4, :cond_0

    .line 184
    invoke-virtual {v4}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    add-int/2addr v3, v5

    goto :goto_0

    .line 188
    .end local v1           #key:Ljava/lang/Object;
    .end local v4           #value:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    :cond_1
    monitor-exit p0

    return v3

    .line 174
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v2           #s:Ljava/util/Set;,"Ljava/util/Set<*>;"
    .end local v3           #size:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method
