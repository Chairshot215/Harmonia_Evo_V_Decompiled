.class public Ljavax/xml/transform/dom/DOMSource;
.super Ljava/lang/Object;
.source "DOMSource.java"

# interfaces
.implements Ljavax/xml/transform/Source;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.dom.DOMSource/feature"


# instance fields
.field private node:Lorg/w3c/dom/Node;

.field private systemID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Ljavax/xml/transform/dom/DOMSource;->setNode(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Ljavax/xml/transform/dom/DOMSource;->setNode(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, p2}, Ljavax/xml/transform/dom/DOMSource;->setSystemId(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getNode()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Ljavax/xml/transform/dom/DOMSource;->node:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/xml/transform/dom/DOMSource;->systemID:Ljava/lang/String;

    return-object v0
.end method

.method public setNode(Lorg/w3c/dom/Node;)V
    .locals 0

    iput-object p1, p0, Ljavax/xml/transform/dom/DOMSource;->node:Lorg/w3c/dom/Node;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljavax/xml/transform/dom/DOMSource;->systemID:Ljava/lang/String;

    return-void
.end method
