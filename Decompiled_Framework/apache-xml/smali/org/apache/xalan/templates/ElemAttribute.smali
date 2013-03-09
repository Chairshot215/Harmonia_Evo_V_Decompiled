.class public Lorg/apache/xalan/templates/ElemAttribute;
.super Lorg/apache/xalan/templates/ElemElement;
.source "ElemAttribute.java"


# static fields
.field static final serialVersionUID:J = 0x7a5d0fbfb8530a13L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemElement;-><init>()V

    return-void
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 5

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-string v1, "ER_CANNOT_ADD"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemAttribute;->getNodeName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/apache/xalan/templates/ElemAttribute;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :sswitch_0
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x11 -> :sswitch_0
        0x1c -> :sswitch_0
        0x1e -> :sswitch_0
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2a -> :sswitch_0
        0x32 -> :sswitch_0
        0x48 -> :sswitch_0
        0x49 -> :sswitch_0
        0x4a -> :sswitch_0
        0x4b -> :sswitch_0
        0x4e -> :sswitch_0
    .end sparse-switch
.end method

.method constructNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p4}, Lorg/apache/xalan/transformer/TransformerImpl;->getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v0

    invoke-virtual {p4, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToString(Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    invoke-static {p1}, Lorg/apache/xml/utils/QName;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v4, "CDATA"

    const/4 v6, 0x1

    move-object v1, p3

    move-object v3, p1

    invoke-interface/range {v0 .. v6}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, ""

    const-string v4, "CDATA"

    const/4 v6, 0x1

    move-object v3, p1

    invoke-interface/range {v0 .. v6}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "attribute"

    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    const/16 v0, 0x30

    return v0
.end method

.method protected resolvePrefix(Lorg/apache/xml/serializer/SerializationHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "xmlns"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-interface {p1, p3}, Lorg/apache/xml/serializer/SerializationHandler;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "xmlns"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {p1}, Lorg/apache/xml/serializer/SerializationHandler;->getNamespaceMappings()Lorg/apache/xml/serializer/NamespaceMappings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xml/serializer/NamespaceMappings;->generateNextPrefix()Ljava/lang/String;

    move-result-object p2

    :cond_2
    :goto_0
    return-object p2

    :cond_3
    const-string p2, ""

    goto :goto_0
.end method

.method public setName(Lorg/apache/xalan/templates/AVT;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/AVT;->getSimpleString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xmlns"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemElement;->setName(Lorg/apache/xalan/templates/AVT;)V

    return-void
.end method

.method protected validateNodeName(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "xmlns"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidQName(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
