.class public Lorg/apache/xpath/axes/NodeSequence;
.super Lorg/apache/xpath/objects/XObject;
.source "NodeSequence.java"

# interfaces
.implements Lorg/apache/xml/dtm/DTMIterator;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/xpath/axes/PathComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x35a7b8becbfe0b34L


# instance fields
.field private m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

.field protected m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

.field protected m_iter:Lorg/apache/xml/dtm/DTMIterator;

.field protected m_last:I

.field protected m_next:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xpath/objects/XObject;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    instance-of v0, p1, Lorg/apache/xml/utils/NodeVector;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->SetVector(Lorg/apache/xml/utils/NodeVector;)V

    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/apache/xml/utils/NodeVector;

    const-string v1, "Must have a NodeVector as the object for NodeSequence!"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/axes/NodeSequence;->assertion(ZLjava/lang/String;)V

    instance-of v0, p1, Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/apache/xml/dtm/DTMIterator;

    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->setIter(Lorg/apache/xml/dtm/DTMIterator;)V

    check-cast p1, Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    move-result v0

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    :cond_1
    return-void
.end method

.method private constructor <init>(Lorg/apache/xml/dtm/DTMIterator;ILorg/apache/xpath/XPathContext;Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xpath/objects/XObject;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/NodeSequence;->setIter(Lorg/apache/xml/dtm/DTMIterator;)V

    invoke-virtual {p0, p2, p3}, Lorg/apache/xpath/axes/NodeSequence;->setRoot(ILjava/lang/Object;)V

    invoke-virtual {p0, p4}, Lorg/apache/xpath/axes/NodeSequence;->setShouldCacheNodes(Z)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/xml/dtm/DTMManager;)V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lorg/apache/xml/utils/NodeVector;

    invoke-direct {v0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    iput-object p1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    return-void
.end method

.method private cacheComplete()Z
    .locals 2

    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #calls: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->isComplete()Z
    invoke-static {v1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$100(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCache()Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    return-object v0
.end method

.method private markCacheComplete()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    const/4 v2, 0x1

    #calls: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->setCacheComplete(Z)V
    invoke-static {v1, v2}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$200(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected SetVector(Lorg/apache/xml/utils/NodeVector;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/NodeSequence;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method protected addNodeInDocOrder(I)I
    .locals 8

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v6

    const-string v7, "addNodeInDocOrder must be done on a mutable sequence!"

    invoke-virtual {p0, v6, v7}, Lorg/apache/xpath/axes/NodeSequence;->assertion(ZLjava/lang/String;)V

    const/4 v3, -0x1

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {v5, v2}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v0

    if-ne v0, p1, :cond_2

    const/4 v2, -0x2

    :cond_0
    const/4 v6, -0x2

    if-eq v2, v6, :cond_1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v5, p1, v3}, Lorg/apache/xml/utils/NodeVector;->insertElementAt(II)V

    :cond_1
    return v3

    :cond_2
    iget-object v6, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v6, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lorg/apache/xml/dtm/DTM;->isNodeAfter(II)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public allowDetachToRelease(Z)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->setShouldCacheNodes(Z)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTMIterator;->allowDetachToRelease(Z)V

    :cond_1
    invoke-super {p0, p1}, Lorg/apache/xpath/objects/XObject;->allowDetachToRelease(Z)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/NodeSequence;

    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/dtm/DTMIterator;

    iput-object v1, v0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    :cond_0
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #calls: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->increaseUseCount()V
    invoke-static {v1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$500(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)V

    :cond_1
    return-object v0
.end method

.method public cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/NodeSequence;

    const/4 v1, 0x0

    iput v1, v0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #calls: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->increaseUseCount()V
    invoke-static {v1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$500(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)V

    :cond_0
    return-object v0
.end method

.method public detach()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    :cond_0
    invoke-super {p0}, Lorg/apache/xpath/objects/XObject;->detach()V

    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/xpath/objects/XObject;->fixupVariables(Ljava/util/Vector;I)V

    return-void
.end method

.method public getAnalysisBits()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    instance-of v0, v0, Lorg/apache/xpath/axes/PathComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    check-cast v0, Lorg/apache/xpath/axes/PathComponent;

    invoke-interface {v0}, Lorg/apache/xpath/axes/PathComponent;->getAnalysisBits()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAxis()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getAxis()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v1, "Can not getAxis from a non-iterated node sequence!"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/axes/NodeSequence;->assertion(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public final getContainedIter()Lorg/apache/xml/dtm/DTMIterator;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    return-object v0
.end method

.method public getCurrentNode()I
    .locals 4

    const/4 v2, -0x1

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v1

    if-ltz v0, :cond_0

    invoke-virtual {v1}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v2

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v2}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentNode()I

    move-result v2

    goto :goto_0
.end method

.method public getCurrentPos()I
    .locals 1

    iget v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    return v0
.end method

.method public getDTM(I)Lorg/apache/xml/dtm/DTM;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    const-string v2, "Can not get a DTM Unless a DTMManager has been set!"

    invoke-virtual {p0, v1, v2}, Lorg/apache/xpath/axes/NodeSequence;->assertion(ZLjava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDTMManager()Lorg/apache/xml/dtm/DTMManager;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    return-object v0
.end method

.method public getExpandEntityReferences()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getExpandEntityReferences()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getIteratorCache()Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    return-object v0
.end method

.method public getLength()I
    .locals 5

    const/4 v4, -0x1

    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence;->getCache()Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    move-result-object v0

    if-eqz v0, :cond_3

    #calls: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->isComplete()Z
    invoke-static {v0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$100(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Z

    move-result v3

    if-eqz v3, :cond_0

    #calls: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->getVector()Lorg/apache/xml/utils/NodeVector;
    invoke-static {v0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$000(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Lorg/apache/xml/utils/NodeVector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v3

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    instance-of v3, v3, Lorg/apache/xpath/NodeSetDTM;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v3}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    move-result v3

    goto :goto_0

    :cond_1
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    if-ne v4, v3, :cond_2

    iget v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    invoke-virtual {p0, v4}, Lorg/apache/xpath/axes/NodeSequence;->runTo(I)V

    iput v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    :cond_2
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    goto :goto_0

    :cond_3
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    if-ne v4, v3, :cond_4

    iget-object v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v3}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    move-result v3

    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    goto :goto_0

    :cond_4
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    goto :goto_0
.end method

.method public getRoot()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getRoot()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected getVector()Lorg/apache/xml/utils/NodeVector;
    .locals 2

    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #calls: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->getVector()Lorg/apache/xml/utils/NodeVector;
    invoke-static {v1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$000(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Lorg/apache/xml/utils/NodeVector;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWhatToShow()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0x11

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getWhatToShow()I

    move-result v0

    goto :goto_0
.end method

.method public hasCache()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDocOrdered()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->isDocOrdered()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFresh()Z
    .locals 1

    iget v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMutable()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v0

    return v0
.end method

.method public item(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/NodeSequence;->setCurrentPos(I)V

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->nextNode()I

    move-result v0

    iput p1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    return v0
.end method

.method public nextNode()I
    .locals 6

    const/4 v3, -0x1

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v4, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    invoke-virtual {v2}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v1

    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence;->cacheComplete()Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    if-ne v3, v4, :cond_2

    iget-object v4, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-nez v4, :cond_3

    :cond_2
    iget v4, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    move v1, v3

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-nez v4, :cond_4

    move v1, v3

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v4}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v1

    if-eq v3, v1, :cond_7

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v3}, Lorg/apache/xml/dtm/DTMIterator;->isDocOrdered()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/xml/utils/NodeVector;->addElement(I)V

    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/NodeSequence;->addNodeInDocOrder(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    goto :goto_0

    :cond_6
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence;->markCacheComplete()V

    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    goto :goto_0
.end method

.method public previousNode()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    if-gtz v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/NodeSequence;->item(I)I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->previousNode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentPos()I

    move-result v1

    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    return-void
.end method

.method public runTo(I)V
    .locals 5

    const/4 v4, -0x1

    if-ne v4, p1, :cond_2

    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->nextNode()I

    move-result v0

    if-ne v4, v0, :cond_0

    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    if-eq v2, p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iput p1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v2

    if-nez v2, :cond_4

    iget v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    if-ge p1, v2, :cond_4

    :goto_1
    iget v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    if-lt v2, p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->previousNode()I

    move-result v0

    if-eq v4, v0, :cond_1

    goto :goto_1

    :cond_4
    :goto_2
    iget v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    if-ge v2, p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->nextNode()I

    move-result v0

    if-eq v4, v0, :cond_1

    goto :goto_2
.end method

.method public setCurrentPos(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/NodeSequence;->runTo(I)V

    return-void
.end method

.method public setItem(II)V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5, p2}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v3

    if-eq v3, p1, :cond_0

    iget-object v6, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #calls: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->useCount()I
    invoke-static {v6}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$300(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)I

    move-result v6

    if-le v6, v7, :cond_0

    new-instance v1, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    invoke-direct {v1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;-><init>()V

    :try_start_0
    invoke-virtual {v5}, Lorg/apache/xml/utils/NodeVector;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xml/utils/NodeVector;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #calls: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->setVector(Lorg/apache/xml/utils/NodeVector;)V
    invoke-static {v1, v2}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$400(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Lorg/apache/xml/utils/NodeVector;)V

    #calls: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->setCacheComplete(Z)V
    invoke-static {v1, v7}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$200(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Z)V

    iput-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    move-object v5, v2

    invoke-super {p0, v2}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v5, p1, p2}, Lorg/apache/xml/utils/NodeVector;->setElementAt(II)V

    invoke-virtual {v5}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v6

    iput v6, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v6, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v6, p1, p2}, Lorg/apache/xml/dtm/DTMIterator;->setItem(II)V

    goto :goto_0
.end method

.method public final setIter(Lorg/apache/xml/dtm/DTMIterator;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    return-void
.end method

.method protected setObject(Ljava/lang/Object;)V
    .locals 3

    instance-of v2, p1, Lorg/apache/xml/utils/NodeVector;

    if-eqz v2, :cond_2

    invoke-super {p0, p1}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    move-object v1, p1

    check-cast v1, Lorg/apache/xml/utils/NodeVector;

    iget-object v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #calls: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->setVector(Lorg/apache/xml/utils/NodeVector;)V
    invoke-static {v2, v1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$400(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Lorg/apache/xml/utils/NodeVector;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_0

    new-instance v2, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    invoke-direct {v2}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;-><init>()V

    iput-object v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    iget-object v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #calls: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->setVector(Lorg/apache/xml/utils/NodeVector;)V
    invoke-static {v2, v1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$400(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Lorg/apache/xml/utils/NodeVector;)V

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    if-eqz v2, :cond_3

    move-object v0, p1

    check-cast v0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    iput-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    iget-object v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #calls: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->increaseUseCount()V
    invoke-static {v2}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$500(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)V

    #calls: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->getVector()Lorg/apache/xml/utils/NodeVector;
    invoke-static {v0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$000(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Lorg/apache/xml/utils/NodeVector;

    move-result-object v2

    invoke-super {p0, v2}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v1, :cond_2

    move-object v0, p2

    check-cast v0, Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v1, p1, p2}, Lorg/apache/xml/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->isDocOrdered()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/NodeSequence;->setShouldCacheNodes(Z)V

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/NodeSequence;->runTo(I)V

    iput v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "Can not setRoot on a non-iterated NodeSequence!"

    invoke-virtual {p0, v2, v1}, Lorg/apache/xpath/axes/NodeSequence;->assertion(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public setShouldCacheNodes(Z)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xml/utils/NodeVector;

    invoke-direct {v0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->SetVector(Lorg/apache/xml/utils/NodeVector;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->SetVector(Lorg/apache/xml/utils/NodeVector;)V

    goto :goto_0
.end method
