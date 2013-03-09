.class public final Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;
.super Lorg/apache/harmony/xml/dom/LeafNodeImpl;
.source "ProcessingInstructionImpl.java"

# interfaces
.implements Lorg/w3c/dom/ProcessingInstruction;


# instance fields
.field private data:Ljava/lang/String;

.field private target:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/LeafNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    iput-object p2, p0, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;->target:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;->data:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;->target:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;->data:Ljava/lang/String;

    return-void
.end method
