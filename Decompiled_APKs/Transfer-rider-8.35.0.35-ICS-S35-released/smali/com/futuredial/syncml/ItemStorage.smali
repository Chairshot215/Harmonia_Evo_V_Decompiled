.class public Lcom/futuredial/syncml/ItemStorage;
.super Ljava/lang/Object;
.source "ItemStorage.java"


# static fields
.field public static processedLocURI:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected contentType:Ljava/lang/String;

.field protected inItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/syncml/Item;",
            ">;"
        }
    .end annotation
.end field

.field protected inNumberOfItemSetted:Z

.field protected inNumberOfItems:I

.field protected outItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/syncml/Item;",
            ">;"
        }
    .end annotation
.end field

.field protected outItemIndex:I

.field protected outNumberOfItemGetted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/futuredial/syncml/ItemStorage;->processedLocURI:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/syncml/ItemStorage;->contentType:Ljava/lang/String;

    .line 25
    iput v1, p0, Lcom/futuredial/syncml/ItemStorage;->inNumberOfItems:I

    .line 26
    iput-boolean v1, p0, Lcom/futuredial/syncml/ItemStorage;->inNumberOfItemSetted:Z

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/syncml/ItemStorage;->inItemArray:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/syncml/ItemStorage;->outItemArray:Ljava/util/ArrayList;

    .line 31
    iput v1, p0, Lcom/futuredial/syncml/ItemStorage;->outItemIndex:I

    .line 32
    iput-boolean v1, p0, Lcom/futuredial/syncml/ItemStorage;->outNumberOfItemGetted:Z

    .line 33
    return-void
.end method


# virtual methods
.method public Clean()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 235
    iput v1, p0, Lcom/futuredial/syncml/ItemStorage;->inNumberOfItems:I

    .line 236
    iput-boolean v1, p0, Lcom/futuredial/syncml/ItemStorage;->inNumberOfItemSetted:Z

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/syncml/ItemStorage;->inItemArray:Ljava/util/ArrayList;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/syncml/ItemStorage;->outItemArray:Ljava/util/ArrayList;

    .line 241
    iput v1, p0, Lcom/futuredial/syncml/ItemStorage;->outItemIndex:I

    .line 242
    iput-boolean v1, p0, Lcom/futuredial/syncml/ItemStorage;->outNumberOfItemGetted:Z

    .line 243
    return-void
.end method

.method public GetLastInItemID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 117
    const/4 v2, 0x0

    .line 118
    .local v2, ret:Ljava/lang/String;
    iget-object v3, p0, Lcom/futuredial/syncml/ItemStorage;->inItemArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 119
    .local v0, nIdx:I
    if-lez v0, :cond_0

    .line 121
    iget-object v3, p0, Lcom/futuredial/syncml/ItemStorage;->inItemArray:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/futuredial/syncml/Item;

    .line 122
    .local v1, pItem:Lcom/futuredial/syncml/Item;
    invoke-virtual {v1}, Lcom/futuredial/syncml/Item;->getVxxID()Ljava/lang/String;

    move-result-object v2

    .line 124
    .end local v1           #pItem:Lcom/futuredial/syncml/Item;
    :cond_0
    return-object v2
.end method

.method public InItemFinished()Z
    .locals 5

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, bret:Z
    iget-boolean v3, p0, Lcom/futuredial/syncml/ItemStorage;->inNumberOfItemSetted:Z

    if-eqz v3, :cond_0

    .line 216
    iget v3, p0, Lcom/futuredial/syncml/ItemStorage;->inNumberOfItems:I

    if-nez v3, :cond_1

    .line 218
    const/4 v0, 0x1

    .line 230
    :cond_0
    :goto_0
    return v0

    .line 222
    :cond_1
    iget-object v3, p0, Lcom/futuredial/syncml/ItemStorage;->inItemArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 223
    .local v1, nInCount:I
    iget v3, p0, Lcom/futuredial/syncml/ItemStorage;->inNumberOfItems:I

    if-gt v3, v1, :cond_0

    .line 225
    iget-object v3, p0, Lcom/futuredial/syncml/ItemStorage;->inItemArray:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/futuredial/syncml/Item;

    .line 226
    .local v2, pItem:Lcom/futuredial/syncml/Item;
    invoke-virtual {v2}, Lcom/futuredial/syncml/Item;->isFinished()Z

    move-result v0

    goto :goto_0
.end method

