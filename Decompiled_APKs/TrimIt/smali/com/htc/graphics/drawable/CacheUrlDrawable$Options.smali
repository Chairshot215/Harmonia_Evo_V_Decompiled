.class public Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;
.super Ljava/lang/Object;
.source "CacheUrlDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/graphics/drawable/CacheUrlDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# static fields
.field public static final OVERLAY_AT_BOTTOM_LEFT:I = 0x11

.field public static final OVERLAY_AT_BOTTOM_RIGHT:I = 0x12

.field public static final OVERLAY_AT_TOP_LEFT:I = 0x9

.field public static final OVERLAY_AT_TOP_RIGHT:I = 0xa

.field private static final OVERLAY_HORIZONTAL_CENTER:I = 0x4

.field private static final OVERLAY_HORIZONTAL_LEFT:I = 0x1

.field private static final OVERLAY_HORIZONTAL_RIGHT:I = 0x2

.field private static final OVERLAY_VERTICAL_BOTTOM:I = 0x10

.field private static final OVERLAY_VERTICAL_MIDDLE:I = 0x20

.field private static final OVERLAY_VERTICAL_TOP:I = 0x8


# instance fields
.field public defaultBitmap:Landroid/graphics/Bitmap;

.field public downloadDataExpedited:Z

.field public drawOnScroll:Z

.field public forceDim:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

.field public maxDim:I

.field public minDim:I

.field public overlayBitmap:Landroid/graphics/Bitmap;

.field public overlayPos:I

.field public roundify:Z

.field public writeDisk:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->reset()V

    .line 178
    return-void
.end method


# virtual methods
.method public clone()Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;
    .locals 2

    .prologue
    .line 184
    new-instance v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;-><init>()V

    .line 185
    .local v0, cloned:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;
    iget-boolean v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->writeDisk:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->writeDisk:Z

    .line 186
    iget-boolean v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->roundify:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->roundify:Z

    .line 187
    iget-boolean v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->drawOnScroll:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->drawOnScroll:Z

    .line 188
    iget-object v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    invoke-virtual {v1}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->clone()Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    .line 189
    iget v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->minDim:I

    iput v1, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->minDim:I

    .line 190
    iget v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->maxDim:I

    iput v1, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->maxDim:I

    .line 191
    iget-object v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 192
    iget-object v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    .line 193
    iget v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayPos:I

    iput v1, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayPos:I

    .line 194
    iget-boolean v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->downloadDataExpedited:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->downloadDataExpedited:Z

    .line 195
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->clone()Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 202
    iput-boolean v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->downloadDataExpedited:Z

    .line 203
    iput-boolean v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->writeDisk:Z

    .line 204
    iput-boolean v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->roundify:Z

    .line 205
    iput-boolean v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->drawOnScroll:Z

    .line 206
    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;-><init>()V

    iput-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    .line 211
    :goto_0
    iput v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->minDim:I

    .line 212
    iput v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->maxDim:I

    .line 213
    iput-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 214
    iput-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    .line 215
    const/16 v0, 0x12

    iput v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayPos:I

    .line 216
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    invoke-virtual {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->reset()V

    goto :goto_0
.end method
