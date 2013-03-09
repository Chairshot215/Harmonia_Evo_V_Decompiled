.class abstract Ljava/util/TreeMap$NavigableSubMap;
.super Ljava/util/AbstractMap;
.source "TreeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "NavigableSubMap"
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
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1d2f58f19bdef1f8L


# instance fields
.field fromStart:Z

.field hi:Ljava/lang/Object;

.field hiInclusive:Z

.field lo:Ljava/lang/Object;

.field loInclusive:Z

.field m:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field toEnd:Z


# direct methods
.method constructor <init>(Ljava/util/TreeMap;Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<TK;TV;>;TK;",
            "Ljava/util/TreeMap$Bound;",
            "TK;",
            "Ljava/util/TreeMap$Bound;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object p1, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    iput-object p2, p0, Ljava/util/TreeMap$NavigableSubMap;->lo:Ljava/lang/Object;

    iput-object p4, p0, Ljava/util/TreeMap$NavigableSubMap;->hi:Ljava/lang/Object;

    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    if-ne p3, v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->fromStart:Z

    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    if-ne p5, v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->toEnd:Z

    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    if-ne p3, v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->loInclusive:Z

    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    if-ne p5, v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Ljava/util/TreeMap$NavigableSubMap;->hiInclusive:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method


# virtual methods
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

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->fromStart:Z

    if-eqz v0, :cond_0

    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    :goto_0
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->toEnd:Z

    if-eqz v0, :cond_2

    sget-object v6, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    :goto_1
    instance-of v0, p0, Ljava/util/TreeMap$DescendingSubMap;

    if-nez v0, :cond_4

    const/4 v2, 0x1

    :goto_2
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Ljava/util/TreeMap$NavigableSubMap;->lo:Ljava/lang/Object;

    iget-object v5, p0, Ljava/util/TreeMap$NavigableSubMap;->hi:Ljava/lang/Object;

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    return-object v0

    :cond_0
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->loInclusive:Z

    if-eqz v0, :cond_1

    sget-object v4, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    goto :goto_0

    :cond_1
    sget-object v4, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->hiInclusive:Z

    if-eqz v0, :cond_3

    sget-object v6, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    goto :goto_1

    :cond_3
    sget-object v6, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method
