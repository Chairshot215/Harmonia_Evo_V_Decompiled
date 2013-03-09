.class public Lorg/apache/xalan/templates/ElemCallTemplate;
.super Lorg/apache/xalan/templates/ElemForEach;
.source "ElemCallTemplate.java"


# static fields
.field static final serialVersionUID:J = 0x4585cc23655c8c7fL


# instance fields
.field protected m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

.field private m_template:Lorg/apache/xalan/templates/ElemTemplate;

.field public m_templateName:Lorg/apache/xml/utils/QName;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemForEach;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    return-void
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 2

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    move-object v1, p1

    check-cast v1, Lorg/apache/xalan/templates/ElemWithParam;

    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/ElemCallTemplate;->setParamElem(Lorg/apache/xalan/templates/ElemWithParam;)V

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemForEach;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    return-object v1
.end method

.method public callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemForEach;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    return-void
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemForEach;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElemCount()I

    move-result v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    invoke-virtual {p0, v4}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElem(I)Lorg/apache/xalan/templates/ElemWithParam;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/xalan/templates/ElemWithParam;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    if-nez v7, :cond_4

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemCallTemplate;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    invoke-virtual {v7, v8}, Lorg/apache/xalan/templates/StylesheetRoot;->getTemplateComposed(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    iget-object v7, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    if-nez v7, :cond_1

    const-string v7, "ER_ELEMTEMPLATEELEM_ERR"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljavax/xml/transform/TransformerException;

    invoke-direct {v7, v6, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw v7

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElemCount()I

    move-result v5

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_4

    invoke-virtual {p0, v4}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElem(I)Lorg/apache/xalan/templates/ElemWithParam;

    move-result-object v3

    const/4 v7, -0x1

    iput v7, v3, Lorg/apache/xalan/templates/ElemWithParam;->m_index:I

    const/4 v2, 0x0

    iget-object v7, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v7}, Lorg/apache/xalan/templates/ElemTemplate;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v7

    const/16 v8, 0x29

    if-ne v7, v8, :cond_3

    move-object v0, v1

    check-cast v0, Lorg/apache/xalan/templates/ElemParam;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemParam;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v7

    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemWithParam;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iput v2, v3, Lorg/apache/xalan/templates/ElemWithParam;->m_index:I

    :cond_2
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElemCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElem(I)Lorg/apache/xalan/templates/ElemWithParam;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/ElemWithParam;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemForEach;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    if-eqz v11, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    iget v11, v11, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    invoke-virtual {v9, v11}, Lorg/apache/xpath/VariableStack;->link(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    iget v11, v11, Lorg/apache/xalan/templates/ElemTemplate;->m_inArgsSize:I

    if-lez v11, :cond_2

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    iget v12, v12, Lorg/apache/xalan/templates/ElemTemplate;->m_inArgsSize:I

    invoke-virtual {v9, v11, v12}, Lorg/apache/xpath/VariableStack;->clearLocalSlots(II)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    if-eqz v11, :cond_2

    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v1

    invoke-virtual {v9, v8}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    array-length v7, v11

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v7, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    aget-object v2, v11, v3

    iget v11, v2, Lorg/apache/xalan/templates/ElemWithParam;->m_index:I

    if-ltz v11, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Lorg/apache/xalan/templates/ElemWithParam;->getValue(Lorg/apache/xalan/transformer/TransformerImpl;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v5

    iget v11, v2, Lorg/apache/xalan/templates/ElemWithParam;->m_index:I

    invoke-virtual {v9, v11, v5, v4}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v9, v4}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    :cond_2
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v6

    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v10, v11}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lorg/apache/xalan/templates/ElemTemplate;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    invoke-virtual {v10, v6}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual {v9, v8}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    :goto_1
    return-void

    :catchall_0
    move-exception v11

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    invoke-virtual {v10, v6}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual {v9, v8}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    throw v11

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v11

    const-string v12, "ER_TEMPLATE_NOT_FOUND"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12, v13}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getName()Lorg/apache/xml/utils/QName;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "call-template"

    return-object v0
.end method

.method public getParamElem(I)Lorg/apache/xalan/templates/ElemWithParam;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getParamElemCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    array-length v0, v0

    goto :goto_0
.end method

.method public getXSLToken()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public setName(Lorg/apache/xml/utils/QName;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    return-void
.end method

.method public setParamElem(Lorg/apache/xalan/templates/ElemWithParam;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/xalan/templates/ElemWithParam;

    iput-object v2, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    aput-object p1, v2, v3

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    array-length v1, v2

    add-int/lit8 v2, v1, 0x1

    new-array v0, v2, [Lorg/apache/xalan/templates/ElemWithParam;

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    aput-object p1, v0, v1

    goto :goto_0
.end method
