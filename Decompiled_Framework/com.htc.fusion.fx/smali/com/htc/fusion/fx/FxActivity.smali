.class public Lcom/htc/fusion/fx/FxActivity;
.super Landroid/app/Activity;
.source "FxActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FxActivity"


# instance fields
.field private mFxViewId:I

.field private mScene:Lcom/htc/fusion/fx/FxScene;

.field private mView:Lcom/htc/fusion/fx/FxView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const v0, 0x1020002

    iput v0, p0, Lcom/htc/fusion/fx/FxActivity;->mFxViewId:I

    return-void
.end method

.method private getViewOrChild(Landroid/view/View;)Lcom/htc/fusion/fx/FxView;
    .locals 1

    instance-of v0, p1, Lcom/htc/fusion/fx/FxView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/htc/fusion/fx/FxView;

    :goto_0
    return-object p1

    :cond_0
    iget v0, p0, Lcom/htc/fusion/fx/FxActivity;->mFxViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxView;

    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method protected getFxScene()Lcom/htc/fusion/fx/FxScene;
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/FxActivity;->mScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method protected getFxView()Lcom/htc/fusion/fx/FxView;
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/FxActivity;->mView:Lcom/htc/fusion/fx/FxView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/fusion/fx/FxView;

    invoke-direct {v0, p0}, Lcom/htc/fusion/fx/FxView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/fusion/fx/FxActivity;->mView:Lcom/htc/fusion/fx/FxView;

    iget-object v0, p0, Lcom/htc/fusion/fx/FxActivity;->mView:Lcom/htc/fusion/fx/FxView;

    invoke-virtual {p0, v0}, Lcom/htc/fusion/fx/FxActivity;->setContentView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/fx/FxActivity;->mView:Lcom/htc/fusion/fx/FxView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "FxActivity"

    const-string v1, "FxActivity.onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "FxActivity"

    const-string v1, "FxActivity.onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fusion/fx/FxActivity;->mScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v0, p0, Lcom/htc/fusion/fx/FxActivity;->mView:Lcom/htc/fusion/fx/FxView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/FxActivity;->mView:Lcom/htc/fusion/fx/FxView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxView;->dispose()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "FxActivity"

    const-string v1, "FxActivity.onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/htc/fusion/fx/FxActivity;->mView:Lcom/htc/fusion/fx/FxView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/FxActivity;->mView:Lcom/htc/fusion/fx/FxView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxView;->pause()V

    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 2

    const-string v0, "FxActivity"

    const-string v1, "FxActivity.onRestart()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "FxActivity"

    const-string v1, "FxActivity.onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/fusion/fx/FxActivity;->mView:Lcom/htc/fusion/fx/FxView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/FxActivity;->mView:Lcom/htc/fusion/fx/FxView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxView;->resume()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "FxActivity"

    const-string v1, "FxActivity.onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    iget v0, p0, Lcom/htc/fusion/fx/FxActivity;->mFxViewId:I

    invoke-virtual {p0, v0}, Lcom/htc/fusion/fx/FxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxView;

    iput-object v0, p0, Lcom/htc/fusion/fx/FxActivity;->mView:Lcom/htc/fusion/fx/FxView;

    iget-object v0, p0, Lcom/htc/fusion/fx/FxActivity;->mView:Lcom/htc/fusion/fx/FxView;

    if-nez v0, :cond_0

    const-string v0, "FxActivity"

    const-string v1, "Unable to get FxView from content view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/FxActivity;->getViewOrChild(Landroid/view/View;)Lcom/htc/fusion/fx/FxView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fusion/fx/FxActivity;->mView:Lcom/htc/fusion/fx/FxView;

    iget-object v0, p0, Lcom/htc/fusion/fx/FxActivity;->mView:Lcom/htc/fusion/fx/FxView;

    if-nez v0, :cond_0

    const-string v0, "FxActivity"

    const-string v1, "Unable to get FxView from content view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/FxActivity;->getViewOrChild(Landroid/view/View;)Lcom/htc/fusion/fx/FxView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fusion/fx/FxActivity;->mView:Lcom/htc/fusion/fx/FxView;

    iget-object v0, p0, Lcom/htc/fusion/fx/FxActivity;->mView:Lcom/htc/fusion/fx/FxView;

    if-nez v0, :cond_0

    const-string v0, "FxActivity"

    const-string v1, "Unable to get FxView from content view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected setFxViewId(I)V
    .locals 0

    iput p1, p0, Lcom/htc/fusion/fx/FxActivity;->mFxViewId:I

    return-void
.end method

.method protected setScene(Lcom/htc/fusion/fx/FxSceneLoader;)Lcom/htc/fusion/fx/FxScene;
    .locals 2

    iget-object v0, p0, Lcom/htc/fusion/fx/FxActivity;->mScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_0

    const-string v0, "FxActivity"

    const-string v1, "setScene is really only supposed to be called once"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/fusion/fx/FxActivity;->mScene:Lcom/htc/fusion/fx/FxScene;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/fusion/fx/FxActivity;->getFxView()Lcom/htc/fusion/fx/FxView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/htc/fusion/fx/FxView;->createScene(Lcom/htc/fusion/fx/FxSceneLoader;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fusion/fx/FxActivity;->mScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v0, p0, Lcom/htc/fusion/fx/FxActivity;->mScene:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0
.end method

.method protected setScene(Ljava/lang/String;)Lcom/htc/fusion/fx/FxScene;
    .locals 1

    invoke-static {p1}, Lcom/htc/fusion/fx/FxSceneLoader;->create(Ljava/lang/String;)Lcom/htc/fusion/fx/FxSceneLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/fusion/fx/FxActivity;->setScene(Lcom/htc/fusion/fx/FxSceneLoader;)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    return-object v0
.end method
