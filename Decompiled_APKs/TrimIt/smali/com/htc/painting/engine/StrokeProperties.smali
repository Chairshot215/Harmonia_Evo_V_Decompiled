.class public Lcom/htc/painting/engine/StrokeProperties;
.super Ljava/lang/Object;
.source "StrokeProperties.java"


# instance fields
.field protected mAlpha:I

.field protected mBlurRadius:I

.field protected mCap:Landroid/graphics/Paint$Cap;

.field protected mColor:I

.field protected mIsEraser:Z

.field protected mMaskFilter:Landroid/graphics/MaskFilter;

.field protected mWidth:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const v0, -0xbbbbbc

    iput v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mColor:I

    .line 17
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mWidth:F

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 19
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mCap:Landroid/graphics/Paint$Cap;

    .line 20
    iput-boolean v1, p0, Lcom/htc/painting/engine/StrokeProperties;->mIsEraser:Z

    .line 21
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mAlpha:I

    .line 22
    iput v1, p0, Lcom/htc/painting/engine/StrokeProperties;->mBlurRadius:I

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/htc/painting/engine/StrokeProperties;)V
    .locals 2
    .parameter "p"

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const v0, -0xbbbbbc

    iput v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mColor:I

    .line 17
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mWidth:F

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 19
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mCap:Landroid/graphics/Paint$Cap;

    .line 20
    iput-boolean v1, p0, Lcom/htc/painting/engine/StrokeProperties;->mIsEraser:Z

    .line 21
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mAlpha:I

    .line 22
    iput v1, p0, Lcom/htc/painting/engine/StrokeProperties;->mBlurRadius:I

    .line 27
    invoke-virtual {p1}, Lcom/htc/painting/engine/StrokeProperties;->getColor()I

    move-result v0

    iput v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mColor:I

    .line 28
    invoke-virtual {p1}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mWidth:F

    .line 29
    invoke-virtual {p1}, Lcom/htc/painting/engine/StrokeProperties;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 30
    invoke-virtual {p1}, Lcom/htc/painting/engine/StrokeProperties;->getCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mCap:Landroid/graphics/Paint$Cap;

    .line 31
    invoke-virtual {p1}, Lcom/htc/painting/engine/StrokeProperties;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mAlpha:I

    .line 32
    invoke-virtual {p1}, Lcom/htc/painting/engine/StrokeProperties;->isEraser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mIsEraser:Z

    .line 33
    invoke-virtual {p1}, Lcom/htc/painting/engine/StrokeProperties;->getBlurRadius()I

    move-result v0

    iput v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mBlurRadius:I

    .line 34
    return-void
.end method


# virtual methods
.method public getAlpha()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mAlpha:I

    return v0
.end method

.method public getBlurRadius()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mBlurRadius:I

    return v0
.end method

.method public getCap()Landroid/graphics/Paint$Cap;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mCap:Landroid/graphics/Paint$Cap;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mColor:I

    return v0
.end method

.method public getMaskFilter()Landroid/graphics/MaskFilter;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mMaskFilter:Landroid/graphics/MaskFilter;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mWidth:F

    return v0
.end method

.method public isEraser()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mIsEraser:Z

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 49
    iput p1, p0, Lcom/htc/painting/engine/StrokeProperties;->mAlpha:I

    .line 50
    return-void
.end method

.method public setBlurRadius(I)V
    .locals 0
    .parameter "radius"

    .prologue
    .line 57
    iput p1, p0, Lcom/htc/painting/engine/StrokeProperties;->mBlurRadius:I

    .line 58
    return-void
.end method

.method public setCap(Landroid/graphics/Paint$Cap;)V
    .locals 0
    .parameter "cap"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/htc/painting/engine/StrokeProperties;->mCap:Landroid/graphics/Paint$Cap;

    .line 85
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 65
    iput p1, p0, Lcom/htc/painting/engine/StrokeProperties;->mColor:I

    .line 66
    return-void
.end method

.method public setEraser(Z)V
    .locals 0
    .parameter "isEraser"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/htc/painting/engine/StrokeProperties;->mIsEraser:Z

    .line 97
    return-void
.end method

.method public setMaskFilter(Landroid/graphics/MaskFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/htc/painting/engine/StrokeProperties;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 81
    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .parameter "width"

    .prologue
    .line 69
    iput p1, p0, Lcom/htc/painting/engine/StrokeProperties;->mWidth:F

    .line 70
    return-void
.end method
