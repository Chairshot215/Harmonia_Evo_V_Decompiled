.class public Lcom/htc/sunny/SBitmap;
.super Ljava/lang/Object;
.source "SBitmap.java"


# static fields
.field public static final BOTTOM_BORDER:I = 0x8

.field public static final LEFT_BORDER:I = 0x1

.field public static final RIGHT_BORDER:I = 0x2

.field public static final TOP_BORDER:I = 0x4


# instance fields
.field private mBmpHeight:I

.field private mBmpId:I

.field private mBmpWidth:I

.field private mCloned:Z

.field private mNeedRecycle:Z


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1
    .parameter "bmp"
    .parameter "nBmpId"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lcom/htc/sunny/SBitmap;->mBmpId:I

    .line 34
    iput v0, p0, Lcom/htc/sunny/SBitmap;->mBmpWidth:I

    iput v0, p0, Lcom/htc/sunny/SBitmap;->mBmpHeight:I

    .line 179
    iput-boolean v0, p0, Lcom/htc/sunny/SBitmap;->mCloned:Z

    .line 180
    iput-boolean v0, p0, Lcom/htc/sunny/SBitmap;->mNeedRecycle:Z

    .line 42
    iput p2, p0, Lcom/htc/sunny/SBitmap;->mBmpId:I

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SBitmap;->mBmpWidth:I

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SBitmap;->mBmpHeight:I

    .line 45
    return-void
.end method

.method private constructor <init>(Lcom/htc/sunny/SBitmap;)V
    .locals 1
    .parameter "bmp"

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lcom/htc/sunny/SBitmap;->mBmpId:I

    .line 34
    iput v0, p0, Lcom/htc/sunny/SBitmap;->mBmpWidth:I

    iput v0, p0, Lcom/htc/sunny/SBitmap;->mBmpHeight:I

    .line 179
    iput-boolean v0, p0, Lcom/htc/sunny/SBitmap;->mCloned:Z

    .line 180
    iput-boolean v0, p0, Lcom/htc/sunny/SBitmap;->mNeedRecycle:Z

    .line 48
    iget v0, p1, Lcom/htc/sunny/SBitmap;->mBmpId:I

    iput v0, p0, Lcom/htc/sunny/SBitmap;->mBmpId:I

    .line 49
    iget v0, p1, Lcom/htc/sunny/SBitmap;->mBmpWidth:I

    iput v0, p0, Lcom/htc/sunny/SBitmap;->mBmpWidth:I

    .line 50
    iget v0, p1, Lcom/htc/sunny/SBitmap;->mBmpHeight:I

    iput v0, p0, Lcom/htc/sunny/SBitmap;->mBmpHeight:I

    .line 51
    return-void
.end method

.method public static createBitmap(III)Lcom/htc/sunny/SBitmap;
    .locals 6
    .parameter "color"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    const/4 v5, 0x0

    .line 160
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 162
    .local v2, colorDrawable:Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v2, v5, v5, p1, p2}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 164
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 165
    .local v3, config:Landroid/graphics/Bitmap$Config;
    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 167
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 169
    invoke-static {v0}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunny/SBitmap;

    move-result-object v4

    .line 171
    .local v4, sbmp:Lcom/htc/sunny/SBitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 172
    const/4 v0, 0x0

    .line 174
    return-object v4
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunny/SBitmap;
    .locals 3
    .parameter "bmp"

    .prologue
    .line 62
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/Bitmap;III)Lcom/htc/sunny/SBitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;I)Lcom/htc/sunny/SBitmap;
    .locals 2
    .parameter "bmp"
    .parameter "transparentBorders"

    .prologue
    .line 79
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 81
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/Bitmap;III)Lcom/htc/sunny/SBitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;II)Lcom/htc/sunny/SBitmap;
    .locals 1
    .parameter "bmp"
    .parameter "nMaxWidth"
    .parameter "nMaxHeight"

    .prologue
    .line 95
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/Bitmap;III)Lcom/htc/sunny/SBitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;III)Lcom/htc/sunny/SBitmap;
    .locals 3
    .parameter "bmp"
    .parameter "nMaxWidth"
    .parameter "nMaxHeight"
    .parameter "transparentBorders"

    .prologue
    const/4 v1, 0x0

    .line 112
    if-nez p0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-object v1

    .line 114
    :cond_1
    const/4 v0, 0x0

    .line 115
    .local v0, nBmpId:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    if-nez v2, :cond_2

    .line 116
    invoke-static {p0, p1, p2, p3}, Lcom/htc/sunny/SunnyEngine;->createBitmap(Landroid/graphics/Bitmap;III)I

    move-result v0

    .line 120
    :goto_1
    if-eqz v0, :cond_0

    .line 122
    new-instance v1, Lcom/htc/sunny/SBitmap;

    invoke-direct {v1, p0, v0}, Lcom/htc/sunny/SBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 118
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/htc/sunny/SunnyEngine;->createAlphaBitmap(Landroid/graphics/Bitmap;III)I

    move-result v0

    goto :goto_1
