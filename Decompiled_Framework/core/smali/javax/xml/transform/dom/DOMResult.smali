.class public Ljavax/xml/transform/dom/DOMResult;
.super Ljava/lang/Object;
.source "DOMResult.java"

# interfaces
.implements Ljavax/xml/transform/Result;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.dom.DOMResult/feature"


# instance fields
.field private nextSibling:Lorg/w3c/dom/Node;

.field private node:Lorg/w3c/dom/Node;

.field private systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, v0}, Ljavax/xml/transform/dom/DOMResult;->setNextSibling(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, v0}, Ljavax/xml/transform/dom/DOMResult;->setSystemId(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, v0}, Ljavax/xml/transform/dom/DOMResult;->setNextSibling(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, v0}, Ljavax/xml/transform/dom/DOMResult;->setSystemId(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, v0}, Ljavax/xml/transform/dom/DOMResult;->setNextSibling(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, p2}, Ljavax/xml/transform/dom/DOMResult;->setSystemId(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    iput-object v1, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    iput-object v1, p0, Ljavax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is contained by the \"null\" node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1, p2}, Lorg/w3c/dom/Node;->compareDocumentPosition(Lorg/w3c/dom/Node;)S

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is not contained by the node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, p1}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, p2}, Ljavax/xml/transform/dom/DOMResult;->setNextSibling(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, v1}, Ljavax/xml/transform/dom/DOMResult;->setSystemId(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is contained by the \"null\" node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1, p2}, Lorg/w3c/dom/Node;->compareDocumentPosition(Lorg/w3c/dom/Node;)S

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is not contained by the node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, p1}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, p2}, Ljavax/xml/transform/dom/DOMResult;->setNextSibling(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, p3}, Ljavax/xml/transform/dom/DOMResult;->setSystemId(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getNode()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public setNextSibling(Lorg/w3c/dom/Node;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is contained by the \"null\" node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->compareDocumentPosition(Lorg/w3c/dom/Node;)S

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is not contained by the node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    return-void
.end method

.method public setNode(Lorg/w3c/dom/Node;)V
    .locals 2

    iget-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is contained by the \"null\" node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->compareDocumentPosition(Lorg/w3c/dom/Node;)S

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is not contained by the node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljavax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    return-void
.end method
