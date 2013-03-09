.class Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;
.super Ljava/lang/Object;
.source "ImageListUber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/image/ImageListUber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MergeSlot"
.end annotation


# instance fields
.field mDateTaken:J

.field mImage:Lcom/htc/photowidget3d/image/IImage;

.field private final mList:Lcom/htc/photowidget3d/image/IImageList;

.field mListIndex:I

.field private mOffset:I


# direct methods
.method public constructor <init>(Lcom/htc/photowidget3d/image/IImageList;I)V
    .locals 1
    .parameter "list"
    .parameter "index"

    .prologue
    .line 274
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 267
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;->mOffset:I

    .line 275
    iput-object p1, p0, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;->mList:Lcom/htc/photowidget3d/image/IImageList;

    .line 276
    iput p2, p0, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;->mListIndex:I

    .line 277
    return-void
.end method


# virtual methods
.method public next()Z
    .locals 2

    .prologue
    .line 280
    iget v0, p0, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;->mOffset:I

    iget-object v1, p0, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;->mList:Lcom/htc/photowidget3d/image/IImageList;

    invoke-interface {v1}, Lcom/htc/photowidget3d/image/IImageList;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 283
    :goto_0
    return v0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;->mList:Lcom/htc/photowidget3d/image/IImageList;

    iget v1, p0, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;->mOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;->mOffset:I

    invoke-interface {v0, v1}, Lcom/htc/photowidget3d/image/IImageList;->getImageAt(I)Lcom/htc/photowidget3d/image/IImage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;->mImage:Lcom/htc/photowidget3d/image/IImage;

    .line 282
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;->mImage:Lcom/htc/photowidget3d/image/IImage;

    invoke-interface {v0}, Lcom/htc/photowidget3d/image/IImage;->getDateTaken()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;->mDateTaken:J

    .line 283
    const/4 v0, 0x1

    goto :goto_0
.end method
