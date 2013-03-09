.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner;
.super Ljava/lang/Object;
.source "SceneLocalPhotoFullscreen.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmstripItemSelectedListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 2324
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2324
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/htc/sunny2/view/SView;I)V
    .locals 3
    .parameter "parent"
    .parameter "index"

    .prologue
    .line 2338
    move v0, p2

    .line 2339
    .local v0, idx:I
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2354
    return-void
.end method

.method public onNothingSelected(Lcom/htc/sunny2/view/SView;I)V
    .locals 0
    .parameter "parent"
    .parameter "index"

    .prologue
    .line 2368
    return-void
.end method
