.class public Ljava/util/TreeMap;
.super Ljava/util/AbstractMap;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/SortedMap;
.implements Ljava/util/NavigableMap;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/TreeMap$2;,
        Ljava/util/TreeMap$SubMap;,
        Ljava/util/TreeMap$AscendingSubMap;,
        Ljava/util/TreeMap$DescendingSubMap;,
        Ljava/util/TreeMap$NavigableSubMap;,
        Ljava/util/TreeMap$BoundedMap;,
        Ljava/util/TreeMap$Bound;,
        Ljava/util/TreeMap$KeySet;,
        Ljava/util/TreeMap$EntrySet;,
        Ljava/util/TreeMap$MapIterator;,
        Ljava/util/TreeMap$Node;,
        Ljava/util/TreeMap$Relation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/SortedMap",
        "<TK;TV;>;",
        "Ljava/util/NavigableMap",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final NATURAL_ORDER:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0xcc1f63e2d256ae6L


# instance fields
.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private entrySet:Ljava/util/TreeMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field private keySet:Ljava/util/TreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field modCount:I

.field root:Ljava/util/TreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljava/util/TreeMap;->$assertionsDisabled:Z

    new-instance v0, Ljava/util/TreeMap$1;

    invoke-direct {v0}, Ljava/util/TreeMap$1;-><init>()V

    sput-object v0, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput v0, p0, Ljava/util/TreeMap;->size:I

    iput v0, p0, Ljava/util/TreeMap;->modCount:I

    sget-object v0, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    iput-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput v0, p0, Ljava/util/TreeMap;->size:I

    iput v0, p0, Ljava/util/TreeMap;->modCount:I

    if-eqz p1, :cond_0

    iput-object p1, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    iput-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/TreeMap;->putInternal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput v3, p0, Ljava/util/TreeMap;->size:I

    iput v3, p0, Ljava/util/TreeMap;->modCount:I

    invoke-interface {p1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-object v2, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    :goto_0
    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/util/TreeMap;->putInternal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    sget-object v3, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    iput-object v3, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic access$000(Ljava/util/TreeMap;)Ljava/util/Map$Entry;
    .locals 1

    invoke-direct {p0}, Ljava/util/TreeMap;->internalPollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/TreeMap;)Ljava/util/Map$Entry;
    .locals 1

    invoke-direct {p0}, Ljava/util/TreeMap;->internalPollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 1

    invoke-direct {p0, p1}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method static count(Ljava/util/Iterator;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)",
            "Ljava/util/AbstractMap$SimpleImmutableEntry",
            "<TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    goto :goto_0
.end method

.method private internalPollFirstEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    invoke-virtual {v1}, Ljava/util/TreeMap$Node;->first()Ljava/util/TreeMap$Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->removeInternal(Ljava/util/TreeMap$Node;)V

    goto :goto_0
.end method

