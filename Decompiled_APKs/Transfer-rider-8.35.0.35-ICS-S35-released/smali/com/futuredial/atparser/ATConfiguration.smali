.class public Lcom/futuredial/atparser/ATConfiguration;
.super Ljava/lang/Object;
.source "ATConfiguration.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private atHandler:Lcom/futuredial/ATReadThread;

.field private doc:Lorg/w3c/dom/Document;

.field private xpath:Ljavax/xml/xpath/XPath;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/futuredial/ATReadThread;)V
    .locals 2
    .parameter "activity"
    .parameter "sender"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/futuredial/atparser/ATConfiguration;->doc:Lorg/w3c/dom/Document;

    .line 39
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/atparser/ATConfiguration;->xpath:Ljavax/xml/xpath/XPath;

    .line 41
    const-string v0, "Configuration"

    iput-object v0, p0, Lcom/futuredial/atparser/ATConfiguration;->TAG:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/futuredial/atparser/ATConfiguration;->atHandler:Lcom/futuredial/ATReadThread;

    .line 47
    invoke-direct {p0, p1}, Lcom/futuredial/atparser/ATConfiguration;->setDocument(Landroid/content/Context;)V

    .line 48
    iput-object p2, p0, Lcom/futuredial/atparser/ATConfiguration;->atHandler:Lcom/futuredial/ATReadThread;

    .line 49
    return-void
.end method

