.class final Ljava/util/TreeMap$BoundedMap;
.super Ljava/util/AbstractMap;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/NavigableMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BoundedMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/TreeMap$BoundedMap$BoundedKeySet;,
        Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;,
        Ljava/util/TreeMap$BoundedMap$BoundedIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/NavigableMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final transient ascending:Z

.field private transient entrySet:Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<TK;TV;>.BoundedMap.BoundedEntrySet;"
        }
    .end annotation
.end field

.field private final transient from:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final transient fromBound:Ljava/util/TreeMap$Bound;

.field private transient keySet:Ljava/util/TreeMap$BoundedMap$BoundedKeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<TK;TV;>.BoundedMap.BoundedKeySet;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/TreeMap;

.field private final transient to:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final transient toBound:Ljava/util/TreeMap$Bound;


# direct methods
.method constructor <init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;",
            "Ljava/util/TreeMap$Bound;",
            "TK;",
            "Ljava/util/TreeMap$Bound;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    if-eq p4, v0, :cond_0

    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    if-eq p6, v0, :cond_0

    iget-object v0, p1, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p3, p5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    if-eq p4, v0, :cond_2

    iget-object v0, p1, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p3, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    :cond_1
    :goto_0
    iput-boolean p2, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    iput-object p3, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    iput-object p4, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    iput-object p5, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    iput-object p6, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    return-void

    :cond_2
    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    if-eq p6, v0, :cond_1

    iget-object v0, p1, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p5, p5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    goto :goto_0
.end method

.method static synthetic access$1000(Ljava/util/TreeMap$BoundedMap;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Ljava/util/TreeMap$BoundedMap;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Ljava/util/TreeMap$BoundedMap;)Ljava/util/TreeMap$Bound;
    .locals 1

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    return-object v0
.end method

.method static synthetic access$500(Ljava/util/TreeMap$BoundedMap;Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/util/TreeMap$BoundedMap;)Ljava/util/TreeMap$Bound;
    .locals 1

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    return-object v0
.end method

.method static synthetic access$700(Ljava/util/TreeMap$BoundedMap;Z)Ljava/util/TreeMap$Node;
    .locals 1

    invoke-direct {p0, p1}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/util/TreeMap$BoundedMap;)Z
    .locals 1

    iget-boolean v0, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    return v0
.end method

