.class public Lorg/apache/xpath/axes/WalkingIteratorSorted;
.super Lorg/apache/xpath/axes/WalkingIterator;
.source "WalkingIteratorSorted.java"


# static fields
.field static final serialVersionUID:J = -0x3e9fa9c3363f67d5L


# instance fields
.field protected m_inNaturalOrderStatic:Z


# direct methods
.method public constructor <init>(Lorg/apache/xml/utils/PrefixResolver;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/xpath/axes/WalkingIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/axes/WalkingIteratorSorted;->m_inNaturalOrderStatic:Z

    return-void
.end method

.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xpath/axes/WalkingIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/axes/WalkingIteratorSorted;->m_inNaturalOrderStatic:Z

    return-void
.end method


# virtual methods
.method canBeWalkedInNaturalDocOrderStatic()Z
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-eqz v9, :cond_9

    iget-object v6, p0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v1, 0x0

    :goto_0
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lorg/apache/xpath/axes/AxesWalker;->getAxis()I

    move-result v0

    invoke-virtual {v6}, Lorg/apache/xpath/axes/AxesWalker;->isDocOrdered()Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x3

    if-eq v0, v9, :cond_0

    const/16 v9, 0xd

    if-eq v0, v9, :cond_0

    const/16 v9, 0x13

    if-ne v0, v9, :cond_2

    :cond_0
    move v3, v7

    :goto_1
    if-nez v3, :cond_1

    const/4 v9, -0x1

    if-ne v0, v9, :cond_3

    :cond_1
    invoke-virtual {v6}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v3, v8

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v9

    if-nez v9, :cond_6

    move v2, v7

    :goto_2
    if-eqz v2, :cond_7

    invoke-virtual {v6}, Lorg/apache/xpath/axes/AxesWalker;->isDocOrdered()Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x4

    if-eq v0, v9, :cond_5

    const/4 v9, 0x5

    if-eq v0, v9, :cond_5

    const/16 v9, 0x11

    if-eq v0, v9, :cond_5

    const/16 v9, 0x12

    if-eq v0, v9, :cond_5

    :cond_4
    const/4 v9, 0x2

    if-ne v0, v9, :cond_7

    :cond_5
    :goto_3
    return v7

    :cond_6
    move v2, v8

    goto :goto_2

    :cond_7
    move v7, v8

    goto :goto_3

    :cond_8
    move v7, v8

    goto :goto_3

    :cond_9
    move v7, v8

    goto :goto_3
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/WalkingIterator;->fixupVariables(Ljava/util/Vector;I)V

    invoke-virtual {p0}, Lorg/apache/xpath/axes/WalkingIteratorSorted;->getAnalysisBits()I

    move-result v0

    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->isNaturalDocOrder(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xpath/axes/WalkingIteratorSorted;->m_inNaturalOrderStatic:Z

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xpath/axes/WalkingIteratorSorted;->m_inNaturalOrderStatic:Z

    goto :goto_0
.end method

.method public isDocOrdered()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xpath/axes/WalkingIteratorSorted;->m_inNaturalOrderStatic:Z

    return v0
.end method