.end method

.method public static createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;
    .locals 5
    .parameter "drawable"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    const/4 v4, 0x0

    .line 135
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 148
    :goto_0
    return-object v3

    .line 137
    :cond_0
    invoke-virtual {p0, v4, v4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 138
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 139
    .local v2, config:Landroid/graphics/Bitmap$Config;
    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 141
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 143
    invoke-static {v0}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunny/SBitmap;

    move-result-object v3

    .line 145
    .local v3, sbmp:Lcom/htc/sunny/SBitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 146
    const/4 v0, 0x0

    .line 148
    goto :goto_0
.end method


# virtual methods
.method cloneSBitmap()Lcom/htc/sunny/SBitmap;
    .locals 1

    .prologue
    .line 187
    monitor-enter p0

    .line 188
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny/SBitmap;->mCloned:Z

    .line 189
    monitor-exit p0

    .line 190
    return-object p0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getBmpId()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/htc/sunny/SBitmap;->mBmpId:I

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/htc/sunny/SBitmap;->mBmpHeight:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/htc/sunny/SBitmap;->mBmpWidth:I

    return v0
.end method

.method public final isRecycled()Z
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/htc/sunny/SBitmap;->mBmpId:I

    invoke-static {v0}, Lcom/htc/sunny/SunnyEngine;->isBitmapDestroyed(I)Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 226
    monitor-enter p0

    .line 227
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/sunny/SBitmap;->mCloned:Z

    if-eqz v0, :cond_0

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SBitmap;->mNeedRecycle:Z

    .line 229
    monitor-exit p0

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    iget v0, p0, Lcom/htc/sunny/SBitmap;->mBmpId:I

    invoke-static {v0}, Lcom/htc/sunny/SunnyEngine;->destroyBitmap(I)V

    .line 239
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method releaseClone()V
    .locals 1

    .prologue
    .line 194
    monitor-enter p0

    .line 195
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny/SBitmap;->mCloned:Z

    .line 197
    iget-boolean v0, p0, Lcom/htc/sunny/SBitmap;->mNeedRecycle:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 200
    :cond_0
    monitor-exit p0

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public substitute()Lcom/htc/sunny/SBitmap;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 249
    new-instance v0, Lcom/htc/sunny/SBitmap;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SBitmap;-><init>(Lcom/htc/sunny/SBitmap;)V

    .line 250
    .local v0, newBitmap:Lcom/htc/sunny/SBitmap;
    iput v1, p0, Lcom/htc/sunny/SBitmap;->mBmpId:I

    .line 251
    iput v1, p0, Lcom/htc/sunny/SBitmap;->mBmpWidth:I

    .line 252
    iput v1, p0, Lcom/htc/sunny/SBitmap;->mBmpHeight:I

    .line 253
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 267
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny/SBitmap;->mBmpId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny/SBitmap;->mBmpWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny/SBitmap;->mBmpHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isRecycled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny/SBitmap;->mBmpId:I

    invoke-static {v2}, Lcom/htc/sunny/SunnyEngine;->isBitmapDestroyed(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
