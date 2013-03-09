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

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const v0, -0xbbbbbc

    iput v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mColor:I

    const/high16 v0, 0x4140

    iput v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mWidth:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mMaskFilter:Landroid/graphics/MaskFilter;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mCap:Landroid/graphics/Paint$Cap;

    iput-boolean v1, p0, Lcom/htc/painting/engine/StrokeProperties;->mIsEraser:Z

    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mAlpha:I

    iput v1, p0, Lcom/htc/painting/engine/StrokeProperties;->mBlurRadius:I

    return-void
.end method

.method public constructor <init>(Lcom/htc/painting/engine/StrokeProperties;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const v0, -0xbbbbbc

    iput v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mColor:I

    const/high16 v0, 0x4140

    iput v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mWidth:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mMaskFilter:Landroid/graphics/MaskFilter;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mCap:Landroid/graphics/Paint$Cap;

    iput-boolean v1, p0, Lcom/htc/painting/engine/StrokeProperties;->mIsEraser:Z

    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mAlpha:I

    iput v1, p0, Lcom/htc/painting/engine/StrokeProperties;->mBlurRadius:I

    invoke-virtual {p1}, Lcom/htc/painting/engine/StrokeProperties;->getColor()I

    move-result v0

    iput v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mColor:I

    invoke-virtual {p1}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mWidth:F

    invoke-virtual {p1}, Lcom/htc/painting/engine/StrokeProperties;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mMaskFilter:Landroid/graphics/MaskFilter;

    invoke-virtual {p1}, Lcom/htc/painting/engine/StrokeProperties;->getCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mCap:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1}, Lcom/htc/painting/engine/StrokeProperties;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mAlpha:I

    invoke-virtual {p1}, Lcom/htc/painting/engine/StrokeProperties;->isEraser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mIsEraser:Z

    invoke-virtual {p1}, Lcom/htc/painting/engine/StrokeProperties;->getBlurRadius()I

    move-result v0

    iput v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mBlurRadius:I

    return-void
.end method


# virtual methods
.method public getAlpha()I
    .locals 1

    iget v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mAlpha:I

    return v0
.end method

.method public getBlurRadius()I
    .locals 1

    iget v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mBlurRadius:I

    return v0
.end method

.method public getCap()Landroid/graphics/Paint$Cap;
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mCap:Landroid/graphics/Paint$Cap;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mColor:I

    return v0
.end method

.method public getMaskFilter()Landroid/graphics/MaskFilter;
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mMaskFilter:Landroid/graphics/MaskFilter;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mWidth:F

    return v0
.end method

.method public isEraser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/painting/engine/StrokeProperties;->mIsEraser:Z

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/htc/painting/engine/StrokeProperties;->mAlpha:I

    return-void
.end method

.method public setBlurRadius(I)V
    .locals 0

    iput p1, p0, Lcom/htc/painting/engine/StrokeProperties;->mBlurRadius:I

    return-void
.end method

.method public setCap(Landroid/graphics/Paint$Cap;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/painting/engine/StrokeProperties;->mCap:Landroid/graphics/Paint$Cap;

    return-void
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/htc/painting/engine/StrokeProperties;->mColor:I

    return-void
.end method

.method public setEraser(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/painting/engine/StrokeProperties;->mIsEraser:Z

    return-void
.end method

.method public setMaskFilter(Landroid/graphics/MaskFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/painting/engine/StrokeProperties;->mMaskFilter:Landroid/graphics/MaskFilter;

    return-void
.end method

.method public setWidth(F)V
    .locals 0

    iput p1, p0, Lcom/htc/painting/engine/StrokeProperties;->mWidth:F

    return-void
.end method
