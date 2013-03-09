.class public Lcom/htc/photowidget3d/grid/ImageCursorRow;
.super Ljava/lang/Object;
.source "ImageCursorRow.java"


# instance fields
.field private mId:Ljava/lang/String;

.field private mImagePath:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mOrientation:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "uri"
    .parameter "id"
    .parameter "path"
    .parameter "type"
    .parameter "orientation"

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/htc/photowidget3d/grid/ImageCursorRow;->mId:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/htc/photowidget3d/grid/ImageCursorRow;->mImagePath:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/htc/photowidget3d/grid/ImageCursorRow;->mMimeType:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/htc/photowidget3d/grid/ImageCursorRow;->mUri:Landroid/net/Uri;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/photowidget3d/grid/ImageCursorRow;->mOrientation:I

    .line 18
    iput-object p1, p0, Lcom/htc/photowidget3d/grid/ImageCursorRow;->mUri:Landroid/net/Uri;

    .line 19
    iput-object p2, p0, Lcom/htc/photowidget3d/grid/ImageCursorRow;->mId:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/htc/photowidget3d/grid/ImageCursorRow;->mImagePath:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/htc/photowidget3d/grid/ImageCursorRow;->mMimeType:Ljava/lang/String;

    .line 22
    iput p5, p0, Lcom/htc/photowidget3d/grid/ImageCursorRow;->mOrientation:I

    .line 23
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImageCursorRow;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImageCursorRow;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImageCursorRow;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/photowidget3d/grid/ImageCursorRow;->mOrientation:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImageCursorRow;->mUri:Landroid/net/Uri;

    return-object v0
.end method
