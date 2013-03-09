.class public Lorg/apache/xpath/objects/XObject;
.super Lorg/apache/xpath/Expression;
.source "XObject.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CLASS_BOOLEAN:I = 0x1

.field public static final CLASS_NODESET:I = 0x4

.field public static final CLASS_NULL:I = -0x1

.field public static final CLASS_NUMBER:I = 0x2

.field public static final CLASS_RTREEFRAG:I = 0x5

.field public static final CLASS_STRING:I = 0x3

.field public static final CLASS_UNKNOWN:I = 0x0

.field public static final CLASS_UNRESOLVEDVARIABLE:I = 0x258

.field static final serialVersionUID:J = -0xb67edf6448449e7L


# instance fields
.field protected m_obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public static create(Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;
    .locals 1

    invoke-static {p0}, Lorg/apache/xpath/objects/XObjectFactory;->create(Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 1

    invoke-static {p0, p1}, Lorg/apache/xpath/objects/XObjectFactory;->create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allowDetachToRelease(Z)V
    .locals 0

    return-void
.end method

.method public appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    return-void
.end method

.method public bool()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v3, 0x0

    const-string v0, "ER_CANT_CONVERT_TO_NUMBER"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->getTypeString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method public boolWithSideEffects()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result v0

    return v0
.end method

.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "callVisitors should not be called for this object!!!"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/objects/XObject;->assertion(ZLjava/lang/String;)V

    return-void
.end method

.method public castToType(ILorg/apache/xpath/XPathContext;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const-string v1, "ER_CANT_CONVERT_TO_TYPE"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->getTypeString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XObject;->isSameClass(Lorg/apache/xpath/Expression;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/apache/xpath/objects/XObject;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public destruct()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XObject;->allowDetachToRelease(Z)V

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->detach()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public detach()V
    .locals 0

    return-void
.end method

.method public dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/xml/utils/XMLString;->dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V

    return-void
.end method

.method public equals(Lorg/apache/xpath/objects/XObject;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    iget-object v1, p1, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected error(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/xpath/XPathException;

    invoke-direct {v1, v0, p0}, Lorg/apache/xpath/XPathException;-><init>(Ljava/lang/String;Lorg/apache/xpath/ExpressionNode;)V

    throw v1
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    return-object p0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0

    return-void
.end method

.method public getFresh()Lorg/apache/xpath/objects/XObject;
    .locals 0

    return-object p0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#UNKNOWN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greaterThan(Lorg/apache/xpath/objects/XObject;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->lessThan(Lorg/apache/xpath/objects/XObject;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public greaterThanOrEqual(Lorg/apache/xpath/objects/XObject;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->lessThanOrEqual(Lorg/apache/xpath/objects/XObject;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iter()Lorg/apache/xml/dtm/DTMIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const-string v0, "ER_CANT_CONVERT_TO_NODELIST"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->getTypeString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public lessThan(Lorg/apache/xpath/objects/XObject;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->greaterThan(Lorg/apache/xpath/objects/XObject;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lessThanOrEqual(Lorg/apache/xpath/objects/XObject;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->greaterThanOrEqual(Lorg/apache/xpath/objects/XObject;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mutableNodeset()Lorg/apache/xpath/NodeSetDTM;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const-string v0, "ER_CANT_CONVERT_TO_MUTABLENODELIST"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->getTypeString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast v0, Lorg/apache/xpath/NodeSetDTM;

    return-object v0
.end method

.method public nodelist()Lorg/w3c/dom/NodeList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const-string v0, "ER_CANT_CONVERT_TO_NODELIST"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->getTypeString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public nodeset()Lorg/w3c/dom/traversal/NodeIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const-string v0, "ER_CANT_CONVERT_TO_NODELIST"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->getTypeString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public notEquals(Lorg/apache/xpath/objects/XObject;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->notEquals(Lorg/apache/xpath/objects/XObject;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public num()D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const-string v0, "ER_CANT_CONVERT_TO_NUMBER"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->getTypeString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public numWithSideEffects()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v0

    return-wide v0
.end method

.method public object()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    return-object v0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public rtf()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public rtf(Lorg/apache/xpath/XPathContext;)I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->rtf()I

    move-result v1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->createDocumentFragment()Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/xml/dtm/DTM;->appendTextChild(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v1

    :cond_0
    return v1
.end method

.method public rtree()Lorg/w3c/dom/DocumentFragment;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public rtree(Lorg/apache/xpath/XPathContext;)Lorg/w3c/dom/DocumentFragment;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->rtf()I

    move-result v2

    const/4 v3, -0x1

    if-ne v3, v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->createDocumentFragment()Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/xml/dtm/DTM;->appendTextChild(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v3

    invoke-interface {v1, v3}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/DocumentFragment;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, v2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v3

    invoke-interface {v1, v3}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/DocumentFragment;

    goto :goto_0
.end method

.method protected setObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    return-void
.end method

.method public str()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public xstr()Lorg/apache/xml/utils/XMLString;
    .locals 2

    invoke-static {}, Lorg/apache/xpath/objects/XMLStringFactoryImpl;->getFactory()Lorg/apache/xml/utils/XMLStringFactory;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    return-object v0
.end method
