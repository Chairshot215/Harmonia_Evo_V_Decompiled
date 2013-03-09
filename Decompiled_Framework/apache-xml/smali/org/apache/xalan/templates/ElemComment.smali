.class public Lorg/apache/xalan/templates/ElemComment;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemComment.java"


# static fields
.field static final serialVersionUID:J = -0x7a4ec5e86dcb651eL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

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

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemComment;->getNodeName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/apache/xalan/templates/ElemComment;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :sswitch_0
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

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

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToString(Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/apache/xml/serializer/SerializationHandler;->comment(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "comment"

    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    const/16 v0, 0x3b

    return v0
.end method
