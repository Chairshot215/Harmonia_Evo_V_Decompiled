.class public Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FilmstripItemSelectedListner;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoFullscreen.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FilmstripItemSelectedListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;


# direct methods
.method protected constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 971
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FilmstripItemSelectedListner;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/htc/sunny2/view/SView;I)V
    .locals 3
    .parameter "parent"
    .parameter "index"

    .prologue
    .line 985
    move v0, p2

    .line 986
    .local v0, idx:I
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FilmstripItemSelectedListner;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FilmstripItemSelectedListner$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FilmstripItemSelectedListner$1;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FilmstripItemSelectedListner;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1001
    return-void
.end method

.method public onNothingSelected(Lcom/htc/sunny2/view/SView;I)V
    .locals 0
    .parameter "parent"
    .parameter "index"

    .prologue
    .line 1015
    return-void
.end method
