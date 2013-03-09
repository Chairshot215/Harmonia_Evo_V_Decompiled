.class Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescendantFromRootTraverser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    return-void
.end method


# virtual methods
.method public first(I)I
    .locals 3

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_firstch(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    move-result v0

    return v0
.end method

.method public first(II)I
    .locals 5

    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;->isIndexed(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;->getFirstPotential(I)I

    move-result v0

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, v1, v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;->getNextIndexed(III)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    move-result v3

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v3, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getDocumentRoot(I)I

    move-result v2

    invoke-virtual {p0, v2, v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;->next(III)I

    move-result v3

    goto :goto_0
.end method

.method protected getFirstPotential(I)I
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_firstch(I)I

    move-result v0

    return v0
.end method

.method protected getSubtreeRoot(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
