.class Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FilmstripItemSelectedListner$1;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoFullscreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FilmstripItemSelectedListner;->onItemSelected(Lcom/htc/sunny2/view/SView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FilmstripItemSelectedListner;

.field final synthetic val$idx:I


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FilmstripItemSelectedListner;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 987
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FilmstripItemSelectedListner$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FilmstripItemSelectedListner;

    iput p2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FilmstripItemSelectedListner$1;->val$idx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 993
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FilmstripItemSelectedListner$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FilmstripItemSelectedListner;

    iget-object v1, v1, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FilmstripItemSelectedListner;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    iget-object v1, v1, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FilmstripItemSelectedListner$1;->val$idx:I

    iget v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FilmstripItemSelectedListner$1;->val$idx:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setVisibleRange(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    :goto_0
    return-void

    .line 995
    :catch_0
    move-exception v0

    .line 997
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SceneOnlinePhotoFullscreen"

    const-string v2, "[HTCAlbum][SceneOnlinePhotoFullscreen][FilmstripItemSelectedListner][onItemSelected]set NG"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
