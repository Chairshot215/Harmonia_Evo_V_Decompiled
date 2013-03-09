.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner$1;
.super Ljava/lang/Object;
.source "SceneLocalPhotoFullscreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner;->onItemSelected(Lcom/htc/sunny2/view/SView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner;

.field final synthetic val$idx:I


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2340
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner;

    iput p2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner$1;->val$idx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2346
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$7200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner$1;->val$idx:I

    iget v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner$1;->val$idx:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setVisibleRange(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2352
    :goto_0
    return-void

    .line 2348
    :catch_0
    move-exception v0

    .line 2350
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SceneLocalPhotoFullscreen"

    const-string v2, "[HTCAlbum][SceneLocalPhotoFullscreen][FilmstripItemSelectedListner][onItemSelected]set NG"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
