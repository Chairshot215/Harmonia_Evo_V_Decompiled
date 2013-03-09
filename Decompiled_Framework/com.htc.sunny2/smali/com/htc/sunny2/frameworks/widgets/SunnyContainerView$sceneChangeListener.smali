.class public Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;
.super Ljava/lang/Object;
.source "SunnyContainerView.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "sceneChangeListener"
.end annotation


# instance fields
.field private mIsCancelled:Z

.field private mIsChanging:Z

.field final synthetic this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->mIsChanging:Z

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->mIsCancelled:Z

    return-void
.end method


# virtual methods
.method public isSceneChangeCancelled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->mIsCancelled:Z

    return v0
.end method

.method public isSceneChanging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->mIsChanging:Z

    return v0
.end method

.method public onSceneChangeBegin()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #getter for: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$000(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][SunnyContainerView][onSceneChangeBegin]:..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->enableSunnyEnvTouchEvent(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->mIsChanging:Z

    return-void
.end method

.method public onSceneChangeCancelled()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #getter for: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$000(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[HTCAlbum][SunnyContainerView][onSceneChangeCancelled]:... "

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v7, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->mIsCancelled:Z

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v3, v3, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->getNextScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v3, v3, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->getPreviousScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onCancelNewAdapter()V

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v3, v2, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeScene(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #getter for: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$000(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SunnyContainerView][onSceneChangeCancelled]: removed scene: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v5, v5, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v3, v3, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->refreshRenderOrder(Ljava/lang/String;)V

    :goto_0
    iput-boolean v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->mIsChanging:Z

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v3, v7}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->enableSunnyEnvTouchEvent(Z)V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #getter for: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$000(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[HTCAlbum][SunnyContainerView][onSceneChangeCancelled]: finish this... "

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iput-object v8, v3, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iput-object v8, v3, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #getter for: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$100(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onSceneChangeEnd(I)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #getter for: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$000(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]:..."

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->getNextScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v3

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->getPreviousScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    const/4 v6, 0x2

    if-ne v6, p1, :cond_1

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v10, v6, :cond_1

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #getter for: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$000(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]: remove last scene"

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #calls: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneAdapterShared(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Z
    invoke-static {v6, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$200(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onDestroyAdapter()V

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #getter for: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$000(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]: adapter unloaded: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #getter for: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$000(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]: adapters: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v8, v8, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6, v5, v9}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeScene(Ljava/lang/String;Z)V

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #getter for: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$000(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]: scene removed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #getter for: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$000(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]: scenes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v8, v8, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iput-object v11, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iput-object v11, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #getter for: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$100(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    :goto_0
    iput-boolean v9, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->mIsChanging:Z

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6, v10}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->enableSunnyEnvTouchEvent(Z)V

    return-void

    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #getter for: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$100(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Landroid/app/Activity;

    move-result-object v6

    instance-of v6, v6, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;

    if-eqz v6, :cond_7

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableFullScreen()Z

    move-result v6

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableFullScreen()Z

    move-result v7

    if-eq v6, v7, :cond_3

    :cond_2
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableFullScreen()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onEnterFullscreenMode()V

    :cond_3
    if-eqz v2, :cond_7

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getId()I

    move-result v6

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getId()I

    move-result v7

    if-lt v6, v7, :cond_4

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->isSceneForceClose()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_4
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #calls: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneAdapterShared(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Z
    invoke-static {v6, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$200(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onDestroyAdapter()V

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #getter for: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$000(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]: adapter unloaded: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #getter for: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$000(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]: adapters: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v8, v8, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6, v5, v9}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeScene(Ljava/lang/String;Z)V

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #getter for: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$000(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]: scene removed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #getter for: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$000(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]: scenes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v8, v8, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->isSceneForceClose()Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v0, 0x0

    :goto_1
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v0, :cond_7

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-eqz v1, :cond_6

    invoke-interface {v1, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->setId(I)V

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #getter for: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$000(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onTriggerErrorReport()V

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableContextMenu()Z

    move-result v7

    #calls: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->registerForContextMenu(Z)V
    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$300(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;Z)V

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableBroadcastReceiver()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->registerBroadcastReceiver()V

    goto/16 :goto_0

    :cond_8
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->unregisterBroadcastReceiver()V

    goto/16 :goto_0
.end method
