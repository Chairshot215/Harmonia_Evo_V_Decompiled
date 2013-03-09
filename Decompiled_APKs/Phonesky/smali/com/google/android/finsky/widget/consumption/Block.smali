.class public Lcom/google/android/finsky/widget/consumption/Block;
.super Ljava/lang/Object;
.source "Block.java"


# instance fields
.field private mChildHeightRes:I

.field private mChildResArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[I>;"
        }
    .end annotation
.end field

.field private mChildWidthRes:I

.field private mHeightRes:I

.field private mLastInRowReplacement:Lcom/google/android/finsky/widget/consumption/Block;

.field private final mLayoutId:I

.field private mMaxRowStartCount:I

.field private mNumImages:I

.field private mSupportsMetadata:Z

.field private mWidthRes:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "layoutId"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/google/android/finsky/widget/consumption/Block;->mLayoutId:I

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mNumImages:I

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mMaxRowStartCount:I

    .line 46
    return-void
.end method


# virtual methods
.method public getHeight(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 144
    iget v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mHeightRes:I

    invoke-static {p1, v0}, Lcom/google/android/finsky/widget/WidgetUtils;->getDips(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getImageHeightRes(I)I
    .locals 2
    .parameter "imageNumber"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mChildResArray:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mChildResArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x1

    aget v0, v0, v1

    .line 118
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mChildHeightRes:I

    goto :goto_0
.end method

.method public getImageWidthRes(I)I
    .locals 2
    .parameter "imageNumber"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mChildResArray:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mChildResArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 111
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mChildWidthRes:I

    goto :goto_0
.end method

.method public getLastOccurenceInRowReplacement()Lcom/google/android/finsky/widget/consumption/Block;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mLastInRowReplacement:Lcom/google/android/finsky/widget/consumption/Block;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mLayoutId:I

    return v0
.end method

.method public getMaxRowStartCount()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mMaxRowStartCount:I

    return v0
.end method

.method public getNumImages()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mNumImages:I

    return v0
.end method

.method public getWidth(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 137
    iget v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mWidthRes:I

    invoke-static {p1, v0}, Lcom/google/android/finsky/widget/WidgetUtils;->getDips(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public hasLastOccurenceInRowReplacement()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mLastInRowReplacement:Lcom/google/android/finsky/widget/consumption/Block;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMaxRowStartCount()Z
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mMaxRowStartCount:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/google/android/finsky/widget/consumption/Block;->getLayoutId()I

    move-result v0

    .line 150
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/finsky/widget/consumption/Block;->getMaxRowStartCount()I

    move-result v2

    add-int v0, v1, v2

    .line 151
    return v0
.end method

.method public hosting(I)Lcom/google/android/finsky/widget/consumption/Block;
    .locals 0
    .parameter "imageCount"

    .prologue
    .line 57
    iput p1, p0, Lcom/google/android/finsky/widget/consumption/Block;->mNumImages:I

    .line 58
    return-object p0
.end method

.method public hosting(III)Lcom/google/android/finsky/widget/consumption/Block;
    .locals 0
    .parameter "imageCount"
    .parameter "childWidthRes"
    .parameter "childHeightRes"

    .prologue
    .line 62
    iput p1, p0, Lcom/google/android/finsky/widget/consumption/Block;->mNumImages:I

    .line 63
    iput p2, p0, Lcom/google/android/finsky/widget/consumption/Block;->mChildWidthRes:I

    .line 64
    iput p3, p0, Lcom/google/android/finsky/widget/consumption/Block;->mChildHeightRes:I

    .line 65
    return-object p0
.end method

.method public limitRowStartTo(I)Lcom/google/android/finsky/widget/consumption/Block;
    .locals 0
    .parameter "maxRowStart"

    .prologue
    .line 82
    iput p1, p0, Lcom/google/android/finsky/widget/consumption/Block;->mMaxRowStartCount:I

    .line 83
    return-object p0
.end method

.method public markToSupportMetadata()Lcom/google/android/finsky/widget/consumption/Block;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mSupportsMetadata:Z

    .line 78
    return-object p0
.end method

.method public replaceLastOccurenceInRowWith(Lcom/google/android/finsky/widget/consumption/Block;)Lcom/google/android/finsky/widget/consumption/Block;
    .locals 0
    .parameter "replacement"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/finsky/widget/consumption/Block;->mLastInRowReplacement:Lcom/google/android/finsky/widget/consumption/Block;

    .line 88
    return-object p0
.end method

.method public sized(II)Lcom/google/android/finsky/widget/consumption/Block;
    .locals 1
    .parameter "widthRes"
    .parameter "heightRes"

    .prologue
    .line 49
    iput p1, p0, Lcom/google/android/finsky/widget/consumption/Block;->mWidthRes:I

    .line 50
    iput p2, p0, Lcom/google/android/finsky/widget/consumption/Block;->mHeightRes:I

    .line 51
    iget v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mWidthRes:I

    iput v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mChildWidthRes:I

    .line 52
    iget v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mHeightRes:I

    iput v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mChildHeightRes:I

    .line 53
    return-object p0
.end method

.method public supportsMetadata()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mSupportsMetadata:Z

    return v0
.end method

.method public withChild(III)Lcom/google/android/finsky/widget/consumption/Block;
    .locals 3
    .parameter "childIndex"
    .parameter "childWidthRes"
    .parameter "childHeightRes"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mChildResArray:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/finsky/widget/consumption/Block;->mNumImages:I

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mChildResArray:Landroid/util/SparseArray;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/Block;->mChildResArray:Landroid/util/SparseArray;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    return-object p0
.end method
