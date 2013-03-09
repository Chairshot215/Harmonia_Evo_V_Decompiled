.class Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;
.super Lorg/apache/xml/dtm/DTMAxisTraverser;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrecedingTraverser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-direct {p0}, Lorg/apache/xml/dtm/DTMAxisTraverser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    return-void
.end method


# virtual methods
.method protected isAncestor(II)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    :goto_0
    const/4 v0, -0x1

    if-eq v0, p1, :cond_1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public next(II)I
    .locals 3

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    move-result v0

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    move-result v2

    add-int/lit8 p2, v2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_type(I)S

    move-result v1

    const/4 v2, 0x2

    if-eq v2, v1, :cond_0

    const/16 v2, 0xd

    if-eq v2, v1, :cond_0

    invoke-virtual {p0, v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;->isAncestor(II)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    move-result v2

    :goto_1
    return v2

    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public next(III)I
    .locals 3

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    move-result v1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    move-result v2

    add-int/lit8 p2, v2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v2, v2, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v2, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    if-ne v0, p3, :cond_0

    invoke-virtual {p0, v1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;->isAncestor(II)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    move-result v2

    :goto_1
    return v2

    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method