.method public OnDataRecved(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I
    .locals 5
    .parameter "strType"
    .parameter "nOperation"
    .parameter "pszData"
    .parameter "pszID"
    .parameter "pszSource"
    .parameter "bExitMoreData"
    .parameter "bIsBinHex"

    .prologue
    const/4 v4, 0x1

    .line 128
    if-eq p2, v4, :cond_0

    const/4 v2, 0x3

    if-ne p2, v2, :cond_7

    .line 130
    :cond_0
    const/4 v1, 0x0

    .line 131
    .local v1, pItem:Lcom/futuredial/syncml/Item;
    iget-object v2, p0, Lcom/futuredial/syncml/ItemStorage;->inItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 132
    .local v0, nInCount:I
    if-lez v0, :cond_1

    .line 134
    iget-object v2, p0, Lcom/futuredial/syncml/ItemStorage;->inItemArray:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #pItem:Lcom/futuredial/syncml/Item;
    check-cast v1, Lcom/futuredial/syncml/Item;

    .line 135
    .restart local v1       #pItem:Lcom/futuredial/syncml/Item;
    invoke-virtual {v1}, Lcom/futuredial/syncml/Item;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    const/4 v1, 0x0

    .line 141
    :cond_1
    if-nez v1, :cond_2

    .line 143
    new-instance v1, Lcom/futuredial/syncml/Item;

    .end local v1           #pItem:Lcom/futuredial/syncml/Item;
    invoke-direct {v1}, Lcom/futuredial/syncml/Item;-><init>()V

    .line 144
    .restart local v1       #pItem:Lcom/futuredial/syncml/Item;
    invoke-virtual {v1, p4}, Lcom/futuredial/syncml/Item;->setVxxID(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1, p4}, Lcom/futuredial/syncml/Item;->setPhoneMemory(Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/futuredial/syncml/ItemStorage;->inItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_2
    invoke-virtual {v1, p7}, Lcom/futuredial/syncml/Item;->setBinHex(Z)V

    .line 152
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 154
    invoke-virtual {v1, p3}, Lcom/futuredial/syncml/Item;->appendVxxString(Ljava/lang/String;)V

    .line 156
    :cond_3
    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 158
    invoke-virtual {v1, p5}, Lcom/futuredial/syncml/Item;->setParentBoxString(Ljava/lang/String;)V

    .line 160
    :cond_4
    if-eqz p1, :cond_5

    .line 162
    invoke-virtual {v1, p1}, Lcom/futuredial/syncml/Item;->setDataType(Ljava/lang/String;)V

    .line 164
    :cond_5
    if-eqz p6, :cond_8

    .line 166
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/futuredial/syncml/Item;->setFinished(Z)V

    .line 173
    :goto_0
    invoke-virtual {v1}, Lcom/futuredial/syncml/Item;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/futuredial/syncml/ItemStorage;->processedLocURI:Ljava/util/ArrayList;

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 176
    if-eqz p1, :cond_9

    iget-object v2, p0, Lcom/futuredial/syncml/ItemStorage;->contentType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 181
    iget-object v2, p0, Lcom/futuredial/syncml/ItemStorage;->contentType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 184
    invoke-virtual {v1}, Lcom/futuredial/syncml/Item;->getVxxString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/futuredial/ParseThread;->AddStrArray(Ljava/lang/String;)V

    .line 193
    :cond_6
    :goto_1
    sget-object v2, Lcom/futuredial/syncml/ItemStorage;->processedLocURI:Ljava/util/ArrayList;

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .end local v0           #nInCount:I
    .end local v1           #pItem:Lcom/futuredial/syncml/Item;
    :cond_7
    iget-object v2, p0, Lcom/futuredial/syncml/ItemStorage;->inItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    return v2

    .line 170
    .restart local v0       #nInCount:I
    .restart local v1       #pItem:Lcom/futuredial/syncml/Item;
    :cond_8
    invoke-virtual {v1, v4}, Lcom/futuredial/syncml/Item;->setFinished(Z)V

    goto :goto_0

    .line 189
    :cond_9
    invoke-virtual {v1}, Lcom/futuredial/syncml/Item;->getVxxString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/futuredial/ParseThread;->AddStrArray(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public OutItemFinished()Z
    .locals 4

    .prologue
    .line 201
    iget-object v2, p0, Lcom/futuredial/syncml/ItemStorage;->outItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 202
    .local v0, nOutCount:I
    if-nez v0, :cond_0

    .line 204
    const/4 v2, 0x1

    .line 208
    :goto_0
    return v2

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/futuredial/syncml/ItemStorage;->outItemArray:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/futuredial/syncml/Item;

    .line 208
    .local v1, pItem:Lcom/futuredial/syncml/Item;
    invoke-virtual {v1}, Lcom/futuredial/syncml/Item;->isFinished()Z

    move-result v2

    goto :goto_0
.end method

.method public SetMemory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "pszUID"
    .parameter "pszMemoryID"

    .prologue
    .line 260
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/futuredial/syncml/ItemStorage;->outItemArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, nCount:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 262
    iget-object v3, p0, Lcom/futuredial/syncml/ItemStorage;->outItemArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/futuredial/syncml/Item;

    .line 263
    .local v2, pItem:Lcom/futuredial/syncml/Item;
    invoke-virtual {v2}, Lcom/futuredial/syncml/Item;->getVxxID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 265
    invoke-virtual {v2, p2}, Lcom/futuredial/syncml/Item;->setPhoneMemory(Ljava/lang/String;)V

    .line 269
    .end local v2           #pItem:Lcom/futuredial/syncml/Item;
    :cond_0
    return-void

    .line 260
    .restart local v2       #pItem:Lcom/futuredial/syncml/Item;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public SetRet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "pszID"
    .parameter "pszRetCode"

    .prologue
    .line 247
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/futuredial/syncml/ItemStorage;->outItemArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, nCount:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 249
    iget-object v3, p0, Lcom/futuredial/syncml/ItemStorage;->outItemArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/futuredial/syncml/Item;

    .line 250
    .local v2, pItem:Lcom/futuredial/syncml/Item;
    invoke-virtual {v2}, Lcom/futuredial/syncml/Item;->getVxxID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 252
    invoke-virtual {v2, p2}, Lcom/futuredial/syncml/Item;->setResultString(Ljava/lang/String;)V

    .line 256
    .end local v2           #pItem:Lcom/futuredial/syncml/Item;
    :cond_0
    return-void

    .line 247
    .restart local v2       #pItem:Lcom/futuredial/syncml/Item;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/futuredial/syncml/ItemStorage;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentInItemCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/futuredial/syncml/ItemStorage;->inItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getInItemArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/syncml/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/futuredial/syncml/ItemStorage;->inItemArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInNumberOfItems()I
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/futuredial/syncml/ItemStorage;->inNumberOfItemSetted:Z

    if-eqz v0, :cond_0

    .line 47
    iget v0, p0, Lcom/futuredial/syncml/ItemStorage;->inNumberOfItems:I

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOutItemArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/syncml/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/futuredial/syncml/ItemStorage;->outItemArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOutItemIndex()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/futuredial/syncml/ItemStorage;->outItemIndex:I

    return v0
.end method

.method public getOutNumberOfItems()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/futuredial/syncml/ItemStorage;->outNumberOfItemGetted:Z

    .line 112
    iget-object v0, p0, Lcom/futuredial/syncml/ItemStorage;->outItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isInNumberOfItemSetted()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/futuredial/syncml/ItemStorage;->inNumberOfItemSetted:Z

    return v0
.end method

.method public isOutNumberOfItemGetted()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/futuredial/syncml/ItemStorage;->outNumberOfItemGetted:Z

    return v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .parameter "contentType"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/futuredial/syncml/ItemStorage;->contentType:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setInItemArray(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/syncml/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, inItemArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/syncml/Item;>;"
    iput-object p1, p0, Lcom/futuredial/syncml/ItemStorage;->inItemArray:Ljava/util/ArrayList;

    .line 89
    return-void
.end method

.method public setInNumberOfItemSetted(Z)V
    .locals 0
    .parameter "inNumberOfItemSetted"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/futuredial/syncml/ItemStorage;->inNumberOfItemSetted:Z

    .line 83
    return-void
.end method

.method public setInNumberOfItems(I)V
    .locals 1
    .parameter "inNumberOfItems"

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/futuredial/syncml/ItemStorage;->inNumberOfItemSetted:Z

    .line 76
    iput p1, p0, Lcom/futuredial/syncml/ItemStorage;->inNumberOfItems:I

    .line 77
    return-void
.end method

.method public setOutItemArray(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/syncml/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, outItemArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/syncml/Item;>;"
    iput-object p1, p0, Lcom/futuredial/syncml/ItemStorage;->outItemArray:Ljava/util/ArrayList;

    .line 95
    return-void
.end method

.method public setOutItemIndex(I)V
    .locals 0
    .parameter "outItemIndex"

    .prologue
    .line 100
    iput p1, p0, Lcom/futuredial/syncml/ItemStorage;->outItemIndex:I

    .line 101
    return-void
.end method

.method public setOutNumberOfItemGetted(Z)V
    .locals 0
    .parameter "outNumberOfItemGetted"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/futuredial/syncml/ItemStorage;->outNumberOfItemGetted:Z

    .line 107
    return-void
.end method
