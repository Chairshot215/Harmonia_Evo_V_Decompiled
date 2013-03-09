.class public Lorg/apache/xalan/templates/FuncDocument;
.super Lorg/apache/xpath/functions/Function2Args;
.source "FuncDocument.java"


# static fields
.field static final serialVersionUID:J = 0x227678209ab58610L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/functions/Function2Args;-><init>()V

    return-void
.end method


# virtual methods
.method public checkNumberArgs(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/templates/FuncDocument;->reportWrongNumberArgs()V

    :cond_1
    return-void
.end method

.method public error(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p2, p3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V

    :goto_0
    return-void

    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v12

    invoke-interface {v12, v10}, Lorg/apache/xml/dtm/DTM;->getDocumentRoot(I)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/FuncDocument;->getArg0()Lorg/apache/xpath/Expression;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v4

    const-string v7, ""

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/FuncDocument;->getArg1()Lorg/apache/xpath/Expression;

    move-result-object v5

    if-eqz v5, :cond_9

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v6

    const/16 v21, 0x4

    invoke-virtual {v6}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    invoke-virtual {v6}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v9

    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_1

    const-string v21, "WG_EMPTY_SECOND_ARG"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/FuncDocument;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v18, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    :cond_0
    :goto_0
    return-object v18

    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/xml/dtm/DTM;->getDocumentBaseURI()Ljava/lang/String;

    move-result-object v7

    :goto_1
    new-instance v18, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    invoke-virtual/range {v18 .. v18}, Lorg/apache/xpath/objects/XNodeSet;->mutableNodeset()Lorg/apache/xpath/NodeSetDTM;

    move-result-object v16

    const/16 v21, 0x4

    invoke-virtual {v4}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    invoke-virtual {v4}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v15

    :goto_2
    const/16 v19, -0x1

    :cond_2
    if-eqz v15, :cond_3

    const/16 v21, -0x1

    invoke-interface {v15}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v19

    move/from16 v0, v21

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    :cond_3
    if-eqz v15, :cond_c

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v20

    :goto_3
    if-nez v5, :cond_4

    const/16 v21, -0x1

    move/from16 v0, v21

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/xml/dtm/DTM;->getDocumentBaseURI()Ljava/lang/String;

    move-result-object v7

    :cond_4
    if-eqz v20, :cond_2

    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v0, v11, :cond_5

    const-string v21, "ER_NO_CONTEXT_OWNERDOC"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/FuncDocument;->error(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    const/16 v21, 0x3a

    invoke-interface/range {v20 .. v21}, Lorg/apache/xml/utils/XMLString;->indexOf(I)I

    move-result v13

    const/16 v21, 0x2f

    invoke-interface/range {v20 .. v21}, Lorg/apache/xml/utils/XMLString;->indexOf(I)I

    move-result v14

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v13, v0, :cond_6

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v14, v0, :cond_6

    if-ge v13, v14, :cond_6

    const/4 v7, 0x0

    :cond_6
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v10, v2, v7}, Lorg/apache/xalan/templates/FuncDocument;->getDoc(Lorg/apache/xpath/XPathContext;ILjava/lang/String;Ljava/lang/String;)I

    move-result v17

    const/16 v21, -0x1

    move/from16 v0, v21

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    invoke-virtual/range {v16 .. v17}, Lorg/apache/xpath/NodeSetDTM;->contains(I)Z

    move-result v21

    if-nez v21, :cond_7

    invoke-virtual/range {v16 .. v17}, Lorg/apache/xpath/NodeSetDTM;->addElement(I)V

    :cond_7
    if-eqz v15, :cond_0

    const/16 v21, -0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v6}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    goto/16 :goto_1

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v21

    if-eqz v21, :cond_a

    const/16 v21, 0x1

    :goto_4
    const-string v22, "Namespace context can not be null!"

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/FuncDocument;->assertion(ZLjava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/xml/utils/PrefixResolver;->getBaseIdentifier()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    :cond_a
    const/16 v21, 0x0

    goto :goto_4

    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_2

    :cond_c
    invoke-virtual {v4}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v20

    goto/16 :goto_3
.end method

.method getDoc(Lorg/apache/xpath/XPathContext;ILjava/lang/String;Ljava/lang/String;)I
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getSourceTreeManager()Lorg/apache/xpath/SourceTreeManager;

    move-result-object v17

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xpath/SourceTreeManager;->resolveURI(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)Ljavax/xml/transform/Source;

    move-result-object v11

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/apache/xpath/SourceTreeManager;->getNode(Ljavax/xml/transform/Source;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v0, v9, :cond_0

    move v10, v9

    :goto_0
    return v10

    :catch_0
    move-exception v7

    new-instance v18, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v7}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    throw v18

    :catch_1
    move-exception v15

    new-instance v18, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v18

    invoke-direct {v0, v15}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/xml/utils/PrefixResolver;->getBaseIdentifier()Ljava/lang/String;

    move-result-object p3

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xpath/SourceTreeManager;->resolveURI(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)Ljavax/xml/transform/Source;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v11

    :cond_1
    const/4 v4, 0x0

    if-eqz p3, :cond_3

    :try_start_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v11, v1, v2}, Lorg/apache/xpath/SourceTreeManager;->getSourceTree(Ljavax/xml/transform/Source;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/XPathContext;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-result v9

    :goto_1
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v0, v9, :cond_2

    if-eqz v4, :cond_e

    const-string v18, "WG_CANNOT_LOAD_REQUESTED_DOC"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v4, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/FuncDocument;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_2
    move v10, v9

    goto :goto_0

    :catch_2
    move-exception v7

    new-instance v18, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v7}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    throw v18

    :cond_3
    :try_start_3
    const-string v19, "WG_CANNOT_MAKE_URL_FROM"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p4, :cond_4

    const-string v18, ""

    :goto_3
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/FuncDocument;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception v16

    const/4 v9, -0x1

    :goto_4
    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    check-cast v16, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v16

    goto :goto_4

    :cond_4
    move-object/from16 v18, p4

    goto :goto_3

    :cond_5
    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/NullPointerException;

    move/from16 v18, v0

    if-nez v18, :cond_6

    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/ClassCastException;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    :cond_6
    new-instance v18, Lorg/apache/xml/utils/WrappedRuntimeException;

    check-cast v16, Ljava/lang/Exception;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v18

    :cond_7
    new-instance v14, Ljava/io/StringWriter;

    invoke-direct {v14}, Ljava/io/StringWriter;-><init>()V

    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v14}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v0, v16

    instance-of v0, v0, Ljavax/xml/transform/TransformerException;

    move/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v12, v16

    check-cast v12, Ljavax/xml/transform/TransformerException;

    move-object v6, v12

    :cond_8
    :goto_5
    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_9

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "): "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9
    instance-of v0, v6, Ljavax/xml/transform/TransformerException;

    move/from16 v18, v0

    if-eqz v18, :cond_b

    move-object v13, v6

    check-cast v13, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v13}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-interface {v8}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_a

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "   ID: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v8}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Line #"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v8}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Column #"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v8}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v13}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v6

    instance-of v0, v6, Lorg/apache/xml/utils/WrappedRuntimeException;

    move/from16 v18, v0

    if-eqz v18, :cond_8

    check-cast v6, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-virtual {v6}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v6

    goto/16 :goto_5

    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_c
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "): "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_e
    const-string v19, "WG_CANNOT_LOAD_REQUESTED_DOC"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    if-nez p3, :cond_10

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p4, :cond_f

    const-string p4, ""

    :cond_f
    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_6
    aput-object v18, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/FuncDocument;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_10
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_6
.end method

.method public isNodesetExpr()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected reportWrongNumberArgs()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    const-string v1, "ER_ONE_OR_TWO"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p2, p3}, Lorg/apache/xalan/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    :goto_0
    return-void

    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
