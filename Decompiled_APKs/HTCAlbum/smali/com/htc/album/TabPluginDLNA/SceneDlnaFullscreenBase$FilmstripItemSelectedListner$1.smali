.class Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner$1;
.super Ljava/lang/Object;
.source "SceneDlnaFullscreenBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner;->onItemSelected(Lcom/htc/sunny2/view/SView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner;

.field final synthetic val$idx:I


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 364
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner$1;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner.1;"
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner$1;->this$1:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner;

    iput p2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner$1;->val$idx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 370
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner$1;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner.1;"
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner$1;->this$1:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner;

    iget-object v1, v1, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$2000(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner$1;->val$idx:I

    iget v4, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner$1;->val$idx:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setVisibleRange(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 374
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner$1;->this$1:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner;

    iget-object v1, v1, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$400(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[HTCAlbum][SceneDlnaFullScreenBase][FilmstripItemSelectedListner][onItemSelected]set NG"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
