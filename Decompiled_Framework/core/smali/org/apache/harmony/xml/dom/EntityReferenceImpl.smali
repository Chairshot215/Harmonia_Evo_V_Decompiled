.class public Lorg/apache/harmony/xml/dom/EntityReferenceImpl;
.super Lorg/apache/harmony/xml/dom/LeafNodeImpl;
.source "EntityReferenceImpl.java"

# interfaces
.implements Lorg/w3c/dom/EntityReference;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/LeafNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    iput-object p2, p0, Lorg/apache/harmony/xml/dom/EntityReferenceImpl;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/EntityReferenceImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    const/4 v0, 0x5

    return v0
.end method
