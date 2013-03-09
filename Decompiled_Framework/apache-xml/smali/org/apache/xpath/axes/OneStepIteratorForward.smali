.class public Lorg/apache/xpath/axes/OneStepIteratorForward;
.super Lorg/apache/xpath/axes/ChildTestIterator;
.source "OneStepIteratorForward.java"


# static fields
.field static final serialVersionUID:J = -0x15e2677d048fa4e6L


# instance fields
.field protected m_axis:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/xpath/axes/ChildTestIterator;-><init>(Lorg/apache/xml/dtm/DTMAxisTraverser;)V

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_axis:I

    iput p1, p0, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_axis:I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/OneStepIteratorForward;->initNodeTest(I)V

    return-void
.end method

.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xpath/axes/ChildTestIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_axis:I

    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/xpath/axes/WalkerFactory;->getAxisFromStep(Lorg/apache/xpath/compiler/Compiler;I)I

    move-result v1

    iput v1, p0, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_axis:I

    return-void
.end method


# virtual methods
.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lorg/apache/xpath/axes/ChildTestIterator;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_axis:I

    check-cast p1, Lorg/apache/xpath/axes/OneStepIteratorForward;

    iget v2, p1, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_axis:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAxis()I
    .locals 1

    iget v0, p0, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_axis:I

    return v0
.end method

.method protected getNextNode()I
    .locals 3

    const/4 v0, -0x1

    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    iget v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v0

    goto :goto_0
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/ChildTestIterator;->setRoot(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xpath/axes/OneStepIteratorForward;->m_axis:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    return-void
.end method