.method static synthetic access$900(Ljava/util/TreeMap$BoundedMap;Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private bound(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/util/TreeMap$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;",
            "Ljava/util/TreeMap$Bound;",
            "Ljava/util/TreeMap$Bound;",
            ")",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/TreeMap$Node;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private endpoint(Z)Ljava/util/TreeMap$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    if-ne v1, p1, :cond_1

    sget-object v1, Ljava/util/TreeMap$2;->$SwitchMap$java$util$TreeMap$Bound:[I

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    invoke-virtual {v2}, Ljava/util/TreeMap$Bound;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :pswitch_0
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v1, v1, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v1, :cond_0

    :goto_0
    sget-object v1, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, v0, v1, v2}, Ljava/util/TreeMap$BoundedMap;->bound(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/util/TreeMap$Node;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_0
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v1, v1, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    invoke-virtual {v1}, Ljava/util/TreeMap$Node;->first()Ljava/util/TreeMap$Node;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    sget-object v3, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    sget-object v3, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/util/TreeMap$2;->$SwitchMap$java$util$TreeMap$Bound:[I

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    invoke-virtual {v2}, Ljava/util/TreeMap$Bound;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :pswitch_3
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v1, v1, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v1, :cond_2

    :goto_2
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    sget-object v2, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, v0, v1, v2}, Ljava/util/TreeMap$BoundedMap;->bound(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/util/TreeMap$Node;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v1, v1, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    invoke-virtual {v1}, Ljava/util/TreeMap$Node;->last()Ljava/util/TreeMap$Node;

    move-result-object v0

    goto :goto_2

    :pswitch_4
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    sget-object v3, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    goto :goto_2

    :pswitch_5
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    sget-object v3, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/TreeMap$Relation;",
            ")",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-boolean v3, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    invoke-virtual {p2, v3}, Ljava/util/TreeMap$Relation;->forOrder(Z)Ljava/util/TreeMap$Relation;

    move-result-object p2

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    if-eq v3, v4, :cond_2

    sget-object v3, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    if-eq p2, v3, :cond_0

    sget-object v3, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    if-ne p2, v3, :cond_2

    :cond_0
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v3, v3, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    iget-object v4, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    invoke-interface {v3, v4, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1

    iget-object p1, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    sget-object v4, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    if-ne v3, v4, :cond_6

    sget-object p2, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    :cond_1
    :goto_0
    sget-object v2, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    :cond_2
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    if-eq v3, v4, :cond_5

    sget-object v3, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    if-eq p2, v3, :cond_3

    sget-object v3, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    if-ne p2, v3, :cond_5

    :cond_3
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v3, v3, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    iget-object v4, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    invoke-interface {v3, v4, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object p1, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    sget-object v4, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    if-ne v3, v4, :cond_7

    sget-object p2, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    :cond_4
    :goto_1
    sget-object v1, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    :cond_5
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v3

    invoke-direct {p0, v3, v1, v2}, Ljava/util/TreeMap$BoundedMap;->bound(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/util/TreeMap$Node;

    move-result-object v3

    return-object v3

    :cond_6
    if-gez v0, :cond_1

    sget-object p2, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    goto :goto_0

    :cond_7
    if-lez v0, :cond_4

    sget-object p2, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    goto :goto_1
.end method

.method private isInBounds(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, p1, v0, v1}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z

    move-result v0

    return v0
.end method

.method private isInBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/TreeMap$Bound;",
            "Ljava/util/TreeMap$Bound;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v1, v1, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v1, v1, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_0

    :cond_2
    sget-object v1, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    if-ne p3, v1, :cond_4

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v1, v1, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    sget-object v1, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    if-ne p3, v1, :cond_3

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v1, v1, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_3

    goto :goto_0
.end method

.method private outOfBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/lang/IllegalArgumentException;
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not in range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    invoke-virtual {p2, v2}, Ljava/util/TreeMap$Bound;->leftCap(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    invoke-virtual {p3, v2}, Ljava/util/TreeMap$Bound;->rightCap(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private subMap(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)Ljava/util/NavigableMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/TreeMap$Bound;",
            "TK;",
            "Ljava/util/TreeMap$Bound;",
            ")",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    iget-boolean v0, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    if-nez v0, :cond_0

    move-object v9, p1

    move-object v7, p2

    move-object p1, p3

    move-object p2, p4

    move-object p3, v9

    move-object p4, v7

    :cond_0
    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    if-ne p2, v0, :cond_3

    iget-object p1, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    iget-object p2, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    :cond_1
    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    if-ne p4, v0, :cond_5

    iget-object p3, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    iget-object p4, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    :cond_2
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-boolean v2, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    return-object v0

    :cond_3
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    if-ne p2, v0, :cond_4

    sget-object v8, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    :goto_0
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, p1, v8, v0}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, p3, v8, v0}, Ljava/util/TreeMap$BoundedMap;->outOfBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_4
    iget-object v8, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    if-ne p4, v0, :cond_6

    sget-object v10, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    :goto_1
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, p3, v0, v10}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, p3, v0, v10}, Ljava/util/TreeMap$BoundedMap;->outOfBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_6
    iget-object v10, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    goto :goto_1
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    sget-object v1, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

    move-result-object v1

    #calls: Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    invoke-static {v0, v1}, Ljava/util/TreeMap;->access$300(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

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

    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

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

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    iget-boolean v0, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v0, v0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

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

    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-boolean v2, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    iget-object v4, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    iget-object v5, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    iget-object v6, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    invoke-virtual {v0}, Ljava/util/TreeMap$BoundedMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
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

    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-boolean v2, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    iget-object v4, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    iget-object v5, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    iget-object v6, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
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

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->entrySet:Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;

    invoke-direct {v0, p0}, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;-><init>(Ljava/util/TreeMap$BoundedMap;)V

    iput-object v0, p0, Ljava/util/TreeMap$BoundedMap;->entrySet:Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;

    goto :goto_0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    move-result-object v1

    #calls: Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    invoke-static {v0, v1}, Ljava/util/TreeMap;->access$300(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    sget-object v1, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

    move-result-object v1

    #calls: Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    invoke-static {v0, v1}, Ljava/util/TreeMap;->access$300(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

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

    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/NavigableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    sget-object v2, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, v0, v1, p1, v2}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    if-eqz p2, :cond_0

    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    :goto_0
    const/4 v1, 0x0

    sget-object v2, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, v1, v2, p1, v0}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)Ljava/util/NavigableMap;

    move-result-object v1

    return-object v1

    :cond_0
    sget-object v0, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    goto :goto_0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/TreeMap$BoundedMap;->headMap(Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    sget-object v1, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

    move-result-object v1

    #calls: Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    invoke-static {v0, v1}, Ljava/util/TreeMap;->access$300(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

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

    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

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
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    move-result-object v1

    if-nez v1, :cond_0

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

    invoke-virtual {p0}, Ljava/util/TreeMap$BoundedMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    move-result-object v1

    #calls: Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    invoke-static {v0, v1}, Ljava/util/TreeMap;->access$300(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    sget-object v1, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

    move-result-object v1

    #calls: Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    invoke-static {v0, v1}, Ljava/util/TreeMap;->access$300(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

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

    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

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

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->keySet:Ljava/util/TreeMap$BoundedMap$BoundedKeySet;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;

    invoke-direct {v0, p0}, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;-><init>(Ljava/util/TreeMap$BoundedMap;)V

    iput-object v0, p0, Ljava/util/TreeMap$BoundedMap;->keySet:Ljava/util/TreeMap$BoundedMap$BoundedKeySet;

    goto :goto_0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->removeInternal(Ljava/util/TreeMap$Node;)V

    :cond_0
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #calls: Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    invoke-static {v1, v0}, Ljava/util/TreeMap;->access$300(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v1

    return-object v1
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->removeInternal(Ljava/util/TreeMap$Node;)V

    :cond_0
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #calls: Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    invoke-static {v1, v0}, Ljava/util/TreeMap;->access$300(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v1

    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, p1, v0, v1}, Ljava/util/TreeMap$BoundedMap;->outOfBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->putInternal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Ljava/util/TreeMap$BoundedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->count(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    sget-object v1, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, p1, v0, p2, v1}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    if-eqz p2, :cond_0

    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    :goto_0
    if-eqz p4, :cond_1

    sget-object v1, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    :goto_1
    invoke-direct {p0, p1, v0, p3, v1}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)Ljava/util/NavigableMap;

    move-result-object v2

    return-object v2

    :cond_0
    sget-object v0, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    goto :goto_1
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/NavigableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    const/4 v1, 0x0

    sget-object v2, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    if-eqz p2, :cond_0

    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    :goto_0
    const/4 v1, 0x0

    sget-object v2, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)Ljava/util/NavigableMap;

    move-result-object v1

    return-object v1

    :cond_0
    sget-object v0, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    goto :goto_0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/TreeMap$BoundedMap;->tailMap(Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/TreeMap$AscendingSubMap;

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    iget-object v4, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    iget-object v5, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    invoke-direct/range {v0 .. v5}, Ljava/util/TreeMap$AscendingSubMap;-><init>(Ljava/util/TreeMap;Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/TreeMap$DescendingSubMap;

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    iget-object v4, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    iget-object v5, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    invoke-direct/range {v0 .. v5}, Ljava/util/TreeMap$DescendingSubMap;-><init>(Ljava/util/TreeMap;Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    goto :goto_0
.end method
