.class public Lorg/apache/xalan/transformer/ClonerToResultTree;
.super Ljava/lang/Object;
.source "ClonerToResultTree.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloneToResultTree(IILorg/apache/xml/dtm/DTM;Lorg/apache/xml/serializer/SerializationHandler;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    :try_start_0
    new-instance v4, Ljavax/xml/transform/TransformerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t clone node: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    new-instance v4, Ljavax/xml/transform/TransformerException;

    invoke-direct {v4, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :pswitch_1
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {p2, p0, p3, v4}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    :cond_0
    :goto_0
    :pswitch_2
    return-void

    :pswitch_3
    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v1, v0, v4}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    invoke-static {p3, p0}, Lorg/apache/xalan/serialize/SerializerUtils;->addAttributes(Lorg/apache/xml/serializer/SerializationHandler;I)V

    invoke-static {p3, p0, p1, p2}, Lorg/apache/xalan/serialize/SerializerUtils;->processNSDecls(Lorg/apache/xml/serializer/SerializationHandler;IILorg/apache/xml/dtm/DTM;)V

    goto :goto_0

    :pswitch_4
    invoke-interface {p3}, Lorg/apache/xml/serializer/SerializationHandler;->startCDATA()V

    const/4 v4, 0x0

    invoke-interface {p2, p0, p3, v4}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    invoke-interface {p3}, Lorg/apache/xml/serializer/SerializationHandler;->endCDATA()V

    goto :goto_0

    :pswitch_5
    invoke-static {p3, p0}, Lorg/apache/xalan/serialize/SerializerUtils;->addAttribute(Lorg/apache/xml/serializer/SerializationHandler;I)V

    goto :goto_0

    :pswitch_6
    const/16 v4, 0xd

    invoke-static {p3, p0, v4, p2}, Lorg/apache/xalan/serialize/SerializerUtils;->processNSDecls(Lorg/apache/xml/serializer/SerializationHandler;IILorg/apache/xml/dtm/DTM;)V

    goto :goto_0

    :pswitch_7
    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v3

    invoke-interface {v3, p3}, Lorg/apache/xml/utils/XMLString;->dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V

    goto :goto_0

    :pswitch_8
    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Lorg/apache/xml/serializer/SerializationHandler;->entityReference(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_9
    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v4, v5}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_7
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
