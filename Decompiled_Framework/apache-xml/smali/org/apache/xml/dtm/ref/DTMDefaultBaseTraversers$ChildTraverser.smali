.class Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;
.super Lorg/apache/xml/dtm/DTMAxisTraverser;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildTraverser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-direct {p0}, Lorg/apache/xml/dtm/DTMAxisTraverser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    return-void
.end method


# virtual methods
.method public first(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getFirstChild(I)I

    move-result v0

    return v0
.end method

.method public first(II)I
    .locals 3

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    move-result v1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_firstch(I)I

    move-result v2

    invoke-virtual {p0, v1, v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->getNextIndexed(III)I

    move-result v0

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    move-result v2

    return v2
.end method

.method protected getNextIndexed(III)I
    .locals 7

    const/4 v6, -0x2

    const/4 v4, -0x1

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v5, v5, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v5, p3}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespaceID(I)I

    move-result v2

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v5, v5, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v5, p3}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalNameID(I)I

    move-result v0

    :cond_0
    :goto_0
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v5, v2, v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->findElementFromIndex(III)I

    move-result v1

    if-eq v6, v1, :cond_4

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v5, v5, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v5, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    if-ne v3, p1, :cond_1

    :goto_1
    return v1

    :cond_1
    if-ge v3, p1, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v5, v5, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v5, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    if-ge v3, p1, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    if-gt v3, p1, :cond_2

    add-int/lit8 p2, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->nextNode()Z

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v5, v5, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v5, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v5

    if-eq v5, v6, :cond_0

    move v1, v4

    goto :goto_1
.end method

.method public next(II)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getNextSibling(I)I

    move-result v0

    return v0
.end method

.method public next(III)I
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_nextsib(I)I

    move-result p2

    :goto_0
    if-eq v0, p2, :cond_0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v1, v1, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    if-ne v1, p3, :cond_1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    move-result v0

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_nextsib(I)I

    move-result p2

    goto :goto_0
.end method