.method private doSyncend(Ljava/lang/String;)V
    .locals 24
    .parameter "policyName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 413
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/ATConfiguration;->xpath:Ljavax/xml/xpath/XPath;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "/atcommand/policy[@id=\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\']/syncend/cmd"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/ATConfiguration;->doc:Lorg/w3c/dom/Document;

    move-object/from16 v22, v0

    sget-object v23, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface/range {v20 .. v23}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/NodeList;

    .line 414
    .local v9, endList:Lorg/w3c/dom/NodeList;
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    .line 415
    .local v13, listSize:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v13, :cond_a

    .line 417
    invoke-interface {v9, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 418
    .local v10, endNode:Lorg/w3c/dom/Node;
    move-object v0, v10

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v8, v0

    .line 419
    .local v8, endE:Lorg/w3c/dom/Element;
    const-string v20, "property"

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, attrValue:Ljava/lang/String;
    if-eqz v2, :cond_7

    const-string v20, "at"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 422
    const-string v20, "count"

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 423
    .local v5, count:Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v20

    if-gtz v20, :cond_1

    .line 425
    :cond_0
    const-string v5, "1"

    .line 427
    :cond_1
    const-string v20, "timeout"

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 428
    .local v19, timeout:Ljava/lang/String;
    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v20

    if-gtz v20, :cond_3

    .line 430
    :cond_2
    const-string v19, "60000"

    .line 432
    :cond_3
    const-string v20, "result"

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 433
    .local v14, result:Ljava/lang/String;
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v20

    if-gtz v20, :cond_5

    .line 435
    :cond_4
    const-string v14, "false"

    .line 437
    :cond_5
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v4

    .line 438
    .local v4, cmd:Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 439
    .local v16, sb:Ljava/lang/StringBuffer;
    const-string v20, "Count = "

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    const-string v20, "Result = "

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    const-string v20, "Timeout = "

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 442
    const-string v20, "Cmd = "

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/ATConfiguration;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/ATConfiguration;->atHandler:Lcom/futuredial/ATReadThread;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v14, v1, v4}, Lcom/futuredial/ATReadThread;->sendNormalComm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .end local v4           #cmd:Ljava/lang/String;
    .end local v5           #count:Ljava/lang/String;
    .end local v14           #result:Ljava/lang/String;
    .end local v16           #sb:Ljava/lang/StringBuffer;
    .end local v19           #timeout:Ljava/lang/String;
    :cond_6
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 446
    :cond_7
    if-eqz v2, :cond_8

    const-string v20, "sleep"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 448
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v17

    .line 449
    .local v17, sleep:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/ATConfiguration;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Sleep:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v12

    .line 453
    .local v12, intSleep:I
    int-to-long v0, v12

    move-wide/from16 v20, v0

    :try_start_1
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 455
    :catch_0
    move-exception v7

    .line 457
    .local v7, e1:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 481
    .end local v2           #attrValue:Ljava/lang/String;
    .end local v7           #e1:Ljava/lang/Exception;
    .end local v8           #endE:Lorg/w3c/dom/Element;
    .end local v9           #endList:Lorg/w3c/dom/NodeList;
    .end local v10           #endNode:Lorg/w3c/dom/Node;
    .end local v11           #i:I
    .end local v12           #intSleep:I
    .end local v13           #listSize:I
    .end local v17           #sleep:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 483
    .local v6, e:Ljavax/xml/xpath/XPathExpressionException;
    invoke-virtual {v6}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    .line 485
    new-instance v20, Lcom/futuredial/CommonException;

    invoke-direct/range {v20 .. v20}, Lcom/futuredial/CommonException;-><init>()V

    throw v20

    .line 460
    .end local v6           #e:Ljavax/xml/xpath/XPathExpressionException;
    .restart local v2       #attrValue:Ljava/lang/String;
    .restart local v8       #endE:Lorg/w3c/dom/Element;
    .restart local v9       #endList:Lorg/w3c/dom/NodeList;
    .restart local v10       #endNode:Lorg/w3c/dom/Node;
    .restart local v11       #i:I
    .restart local v13       #listSize:I
    :cond_8
    if-eqz v2, :cond_6

    :try_start_3
    const-string v20, "operation"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 462
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 463
    .local v3, closeAttrValue:Ljava/lang/String;
    const-string v20, "portclose"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/ATConfiguration;->atHandler:Lcom/futuredial/ATReadThread;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/futuredial/ATReadThread;->Close()V

    goto :goto_1

    .line 468
    :cond_9
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    const-string v21, "sleep"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    if-lez v20, :cond_6

    .line 471
    const-string v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 472
    .local v15, s:[Ljava/lang/String;
    const/16 v20, 0x1

    aget-object v20, v15, v20

    if-eqz v20, :cond_6

    const-string v20, "\\d+"

    const/16 v21, 0x1

    aget-object v21, v15, v21

    invoke-static/range {v20 .. v21}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 474
    const/16 v20, 0x1

    aget-object v20, v15, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 475
    .local v18, t:I
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 487
    .end local v2           #attrValue:Ljava/lang/String;
    .end local v3           #closeAttrValue:Ljava/lang/String;
    .end local v8           #endE:Lorg/w3c/dom/Element;
    .end local v10           #endNode:Lorg/w3c/dom/Node;
    .end local v15           #s:[Ljava/lang/String;
    .end local v18           #t:I
    :cond_a
    return-void
.end method

.method private execCMDCommand(Lorg/w3c/dom/Element;)V
    .locals 27
    .parameter "cE"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 297
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, cmd:Ljava/lang/String;
    const-string v2, "property"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 299
    .local v22, property:Ljava/lang/String;
    const-string v2, "policy"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 300
    .local v21, policy:Ljava/lang/String;
    if-eqz v21, :cond_0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 302
    :cond_0
    const-string v2, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 304
    :cond_1
    const-string v2, "parser"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v21, :cond_3

    .line 307
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/atparser/ATConfiguration;->atHandler:Lcom/futuredial/ATReadThread;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/futuredial/ATReadThread;->SetParserPolicy(Ljava/lang/String;)V

    .line 408
    :cond_2
    :goto_0
    return-void

    .line 312
    :cond_3
    const-string v2, "at"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 314
    const/4 v11, 0x0

    .line 315
    .local v11, listname:Ljava/lang/String;
    const-string v2, "count"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 316
    .local v7, count:Ljava/lang/String;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_5

    .line 318
    :cond_4
    const-string v7, "1"

    .line 320
    :cond_5
    const-string v2, "timeout"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 321
    .local v9, timeout:Ljava/lang/String;
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_7

    .line 323
    :cond_6
    const-string v9, "60000"

    .line 325
    :cond_7
    const-string v2, "result"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 326
    .local v8, result:Ljava/lang/String;
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_9

    .line 328
    :cond_8
    const-string v8, "false"

    .line 330
    :cond_9
    const/4 v4, 0x0

    .line 331
    .local v4, regMatch:Ljava/lang/String;
    const-string v2, "reg_match"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 333
    const-string v2, "reg_match"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 335
    :cond_a
    const/4 v5, 0x0

    .line 336
    .local v5, regSplit:Ljava/lang/String;
    const-string v2, "reg_split"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 338
    const-string v2, "reg_split"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 340
    :cond_b
    const/4 v10, 0x0

    .line 341
    .local v10, lstMatch:Ljava/lang/String;
    const-string v2, "lst_match"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 343
    const-string v2, "lst_match"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 345
    :cond_c
    new-instance v23, Ljava/lang/StringBuffer;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    .line 346
    .local v23, sb:Ljava/lang/StringBuffer;
    const-string v2, "Count = "

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v25, ", "

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    const-string v2, "Result = "

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v25, ", "

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    const-string v2, "Timeout = "

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v25, ", "

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    const-string v2, "regMatch = "

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v25, ", "

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    const-string v2, "regSplit = "

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v25, ", "

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    const-string v2, "Cmd = "

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/atparser/ATConfiguration;->TAG:Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    if-eqz v4, :cond_d

    if-nez v5, :cond_e

    :cond_d
    if-nez v10, :cond_e

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/atparser/ATConfiguration;->atHandler:Lcom/futuredial/ATReadThread;

    invoke-virtual {v2, v7, v8, v9, v3}, Lcom/futuredial/ATReadThread;->sendOperComm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 360
    :cond_e
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    .line 361
    .local v18, l:Lorg/w3c/dom/NamedNodeMap;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v14

    .line 362
    .local v14, aSize:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v6, pList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v19, 0x0

    .local v19, m:I
    :goto_1
    move/from16 v0, v19

    if-ge v0, v14, :cond_12

    .line 365
    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Attr;

    .line 366
    .local v12, a:Lorg/w3c/dom/Attr;
    invoke-interface {v12}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v13

    .line 367
    .local v13, aName:Ljava/lang/String;
    const-string v2, "reg_match"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "reg_split"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "property"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "count"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "result"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "timeout"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "lst_match"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 363
    :cond_f
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 378
    :cond_10
    const-string v2, "list"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 380
    invoke-interface {v12}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/atparser/ATConfiguration;->atHandler:Lcom/futuredial/ATReadThread;

    invoke-virtual {v2, v11}, Lcom/futuredial/ATReadThread;->addlistmap(Ljava/lang/String;)V

    .line 383
    :cond_11
    invoke-interface {v12}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v15

    .line 384
    .local v15, aValue:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v25, ":"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 385
    .local v20, nAndv:Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 387
    .end local v12           #a:Lorg/w3c/dom/Attr;
    .end local v13           #aName:Ljava/lang/String;
    .end local v15           #aValue:Ljava/lang/String;
    .end local v20           #nAndv:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/atparser/ATConfiguration;->atHandler:Lcom/futuredial/ATReadThread;

    invoke-virtual/range {v2 .. v11}, Lcom/futuredial/ATReadThread;->sendCommThenPutDataInMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 390
    .end local v4           #regMatch:Ljava/lang/String;
    .end local v5           #regSplit:Ljava/lang/String;
    .end local v6           #pList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #count:Ljava/lang/String;
    .end local v8           #result:Ljava/lang/String;
    .end local v9           #timeout:Ljava/lang/String;
    .end local v10           #lstMatch:Ljava/lang/String;
    .end local v11           #listname:Ljava/lang/String;
    .end local v14           #aSize:I
    .end local v18           #l:Lorg/w3c/dom/NamedNodeMap;
    .end local v19           #m:I
    .end local v23           #sb:Ljava/lang/StringBuffer;
    :cond_13
    const-string v2, "callback"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 394
    const-string v2, "sleep"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 396
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v24

    .line 397
    .local v24, sleep:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/atparser/ATConfiguration;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Sleep:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 401
    .local v17, intSleep:I
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v25, v0

    :try_start_0
    invoke-static/range {v25 .. v26}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 403
    :catch_0
    move-exception v16

    .line 405
    .local v16, e1:Ljava/lang/Exception;
    throw v16
.end method

.method private setDocument(Landroid/content/Context;)V
    .locals 7
    .parameter "activity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    const/4 v3, 0x0

    .line 58
    .local v3, ins:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 59
    .local v4, r:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "ATCommand.xml"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 61
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 62
    .local v1, builderfactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 63
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    iput-object v5, p0, Lcom/futuredial/atparser/ATConfiguration;->doc:Lorg/w3c/dom/Document;

    .line 64
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    return-void

    .line 66
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #builderfactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4           #r:Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 68
    .local v2, e:Ljava/lang/Exception;
    new-instance v5, Lcom/futuredial/CommonException;

    invoke-direct {v5}, Lcom/futuredial/CommonException;-><init>()V

    throw v5
.end method


# virtual methods
.method public sendCommAfterGetParamers(Ljava/lang/String;)V
    .locals 53
    .parameter "policyName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Lcom/futuredial/bluetooth/ExceptionForUI;
        }
    .end annotation

    .prologue
    .line 81
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/futuredial/atparser/ATConfiguration;->xpath:Ljavax/xml/xpath/XPath;

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "/atcommand/policy[@id=\'"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "\']/params"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/ATConfiguration;->doc:Lorg/w3c/dom/Document;

    move-object/from16 v51, v0

    sget-object v52, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-interface {v3, v0, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/w3c/dom/Node;

    .line 82
    .local v26, nodeparam:Lorg/w3c/dom/Node;
    if-nez v26, :cond_1

    .line 84
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/futuredial/atparser/ATConfiguration;->atHandler:Lcom/futuredial/ATReadThread;

    const/16 v50, 0x0

    move/from16 v0, v50

    invoke-virtual {v3, v0}, Lcom/futuredial/ATReadThread;->SetWaitParser(Z)V

    .line 103
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/futuredial/atparser/ATConfiguration;->xpath:Ljavax/xml/xpath/XPath;

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "/atcommand/policy[@id=\'"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "\']/init"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/ATConfiguration;->doc:Lorg/w3c/dom/Document;

    move-object/from16 v51, v0

    sget-object v52, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-interface {v3, v0, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/w3c/dom/Node;

    .line 104
    .local v24, node:Lorg/w3c/dom/Node;
    move-object/from16 v0, v24

    check-cast v0, Lorg/w3c/dom/Element;

    move-object/from16 v16, v0

    .line 105
    .local v16, e:Lorg/w3c/dom/Element;
    const-string v3, "*"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 106
    .local v18, eList:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v42

    .line 107
    .local v42, size:I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v42

    if-ge v0, v1, :cond_11

    .line 109
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/Element;

    .line 110
    .local v19, element:Lorg/w3c/dom/Element;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v25

    .line 111
    .local v25, nodeName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/futuredial/atparser/ATConfiguration;->atHandler:Lcom/futuredial/ATReadThread;

    invoke-virtual {v3}, Lcom/futuredial/ATReadThread;->GetExitDotask()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Lcom/futuredial/CancelException;

    invoke-direct {v3}, Lcom/futuredial/CancelException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v16           #e:Lorg/w3c/dom/Element;
    .end local v18           #eList:Lorg/w3c/dom/NodeList;
    .end local v19           #element:Lorg/w3c/dom/Element;
    .end local v20           #i:I
    .end local v24           #node:Lorg/w3c/dom/Node;
    .end local v25           #nodeName:Ljava/lang/String;
    .end local v26           #nodeparam:Lorg/w3c/dom/Node;
    .end local v42           #size:I
    :catch_0
    move-exception v17

    .line 289
    .local v17, e1:Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    .line 290
    invoke-direct/range {p0 .. p1}, Lcom/futuredial/atparser/ATConfiguration;->doSyncend(Ljava/lang/String;)V

    .line 291
    new-instance v3, Lcom/futuredial/CommonException;

    invoke-direct {v3}, Lcom/futuredial/CommonException;-><init>()V

    throw v3

    .line 88
    .end local v17           #e1:Ljava/lang/Exception;
    .restart local v26       #nodeparam:Lorg/w3c/dom/Node;
    :cond_1
    :try_start_1
    move-object/from16 v0, v26

    check-cast v0, Lorg/w3c/dom/Element;

    move-object/from16 v16, v0

    .line 89
    .restart local v16       #e:Lorg/w3c/dom/Element;
    const-string v3, "*"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 90
    .restart local v18       #eList:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v42

    .line 91
    .restart local v42       #size:I
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v42

    if-ge v0, v1, :cond_0

    .line 93
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/Element;

    .line 94
    .restart local v19       #element:Lorg/w3c/dom/Element;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v25

    .line 95
    .restart local v25       #nodeName:Ljava/lang/String;
    const-string v3, "waitparser"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v49

    .line 98
    .local v49, txt:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/futuredial/atparser/ATConfiguration;->atHandler:Lcom/futuredial/ATReadThread;

    const-string v50, "1"

    move-object/from16 v0, v50

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    move/from16 v0, v50

    invoke-virtual {v3, v0}, Lcom/futuredial/ATReadThread;->SetWaitParser(Z)V

    .line 91
    .end local v49           #txt:Ljava/lang/String;
    :cond_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 112
    .restart local v24       #node:Lorg/w3c/dom/Node;
    :cond_3
    const-string v3, "cmd"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 114
    const-string v3, "property"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 115
    .local v30, pv:Ljava/lang/String;
    const-string v3, "operation"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 117
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v49

    .line 118
    .restart local v49       #txt:Ljava/lang/String;
    if-eqz v49, :cond_5

    invoke-virtual/range {v49 .. v49}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v50, "sleep"

    move-object/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    .line 121
    const-string v3, ":"

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v40

    .line 122
    .local v40, s:[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v40, v3

    if-eqz v3, :cond_4

    const-string v3, "\\d+"

    const/16 v50, 0x1

    aget-object v50, v40, v50

    move-object/from16 v0, v50

    invoke-static {v3, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 124
    const/4 v3, 0x1

    aget-object v3, v40, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v48

    .line 125
    .local v48, t:I
    move/from16 v0, v48

    int-to-long v0, v0

    move-wide/from16 v50, v0

    invoke-static/range {v50 .. v51}, Ljava/lang/Thread;->sleep(J)V

    .line 107
    .end local v30           #pv:Ljava/lang/String;
    .end local v40           #s:[Ljava/lang/String;
    .end local v48           #t:I
    .end local v49           #txt:Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 129
    .restart local v30       #pv:Ljava/lang/String;
    .restart local v49       #txt:Ljava/lang/String;
    :cond_5
    if-eqz v49, :cond_6

    invoke-virtual/range {v49 .. v49}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v50, "portopen"

    move-object/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    .line 131
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/futuredial/atparser/ATConfiguration;->atHandler:Lcom/futuredial/ATReadThread;

    invoke-virtual {v3}, Lcom/futuredial/ATReadThread;->OpenPort()I

    goto :goto_2

    .line 133
    :cond_6
    if-eqz v49, :cond_4

    invoke-virtual/range {v49 .. v49}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v50, "portclose"

    move-object/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/futuredial/atparser/ATConfiguration;->atHandler:Lcom/futuredial/ATReadThread;

    invoke-virtual {v3}, Lcom/futuredial/ATReadThread;->Close()V

    goto :goto_2

    .line 139
    .end local v49           #txt:Ljava/lang/String;
    :cond_7
    const-string v3, "portopen"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/futuredial/atparser/ATConfiguration;->atHandler:Lcom/futuredial/ATReadThread;

    invoke-virtual {v3}, Lcom/futuredial/ATReadThread;->OpenPort()I

    goto :goto_2

    .line 143
    :cond_8
    const-string v3, "callback"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 145
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v14

    .line 146
    .local v14, callBack:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/futuredial/atparser/ATConfiguration;->TAG:Ljava/lang/String;

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "callBack:"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-static {v3, v0}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/futuredial/atparser/ATConfiguration;->atHandler:Lcom/futuredial/ATReadThread;

    invoke-virtual {v3, v14}, Lcom/futuredial/ATReadThread;->SetCallbackStr(Ljava/lang/String;)V

    goto :goto_2

    .line 150
    .end local v14           #callBack:Ljava/lang/String;
    :cond_9
    const-string v3, "at"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 152
    const-string v3, "count"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 153
    .local v15, count:Ljava/lang/String;
    if-eqz v15, :cond_a

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_b

    .line 155
    :cond_a
    const-string v15, "1"

    .line 157
    :cond_b
    const-string v3, "timeout"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 158
    .local v9, timeout:Ljava/lang/String;
    if-eqz v9, :cond_c

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_d

    .line 160
    :cond_c
    const-string v9, "60000"

    .line 162
    :cond_d
    const-string v3, "result"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 163
    .local v39, result:Ljava/lang/String;
    if-eqz v39, :cond_e

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_f

    .line 165
    :cond_e
    const-string v39, "false"

    .line 169
    :cond_f
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, cmd:Ljava/lang/String;
    new-instance v41, Ljava/lang/StringBuffer;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuffer;-><init>()V

    .line 171
    .local v41, sb:Ljava/lang/StringBuffer;
    const-string v3, "Count = "

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v50, ", "

    move-object/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    const-string v3, "Result = "

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v50, ", "

    move-object/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    const-string v3, "Timeout = "

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v50, ", "

    move-object/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    const-string v3, "Cmd = "

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/futuredial/atparser/ATConfiguration;->TAG:Ljava/lang/String;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-static {v3, v0}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/futuredial/atparser/ATConfiguration;->atHandler:Lcom/futuredial/ATReadThread;

    move-object/from16 v0, v39

    invoke-virtual {v3, v15, v0, v9, v4}, Lcom/futuredial/ATReadThread;->sendInitComm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 178
    .end local v4           #cmd:Ljava/lang/String;
    .end local v9           #timeout:Ljava/lang/String;
    .end local v15           #count:Ljava/lang/String;
    .end local v39           #result:Ljava/lang/String;
    .end local v41           #sb:Ljava/lang/StringBuffer;
    :cond_10
    const-string v3, "sleep"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 180
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v43

    .line 181
    .local v43, sleep:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/futuredial/atparser/ATConfiguration;->TAG:Ljava/lang/String;

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "Sleep:"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-static {v3, v0}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v21

    .line 185
    .local v21, intSleep:I
    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v50, v0

    :try_start_2
    invoke-static/range {v50 .. v51}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 187
    :catch_1
    move-exception v17

    .line 189
    .restart local v17       #e1:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    .line 293
    .end local v17           #e1:Ljava/lang/Exception;
    .end local v19           #element:Lorg/w3c/dom/Element;
    .end local v21           #intSleep:I
    .end local v25           #nodeName:Ljava/lang/String;
    .end local v30           #pv:Ljava/lang/String;
    .end local v43           #sleep:Ljava/lang/String;
    :goto_3
    return-void

    .line 197
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/futuredial/atparser/ATConfiguration;->xpath:Ljavax/xml/xpath/XPath;

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "/atcommand/policy[@id=\'"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "\']/queryinfo"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/ATConfiguration;->doc:Lorg/w3c/dom/Document;

    move-object/from16 v51, v0

    sget-object v52, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-interface {v3, v0, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lorg/w3c/dom/NodeList;

    .line 198
    .local v34, queryList:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v36

    .line 199
    .local v36, querySize:I
    const/16 v20, 0x0

    :goto_4
    move/from16 v0, v20

    move/from16 v1, v36

    if-ge v0, v1, :cond_16

    .line 201
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/futuredial/atparser/ATConfiguration;->atHandler:Lcom/futuredial/ATReadThread;

    invoke-virtual {v3}, Lcom/futuredial/ATReadThread;->GetExitDotask()Z

    move-result v3

    if-eqz v3, :cond_12

    new-instance v3, Lcom/futuredial/CancelException;

    invoke-direct {v3}, Lcom/futuredial/CancelException;-><init>()V

    throw v3

    .line 202
    :cond_12
    move-object/from16 v0, v34

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    .line 203
    .local v35, queryNode:Lorg/w3c/dom/Node;
    move-object/from16 v0, v35

    check-cast v0, Lorg/w3c/dom/Element;

    move-object/from16 v31, v0

    .line 204
    .local v31, queryE:Lorg/w3c/dom/Element;
    const-string v3, "caletype"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 206
    .local v13, caletype:Ljava/lang/String;
    if-eqz v13, :cond_14

    const-string v3, "1"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 199
    :cond_13
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 210
    :cond_14
    const-string v3, "*"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v32

    .line 211
    .local v32, queryEchildList:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v33

    .line 212
    .local v33, queryEchildSize:I
    const/16 v22, 0x0

    .local v22, j:I
    :goto_5
    move/from16 v0, v22

    move/from16 v1, v33

    if-ge v0, v1, :cond_13

    .line 214
    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 215
    .local v11, cE:Lorg/w3c/dom/Element;
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v12

    .line 216
    .local v12, cEName:Ljava/lang/String;
    const-string v3, "cmd"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 218
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/futuredial/atparser/ATConfiguration;->execCMDCommand(Lorg/w3c/dom/Element;)V

    .line 212
    :cond_15
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 223
    .end local v11           #cE:Lorg/w3c/dom/Element;
    .end local v12           #cEName:Ljava/lang/String;
    .end local v13           #caletype:Ljava/lang/String;
    .end local v22           #j:I
    .end local v31           #queryE:Lorg/w3c/dom/Element;
    .end local v32           #queryEchildList:Lorg/w3c/dom/NodeList;
    .end local v33           #queryEchildSize:I
    .end local v35           #queryNode:Lorg/w3c/dom/Node;
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/futuredial/atparser/ATConfiguration;->xpath:Ljavax/xml/xpath/XPath;

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "/atcommand/policy[@id=\'"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "\']/syncstart"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/ATConfiguration;->doc:Lorg/w3c/dom/Document;

    move-object/from16 v51, v0

    sget-object v52, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-interface {v3, v0, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/w3c/dom/NodeList;

    .line 224
    .local v27, operList:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    .line 225
    .local v28, operSize:I
    const/16 v20, 0x0

    :goto_6
    move/from16 v0, v20

    move/from16 v1, v28

    if-ge v0, v1, :cond_1e

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/futuredial/atparser/ATConfiguration;->atHandler:Lcom/futuredial/ATReadThread;

    invoke-virtual {v3}, Lcom/futuredial/ATReadThread;->GetExitDotask()Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v3, Lcom/futuredial/CancelException;

    invoke-direct {v3}, Lcom/futuredial/CancelException;-><init>()V

    throw v3

    .line 228
    :cond_17
    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v47

    .line 229
    .local v47, syncNode:Lorg/w3c/dom/Node;
    move-object/from16 v0, v47

    check-cast v0, Lorg/w3c/dom/Element;

    move-object/from16 v44, v0

    .line 230
    .local v44, syncE:Lorg/w3c/dom/Element;
    const-string v3, "caletype"

    move-object/from16 v0, v44

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 231
    .restart local v13       #caletype:Ljava/lang/String;
    if-eqz v13, :cond_19

    const-string v3, "1"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 225
    :cond_18
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 235
    :cond_19
    const-string v3, "location"

    move-object/from16 v0, v44

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 236
    .local v23, location:Ljava/lang/String;
    const-string v3, "*"

    move-object/from16 v0, v44

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v45

    .line 237
    .local v45, syncEchildList:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v45 .. v45}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v46

    .line 238
    .local v46, syncEchildSize:I
    const/16 v22, 0x0

    .restart local v22       #j:I
    :goto_7
    move/from16 v0, v22

    move/from16 v1, v46

    if-ge v0, v1, :cond_18

    .line 240
    move-object/from16 v0, v45

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 241
    .restart local v11       #cE:Lorg/w3c/dom/Element;
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v12

    .line 242
    .restart local v12       #cEName:Ljava/lang/String;
    const-string v3, "cmd"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 244
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/futuredial/atparser/ATConfiguration;->execCMDCommand(Lorg/w3c/dom/Element;)V

    .line 238
    :cond_1a
    :goto_8
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 246
    :cond_1b
    const-string v3, "operation"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 249
    const-string v3, "totalcapacity"

    invoke-interface {v11, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 250
    .local v5, capacity:Ljava/lang/String;
    const-string v3, "usedcapacity"

    invoke-interface {v11, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 251
    .local v6, usecapacity:Ljava/lang/String;
    const-string v3, "name"

    invoke-interface {v11, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 252
    .local v29, property:Ljava/lang/String;
    const-string v3, "read"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/futuredial/atparser/ATConfiguration;->xpath:Ljavax/xml/xpath/XPath;

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "/atcommand/policy[@id=\'"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "\']/syncstart/operation/cmd"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/ATConfiguration;->doc:Lorg/w3c/dom/Document;

    move-object/from16 v51, v0

    sget-object v52, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-interface {v3, v0, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lorg/w3c/dom/Node;

    .line 255
    .local v38, readerNode:Lorg/w3c/dom/Node;
    move-object/from16 v0, v38

    check-cast v0, Lorg/w3c/dom/Element;

    move-object/from16 v37, v0

    .line 256
    .local v37, rE:Lorg/w3c/dom/Element;
    const-string v3, "property"

    move-object/from16 v0, v37

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 257
    .local v10, attr:Ljava/lang/String;
    const-string v3, "read"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 259
    const-string v3, "startidx"

    move-object/from16 v0, v37

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 260
    .local v7, startidx:Ljava/lang/String;
    const-string v3, "step"

    move-object/from16 v0, v37

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 261
    .local v8, step:Ljava/lang/String;
    const-string v3, "timeout"

    move-object/from16 v0, v37

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 262
    .restart local v9       #timeout:Ljava/lang/String;
    if-eqz v9, :cond_1c

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1d

    .line 264
    :cond_1c
    const-string v9, "60000"

    .line 266
    :cond_1d
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v4

    .line 267
    .restart local v4       #cmd:Ljava/lang/String;
    new-instance v41, Ljava/lang/StringBuffer;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuffer;-><init>()V

    .line 268
    .restart local v41       #sb:Ljava/lang/StringBuffer;
    const-string v3, "Cmd:"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v50, "\n"

    move-object/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    const-string v3, "Capacity:"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v50, "\n"

    move-object/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    const-string v3, "Usecapacity:"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v50, "\n"

    move-object/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    const-string v3, "Startidx:"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v50, "\n"

    move-object/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    const-string v3, "Step:"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v50, "\n"

    move-object/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    const-string v3, "timeout:"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v50, "\n"

    move-object/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/futuredial/atparser/ATConfiguration;->TAG:Ljava/lang/String;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-static {v3, v0}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/futuredial/atparser/ATConfiguration;->atHandler:Lcom/futuredial/ATReadThread;

    invoke-virtual/range {v3 .. v9}, Lcom/futuredial/ATReadThread;->sendReadComm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 285
    .end local v4           #cmd:Ljava/lang/String;
    .end local v5           #capacity:Ljava/lang/String;
    .end local v6           #usecapacity:Ljava/lang/String;
    .end local v7           #startidx:Ljava/lang/String;
    .end local v8           #step:Ljava/lang/String;
    .end local v9           #timeout:Ljava/lang/String;
    .end local v10           #attr:Ljava/lang/String;
    .end local v11           #cE:Lorg/w3c/dom/Element;
    .end local v12           #cEName:Ljava/lang/String;
    .end local v13           #caletype:Ljava/lang/String;
    .end local v22           #j:I
    .end local v23           #location:Ljava/lang/String;
    .end local v29           #property:Ljava/lang/String;
    .end local v37           #rE:Lorg/w3c/dom/Element;
    .end local v38           #readerNode:Lorg/w3c/dom/Node;
    .end local v41           #sb:Ljava/lang/StringBuffer;
    .end local v44           #syncE:Lorg/w3c/dom/Element;
    .end local v45           #syncEchildList:Lorg/w3c/dom/NodeList;
    .end local v46           #syncEchildSize:I
    .end local v47           #syncNode:Lorg/w3c/dom/Node;
    :cond_1e
    invoke-direct/range {p0 .. p1}, Lcom/futuredial/atparser/ATConfiguration;->doSyncend(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3
.end method
