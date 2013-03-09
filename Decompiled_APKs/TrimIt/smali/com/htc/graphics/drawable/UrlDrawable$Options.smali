.class public Lcom/htc/graphics/drawable/UrlDrawable$Options;
.super Ljava/lang/Object;
.source "UrlDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/graphics/drawable/UrlDrawable;
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

.field public drawOnScroll:Z

.field public forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

.field public maskBitmap:Landroid/graphics/Bitmap;

.field public maxDim:I

.field public minDim:I

.field public needSendRedrawMsg:Z

.field public overlayBitmap:Landroid/graphics/Bitmap;

.field public overlayPos:I

.field public preferImageId:Ljava/lang/String;

.field public roundify:Z

.field public saveDefaultImageWhenDownloadFail:Z

.field public useApacheHttpClient:Z

.field public writeDisk:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable$Options;->reset()V

    .line 174
    return-void
.end method


# virtual methods
.method public clone()Lcom/htc/graphics/drawable/UrlDrawable$Options;
    .locals 2

    .prologue
    .line 180
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Options;-><init>()V

    .line 181
    .local v0, cloned:Lcom/htc/graphics/drawable/UrlDrawable$Options;
    iget-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->writeDisk:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->writeDisk:Z

    .line 182
    iget-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->roundify:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->roundify:Z

    .line 183
    iget-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->drawOnScroll:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->drawOnScroll:Z

    .line 184
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v1}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->clone()Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    .line 185
    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    iput v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    .line 186
    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    iput v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    .line 187
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 188
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    .line 189
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maskBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maskBitmap:Landroid/graphics/Bitmap;

    .line 190
    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    iput v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    .line 191
    iget-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->needSendRedrawMsg:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->needSendRedrawMsg:Z

    .line 192
    iget-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->useApacheHttpClient:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->useApacheHttpClient:Z

    .line 193
    iget-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->saveDefaultImageWhenDownloadFail:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->saveDefaultImageWhenDownloadFail:Z

    .line 194
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->preferImageId:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->preferImageId:Ljava/lang/String;

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
    .line 95
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable$Options;->clone()Lcom/htc/graphics/drawable/UrlDrawable$Options;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 202
    iput-boolean v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->writeDisk:Z

    .line 203
    iput-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->roundify:Z

    .line 204
    iput-boolean v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->drawOnScroll:Z

    .line 205
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;-><init>()V

    iput-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    .line 210
    :goto_0
    iput v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    .line 211
    iput v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    .line 212
    iput-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 213
    iput-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    .line 214
    iput-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maskBitmap:Landroid/graphics/Bitmap;

    .line 215
    const/16 v0, 0x12

    iput v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    .line 216
    iput-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->needSendRedrawMsg:Z

    .line 217
    iput-boolean v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->useApacheHttpClient:Z

    .line 218
    iput-boolean v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->saveDefaultImageWhenDownloadFail:Z

    .line 219
    iput-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->preferImageId:Ljava/lang/String;

    .line 220
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->reset()V

    goto :goto_0
.end method
