.class public Lcom/google/android/gm/provider/Gmail$Settings;
.super Ljava/lang/Object;
.source "Gmail.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/Gmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field private mConversationAgeDays:J

.field private transient mDirtyBits:Ljava/util/BitSet;

.field private mLabelsIncluded:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelsPartial:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxAttachmentSizeMb:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1391
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mDirtyBits:Ljava/util/BitSet;

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/gm/provider/Gmail$Settings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1370
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->hasMaxAttachmentSizeMbChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/gm/provider/Gmail$Settings;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsIncluded:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/gm/provider/Gmail$Settings;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1370
    iput-object p1, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsIncluded:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/gm/provider/Gmail$Settings;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsPartial:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/gm/provider/Gmail$Settings;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1370
    iput-object p1, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsPartial:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/gm/provider/Gmail$Settings;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 1370
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mConversationAgeDays:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/google/android/gm/provider/Gmail$Settings;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1370
    iput-wide p1, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mConversationAgeDays:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/google/android/gm/provider/Gmail$Settings;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 1370
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mMaxAttachmentSizeMb:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/google/android/gm/provider/Gmail$Settings;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1370
    iput-wide p1, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mMaxAttachmentSizeMb:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/google/android/gm/provider/Gmail$Settings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1370
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->hasLabelsIncludedChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/gm/provider/Gmail$Settings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1370
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->hasLabelsPartialChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/gm/provider/Gmail$Settings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1370
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->hasConversationAgeDaysChanged()Z

    move-result v0

    return v0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/google/android/gm/provider/Gmail$Settings;
    .locals 3
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1508
    new-instance v0, Lcom/google/android/gm/provider/Gmail$Settings;

    invoke-direct {v0}, Lcom/google/android/gm/provider/Gmail$Settings;-><init>()V

    .line 1509
    .local v0, settings:Lcom/google/android/gm/provider/Gmail$Settings;
    const-string v1, "conversation_age_days"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gm/provider/Gmail$Settings;->mConversationAgeDays:J

    .line 1510
    const-string v1, "max_attachment_size_mb"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gm/provider/Gmail$Settings;->mMaxAttachmentSizeMb:J

    .line 1511
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsIncluded:Ljava/util/Set;

    .line 1512
    const-string v1, "labels_included"

    iget-object v2, v0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsIncluded:Ljava/util/Set;

    invoke-static {p0, v1, v2}, Lcom/google/android/gm/provider/Gmail$Settings;->getStringsIntoCollection(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1513
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsPartial:Ljava/util/Set;

    .line 1514
    const-string v1, "labels_partial"

    iget-object v2, v0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsPartial:Ljava/util/Set;

    invoke-static {p0, v1, v2}, Lcom/google/android/gm/provider/Gmail$Settings;->getStringsIntoCollection(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1516
    return-object v0
.end method

.method private getDirtyBits()Ljava/util/BitSet;
    .locals 1

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mDirtyBits:Ljava/util/BitSet;

    if-nez v0, :cond_0

    .line 1428
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mDirtyBits:Ljava/util/BitSet;

    .line 1430
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mDirtyBits:Ljava/util/BitSet;

    return-object v0
.end method

.method private static getStringsIntoCollection(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 4
    .parameter "json"
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1522
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1523
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1524
    .local v0, array:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .local v2, len:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1525
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1524
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1528
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_0
    return-void
.end method

.method private declared-synchronized hasConversationAgeDaysChanged()Z
    .locals 2

    .prologue
    .line 1423
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->getDirtyBits()Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z
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

.method private declared-synchronized hasLabelsIncludedChanged()Z
    .locals 2

    .prologue
    .line 1452
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->getDirtyBits()Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z
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

.method private declared-synchronized hasLabelsPartialChanged()Z
    .locals 2

    .prologue
    .line 1463
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->getDirtyBits()Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z
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

.method private declared-synchronized hasMaxAttachmentSizeMbChanged()Z
    .locals 2

    .prologue
    .line 1441
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->getDirtyBits()Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z
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

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1490
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mConversationAgeDays:J

    .line 1491
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mMaxAttachmentSizeMb:J

    .line 1492
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    .line 1493
    .local v0, included:[Ljava/lang/String;
    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsIncluded:Ljava/util/Set;

    .line 1494
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    .line 1495
    .local v1, partial:[Ljava/lang/String;
    invoke-static {v1}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsPartial:Ljava/util/Set;

    .line 1496
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1480
    iget-wide v2, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mConversationAgeDays:J

    invoke-virtual {p1, v2, v3}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 1481
    iget-wide v2, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mMaxAttachmentSizeMb:J

    invoke-virtual {p1, v2, v3}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 1482
    iget-object v2, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsIncluded:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsIncluded:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1483
    .local v0, included:[Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1484
    iget-object v2, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsPartial:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsPartial:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1485
    .local v1, partial:[Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1486
    return-void
.end method


# virtual methods
.method public declared-synchronized getConversationAgeDays()J
    .locals 2

    .prologue
    .line 1399
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mConversationAgeDays:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLabelsIncluded()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1408
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsIncluded:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsIncluded:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
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

.method public declared-synchronized getLabelsPartial()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1413
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsPartial:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsPartial:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
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

.method public declared-synchronized getMaxAttachmentSizeMb()J
    .locals 2

    .prologue
    .line 1403
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mMaxAttachmentSizeMb:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setConversationAgeDays(J)V
    .locals 2
    .parameter "days"

    .prologue
    .line 1417
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mConversationAgeDays:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1418
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->getDirtyBits()Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1419
    iput-wide p1, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mConversationAgeDays:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1421
    :cond_0
    monitor-exit p0

    return-void

    .line 1417
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLabelsIncluded(Ljava/util/Collection;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1445
    .local p1, included:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    .line 1446
    .local v0, newValues:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsIncluded:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1447
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->getDirtyBits()Ljava/util/BitSet;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1448
    iput-object v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsIncluded:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1450
    :cond_0
    monitor-exit p0

    return-void

    .line 1445
    .end local v0           #newValues:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setLabelsPartial(Ljava/util/Collection;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1456
    .local p1, partial:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    .line 1457
    .local v0, newValues:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsPartial:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1458
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->getDirtyBits()Ljava/util/BitSet;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1459
    iput-object v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsPartial:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1461
    :cond_0
    monitor-exit p0

    return-void

    .line 1456
    .end local v0           #newValues:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setMaxAttachmentSizeMb(J)V
    .locals 2
    .parameter "size"

    .prologue
    .line 1435
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mMaxAttachmentSizeMb:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1436
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->getDirtyBits()Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1437
    iput-wide p1, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mMaxAttachmentSizeMb:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1439
    :cond_0
    monitor-exit p0

    return-void

    .line 1435
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1499
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1500
    .local v0, json:Lorg/json/JSONObject;
    const-string v1, "conversation_age_days"

    iget-wide v2, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mConversationAgeDays:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1501
    const-string v1, "max_attachment_size_mb"

    iget-wide v2, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mMaxAttachmentSizeMb:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1502
    const-string v1, "labels_included"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsIncluded:Ljava/util/Set;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1503
    const-string v1, "labels_partial"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsPartial:Ljava/util/Set;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1504
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings{mConversationAgeDays="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mConversationAgeDays:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mMaxAttachmentSizeMb="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mMaxAttachmentSizeMb:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mLabelsIncluded="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsIncluded:Ljava/util/Set;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mLabelsPartial="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsPartial:Ljava/util/Set;

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDirtyBits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->getDirtyBits()Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v5, [Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsIncluded:Ljava/util/Set;

    aput-object v3, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-array v1, v5, [Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsPartial:Ljava/util/Set;

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_1
.end method
