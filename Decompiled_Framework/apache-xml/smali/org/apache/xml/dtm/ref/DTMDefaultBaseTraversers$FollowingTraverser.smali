.class Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FollowingTraverser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    return-void
.end method


# virtual methods
.method public first(I)I
    .locals 4

    const/4 v3, -0x1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    move-result p1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_type(I)S

    move-result v1

    const/4 v2, 0x2

    if-eq v2, v1, :cond_0

    const/16 v2, 0xd

    if-ne v2, v1, :cond_1

    :cond_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_parent(I)I

    move-result p1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_firstch(I)I

    move-result v0

    if-eq v3, v0, :cond_1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    move-result v2

    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_nextsib(I)I

    move-result v0

    if-ne v3, v0, :cond_2

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_parent(I)I

    move-result p1

    :cond_2
    if-ne v3, v0, :cond_3

    if-ne v3, p1, :cond_1

    :cond_3
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    move-result v2

    goto :goto_0
.end method

.method public first(II)I
    .locals 4

    const/4 v3, -0x1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getNodeType(I)S

    move-result v1

    const/4 v2, 0x2

    if-eq v2, v1, :cond_0

    const/16 v2, 0xd

    if-ne v2, v1, :cond_2

    :cond_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getParent(I)I

    move-result p1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getFirstChild(I)I

    move-result v0

    if-eq v3, v0, :cond_2

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getExpandedTypeID(I)I

    move-result v2

    if-ne v2, p2, :cond_1

    move v2, v0

    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->next(III)I

    move-result v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getNextSibling(I)I

    move-result v0

    if-ne v3, v0, :cond_4

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getParent(I)I

    move-result p1

    if-ne v3, v0, :cond_3

    if-ne v3, p1, :cond_2

    :cond_3
    move v2, v0

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getExpandedTypeID(I)I

    move-result v2

    if-ne v2, p2, :cond_5

    move v2, v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->next(III)I

    move-result v2

    goto :goto_0
.end method

.method public next(II)I
    .locals 3

    const/4 v1, -0x1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    move-result p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_type(I)S

    move-result v0

    if-ne v1, v0, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v2, 0x2

    if-eq v2, v0, :cond_0

    const/16 v2, 0xd

    if-eq v2, v0, :cond_0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    move-result v1

    goto :goto_0
.end method

.method public next(III)I
    .locals 3

    const/4 v1, -0x1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    move-result p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_exptype(I)I

    move-result v0

    if-ne v1, v0, :cond_1

    :goto_0
    return v1

    :cond_1
    if-ne v0, p3, :cond_0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    move-result v1

    goto :goto_0
.end method
