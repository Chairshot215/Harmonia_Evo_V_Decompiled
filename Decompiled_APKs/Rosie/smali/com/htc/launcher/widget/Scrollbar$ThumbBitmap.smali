.class Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;
.super Ljava/lang/Object;
.source "Scrollbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/widget/Scrollbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbBitmap"
.end annotation


# instance fields
.field angle:F

.field mLeft:F

.field mTop:F

.field final synthetic this$0:Lcom/htc/launcher/widget/Scrollbar;

.field thumbBitmap:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>(Lcom/htc/launcher/widget/Scrollbar;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;->this$0:Lcom/htc/launcher/widget/Scrollbar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/launcher/widget/Scrollbar;Lcom/htc/launcher/widget/Scrollbar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;-><init>(Lcom/htc/launcher/widget/Scrollbar;)V

    return-void
.end method


# virtual methods
.method getHeight()F
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;->thumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 307
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getLeft()F
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;->mLeft:F

    return v0
.end method

.method getWidth()I
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;->thumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 296
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
