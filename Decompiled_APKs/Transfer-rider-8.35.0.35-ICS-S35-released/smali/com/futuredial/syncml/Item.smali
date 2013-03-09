.class public Lcom/futuredial/syncml/Item;
.super Ljava/lang/Object;
.source "Item.java"


# instance fields
.field protected binHex:Z

.field protected dataType:Ljava/lang/String;

.field protected finished:Z

.field protected operation:I

.field protected parentBoxString:Ljava/lang/String;

.field protected phoneMemory:Ljava/lang/String;

.field protected resultString:Ljava/lang/String;

.field protected retryTimes:I

.field protected vxxID:Ljava/lang/String;

.field protected vxxString:Ljava/lang/String;

.field protected vxxStringBak:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x3

    iput v0, p0, Lcom/futuredial/syncml/Item;->retryTimes:I

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/syncml/Item;->vxxString:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/syncml/Item;->vxxStringBak:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/syncml/Item;->parentBoxString:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/syncml/Item;->vxxID:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/syncml/Item;->phoneMemory:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/syncml/Item;->resultString:Ljava/lang/String;

    .line 27
    iput-boolean v1, p0, Lcom/futuredial/syncml/Item;->finished:Z

    .line 28
    iput v1, p0, Lcom/futuredial/syncml/Item;->operation:I

    .line 29
    iput-boolean v1, p0, Lcom/futuredial/syncml/Item;->binHex:Z

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/syncml/Item;->dataType:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public appendVxxString(Ljava/lang/String;)V
    .locals 2
    .parameter "vxxString"

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/futuredial/syncml/Item;->vxxString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/syncml/Item;->vxxString:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public getDataType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/futuredial/syncml/Item;->dataType:Ljava/lang/String;

    return-object v0
.end method

.method public getOperation()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/futuredial/syncml/Item;->operation:I

    return v0
.end method

.method public getParentBoxString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/futuredial/syncml/Item;->parentBoxString:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneMemory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/futuredial/syncml/Item;->phoneMemory:Ljava/lang/String;

    return-object v0
.end method

.method public getResultString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/futuredial/syncml/Item;->resultString:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryTimes()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/futuredial/syncml/Item;->retryTimes:I

    return v0
.end method

.method public getVxxID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/futuredial/syncml/Item;->vxxID:Ljava/lang/String;

    return-object v0
.end method

.method public getVxxString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/futuredial/syncml/Item;->binHex:Z

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/futuredial/syncml/Item;->vxxString:Ljava/lang/String;

    invoke-static {v0}, Lcom/futuredial/wbxml/ConvertWBXML;->ByteXStringW2StringW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/futuredial/syncml/Item;->vxxString:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVxxStringBak()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/futuredial/syncml/Item;->vxxStringBak:Ljava/lang/String;

    return-object v0
.end method

.method public isBinHex()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/futuredial/syncml/Item;->binHex:Z

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/futuredial/syncml/Item;->finished:Z

    return v0
.end method

.method public setBinHex(Z)V
    .locals 0
    .parameter "binHex"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/futuredial/syncml/Item;->binHex:Z

    .line 44
    return-void
.end method

.method public setDataType(Ljava/lang/String;)V
    .locals 0
    .parameter "dataType"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/futuredial/syncml/Item;->dataType:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setFinished(Z)V
    .locals 0
    .parameter "finished"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/futuredial/syncml/Item;->finished:Z

    .line 103
    return-void
.end method

.method public setOperation(I)V
    .locals 0
    .parameter "operation"

    .prologue
    .line 108
    iput p1, p0, Lcom/futuredial/syncml/Item;->operation:I

    .line 109
    return-void
.end method

.method public setParentBoxString(Ljava/lang/String;)V
    .locals 0
    .parameter "parentBoxString"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/futuredial/syncml/Item;->parentBoxString:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setPhoneMemory(Ljava/lang/String;)V
    .locals 0
    .parameter "phoneMemory"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/futuredial/syncml/Item;->phoneMemory:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setResultString(Ljava/lang/String;)V
    .locals 0
    .parameter "resultString"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/futuredial/syncml/Item;->resultString:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setRetryTimes(I)V
    .locals 0
    .parameter "retryTimes"

    .prologue
    .line 49
    iput p1, p0, Lcom/futuredial/syncml/Item;->retryTimes:I

    .line 50
    return-void
.end method

.method public setVxxID(Ljava/lang/String;)V
    .locals 0
    .parameter "vxxID"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/futuredial/syncml/Item;->vxxID:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setVxxString(Ljava/lang/String;)V
    .locals 0
    .parameter "vxxString"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/futuredial/syncml/Item;->vxxString:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setVxxStringBak(Ljava/lang/String;)V
    .locals 0
    .parameter "vxxStringBak"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/futuredial/syncml/Item;->vxxStringBak:Ljava/lang/String;

    .line 72
    return-void
.end method
