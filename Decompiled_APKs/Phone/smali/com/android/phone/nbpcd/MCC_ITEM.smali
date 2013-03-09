.class public Lcom/android/phone/nbpcd/MCC_ITEM;
.super Ljava/lang/Object;
.source "MCC_ITEM.java"


# instance fields
.field private mAreaCode:Ljava/lang/String;

.field private mCounteryCode:Ljava/lang/String;

.field private mCountryName:Ljava/lang/String;

.field private mCurrentIDD:Ljava/lang/String;

.field private mIDDArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/nbpcd/IDD_ITEM;",
            ">;"
        }
    .end annotation
.end field

.field private mMcc:Ljava/lang/String;

.field private mNDD:Ljava/lang/String;

.field private mNumLength:Ljava/lang/Integer;

.field private mpk:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mIDDArray:Ljava/util/ArrayList;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZ)V
    .locals 10
    .parameter "pk"
    .parameter "mcc"
    .parameter "CountryName"
    .parameter "CounteryCode"
    .parameter "IDD"
    .parameter "NDD"
    .parameter "AreaCode"
    .parameter "numLength"
    .parameter "currentUsage"
    .parameter "editable"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mIDDArray:Ljava/util/ArrayList;

    .line 30
    iput-object p1, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mpk:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mMcc:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mCountryName:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mCounteryCode:Ljava/lang/String;

    .line 34
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mNDD:Ljava/lang/String;

    .line 35
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mAreaCode:Ljava/lang/String;

    .line 36
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mNumLength:Ljava/lang/Integer;

    .line 38
    const/4 v1, 0x1

    move/from16 v0, p9

    if-ne v0, v1, :cond_0

    .line 39
    iput-object p5, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mCurrentIDD:Ljava/lang/String;

    :cond_0
    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    .line 42
    invoke-virtual/range {v1 .. v9}, Lcom/android/phone/nbpcd/MCC_ITEM;->addIDD_NDD_Item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZ)V

    .line 44
    return-void
.end method


# virtual methods
.method public addIDD_NDD_Item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZ)V
    .locals 1
    .parameter "CountryName"
    .parameter "CounteryCode"
    .parameter "IDD"
    .parameter "NDD"
    .parameter "AreaCode"
    .parameter "numLength"
    .parameter "currentUsage"
    .parameter "editable"

    .prologue
    .line 49
    const/4 v0, 0x1

    if-ne p7, v0, :cond_0

    .line 50
    iput-object p3, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mCurrentIDD:Ljava/lang/String;

    .line 52
    :cond_0
    invoke-virtual {p0, p3, p7, p8}, Lcom/android/phone/nbpcd/MCC_ITEM;->addIDD_NDD_Item(Ljava/lang/String;ZZ)V

    .line 53
    return-void
.end method

.method public addIDD_NDD_Item(Ljava/lang/String;ZZ)V
    .locals 2
    .parameter "IDD"
    .parameter "currentUsage"
    .parameter "editable"

    .prologue
    .line 57
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 58
    iput-object p1, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mCurrentIDD:Ljava/lang/String;

    .line 60
    :cond_0
    new-instance v0, Lcom/android/phone/nbpcd/IDD_ITEM;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/phone/nbpcd/IDD_ITEM;-><init>(Ljava/lang/String;ZZ)V

    .line 61
    .local v0, tItem:Lcom/android/phone/nbpcd/IDD_ITEM;
    iget-object v1, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mIDDArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public getArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mAreaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/nbpcd/IDD_ITEM;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mIDDArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCounterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mCountryName:Ljava/lang/String;

    return-object v0
.end method

.method public getCounteryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mCounteryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mCountryName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentIDD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mCurrentIDD:Ljava/lang/String;

    return-object v0
.end method

.method public getIDDArray()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 130
    iget-object v5, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mIDDArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 131
    iget-object v5, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mIDDArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    .line 132
    .local v0, IDDList:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mIDDArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 133
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/phone/nbpcd/IDD_ITEM;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v4, pathes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 135
    .local v1, index:I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 136
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/nbpcd/IDD_ITEM;

    invoke-virtual {v5}, Lcom/android/phone/nbpcd/IDD_ITEM;->getIDD()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_0

    .line 140
    .end local v0           #IDDList:[Ljava/lang/String;
    .end local v1           #index:I
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/phone/nbpcd/IDD_ITEM;>;"
    .end local v4           #pathes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public getIDDList()[Lcom/android/phone/nbpcd/IDD_ITEM;
    .locals 7

    .prologue
    .line 69
    iget-object v6, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mIDDArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 71
    .local v5, size:I
    new-array v4, v5, [Lcom/android/phone/nbpcd/IDD_ITEM;

    .line 72
    .local v4, result:[Lcom/android/phone/nbpcd/IDD_ITEM;
    const/4 v0, 0x0

    .line 74
    .local v0, i:I
    iget-object v6, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mIDDArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/nbpcd/IDD_ITEM;

    .line 75
    .local v3, number:Lcom/android/phone/nbpcd/IDD_ITEM;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    aput-object v3, v4, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 78
    .end local v3           #number:Lcom/android/phone/nbpcd/IDD_ITEM;
    :cond_0
    return-object v4
.end method

.method public getIddNums()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mIDDArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mMcc:Ljava/lang/String;

    return-object v0
.end method

.method public getNDD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mNDD:Ljava/lang/String;

    return-object v0
.end method

.method public getNumLength()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mNumLength:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPrimarykey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mpk:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mCountryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/nbpcd/MCC_ITEM;->mMcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
