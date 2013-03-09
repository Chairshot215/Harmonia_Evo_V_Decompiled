.class Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescendantTraverser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    return-void
.end method


# virtual methods
.method protected axisHasBeenProcessed(I)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public first(II)I
    .locals 4

    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->isIndexed(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->getSubtreeRoot(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->getFirstPotential(I)I

    move-result v0

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, v1, v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->getNextIndexed(III)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0, p1, p1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->next(III)I

    move-result v2

    goto :goto_0
.end method

.method protected getFirstPotential(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method protected getSubtreeRoot(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    move-result v0

    return v0
.end method

.method protected isAfterAxis(II)Z
    .locals 1

    :cond_0
    if-ne p2, p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p2

    if-ge p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isDescendant(II)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_parent(I)I

    move-result v0

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next(II)I
    .locals 3

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->getSubtreeRoot(I)I

    move-result v0

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    move-result v2

    add-int/lit8 p2, v2, 0x1

    :goto_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_type(I)S

    move-result v1

    invoke-virtual {p0, v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->isDescendant(II)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_1
    return v2

    :cond_0
    const/4 v2, 0x2

    if-eq v2, v1, :cond_1

    const/16 v2, 0xd

    if-ne v2, v1, :cond_2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    move-result v2

    goto :goto_1
.end method

.method public next(III)I
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->getSubtreeRoot(I)I

    move-result v1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    move-result v2

    add-int/lit8 p2, v2, 0x1

    invoke-virtual {p0, p3}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->isIndexed(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, v1, p2, p3}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->getNextIndexed(III)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    if-eq v0, p3, :cond_2

    add-int/lit8 p2, p2, 0x1

    :cond_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_exptype(I)I

    move-result v0

    invoke-virtual {p0, v1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->isDescendant(II)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    move-result v2

    goto :goto_0
.end method
