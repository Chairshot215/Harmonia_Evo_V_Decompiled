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

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable$Options;->reset()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/htc/graphics/drawable/UrlDrawable$Options;
    .locals 2

    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Options;-><init>()V

    iget-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->writeDisk:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->writeDisk:Z

    iget-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->roundify:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->roundify:Z

    iget-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->drawOnScroll:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->drawOnScroll:Z

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v1}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->clone()Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    iput v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    iput v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maskBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maskBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    iput v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    iget-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->needSendRedrawMsg:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->needSendRedrawMsg:Z

    iget-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->useApacheHttpClient:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->useApacheHttpClient:Z

    iget-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->saveDefaultImageWhenDownloadFail:Z

    iput-boolean v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->saveDefaultImageWhenDownloadFail:Z

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->preferImageId:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->preferImageId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable$Options;->clone()Lcom/htc/graphics/drawable/UrlDrawable$Options;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-boolean v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->writeDisk:Z

    iput-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->roundify:Z

    iput-boolean v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->drawOnScroll:Z

    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;-><init>()V

    iput-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    :goto_0
    iput v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    iput v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    iput-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maskBitmap:Landroid/graphics/Bitmap;

    const/16 v0, 0x12

    iput v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    iput-boolean v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->needSendRedrawMsg:Z

    iput-boolean v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->useApacheHttpClient:Z

    iput-boolean v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->saveDefaultImageWhenDownloadFail:Z

    iput-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->preferImageId:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->reset()V

    goto :goto_0
.end method
