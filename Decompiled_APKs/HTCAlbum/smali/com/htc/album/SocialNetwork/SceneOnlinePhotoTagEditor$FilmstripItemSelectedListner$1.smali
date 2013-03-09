.class Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$FilmstripItemSelectedListner$1;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoTagEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$FilmstripItemSelectedListner;->onItemSelected(Lcom/htc/sunny2/view/SView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$FilmstripItemSelectedListner;

.field final synthetic val$nIndex:I


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$FilmstripItemSelectedListner;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$FilmstripItemSelectedListner$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$FilmstripItemSelectedListner;

    iput p2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$FilmstripItemSelectedListner$1;->val$nIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 546
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$FilmstripItemSelectedListner$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$FilmstripItemSelectedListner;

    iget-object v1, v1, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$FilmstripItemSelectedListner;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;

    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$FilmstripItemSelectedListner$1;->val$nIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->onFilmstripItemSelected(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :goto_0
    return-void

    .line 548
    :catch_0
    move-exception v0

    .line 550
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SceneOnlinePhotoTagEditor"

    const-string v2, "[HTCAlbum][SceneOnlinePhotoTagEditor][FilmstripItemSelectedListner][onItemSelected]set NG"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
