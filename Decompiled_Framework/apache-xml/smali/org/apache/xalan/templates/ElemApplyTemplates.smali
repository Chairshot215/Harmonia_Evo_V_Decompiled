.class public Lorg/apache/xalan/templates/ElemApplyTemplates;
.super Lorg/apache/xalan/templates/ElemCallTemplate;
.source "ElemApplyTemplates.java"


# static fields
.field static final serialVersionUID:J = 0x2849f924dd38cb4cL


# instance fields
.field private m_isDefaultTemplate:Z

.field private m_mode:Lorg/apache/xml/utils/QName;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemCallTemplate;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_mode:Lorg/apache/xml/utils/QName;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_isDefaultTemplate:Z

    return-void
.end method


# virtual methods
.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemCallTemplate;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->pushCurrentTemplateRuleIsNull(Z)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMode()Lorg/apache/xml/utils/QName;

    move-result-object v0

    iget-boolean v2, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_isDefaultTemplate:Z

    if-nez v2, :cond_2

    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_mode:Lorg/apache/xml/utils/QName;

    if-nez v2, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_mode:Lorg/apache/xml/utils/QName;

    invoke-virtual {v0, v2}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_mode:Lorg/apache/xml/utils/QName;

    invoke-virtual {p1, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->pushMode(Lorg/apache/xml/utils/QName;)V

    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemApplyTemplates;->transformSelectedNodes(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popMode()V

    :cond_3
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentTemplateRuleIsNull()V

    return-void

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popMode()V

    :cond_4
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentTemplateRuleIsNull()V

    throw v2
.end method

.method public getMode()Lorg/apache/xml/utils/QName;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_mode:Lorg/apache/xml/utils/QName;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "apply-templates"

    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method public setIsDefaultTemplate(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_isDefaultTemplate:Z

    return-void
.end method

.method public setMode(Lorg/apache/xml/utils/QName;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemApplyTemplates;->m_mode:Lorg/apache/xml/utils/QName;

    return-void
.end method

.method public transformSelectedNodes(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    move/from16 v0, v27

    invoke-virtual {v8, v4, v0}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v28

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v33

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemApplyTemplates;->getParamElemCount()I

    move-result v20

    invoke-virtual/range {v33 .. v33}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v32

    const/16 v24, 0x0

    const/4 v8, -0x1

    :try_start_0
    invoke-virtual {v4, v8}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    const/4 v8, -0x1

    invoke-virtual {v4, v8}, Lorg/apache/xpath/XPathContext;->pushCurrentExpressionNode(I)V

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->pushSAXLocatorNull()V

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    if-nez v8, :cond_1

    const/16 v19, 0x0

    :goto_0
    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v28

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/xalan/templates/ElemApplyTemplates;->sortNodes(Lorg/apache/xpath/XPathContext;Ljava/util/Vector;Lorg/apache/xml/dtm/DTMIterator;)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v28

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/apache/xalan/templates/StylesheetRoot;->getTemplateListComposed()Lorg/apache/xalan/templates/TemplateList;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getQuietConflictWarnings()Z

    move-result v9

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v10

    const/4 v11, -0x1

    if-lez v20, :cond_3

    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/xpath/VariableStack;->link(I)I

    move-result v11

    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    aget-object v17, v8, v18

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/ElemWithParam;->getValue(Lorg/apache/xalan/transformer/TransformerImpl;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v22

    move-object/from16 v0, v33

    move/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v11}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;I)V

    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->processSortKeys(Lorg/apache/xalan/templates/ElemForEach;I)Ljava/util/Vector;

    move-result-object v19

    goto :goto_0

    :cond_2
    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    :cond_3
    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lorg/apache/xpath/XPathContext;->pushContextNodeList(Lorg/apache/xml/dtm/DTMIterator;)V

    const/16 v24, 0x1

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->getCurrentNodeStack()Lorg/apache/xml/utils/IntStack;

    move-result-object v14

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->getCurrentExpressionNodeStack()Lorg/apache/xml/utils/IntStack;

    move-result-object v12

    :goto_2
    const/4 v8, -0x1

    invoke-interface/range {v28 .. v28}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v5

    if-eq v8, v5, :cond_11

    invoke-virtual {v14, v5}, Lorg/apache/xml/utils/IntStack;->setTop(I)V

    invoke-virtual {v12, v5}, Lorg/apache/xml/utils/IntStack;->setTop(I)V

    invoke-virtual {v4, v5}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v8

    if-eq v8, v10, :cond_4

    invoke-virtual {v4, v5}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v10

    :cond_4
    invoke-interface {v10, v5}, Lorg/apache/xml/dtm/DTM;->getExpandedTypeID(I)I

    move-result v6

    invoke-interface {v10, v5}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v21

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMode()Lorg/apache/xml/utils/QName;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual/range {v3 .. v10}, Lorg/apache/xalan/templates/TemplateList;->getTemplateFast(Lorg/apache/xpath/XPathContext;IILorg/apache/xml/utils/QName;IZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v31

    if-nez v31, :cond_9

    packed-switch v21, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    invoke-virtual/range {v29 .. v29}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultRule()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v31

    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v5}, Lorg/apache/xalan/transformer/TransformerImpl;->pushPairCurrentMatched(Lorg/apache/xalan/templates/ElemTemplateElement;I)V

    move-object/from16 v0, v31

    iget v8, v0, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    if-lez v8, :cond_d

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->pushRTFContext()V

    invoke-virtual/range {v33 .. v33}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v13

    move-object/from16 v0, v31

    iget v8, v0, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Lorg/apache/xpath/VariableStack;->link(I)I

    move-object/from16 v0, v31

    iget v8, v0, Lorg/apache/xalan/templates/ElemTemplate;->m_inArgsSize:I

    if-lez v8, :cond_e

    const/16 v23, 0x0

    invoke-virtual/range {v31 .. v31}, Lorg/apache/xalan/templates/ElemTemplate;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v15

    :goto_4
    if-eqz v15, :cond_e

    const/16 v8, 0x29

    invoke-virtual {v15}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v34

    move/from16 v0, v34

    if-ne v8, v0, :cond_e

    move-object v0, v15

    check-cast v0, Lorg/apache/xalan/templates/ElemParam;

    move-object/from16 v16, v0

    const/16 v18, 0x0

    :goto_5
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    aget-object v17, v8, v18

    move-object/from16 v0, v17

    iget v8, v0, Lorg/apache/xalan/templates/ElemWithParam;->m_qnameID:I

    move-object/from16 v0, v16

    iget v0, v0, Lorg/apache/xalan/templates/ElemParam;->m_qnameID:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ne v8, v0, :cond_c

    move-object/from16 v0, v33

    move/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Lorg/apache/xpath/VariableStack;->getLocalVariable(II)Lorg/apache/xpath/objects/XObject;

    move-result-object v22

    move-object/from16 v0, v33

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;)V

    :cond_5
    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    const/4 v8, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;)V

    :cond_6
    add-int/lit8 v23, v23, 0x1

    invoke-virtual {v15}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v15

    goto :goto_4

    :pswitch_2
    invoke-virtual/range {v29 .. v29}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultTextRule()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Lorg/apache/xalan/transformer/TransformerImpl;->pushPairCurrentMatched(Lorg/apache/xalan/templates/ElemTemplateElement;I)V

    invoke-virtual/range {v29 .. v29}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultTextRule()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/apache/xalan/transformer/TransformerImpl;->setCurrentElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    const/4 v8, 0x0

    move-object/from16 v0, v25

    invoke-interface {v10, v5, v0, v8}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentMatched()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v26

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v8

    new-instance v34, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    move-object/from16 v0, v34

    invoke-interface {v8, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v20, :cond_7

    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    :cond_7
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    if-eqz v24, :cond_8

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    invoke-interface/range {v28 .. v28}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    :goto_6
    return-void

    :pswitch_3
    :try_start_2
    invoke-virtual/range {v29 .. v29}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultRootRule()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v31

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->setCurrentElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :catchall_0
    move-exception v8

    if-lez v20, :cond_a

    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    :cond_a
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    if-eqz v24, :cond_b

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    invoke-interface/range {v28 .. v28}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    throw v8

    :cond_c
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_5

    :cond_d
    const/4 v13, 0x0

    :cond_e
    :try_start_3
    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    move-object/from16 v30, v0

    :goto_7
    if-eqz v30, :cond_f

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    move-object/from16 v30, v0

    goto :goto_7

    :catchall_1
    move-exception v8

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    throw v8

    :cond_f
    move-object/from16 v0, v31

    iget v8, v0, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    if-lez v8, :cond_10

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popRTFContext()V

    :cond_10
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentMatched()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    :cond_11
    if-lez v20, :cond_12

    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    :cond_12
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    if-eqz v24, :cond_13

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    :cond_13
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    invoke-interface/range {v28 .. v28}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
