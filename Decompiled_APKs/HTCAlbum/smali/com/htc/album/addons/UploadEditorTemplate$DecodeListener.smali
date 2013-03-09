.class Lcom/htc/album/addons/UploadEditorTemplate$DecodeListener;
.super Ljava/lang/Object;
.source "UploadEditorTemplate.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/UploadEditorTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/UploadEditorTemplate;


# direct methods
.method private constructor <init>(Lcom/htc/album/addons/UploadEditorTemplate;)V
    .locals 0
    .parameter

    .prologue
    .line 2147
    iput-object p1, p0, Lcom/htc/album/addons/UploadEditorTemplate$DecodeListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/addons/UploadEditorTemplate;Lcom/htc/album/addons/UploadEditorTemplate$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2147
    invoke-direct {p0, p1}, Lcom/htc/album/addons/UploadEditorTemplate$DecodeListener;-><init>(Lcom/htc/album/addons/UploadEditorTemplate;)V

    return-void
.end method


# virtual methods
.method public onDecodeStatusUpdated(II)V
    .locals 4
    .parameter "contentIndex"
    .parameter "status"

    .prologue
    .line 2151
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 2152
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate$DecodeListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/htc/album/addons/UploadEditorTemplate;->access$2500(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/widget/BaseAdapter;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fileCorrupted()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2157
    :cond_0
    :goto_0
    return-void

    .line 2154
    :catch_0
    move-exception v0

    .line 2155
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/album/addons/UploadEditorTemplate;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][DecodeListener][onDecodeStatusUpdated] Adapter or IImage is null. index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", adapter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorTemplate$DecodeListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v3}, Lcom/htc/album/addons/UploadEditorTemplate;->access$2600(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/widget/BaseAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
