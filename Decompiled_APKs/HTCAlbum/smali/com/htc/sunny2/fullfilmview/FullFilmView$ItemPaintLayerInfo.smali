.class public Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;
.super Ljava/lang/Object;
.source "FullFilmView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemPaintLayerInfo"
.end annotation


# instance fields
.field public bmp:Landroid/graphics/Bitmap;

.field public index:I

.field public originX:F

.field public originY:F

.field public paintSetListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;

.field public rotate:I

.field public sizeX:F

.field public sizeY:F

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 151
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->index:I

    .line 154
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->bmp:Landroid/graphics/Bitmap;

    .line 155
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->originX:F

    .line 156
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->originY:F

    .line 157
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->sizeX:F

    .line 158
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->sizeY:F

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->rotate:I

    .line 160
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->paintSetListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;

    return-void
.end method
