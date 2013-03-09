.class public Lgnu/kawa/xml/KProcessingInstruction;
.super Lgnu/kawa/xml/KNode;
.source "KProcessingInstruction.java"

# interfaces
.implements Lorg/w3c/dom/ProcessingInstruction;


# direct methods
.method public constructor <init>(Lgnu/xml/NodeTree;I)V
    .locals 0
    .parameter "seq"
    .parameter "ipos"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lgnu/kawa/xml/KNode;-><init>(Lgnu/xml/NodeTree;I)V

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/KProcessingInstruction;
    .locals 3
    .parameter "target"
    .parameter "content"

    .prologue
    const/4 v2, 0x0

    .line 49
    new-instance v0, Lgnu/xml/NodeTree;

    invoke-direct {v0}, Lgnu/xml/NodeTree;-><init>()V

    .line 50
    .local v0, tree:Lgnu/xml/NodeTree;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p0, p1, v2, v1}, Lgnu/xml/NodeTree;->writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;II)V

    .line 51
    new-instance v1, Lgnu/kawa/xml/KProcessingInstruction;

    invoke-direct {v1, v0, v2}, Lgnu/kawa/xml/KProcessingInstruction;-><init>(Lgnu/xml/NodeTree;I)V

    return-object v1
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lgnu/kawa/xml/KProcessingInstruction;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lgnu/kawa/xml/KProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x7

    return v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lgnu/kawa/xml/KProcessingInstruction;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget v1, p0, Lgnu/kawa/xml/KProcessingInstruction;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/xml/NodeTree;->posTarget(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x7

    const-string v2, "setData not supported"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method
