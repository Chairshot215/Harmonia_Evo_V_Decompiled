.class public Lcom/htc/sunny2/SBitmap;
.super Ljava/lang/Object;
.source "SBitmap.java"


# static fields
.field public static final BOTTOM_BORDER:I = 0x8

.field public static final LEFT_BORDER:I = 0x1

.field public static final POWEROF2:Z = false

.field public static final RIGHT_BORDER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SBitmap"

.field public static final TOP_BORDER:I = 0x4


# instance fields
.field private mBmpHeight:I

.field private mBmpId:I

.field private mBmpWidth:I


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpId:I

    iput v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpWidth:I

    iput v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpHeight:I

    iput p2, p0, Lcom/htc/sunny2/SBitmap;->mBmpId:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpHeight:I

    return-void
.end method

.method private constructor <init>(Lcom/htc/sunny2/SBitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpId:I

    iput v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpWidth:I

    iput v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpHeight:I

    iget v0, p1, Lcom/htc/sunny2/SBitmap;->mBmpId:I

    iput v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpId:I

    iget v0, p1, Lcom/htc/sunny2/SBitmap;->mBmpWidth:I

    iput v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpWidth:I

    iget v0, p1, Lcom/htc/sunny2/SBitmap;->mBmpHeight:I

    iput v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpHeight:I

    return-void
.end method

.method private static convertDimension(IIII)[I
    .locals 4

    if-lez p0, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    const/4 v1, 0x0

    move v1, p0

    const/4 v0, 0x0

    move v0, p1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    goto :goto_0
.end method

.method public static createBitmap(III)Lcom/htc/sunny2/SBitmap;
    .locals 6

    const/4 v5, 0x0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v5, v5, p1, p2}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-static {v0}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/SBitmap;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    return-object v4
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/SBitmap;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/Bitmap;III)Lcom/htc/sunny2/SBitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;I)Lcom/htc/sunny2/SBitmap;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/Bitmap;III)Lcom/htc/sunny2/SBitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;II)Lcom/htc/sunny2/SBitmap;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/Bitmap;III)Lcom/htc/sunny2/SBitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;III)Lcom/htc/sunny2/SBitmap;
    .locals 7

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-ne v2, v5, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v2

    invoke-static {v2}, Lcom/htc/sunny2/Sunny2;->CreateBitmap(I)I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_3

    invoke-static {v0, p0}, Lcom/htc/sunny2/Sunny2;->Bitmap_Set(ILandroid/graphics/Bitmap;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v1, "SBitmap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t transform Bitmap to SBitmap: ret="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    new-instance v1, Lcom/htc/sunny2/SBitmap;

    invoke-direct {v1, p0, v0}, Lcom/htc/sunny2/SBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const v2, 0x25551

    move-object v1, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/sunny2/Sunny2;->Bitmap_SetAndConvert(ILandroid/graphics/Bitmap;IIII)Z

    goto :goto_1
.end method

.method public static createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny2/SBitmap;
    .locals 5

    const/4 v4, 0x0

    if-nez p0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {p0, v4, v4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-static {v0}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/SBitmap;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createBitmap(Landroid/view/View;)Lcom/htc/sunny2/SBitmap;
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-static {v0}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/SBitmap;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v2
.end method

.method private static nextPowerOf2(I)I
    .locals 1

    add-int/lit8 p0, p0, -0x1

    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    add-int/lit8 v0, p0, 0x1

    return v0
.end method


# virtual methods
.method public final getBmpId()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpId:I

    return v0
.end method

.method public final getHeight()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpHeight:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpWidth:I

    return v0
.end method

.method public final isRecycled()Z
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny2/SBitmap;->isRecycled()Z

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpId:I

    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->DestroyBitmap(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/SBitmap;->mBmpId:I

    goto :goto_0
.end method

.method public substitute()Lcom/htc/sunny2/SBitmap;
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny2/SBitmap;->isRecycled()Z

    move-result v2

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Substitute a recycled SBitmap"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/htc/sunny2/SBitmap;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/SBitmap;-><init>(Lcom/htc/sunny2/SBitmap;)V

    iput v3, p0, Lcom/htc/sunny2/SBitmap;->mBmpId:I

    iput v3, p0, Lcom/htc/sunny2/SBitmap;->mBmpWidth:I

    iput v3, p0, Lcom/htc/sunny2/SBitmap;->mBmpHeight:I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/SBitmap;->mBmpId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/SBitmap;->mBmpWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/SBitmap;->mBmpHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isRecycled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny2/SBitmap;->isRecycled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