.method private internalPollLastEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    invoke-virtual {v1}, Ljava/util/TreeMap$Node;->last()Ljava/util/TreeMap$Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->removeInternal(Ljava/util/TreeMap$Node;)V

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    const-string v3, "comparator"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Comparator;

    iput-object v3, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    iget-object v3, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    if-nez v3, :cond_0

    sget-object v3, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    iput-object v3, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/util/TreeMap;->putInternal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private rebalance(Ljava/util/TreeMap$Node;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    move-object/from16 v9, p1

    :goto_0
    if-eqz v9, :cond_1

    iget-object v2, v9, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    iget-object v10, v9, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    if-eqz v2, :cond_2

    iget v4, v2, Ljava/util/TreeMap$Node;->height:I

    :goto_1
    if-eqz v10, :cond_3

    iget v12, v10, Ljava/util/TreeMap$Node;->height:I

    :goto_2
    sub-int v1, v4, v12

    const/16 v17, -0x2

    move/from16 v0, v17

    if-ne v1, v0, :cond_8

    iget-object v13, v10, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    iget-object v15, v10, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    if-eqz v15, :cond_4

    iget v0, v15, Ljava/util/TreeMap$Node;->height:I

    move/from16 v16, v0

    :goto_3
    if-eqz v13, :cond_5

    iget v14, v13, Ljava/util/TreeMap$Node;->height:I

    :goto_4
    sub-int v11, v14, v16

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_0

    if-nez v11, :cond_6

    if-nez p2, :cond_6

    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$Node;)V

    :goto_5
    if-eqz p2, :cond_a

    :cond_1
    :goto_6
    return-void

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    :cond_4
    const/16 v16, 0x0

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    goto :goto_4

    :cond_6
    sget-boolean v17, Ljava/util/TreeMap;->$assertionsDisabled:Z

    if-nez v17, :cond_7

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_7

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$Node;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$Node;)V

    goto :goto_5

    :cond_8
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v1, v0, :cond_f

    iget-object v5, v2, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    iget-object v7, v2, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    if-eqz v7, :cond_b

    iget v8, v7, Ljava/util/TreeMap$Node;->height:I

    :goto_7
    if-eqz v5, :cond_c

    iget v6, v5, Ljava/util/TreeMap$Node;->height:I

    :goto_8
    sub-int v3, v6, v8

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_9

    if-nez v3, :cond_d

    if-nez p2, :cond_d

    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$Node;)V

    :goto_9
    if-nez p2, :cond_1

    :cond_a
    iget-object v9, v9, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    goto/16 :goto_0

    :cond_b
    const/4 v8, 0x0

    goto :goto_7

    :cond_c
    const/4 v6, 0x0

    goto :goto_8

    :cond_d
    sget-boolean v17, Ljava/util/TreeMap;->$assertionsDisabled:Z

    if-nez v17, :cond_e

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_e

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$Node;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$Node;)V

    goto :goto_9

    :cond_f
    if-nez v1, :cond_10

    add-int/lit8 v17, v4, 0x1

    move/from16 v0, v17

    iput v0, v9, Ljava/util/TreeMap$Node;->height:I

    if-eqz p2, :cond_a

    goto :goto_6

    :cond_10
    sget-boolean v17, Ljava/util/TreeMap;->$assertionsDisabled:Z

    if-nez v17, :cond_11

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v1, v0, :cond_11

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v1, v0, :cond_11

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    :cond_11
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    iput v0, v9, Ljava/util/TreeMap$Node;->height:I

    if-nez p2, :cond_a

    goto/16 :goto_6
.end method

