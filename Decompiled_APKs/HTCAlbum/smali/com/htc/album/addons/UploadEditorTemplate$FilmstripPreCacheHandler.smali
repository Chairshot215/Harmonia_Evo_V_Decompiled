.class Lcom/htc/album/addons/UploadEditorTemplate$FilmstripPreCacheHandler;
.super Ljava/lang/Object;
.source "UploadEditorTemplate.java"

# interfaces
.implements Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$PreCacheInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/UploadEditorTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmstripPreCacheHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/UploadEditorTemplate;


# direct methods
.method private constructor <init>(Lcom/htc/album/addons/UploadEditorTemplate;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/htc/album/addons/UploadEditorTemplate$FilmstripPreCacheHandler;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public preCacheHandler(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "position"
    .parameter "bitmap"

    .prologue
    .line 193
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate$FilmstripPreCacheHandler;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/htc/album/addons/UploadEditorTemplate;->access$000(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 195
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    sget v1, Lcom/htc/album/addons/UploadEditorTemplate;->REFLECTION_BKG_COLOR:I

    invoke-static {v0, p2, v1}, Lcom/htc/opensense2/album/util/ImageUtils;->addIImageReflection(Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 199
    :cond_0
    return-object p2
.end method
