.class Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;
.super Landroid/os/AsyncTask;
.source "BaseCarouselActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/app/BaseCarouselActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncPluginLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/app/BaseCarouselActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mFeature:Ljava/lang/String;

.field private mTabPluginList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/TabPlugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/app/BaseCarouselActivity;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "feature"

    .prologue
    .line 303
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 304
    invoke-static {}, Lcom/android/htccontacts/app/BaseCarouselActivity;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BaseCarouselActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Carousel plugin feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 306
    iput-object p2, p0, Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;->mFeature:Ljava/lang/String;

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;->mTabPluginList:Ljava/util/List;

    .line 308
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 297
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 311
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;->mFeature:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-object v4

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/app/BaseCarouselActivity;

    .line 316
    .local v0, activity:Lcom/android/htccontacts/app/BaseCarouselActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity;->mIsDestroy:Z

    if-nez v1, :cond_0

    .line 320
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;->mFeature:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/opensense/plugin/TabPluginHelper;->getTabPlugins(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;->mTabPluginList:Ljava/util/List;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 297
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 14
    .parameter "result"

    .prologue
    .line 332
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/app/BaseCarouselActivity;

    .line 333
    .local v8, activity:Lcom/android/htccontacts/app/BaseCarouselActivity;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/android/htccontacts/app/BaseCarouselActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, v8, Lcom/android/htccontacts/app/BaseCarouselActivity;->mIsDestroy:Z

    if-eqz v1, :cond_1

    .line 363
    :cond_0
    return-void

    .line 336
    :cond_1
    invoke-virtual {v8}, Lcom/android/htccontacts/app/BaseCarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v0

    .line 337
    .local v0, panelHost:Lcom/htc/widget/CarouselHost;
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;->mTabPluginList:Ljava/util/List;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 341
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;->mTabPluginList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense/plugin/TabPlugin;

    .line 342
    .local v10, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v13

    .line 343
    .local v13, pluginTag:Ljava/lang/String;
    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getPluginContext()Landroid/content/Context;

    move-result-object v2

    .line 344
    .local v2, pluginContext:Landroid/content/Context;
    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getIndicatorLabelRes()I

    move-result v3

    .line 345
    .local v3, pluginLabelRes:I
    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v11

    .line 346
    .local v11, pluginIconRes:[I
    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v12

    .line 347
    .local v12, pluginIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/htccontacts/app/BaseCarouselActivity;->access$200()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "BaseCarouselActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Carousel plugin found - TAG: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_3
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    if-eqz v11, :cond_2

    if-eqz v12, :cond_2

    .line 355
    #calls: Lcom/android/htccontacts/app/BaseCarouselActivity;->addTagPrefix(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v13}, Lcom/android/htccontacts/app/BaseCarouselActivity;->access$300(Lcom/android/htccontacts/app/BaseCarouselActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aget v4, v11, v4

    const/4 v5, 0x1

    aget v5, v11, v5

    const/4 v6, 0x2

    aget v6, v11, v6

    invoke-virtual {v8, v12}, Lcom/android/htccontacts/app/BaseCarouselActivity;->processPluginIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;->mTabPluginList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;->mTabPluginList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 329
    :cond_0
    return-void
.end method
