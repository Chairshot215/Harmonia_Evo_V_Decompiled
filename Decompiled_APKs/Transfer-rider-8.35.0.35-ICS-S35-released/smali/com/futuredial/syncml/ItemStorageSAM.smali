.class public Lcom/futuredial/syncml/ItemStorageSAM;
.super Lcom/futuredial/syncml/ItemStorage;
.source "ItemStorageSAM.java"


# instance fields
.field protected inNumberOfItemsMax:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/futuredial/syncml/ItemStorage;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/futuredial/syncml/ItemStorageSAM;->inNumberOfItemsMax:I

    .line 13
    return-void
.end method


# virtual methods
.method public InItemFinished()Z
    .locals 5

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, bret:Z
    iget-boolean v3, p0, Lcom/futuredial/syncml/ItemStorageSAM;->inNumberOfItemSetted:Z

    if-eqz v3, :cond_0

    .line 35
    iget v3, p0, Lcom/futuredial/syncml/ItemStorageSAM;->inNumberOfItemsMax:I

    if-nez v3, :cond_1

    .line 37
    const/4 v0, 0x1

    .line 49
    :cond_0
    :goto_0
    return v0

    .line 41
    :cond_1
    iget-object v3, p0, Lcom/futuredial/syncml/ItemStorageSAM;->inItemArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 42
    .local v1, nInCount:I
    iget v3, p0, Lcom/futuredial/syncml/ItemStorageSAM;->inNumberOfItemsMax:I

    if-gt v3, v1, :cond_0

    .line 44
    iget-object v3, p0, Lcom/futuredial/syncml/ItemStorageSAM;->inItemArray:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/futuredial/syncml/Item;

    .line 45
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

    .line 54
    if-eq p2, v4, :cond_0

    const/4 v2, 0x3

    if-ne p2, v2, :cond_6

    .line 56
    :cond_0
    const/4 v1, 0x0

    .line 57
    .local v1, pItem:Lcom/futuredial/syncml/Item;
    iget-object v2, p0, Lcom/futuredial/syncml/ItemStorageSAM;->inItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 58
    .local v0, nInCount:I
    if-lez v0, :cond_1

    .line 60
    iget-object v2, p0, Lcom/futuredial/syncml/ItemStorageSAM;->inItemArray:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #pItem:Lcom/futuredial/syncml/Item;
    check-cast v1, Lcom/futuredial/syncml/Item;

    .line 61
    .restart local v1       #pItem:Lcom/futuredial/syncml/Item;
    invoke-virtual {v1}, Lcom/futuredial/syncml/Item;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    const/4 v1, 0x0

    .line 67
    :cond_1
    if-nez v1, :cond_2

    .line 69
    new-instance v1, Lcom/futuredial/syncml/Item;

    .end local v1           #pItem:Lcom/futuredial/syncml/Item;
    invoke-direct {v1}, Lcom/futuredial/syncml/Item;-><init>()V

    .line 70
    .restart local v1       #pItem:Lcom/futuredial/syncml/Item;
    invoke-virtual {v1, p4}, Lcom/futuredial/syncml/Item;->setVxxID(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1, p4}, Lcom/futuredial/syncml/Item;->setPhoneMemory(Ljava/lang/String;)V

    .line 75
    iget-object v2, p0, Lcom/futuredial/syncml/ItemStorageSAM;->inItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_2
    invoke-virtual {v1, p7}, Lcom/futuredial/syncml/Item;->setBinHex(Z)V

    .line 78
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 80
    invoke-virtual {v1, p3}, Lcom/futuredial/syncml/Item;->appendVxxString(Ljava/lang/String;)V

    .line 82
    :cond_3
    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 84
    invoke-virtual {v1, p5}, Lcom/futuredial/syncml/Item;->setParentBoxString(Ljava/lang/String;)V

    .line 86
    :cond_4
    if-eqz p1, :cond_5

    .line 88
    invoke-virtual {v1, p1}, Lcom/futuredial/syncml/Item;->setDataType(Ljava/lang/String;)V

    .line 90
    :cond_5
    invoke-virtual {v1, v4}, Lcom/futuredial/syncml/Item;->setFinished(Z)V

    .line 100
    invoke-virtual {v1}, Lcom/futuredial/syncml/Item;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 103
    if-eqz p1, :cond_7

    iget-object v2, p0, Lcom/futuredial/syncml/ItemStorageSAM;->contentType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 108
    iget-object v2, p0, Lcom/futuredial/syncml/ItemStorageSAM;->contentType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 111
    invoke-virtual {v1}, Lcom/futuredial/syncml/Item;->getVxxString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/futuredial/ParseThread;->AddStrArray(Ljava/lang/String;)V

    .line 122
    .end local v0           #nInCount:I
    .end local v1           #pItem:Lcom/futuredial/syncml/Item;
    :cond_6
    :goto_0
    iget-object v2, p0, Lcom/futuredial/syncml/ItemStorageSAM;->inItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    return v2

    .line 116
    .restart local v0       #nInCount:I
    .restart local v1       #pItem:Lcom/futuredial/syncml/Item;
    :cond_7
    invoke-virtual {v1}, Lcom/futuredial/syncml/Item;->getVxxString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/futuredial/ParseThread;->AddStrArray(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getInNumberOfItems()I
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/futuredial/syncml/ItemStorageSAM;->inNumberOfItemSetted:Z

    if-eqz v0, :cond_0

    .line 23
    iget v0, p0, Lcom/futuredial/syncml/ItemStorageSAM;->inNumberOfItems:I

    .line 26
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInNumberOfItems(I)V
    .locals 1
    .parameter "inNumberOfItems"

    .prologue
    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/futuredial/syncml/ItemStorageSAM;->inNumberOfItemSetted:Z

    .line 17
    iput p1, p0, Lcom/futuredial/syncml/ItemStorageSAM;->inNumberOfItems:I

    .line 18
    iget v0, p0, Lcom/futuredial/syncml/ItemStorageSAM;->inNumberOfItemsMax:I

    if-le p1, v0, :cond_0

    .line 19
    iput p1, p0, Lcom/futuredial/syncml/ItemStorageSAM;->inNumberOfItemsMax:I

    .line 20
    :cond_0
    return-void
.end method
