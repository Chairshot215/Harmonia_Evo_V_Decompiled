.class public Lorg/apache/xpath/axes/ChildTestIterator;
.super Lorg/apache/xpath/axes/BasicTestIterator;
.source "ChildTestIterator.java"


# static fields
.field static final serialVersionUID:J = -0x6e254e40aacb86baL


# instance fields
.field protected transient m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/DTMAxisTraverser;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/BasicTestIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    iput-object p1, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    return-void
.end method

.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xpath/axes/BasicTestIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    return-void
.end method


# virtual methods
.method public cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/xpath/axes/BasicTestIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/ChildTestIterator;

    iget-object v1, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iput-object v1, v0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    return-object v0
.end method

.method public detach()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    invoke-super {p0}, Lorg/apache/xpath/axes/BasicTestIterator;->detach()V

    :cond_0
    return-void
.end method

.method public getAxis()I
    .locals 1

    const/4 v0, 0x3

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

    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/BasicTestIterator;->setRoot(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    return-void
.end method
