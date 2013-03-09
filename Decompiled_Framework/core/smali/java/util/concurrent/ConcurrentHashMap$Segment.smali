.class final Ljava/util/concurrent/ConcurrentHashMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1f364c905893293dL


# instance fields
.field volatile transient count:I

.field final loadFactor:F

.field transient modCount:I

.field volatile transient table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field transient threshold:I


# direct methods
.method constructor <init>(IF)V
    .locals 1

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput p2, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->loadFactor:F

    invoke-static {p1}, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->newArray(I)[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->setTable([Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)V

    return-void
.end method

.method static final newArray(I)[Ljava/util/concurrent/ConcurrentHashMap$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Ljava/util/concurrent/ConcurrentHashMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation

    new-array v0, p0, [Ljava/util/concurrent/ConcurrentHashMap$Segment;

    return-object v0
.end method


# virtual methods
.method clear()V
    .locals 3

    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    const/4 v2, 0x0

    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v2
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .locals 2

    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v1, :cond_1

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->getFirst(I)Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v1, p2, :cond_0

    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 6

    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v5, :cond_3

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v0, v3, v1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    if-nez v4, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->readValueUnderLock(Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v4

    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_2
    return v5

    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v2, :cond_2

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->getFirst(I)Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    iget v2, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v2, p2, :cond_1

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    :goto_1
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->readValueUnderLock(Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method getFirst(I)Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    aget-object v1, v0, v1

    return-object v1
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    :try_start_0
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    add-int/lit8 v1, v0, 0x1

    iget v7, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->threshold:I

    if-le v0, v7, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->rehash()V

    :cond_0
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    and-int v4, p2, v7

    aget-object v3, v6, v4

    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_2

    iget v7, v2, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v7, p2, :cond_1

    iget-object v7, v2, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_4

    iget-object v5, v2, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    if-nez p4, :cond_3

    iput-object p3, v2, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    return-object v5

    :cond_4
    const/4 v5, 0x0

    :try_start_1
    iget v7, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    invoke-direct {v7, p1, p2, v3, p3}, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;-><init>(Ljava/lang/Object;ILjava/util/concurrent/ConcurrentHashMap$HashEntry;Ljava/lang/Object;)V

    aput-object v7, v6, v4

    iput v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v7
.end method

.method readValueUnderLock(Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    :try_start_0
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method rehash()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    array-length v14, v15

    const/high16 v18, 0x4000

    move/from16 v0, v18

    if-lt v14, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    shl-int/lit8 v18, v14, 0x1

    invoke-static/range {v18 .. v18}, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->newArray(I)[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v12

    array-length v0, v12

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->loadFactor:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Segment;->threshold:I

    array-length v0, v12

    move/from16 v18, v0

    add-int/lit8 v17, v18, -0x1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v14, :cond_5

    aget-object v4, v15, v5

    if-eqz v4, :cond_1

    iget-object v13, v4, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    iget v0, v4, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    move/from16 v18, v0

    and-int v6, v18, v17

    if-nez v13, :cond_2

    aput-object v4, v12, v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move-object v10, v4

    move v9, v6

    move-object v8, v13

    :goto_2
    if-eqz v8, :cond_4

    iget v0, v8, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    move/from16 v18, v0

    and-int v7, v18, v17

    if-eq v7, v9, :cond_3

    move v9, v7

    move-object v10, v8

    :cond_3
    iget-object v8, v8, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_2

    :cond_4
    aput-object v10, v12, v9

    move-object/from16 v16, v4

    :goto_3
    move-object/from16 v0, v16

    if-eq v0, v10, :cond_1

    move-object/from16 v0, v16

    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    move/from16 v18, v0

    and-int v7, v18, v17

    aget-object v11, v12, v7

    new-instance v18, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v11, v3}, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;-><init>(Ljava/lang/Object;ILjava/util/concurrent/ConcurrentHashMap$HashEntry;Ljava/lang/Object;)V

    aput-object v18, v12, v7

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-object/from16 v16, v0

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iput-object v12, v0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto/16 :goto_0
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    :try_start_0
    iget v11, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    add-int/lit8 v1, v11, -0x1

    iget-object v9, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    array-length v11, v9

    add-int/lit8 v11, v11, -0x1

    and-int v4, p2, v11

    aget-object v3, v9, v4

    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_1

    iget v11, v2, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    move/from16 v0, p2

    if-ne v11, v0, :cond_0

    iget-object v11, v2, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    if-eqz v2, :cond_4

    iget-object v10, v2, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_2
    move-object v7, v10

    iget v11, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    iget-object v5, v2, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-object v8, v3

    move-object v6, v5

    :goto_1
    if-eq v8, v2, :cond_3

    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    iget-object v11, v8, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    iget v12, v8, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    iget-object v13, v8, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    invoke-direct {v5, v11, v12, v6, v13}, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;-><init>(Ljava/lang/Object;ILjava/util/concurrent/ConcurrentHashMap$HashEntry;Ljava/lang/Object;)V

    iget-object v8, v8, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-object v6, v5

    goto :goto_1

    :cond_3
    aput-object v6, v9, v4

    iput v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    return-object v7

    :catchall_0
    move-exception v11

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v11
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    :try_start_0
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->getFirst(I)Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v2, p2, :cond_0

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    iput-object p3, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    return-object v1

    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v2
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    :try_start_0
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->getFirst(I)Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v2, p2, :cond_0

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    iput-object p4, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    return v1

    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v2
.end method

.method setTable([Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    array-length v0, p1

    int-to-float v0, v0

    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->threshold:I

    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    return-void
.end method
