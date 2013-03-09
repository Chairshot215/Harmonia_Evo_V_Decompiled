.class Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;
.super Ljava/lang/Object;
.source "SceneDlnaFullscreenBase.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)V
    .locals 0
    .parameter

    .prologue
    .line 466
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase<TADAPTER;>.OnItemClickListener;"
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 466
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase<TADAPTER;>.OnItemClickListener;"
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/sunny2/view/SView;I)V
    .locals 9
    .parameter "parent"
    .parameter "position"

    .prologue
    .line 471
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase<TADAPTER;>.OnItemClickListener;"
    const/4 v1, 0x0

    .line 472
    .local v1, activity:Landroid/app/Activity;
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v7}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$2100(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 502
    .end local p1
    :cond_0
    :goto_0
    return-void

    .restart local p1
    :cond_1
    move-object v0, v1

    .line 475
    check-cast v0, Lcom/htc/opensense2/widget/ActivityMainBase;

    .line 477
    .local v0, actBase:Lcom/htc/opensense2/widget/ActivityMainBase;
    const/4 v5, 0x0

    .line 478
    .local v5, posX:I
    const/4 v6, 0x0

    .line 480
    .local v6, posY:I
    check-cast p1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getItemClickInfo()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    move-result-object v7

    iget-object v3, v7, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->motionEvent:Landroid/view/MotionEvent;

    .line 481
    .local v3, me:Landroid/view/MotionEvent;
    if-eqz v3, :cond_2

    .line 483
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 484
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 487
    :cond_2
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #calls: Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->isHitIndicator(II)Z
    invoke-static {v7, v5, v6}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$2200(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;II)Z

    move-result v2

    .line 489
    .local v2, bIndicatorClicked:Z
    move v4, p2

    .line 490
    .local v4, nIndex:I
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v7}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$2300(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v7}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$2400(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 492
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v7}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$2500(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener$1;

    invoke-direct {v8, p0, v4}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener$1;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;I)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
