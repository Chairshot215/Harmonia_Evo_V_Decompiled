.class public abstract Lgnu/kawa/xml/KCharacterData;
.super Lgnu/kawa/xml/KNode;
.source "KCharacterData.java"

# interfaces
.implements Lorg/w3c/dom/CharacterData;


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


# virtual methods
.method public appendData(Ljava/lang/String;)V
    .locals 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x7

    const-string v2, "appendData not supported"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public deleteData(II)V
    .locals 1
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 63
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lgnu/kawa/xml/KCharacterData;->replaceData(IILjava/lang/String;)V

    .line 64
    return-void
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lgnu/kawa/xml/KCharacterData;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 3

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 24
    .local v0, sbuf:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgnu/kawa/xml/KCharacterData;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    .line 25
    .local v1, tlist:Lgnu/xml/NodeTree;
    iget v2, p0, Lgnu/kawa/xml/KCharacterData;->ipos:I

    invoke-virtual {v1, v2}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lgnu/xml/NodeTree;->stringValue(ILjava/lang/StringBuffer;)I

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    return v2
.end method

.method public insertData(ILjava/lang/String;)V
    .locals 1
    .parameter "offset"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lgnu/kawa/xml/KCharacterData;->replaceData(IILjava/lang/String;)V

    .line 59
    return-void
.end method

.method public replaceData(IILjava/lang/String;)V
    .locals 3
    .parameter "offset"
    .parameter "count"
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x7

    const-string v2, "replaceData not supported"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
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

.method public substringData(II)Ljava/lang/String;
    .locals 4
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lgnu/kawa/xml/KCharacterData;->getData()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, data:Ljava/lang/String;
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    add-int v1, p1, p2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 45
    :cond_0
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/4 v2, 0x1

    const-string v3, "invalid index to substringData"

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 47
    :cond_1
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
