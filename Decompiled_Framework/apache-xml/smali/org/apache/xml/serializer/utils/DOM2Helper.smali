.class public final Lorg/apache/xml/serializer/utils/DOM2Helper;
.super Ljava/lang/Object;
.source "DOM2Helper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getLocalNameOfNodeFallback(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/DOM2Helper;->getLocalNameOfNodeFallback(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
