.class Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;
.super Landroid/os/AsyncTask;
.source "ContactDetailPluginAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExteriorAdapterLoadingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/htc/opensense/plugin/ExteriorListAdapter;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private isFacebookLoaded:Z

.field private isFlickrLoaded:Z

.field private mAccountList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, accountList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 377
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 373
    iput-boolean v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->isFacebookLoaded:Z

    .line 374
    iput-boolean v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->isFlickrLoaded:Z

    .line 378
    iput-object p2, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->mAccountList:Ljava/util/HashMap;

    .line 379
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 370
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14
    .parameter "params"

    .prologue
    .line 388
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v2, components:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v9, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->access$300(Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "AddContactAlbum"

    invoke-static {v9, v10}, Lcom/htc/opensense/plugin/PluginRegistryHelper;->getPluginComponents(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/ComponentName;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 392
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 395
    .local v1, component:Landroid/content/ComponentName;
    :try_start_0
    const-string v9, "OpenSense"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ContactDetailPluginAlbum - Loading Album componenet: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v9, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->access$400(Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8

    .line 398
    .local v8, pkgContext:Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 399
    .local v7, loader:Ljava/lang/ClassLoader;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 401
    .local v5, exteriorClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/htc/opensense/plugin/ExteriorListAdapter;>;"
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    invoke-virtual {v5, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 402
    .local v3, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lcom/htc/opensense/plugin/ExteriorListAdapter;>;"
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    iget-object v11, v11, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v8, v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/ExteriorListAdapter;

    .line 403
    .local v0, adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    iget-object v9, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    iget-object v9, v9, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mExteriorListAdapters:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    const/4 v9, 0x1

    new-array v10, v9, [Lcom/htc/opensense/plugin/ExteriorListAdapter;

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    iget-object v9, v9, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mExteriorListAdapters:Ljava/util/List;

    iget-object v12, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    iget-object v12, v12, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mExteriorListAdapters:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense/plugin/ExteriorListAdapter;

    aput-object v9, v10, v11

    invoke-virtual {p0, v10}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_0

    .line 406
    .end local v0           #adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    .end local v3           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lcom/htc/opensense/plugin/ExteriorListAdapter;>;"
    .end local v5           #exteriorClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/htc/opensense/plugin/ExteriorListAdapter;>;"
    .end local v7           #loader:Ljava/lang/ClassLoader;
    .end local v8           #pkgContext:Landroid/content/Context;
    :catch_0
    move-exception v4

    .line 407
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->access$500()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ExteriorListAdapter %s %s could not be instantiated."

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 409
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v4

    .line 410
    .local v4, e:Ljava/lang/ClassNotFoundException;
    invoke-static {}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->access$500()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ExteriorListAdapter %s %s could not be instantiated."

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 412
    .end local v4           #e:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v4

    .line 413
    .local v4, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-static {}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->access$500()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ExteriorListAdapter %s %s could not be instantiated."

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 415
    .end local v4           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v4

    .line 416
    .local v4, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->access$500()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ExteriorListAdapter %s %s could not be instantiated."

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 421
    .end local v1           #component:Landroid/content/ComponentName;
    .end local v4           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v9, 0x0

    return-object v9
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 370
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 473
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isSupportGridAlbumView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    new-instance v1, Lcom/android/htccontacts/widget/IndexListGridAdapter;

    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->access$800(Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    iget-object v3, v3, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mAlbumAdapters:Lcom/android/htccontacts/widget/PartitionedHostAdapter;

    invoke-direct {v1, v2, v3}, Lcom/android/htccontacts/widget/IndexListGridAdapter;-><init>(Landroid/content/Context;Lcom/android/htccontacts/widget/IIndexableListAdapter;)V

    iput-object v1, v0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mIndexGridAdapter:Lcom/android/htccontacts/widget/IndexListGridAdapter;

    .line 479
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    #calls: Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->isAdapterStillLoading()Z
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->access$100(Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    :goto_1
    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    new-instance v1, Lcom/android/htccontacts/widget/IndexListAdapter;

    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->access$900(Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    iget-object v3, v3, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mAlbumAdapters:Lcom/android/htccontacts/widget/PartitionedHostAdapter;

    invoke-direct {v1, v2, v3}, Lcom/android/htccontacts/widget/IndexListAdapter;-><init>(Landroid/content/Context;Lcom/android/htccontacts/widget/IIndexableListAdapter;)V

    iput-object v1, v0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mIndexListAdapter:Lcom/android/htccontacts/widget/IndexListAdapter;

    goto :goto_0

    .line 482
    :cond_1
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isSupportGridAlbumView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 483
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    iget-object v0, v0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mIndexGridAdapter:Lcom/android/htccontacts/widget/IndexListGridAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/IndexListGridAdapter;->calculateGridView()V

    .line 484
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    iget-object v1, v1, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mIndexGridAdapter:Lcom/android/htccontacts/widget/IndexListGridAdapter;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 487
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    iget-object v1, v1, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mIndexListAdapter:Lcom/android/htccontacts/widget/IndexListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mBundleList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->access$200(Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 383
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->setListLoading()V

    .line 384
    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/htc/opensense/plugin/ExteriorListAdapter;)V
    .locals 8
    .parameter "exteriorAdapters"

    .prologue
    .line 426
    :try_start_0
    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    invoke-virtual {v4}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 427
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 428
    .local v1, bundle:Landroid/os/Bundle;
    const-string v4, "datatype"

    const-string v5, "photos"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->mAccountList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 430
    .local v3, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 431
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 432
    .local v0, accountType:Ljava/lang/String;
    const-string v4, "com.htc.socialnetwork.facebook"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 433
    const-string v5, "facebook"

    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->mAccountList:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 434
    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->mAccountList:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 466
    .end local v0           #accountType:Ljava/lang/String;
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 470
    :cond_1
    :goto_1
    return-void

    .line 436
    .restart local v0       #accountType:Ljava/lang/String;
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v2       #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3       #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const-string v4, "com.htc.socialnetwork.flickr"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 437
    const-string v5, "flickr"

    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->mAccountList:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 438
    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->mAccountList:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 440
    :cond_3
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isFaceBookPhoneProject()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 441
    const-string v4, "com.facebook.auth.login"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 442
    const-string v5, "facebook"

    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->mAccountList:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 443
    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->mAccountList:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 455
    .end local v0           #accountType:Ljava/lang/String;
    :cond_4
    const-string v4, "isLoading"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 456
    const-string v4, "isRefreshing"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 457
    const-string v4, "isMyProfile"

    iget-object v5, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    #calls: Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->isMyContactType()Z
    invoke-static {v5}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->access$600(Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;)Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 458
    const/4 v4, 0x0

    aget-object v4, p1, v4

    iget-object v5, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mObserver:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorDataSetObserver;
    invoke-static {v5}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->access$700(Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;)Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorDataSetObserver;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 459
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4, v1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->setDataBundle(Landroid/os/Bundle;)V

    .line 460
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->loadData()V

    .line 461
    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    iget-object v4, v4, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mAlbumAdapters:Lcom/android/htccontacts/widget/PartitionedHostAdapter;

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->addExteriorAdapter(Lcom/htc/opensense/plugin/ExteriorListAdapter;)V

    .line 462
    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mBundleList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->access$200(Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Landroid/util/Pair;

    const/4 v6, 0x0

    aget-object v6, p1, v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getItemSeparationText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mObserver:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorDataSetObserver;
    invoke-static {v4}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->access$700(Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;)Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorDataSetObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorDataSetObserver;->resetLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 370
    check-cast p1, [Lcom/htc/opensense/plugin/ExteriorListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->onProgressUpdate([Lcom/htc/opensense/plugin/ExteriorListAdapter;)V

    return-void
.end method
