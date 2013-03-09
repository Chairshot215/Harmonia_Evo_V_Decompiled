.class public Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$FilmstripItemSelectedListner;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoTagEditor.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FilmstripItemSelectedListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;


# direct methods
.method protected constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$FilmstripItemSelectedListner;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/htc/sunny2/view/SView;I)V
    .locals 4
    .parameter "parent"
    .parameter "index"

    .prologue
    .line 535
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$FilmstripItemSelectedListner;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;

    iget-object v2, v2, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p2, p2}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setVisibleRange(III)V

    .line 536
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$FilmstripItemSelectedListner;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;

    #getter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->access$100(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 537
    .local v0, activity:Landroid/app/Activity;
    move v1, p2

    .line 538
    .local v1, nIndex:I
    new-instance v2, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$FilmstripItemSelectedListner$1;

    invoke-direct {v2, p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$FilmstripItemSelectedListner$1;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$FilmstripItemSelectedListner;I)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 554
    return-void
.end method

.method public onNothingSelected(Lcom/htc/sunny2/view/SView;I)V
    .locals 0
    .parameter "parent"
    .parameter "index"

    .prologue
    .line 568
    return-void
.end method
