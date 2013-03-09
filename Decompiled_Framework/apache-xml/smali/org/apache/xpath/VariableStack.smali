.class public Lorg/apache/xpath/VariableStack;
.super Ljava/lang/Object;
.source "VariableStack.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CLEARLIMITATION:I = 0x400

.field private static m_nulls:[Lorg/apache/xpath/objects/XObject;


# instance fields
.field private _currentFrameBottom:I

.field _frameTop:I

.field _links:[I

.field _linksTop:I

.field _stackFrames:[Lorg/apache/xpath/objects/XObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x400

    new-array v0, v0, [Lorg/apache/xpath/objects/XObject;

    sput-object v0, Lorg/apache/xpath/VariableStack;->m_nulls:[Lorg/apache/xpath/objects/XObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xpath/VariableStack;->reset()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/VariableStack;->reset(II)V

    return-void
.end method


# virtual methods
.method public clearLocalSlots(II)V
    .locals 3

    iget v0, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    add-int/2addr p1, v0

    sget-object v0, Lorg/apache/xpath/VariableStack;->m_nulls:[Lorg/apache/xpath/objects/XObject;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    invoke-static {v0, v1, v2, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/VariableStack;

    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    invoke-virtual {v1}, [Lorg/apache/xpath/objects/XObject;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/xpath/objects/XObject;

    check-cast v1, [Lorg/apache/xpath/objects/XObject;

    iput-object v1, v0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, v0, Lorg/apache/xpath/VariableStack;->_links:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public elementAt(I)Lorg/apache/xpath/objects/XObject;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getGlobalVariable(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    aget-object v0, v1, p2

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v1

    const/16 v2, 0x258

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/objects/XObject;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    aput-object v0, v1, p2

    :cond_0
    return-object v0
.end method

.method public getGlobalVariable(Lorg/apache/xpath/XPathContext;IZ)Lorg/apache/xpath/objects/XObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    aget-object v0, v1, p2

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v1

    const/16 v2, 0x258

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/objects/XObject;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    aput-object v0, v1, p2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-nez p3, :cond_0

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->getFresh()Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalVariable(II)Lorg/apache/xpath/objects/XObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    add-int/2addr p1, p2

    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    aget-object v0, v1, p1

    return-object v0
.end method

.method public getLocalVariable(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget v1, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    add-int/2addr p2, v1

    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    aget-object v0, v1, p2

    if-nez v0, :cond_0

    new-instance v1, Ljavax/xml/transform/TransformerException;

    const-string v2, "ER_VARIABLE_ACCESSED_BEFORE_BIND"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v1

    const/16 v2, 0x258

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/objects/XObject;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    aput-object v0, v1, p2

    :cond_1
    return-object v0
.end method

.method public getLocalVariable(Lorg/apache/xpath/XPathContext;IZ)Lorg/apache/xpath/objects/XObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget v1, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    add-int/2addr p2, v1

    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    aget-object v0, v1, p2

    if-nez v0, :cond_0

    new-instance v1, Ljavax/xml/transform/TransformerException;

    const-string v2, "ER_VARIABLE_ACCESSED_BEFORE_BIND"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v1

    const/16 v2, 0x258

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/objects/XObject;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    aput-object v0, v1, p2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    if-nez p3, :cond_1

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->getFresh()Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    goto :goto_0
.end method

.method public getStackFrame()I
    .locals 1

    iget v0, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    return v0
.end method

.method public getVariableOrParam(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/QName;)Lorg/apache/xpath/objects/XObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v0

    instance-of v4, v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    if-eqz v4, :cond_3

    move-object v1, v0

    check-cast v1, Lorg/apache/xalan/templates/ElemTemplateElement;

    instance-of v4, v1, Lorg/apache/xalan/templates/Stylesheet;

    if-nez v4, :cond_2

    :goto_0
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    instance-of v4, v4, Lorg/apache/xalan/templates/Stylesheet;

    if-nez v4, :cond_2

    move-object v2, v1

    :cond_0
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPreviousSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v4, v1, Lorg/apache/xalan/templates/ElemVariable;

    if-eqz v4, :cond_0

    move-object v3, v1

    check-cast v3, Lorg/apache/xalan/templates/ElemVariable;

    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v4

    invoke-virtual {v4, p2}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemVariable;->getIndex()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lorg/apache/xpath/VariableStack;->getLocalVariable(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_1
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v4

    invoke-virtual {v4, p2}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariableOrParamComposed(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemVariable;->getIndex()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lorg/apache/xpath/VariableStack;->getGlobalVariable(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v4

    goto :goto_1

    :cond_3
    new-instance v4, Ljavax/xml/transform/TransformerException;

    const-string v5, "ER_VAR_NOT_RESOLVABLE"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p2}, Lorg/apache/xml/utils/QName;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public isLocalSet(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    iget v1, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public link(I)I
    .locals 5

    const/4 v4, 0x0

    iget v2, p0, Lorg/apache/xpath/VariableStack;->_frameTop:I

    iput v2, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    iget v2, p0, Lorg/apache/xpath/VariableStack;->_frameTop:I

    add-int/2addr v2, p1

    iput v2, p0, Lorg/apache/xpath/VariableStack;->_frameTop:I

    iget v2, p0, Lorg/apache/xpath/VariableStack;->_frameTop:I

    iget-object v3, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    array-length v2, v2

    add-int/lit16 v2, v2, 0x1000

    add-int/2addr v2, p1

    new-array v1, v2, [Lorg/apache/xpath/objects/XObject;

    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    iget-object v3, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    :cond_0
    iget v2, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    array-length v3, v3

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    array-length v2, v2

    add-int/lit16 v2, v2, 0x800

    new-array v0, v2, [I

    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    iget-object v3, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    :cond_1
    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    iget v3, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    iget v4, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    aput v4, v2, v3

    iget v2, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    return v2
.end method

.method public reset()V
    .locals 3

    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    if-nez v2, :cond_0

    const/16 v0, 0x1000

    :goto_0
    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    if-nez v2, :cond_1

    const/16 v1, 0x2000

    :goto_1
    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/VariableStack;->reset(II)V

    return-void

    :cond_0
    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    array-length v0, v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    array-length v1, v2

    goto :goto_1
.end method

.method protected reset(II)V
    .locals 4

    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/xpath/VariableStack;->_frameTop:I

    iput v3, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    if-nez v0, :cond_0

    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    iget v1, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    aput v3, v0, v1

    new-array v0, p2, [Lorg/apache/xpath/objects/XObject;

    iput-object v0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    return-void
.end method

.method public setGlobalVariable(ILorg/apache/xpath/objects/XObject;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    aput-object p2, v0, p1

    return-void
.end method

.method public setLocalVariable(ILorg/apache/xpath/objects/XObject;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    iget v1, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    add-int/2addr v1, p1

    aput-object p2, v0, v1

    return-void
.end method

.method public setLocalVariable(ILorg/apache/xpath/objects/XObject;I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    add-int v1, p1, p3

    aput-object p2, v0, v1

    return-void
.end method

.method public setStackFrame(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/apache/xpath/VariableStack;->_frameTop:I

    return v0
.end method

.method public unlink()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    iget v1, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/xpath/VariableStack;->_frameTop:I

    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    iget v1, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    return-void
.end method

.method public unlink(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    iget v1, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/xpath/VariableStack;->_frameTop:I

    iput p1, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    return-void
.end method