.method private replaceInParent(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    const/4 v1, 0x0

    iput-object v1, p1, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    if-eqz p2, :cond_0

    iput-object v0, p2, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    :cond_0
    if-eqz v0, :cond_3

    iget-object v1, v0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    if-ne v1, p1, :cond_1

    iput-object p2, v0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Ljava/util/TreeMap;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    if-eq v1, p1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2
    iput-object p2, v0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    goto :goto_0

    :cond_3
    iput-object p2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    goto :goto_0
.end method

.method private rotateLeft(Ljava/util/TreeMap$Node;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v0, p1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    iget-object v1, p1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    iget-object v2, v1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    iget-object v3, v1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    iput-object v2, p1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    if-eqz v2, :cond_0

    iput-object p1, v2, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    :cond_0
    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap;->replaceInParent(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Node;)V

    iput-object p1, v1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    iput-object v1, p1, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    if-eqz v0, :cond_2

    iget v4, v0, Ljava/util/TreeMap$Node;->height:I

    move v6, v4

    :goto_0
    if-eqz v2, :cond_3

    iget v4, v2, Ljava/util/TreeMap$Node;->height:I

    :goto_1
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Ljava/util/TreeMap$Node;->height:I

    iget v4, p1, Ljava/util/TreeMap$Node;->height:I

    if-eqz v3, :cond_1

    iget v5, v3, Ljava/util/TreeMap$Node;->height:I

    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Ljava/util/TreeMap$Node;->height:I

    return-void

    :cond_2
    move v6, v5

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method private rotateRight(Ljava/util/TreeMap$Node;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v0, p1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    iget-object v3, p1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    iget-object v1, v0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    iget-object v2, v0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    iput-object v2, p1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    if-eqz v2, :cond_0

    iput-object p1, v2, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    :cond_0
    invoke-direct {p0, p1, v0}, Ljava/util/TreeMap;->replaceInParent(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Node;)V

    iput-object p1, v0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    iput-object v0, p1, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    if-eqz v3, :cond_2

    iget v4, v3, Ljava/util/TreeMap$Node;->height:I

    move v6, v4

    :goto_0
    if-eqz v2, :cond_3

    iget v4, v2, Ljava/util/TreeMap$Node;->height:I

    :goto_1
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Ljava/util/TreeMap$Node;->height:I

    iget v4, p1, Ljava/util/TreeMap$Node;->height:I

    if-eqz v1, :cond_1

    iget v5, v1, Ljava/util/TreeMap$Node;->height:I

    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Ljava/util/TreeMap$Node;->height:I

    return-void

    :cond_2
    move v6, v5

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v3

    const-string v4, "comparator"

    iget-object v2, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    sget-object v5, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-eq v2, v5, :cond_0

    iget-object v2, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    :goto_0
    invoke-virtual {v3, v4, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    iget v2, p0, Ljava/util/TreeMap;->size:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    sget-object v1, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    invoke-virtual {p0, p1, v1}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/TreeMap;->size:I

    iget v0, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/TreeMap;->modCount:I

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    iget-object v3, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-eqz v3, :cond_0

    iget-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/TreeMap$Node;->copy(Ljava/util/TreeMap$Node;)Ljava/util/TreeMap$Node;

    move-result-object v2

    :cond_0
    iput-object v2, v1, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    const/4 v2, 0x0

    iput-object v2, v1, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    const/4 v2, 0x0

    iput-object v2, v1, Ljava/util/TreeMap;->keySet:Ljava/util/TreeMap$KeySet;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    sget-object v1, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->findByObject(Ljava/lang/Object;)Ljava/util/TreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    const/4 v2, 0x0

    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    sget-object v6, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    move-object v1, p0

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    invoke-virtual {v0}, Ljava/util/TreeMap$BoundedMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ljava/util/NavigableMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    const/4 v2, 0x0

    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    sget-object v6, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    move-object v1, p0

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/TreeMap$EntrySet;

    invoke-direct {v0, p0}, Ljava/util/TreeMap$EntrySet;-><init>(Ljava/util/TreeMap;)V

    iput-object v0, p0, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    goto :goto_0
.end method

.method find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/TreeMap$Relation;",
            ")",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v5, :cond_2

    iget-object v5, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    sget-object v7, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v5, v7, :cond_0

    instance-of v5, p1, Ljava/lang/Comparable;

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/ClassCastException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not Comparable"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    sget-object v5, Ljava/util/TreeMap$Relation;->CREATE:Ljava/util/TreeMap$Relation;

    if-ne p2, v5, :cond_1

    new-instance v5, Ljava/util/TreeMap$Node;

    invoke-direct {v5, v6, p1}, Ljava/util/TreeMap$Node;-><init>(Ljava/util/TreeMap$Node;Ljava/lang/Object;)V

    iput-object v5, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    iput v8, p0, Ljava/util/TreeMap;->size:I

    iget v5, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/TreeMap;->modCount:I

    iget-object v6, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    :cond_1
    :goto_0
    :pswitch_0
    return-object v6

    :cond_2
    iget-object v5, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    sget-object v7, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v5, v7, :cond_4

    move-object v5, p1

    check-cast v5, Ljava/lang/Comparable;

    move-object v1, v5

    :goto_1
    iget-object v4, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    :goto_2
    if-eqz v1, :cond_5

    iget-object v5, v4, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v1, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    :goto_3
    if-nez v2, :cond_3

    sget-object v5, Ljava/util/TreeMap$2;->$SwitchMap$java$util$TreeMap$Relation:[I

    invoke-virtual {p2}, Ljava/util/TreeMap$Relation;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    :cond_3
    if-gez v2, :cond_6

    iget-object v0, v4, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    :goto_4
    if-eqz v0, :cond_7

    move-object v4, v0

    goto :goto_2

    :cond_4
    move-object v1, v6

    goto :goto_1

    :cond_5
    iget-object v5, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    iget-object v7, v4, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v5, p1, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    goto :goto_3

    :pswitch_1
    invoke-virtual {v4}, Ljava/util/TreeMap$Node;->prev()Ljava/util/TreeMap$Node;

    move-result-object v6

    goto :goto_0

    :pswitch_2
    move-object v6, v4

    goto :goto_0

    :pswitch_3
    invoke-virtual {v4}, Ljava/util/TreeMap$Node;->next()Ljava/util/TreeMap$Node;

    move-result-object v6

    goto :goto_0

    :cond_6
    iget-object v0, v4, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    goto :goto_4

    :cond_7
    if-gez v2, :cond_8

    sget-object v5, Ljava/util/TreeMap$2;->$SwitchMap$java$util$TreeMap$Relation:[I

    invoke-virtual {p2}, Ljava/util/TreeMap$Relation;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_1

    goto :goto_2

    :pswitch_4
    invoke-virtual {v4}, Ljava/util/TreeMap$Node;->prev()Ljava/util/TreeMap$Node;

    move-result-object v6

    goto :goto_0

    :pswitch_5
    move-object v6, v4

    goto :goto_0

    :pswitch_6
    new-instance v3, Ljava/util/TreeMap$Node;

    invoke-direct {v3, v4, p1}, Ljava/util/TreeMap$Node;-><init>(Ljava/util/TreeMap$Node;Ljava/lang/Object;)V

    iput-object v3, v4, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    iget v5, p0, Ljava/util/TreeMap;->size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/TreeMap;->size:I

    iget v5, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/TreeMap;->modCount:I

    invoke-direct {p0, v4, v8}, Ljava/util/TreeMap;->rebalance(Ljava/util/TreeMap$Node;Z)V

    move-object v6, v3

    goto :goto_0

    :cond_8
    sget-object v5, Ljava/util/TreeMap$2;->$SwitchMap$java$util$TreeMap$Relation:[I

    invoke-virtual {p2}, Ljava/util/TreeMap$Relation;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_2

    goto :goto_2

    :pswitch_7
    move-object v6, v4

    goto :goto_0

    :pswitch_8
    invoke-virtual {v4}, Ljava/util/TreeMap$Node;->next()Ljava/util/TreeMap$Node;

    move-result-object v6

    goto/16 :goto_0

    :pswitch_9
    new-instance v3, Ljava/util/TreeMap$Node;

    invoke-direct {v3, v4, p1}, Ljava/util/TreeMap$Node;-><init>(Ljava/util/TreeMap$Node;Ljava/lang/Object;)V

    iput-object v3, v4, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    iget v5, p0, Ljava/util/TreeMap;->size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/TreeMap;->size:I

    iget v5, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/TreeMap;->modCount:I

    invoke-direct {p0, v4, v8}, Ljava/util/TreeMap;->rebalance(Ljava/util/TreeMap$Node;Z)V

    move-object v6, v3

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method findByEntry(Ljava/util/Map$Entry;)Ljava/util/TreeMap$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/TreeMap;->findByObject(Ljava/lang/Object;)Ljava/util/TreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method findByObject(Ljava/lang/Object;)Ljava/util/TreeMap$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/TreeMap$Relation;->EQUAL:Ljava/util/TreeMap$Relation;

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->first()Ljava/util/TreeMap$Node;

    move-result-object v0

    goto :goto_0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->first()Ljava/util/TreeMap$Node;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    sget-object v1, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    invoke-virtual {p0, p1, v1}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->findByObject(Ljava/lang/Object;)Ljava/util/TreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    if-eqz p2, :cond_0

    sget-object v6, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    :goto_0
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    return-object v0

    :cond_0
    sget-object v6, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    goto :goto_0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    sget-object v6, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    sget-object v1, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    invoke-virtual {p0, p1, v1}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Ljava/util/TreeMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap;->keySet:Ljava/util/TreeMap$KeySet;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/TreeMap$KeySet;

    invoke-direct {v0, p0}, Ljava/util/TreeMap$KeySet;-><init>(Ljava/util/TreeMap;)V

    iput-object v0, p0, Ljava/util/TreeMap;->keySet:Ljava/util/TreeMap$KeySet;

    goto :goto_0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->last()Ljava/util/TreeMap$Node;

    move-result-object v0

    goto :goto_0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->last()Ljava/util/TreeMap$Node;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    sget-object v1, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    invoke-virtual {p0, p1, v1}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap;->keySet:Ljava/util/TreeMap$KeySet;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/TreeMap$KeySet;

    invoke-direct {v0, p0}, Ljava/util/TreeMap$KeySet;-><init>(Ljava/util/TreeMap;)V

    iput-object v0, p0, Ljava/util/TreeMap;->keySet:Ljava/util/TreeMap$KeySet;

    goto :goto_0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/TreeMap;->internalPollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/TreeMap;->internalPollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap;->putInternal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method putInternal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    sget-object v2, Ljava/util/TreeMap$Relation;->CREATE:Ljava/util/TreeMap$Relation;

    invoke-virtual {p0, p1, v2}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    iget-object v1, v0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    iput-object p2, v0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->removeInternalByKey(Ljava/lang/Object;)Ljava/util/TreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method removeInternal(Ljava/util/TreeMap$Node;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v1, p1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    iget-object v4, p1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    iget-object v3, p1, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    iget v6, v1, Ljava/util/TreeMap$Node;->height:I

    iget v7, v4, Ljava/util/TreeMap$Node;->height:I

    if-le v6, v7, :cond_2

    invoke-virtual {v1}, Ljava/util/TreeMap$Node;->last()Ljava/util/TreeMap$Node;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->removeInternal(Ljava/util/TreeMap$Node;)V

    const/4 v2, 0x0

    iget-object v1, p1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    if-eqz v1, :cond_0

    iget v2, v1, Ljava/util/TreeMap$Node;->height:I

    iput-object v1, v0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    iput-object v0, v1, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    iput-object v8, p1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    :cond_0
    const/4 v5, 0x0

    iget-object v4, p1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    if-eqz v4, :cond_1

    iget v5, v4, Ljava/util/TreeMap$Node;->height:I

    iput-object v4, v0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    iput-object v0, v4, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    iput-object v8, p1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    :cond_1
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Ljava/util/TreeMap$Node;->height:I

    invoke-direct {p0, p1, v0}, Ljava/util/TreeMap;->replaceInParent(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Node;)V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {v4}, Ljava/util/TreeMap$Node;->first()Ljava/util/TreeMap$Node;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap;->replaceInParent(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Node;)V

    iput-object v8, p1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    :goto_2
    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, Ljava/util/TreeMap;->rebalance(Ljava/util/TreeMap$Node;Z)V

    iget v6, p0, Ljava/util/TreeMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/util/TreeMap;->size:I

    iget v6, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/TreeMap;->modCount:I

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    invoke-direct {p0, p1, v4}, Ljava/util/TreeMap;->replaceInParent(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Node;)V

    iput-object v8, p1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1, v8}, Ljava/util/TreeMap;->replaceInParent(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Node;)V

    goto :goto_2
.end method

.method removeInternalByKey(Ljava/lang/Object;)Ljava/util/TreeMap$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->findByObject(Ljava/lang/Object;)Ljava/util/TreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->removeInternal(Ljava/util/TreeMap$Node;)V

    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Ljava/util/TreeMap;->size:I

    return v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    if-eqz p2, :cond_0

    sget-object v4, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    :goto_0
    if-eqz p4, :cond_1

    sget-object v6, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    :goto_1
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    return-object v0

    :cond_0
    sget-object v4, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    goto :goto_0

    :cond_1
    sget-object v6, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    goto :goto_1
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    const/4 v2, 0x1

    sget-object v4, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    sget-object v6, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    if-eqz p2, :cond_0

    sget-object v4, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    :goto_0
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    const/4 v2, 0x1

    const/4 v5, 0x0

    sget-object v6, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    return-object v0

    :cond_0
    sget-object v4, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    goto :goto_0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    const/4 v2, 0x1

    sget-object v4, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    const/4 v5, 0x0

    sget-object v6, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    return-object v0
.end method
