.class Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripSceneListener;
.super Ljava/lang/Object;
.source "FullFilmView.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmstripSceneListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;


# direct methods
.method private constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V
    .locals 0
    .parameter

    .prologue
    .line 1196
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripSceneListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunny2/fullfilmview/FullFilmView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1196
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripSceneListener;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    return-void
.end method


# virtual methods
.method protected doItemSelectedOnUiThread(Lcom/htc/sunny2/view/SView;Lcom/htc/sunny2/ViewItem;I)V
    .locals 4
    .parameter "parent"
    .parameter "item"
    .parameter "position"

    .prologue
    .line 1244
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripSceneListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$900(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripSceneListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v1, v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemSelectedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;

    if-nez v1, :cond_1

    .line 1279
    :cond_0
    :goto_0
    return-void

    .line 1249
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripSceneListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v1, v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemSelectedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;

    if-eqz v1, :cond_0

    .line 1251
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripSceneListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v1, v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemSelectedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;

    invoke-interface {v1, p1, p3}, Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;->onItemSelected(Lcom/htc/sunny2/view/SView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1275
    :catch_0
    move-exception v0

    .line 1277
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "FullFilmView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doOnItemSelected] Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onItemClick(Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;I)V
    .locals 0
    .parameter "item"
    .parameter "position"

    .prologue
    .line 1222
    return-void
.end method

.method public onItemSelect(Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;I)V
    .locals 1
    .parameter "item"
    .parameter "position"

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripSceneListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripSceneListener;->doItemSelectedOnUiThread(Lcom/htc/sunny2/view/SView;Lcom/htc/sunny2/ViewItem;I)V

    .line 1210
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 3
    .parameter "deltaX"

    .prologue
    .line 1234
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripSceneListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$500(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripSceneListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v1, v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-eqz v1, :cond_0

    .line 1236
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1237
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "offset_distance"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1238
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripSceneListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$600(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/Animator;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/htc/sunny2/fullfilmview/Animator;->doTransition(ILandroid/os/Bundle;)V

    .line 1240
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    return-void
.end method
