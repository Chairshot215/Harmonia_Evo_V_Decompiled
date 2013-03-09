.class public Lorg/apache/xpath/compiler/OpMap;
.super Ljava/lang/Object;
.source "OpMap.java"


# static fields
.field static final BLOCKTOKENQUEUESIZE:I = 0x1f4

.field public static final MAPINDEX_LENGTH:I = 0x1

.field static final MAXTOKENQUEUESIZE:I = 0x1f4


# instance fields
.field protected m_currentPattern:Ljava/lang/String;

.field m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

.field m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x1f4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/xml/utils/ObjectVector;

    invoke-direct {v0, v1, v1}, Lorg/apache/xml/utils/ObjectVector;-><init>(II)V

    iput-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    return-void
.end method

.method public static getFirstChildPos(I)I
    .locals 1

    add-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static getFirstChildPosOfStep(I)I
    .locals 1

    add-int/lit8 v0, p0, 0x3

    return v0
.end method

.method public static getNextOpPos([II)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    aget v0, p0, v0

    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getArgLength(I)I
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result v0

    return v0
.end method

.method public getArgLengthOfStep(I)I
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    return v0
.end method

.method public getFirstPredicateOpPos(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v1, -0x2

    iget-object v2, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    invoke-virtual {v2, p1}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result v0

    const/16 v2, 0x25

    if-lt v0, v2, :cond_1

    const/16 v2, 0x35

    if-gt v0, v2, :cond_1

    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {v1, v2}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/16 v2, 0x16

    if-lt v0, v2, :cond_2

    const/16 v2, 0x19

    if-gt v0, v2, :cond_2

    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result v1

    add-int/2addr v1, p1

    goto :goto_0

    :cond_2
    if-eq v1, v0, :cond_0

    const-string v1, "ER_UNKNOWN_OPCODE"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/apache/xpath/compiler/OpMap;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getNextOpPos(I)I
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public getNextStepPos(I)I
    .locals 7

    const/16 v5, 0x35

    const/16 v4, 0x25

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    if-lt v1, v4, :cond_1

    if-gt v1, v5, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getNextOpPos(I)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x16

    if-lt v1, v2, :cond_4

    const/16 v2, 0x19

    if-gt v1, v2, :cond_4

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getNextOpPos(I)I

    move-result v0

    :goto_1
    const/16 v2, 0x1d

    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/OpMap;->getNextOpPos(I)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    if-lt v1, v4, :cond_3

    if-le v1, v5, :cond_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ER_UNKNOWN_STEP"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getOp(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result v0

    return v0
.end method

.method public getOpMap()Lorg/apache/xpath/compiler/OpMapVector;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    return-object v0
.end method

.method public getPatternString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_currentPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getStepLocalName(I)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getArgLengthOfStep(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v1, -0x2

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :pswitch_0
    const/4 v1, -0x2

    goto :goto_0

    :pswitch_1
    const/4 v1, -0x3

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 v3, p1, 0x4

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result v1

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 v3, p1, 0x5

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v2, -0x3

    if-ne v2, v1, :cond_1

    const-string v2, "*"

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getStepNS(I)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getArgLengthOfStep(I)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 v4, p1, 0x4

    invoke-virtual {v3, v4}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v3, -0x3

    if-ne v3, v1, :cond_0

    const-string v2, "*"

    goto :goto_0
.end method

.method public getStepTestType(I)I
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 v1, p1, 0x3

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result v0

    return v0
.end method

.method public getToken(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTokenQueue()Lorg/apache/xml/utils/ObjectVector;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    return-object v0
.end method

.method public getTokenQueueSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectVector;->size()I

    move-result v0

    return v0
.end method

.method public setOp(II)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    invoke-virtual {v0, p2, p1}, Lorg/apache/xpath/compiler/OpMapVector;->setElementAt(II)V

    return-void
.end method

.method shrink()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result v0

    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v1, v2}, Lorg/apache/xpath/compiler/OpMapVector;->setToSize(I)V

    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    invoke-virtual {v1, v3, v0}, Lorg/apache/xpath/compiler/OpMapVector;->setElementAt(II)V

    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v3, v2}, Lorg/apache/xpath/compiler/OpMapVector;->setElementAt(II)V

    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v3, v2}, Lorg/apache/xpath/compiler/OpMapVector;->setElementAt(II)V

    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/ObjectVector;->size()I

    move-result v0

    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/ObjectVector;->setToSize(I)V

    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    invoke-virtual {v1, v4, v0}, Lorg/apache/xml/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v4, v2}, Lorg/apache/xml/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v4, v2}, Lorg/apache/xml/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_currentPattern:Ljava/lang/String;

    return-object v0
.end method
