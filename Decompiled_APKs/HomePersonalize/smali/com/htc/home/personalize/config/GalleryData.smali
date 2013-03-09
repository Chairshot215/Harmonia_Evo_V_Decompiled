.class public Lcom/htc/home/personalize/config/GalleryData;
.super Ljava/lang/Object;
.source "GalleryData.java"


# instance fields
.field private filepath:Ljava/lang/String;

.field private wallpaper:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/home/personalize/config/WallpaperData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/config/GalleryData;->wallpaper:Ljava/util/List;

    .line 20
    const-string v0, "/system/customize/resource/"

    iput-object v0, p0, Lcom/htc/home/personalize/config/GalleryData;->filepath:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public add(Lcom/htc/home/personalize/config/WallpaperData;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/home/personalize/config/GalleryData;->wallpaper:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/home/personalize/config/GalleryData;->wallpaper:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 37
    return-void
.end method

.method public delete(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/home/personalize/config/GalleryData;->wallpaper:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public get(I)Lcom/htc/home/personalize/config/WallpaperData;
    .locals 1
    .parameter "index"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/home/personalize/config/GalleryData;->wallpaper:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/config/WallpaperData;

    return-object v0
.end method

.method public getFilepath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/home/personalize/config/GalleryData;->filepath:Ljava/lang/String;

    return-object v0
.end method

.method public getImage(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/home/personalize/config/GalleryData;->wallpaper:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/config/WallpaperData;

    iget-object v0, v0, Lcom/htc/home/personalize/config/WallpaperData;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getImagePath(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/home/personalize/config/GalleryData;->wallpaper:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/config/WallpaperData;

    iget-object v0, v0, Lcom/htc/home/personalize/config/WallpaperData;->image:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLoader;->manipulateCustomizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreview(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/home/personalize/config/GalleryData;->wallpaper:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/config/WallpaperData;

    iget-object v0, v0, Lcom/htc/home/personalize/config/WallpaperData;->preview:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewInCache(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "ctx"
    .parameter "index"

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/htc/home/personalize/config/GalleryData;->getPreview(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewPath(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/home/personalize/config/GalleryData;->wallpaper:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/config/WallpaperData;

    iget-object v0, v0, Lcom/htc/home/personalize/config/WallpaperData;->preview:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLoader;->manipulateCustomizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumb(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/home/personalize/config/GalleryData;->wallpaper:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/config/WallpaperData;

    iget-object v0, v0, Lcom/htc/home/personalize/config/WallpaperData;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbInCache(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "ctx"
    .parameter "index"

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/htc/home/personalize/config/GalleryData;->getThumb(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbPath(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/home/personalize/config/GalleryData;->wallpaper:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/config/WallpaperData;

    iget-object v0, v0, Lcom/htc/home/personalize/config/WallpaperData;->thumb:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/home/personalize/WallpaperLoader;->manipulateCustomizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(Lcom/htc/home/personalize/config/WallpaperData;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/home/personalize/config/GalleryData;->wallpaper:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 28
    return-void
.end method

.method public setFilepath(Ljava/lang/String;)V
    .locals 0
    .parameter "filepath"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/htc/home/personalize/config/GalleryData;->filepath:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/home/personalize/config/GalleryData;->wallpaper:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
