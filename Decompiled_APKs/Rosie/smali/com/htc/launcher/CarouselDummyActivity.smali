.class public Lcom/htc/launcher/CarouselDummyActivity;
.super Landroid/app/Activity;
.source "CarouselDummyActivity.java"


# static fields
.field public static final EXTRA_TAB:Ljava/lang/String; = "extra_tab"

.field private static final LOG_TAG:Ljava/lang/String; = "CarouselDummyActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onResume()V
    .locals 6

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 38
    invoke-virtual {p0}, Lcom/htc/launcher/CarouselDummyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extra_tab"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, tag:Ljava/lang/String;
    const-string v3, "CarouselDummyActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CarouselDummyActivity.onResume: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0}, Lcom/htc/launcher/CarouselDummyActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/Launcher;

    .line 43
    .local v1, launcher:Lcom/htc/launcher/Launcher;
    iget-object v3, v1, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v3}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v3}, Lcom/htc/launcher/AllAppsView;->isAllApps()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v3}, Lcom/htc/launcher/AllAppsView;->isAddToHome()Z

    move-result v3

    if-nez v3, :cond_0

    .line 45
    :try_start_0
    iget-object v3, v1, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v3, v2}, Lcom/htc/launcher/AllAppsView;->updateAllAppsStatus(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
