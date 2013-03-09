.class public Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NthDescendantIterator"
.end annotation


# instance fields
.field _pos:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->_pos:I

    return-void
.end method


# virtual methods
.method public next()I
    .locals 7

    const/4 v5, -0x1

    :cond_0
    invoke-super {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->next()I

    move-result v1

    if-eq v1, v5, :cond_4

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v6, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeIdentity(I)I

    move-result v1

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v6, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_parent(I)I

    move-result v2

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v6, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_firstch(I)I

    move-result v0

    const/4 v3, 0x0

    :cond_1
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v6, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_type(I)S

    move-result v4

    const/4 v6, 0x1

    if-ne v6, v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    iget v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->_pos:I

    if-ge v3, v6, :cond_3

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v6, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_nextsib(I)I

    move-result v0

    if-ne v0, v5, :cond_1

    :cond_3
    if-ne v1, v0, :cond_0

    move v5, v1

    :cond_4
    return v5
.end method
