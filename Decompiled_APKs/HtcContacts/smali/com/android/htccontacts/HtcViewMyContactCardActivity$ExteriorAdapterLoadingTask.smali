.class Lcom/android/htccontacts/HtcViewMyContactCardActivity$ExteriorAdapterLoadingTask;
.super Landroid/os/AsyncTask;
.source "HtcViewMyContactCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcViewMyContactCardActivity;
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

.field final synthetic this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1678
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1675
    iput-boolean v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$ExteriorAdapterLoadingTask;->isFacebookLoaded:Z

    .line 1676
    iput-boolean v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$ExteriorAdapterLoadingTask;->isFlickrLoaded:Z

    .line 1679
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1673
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity$ExteriorAdapterLoadingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14
    .parameter "params"

    .prologue
    .line 1683
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1685
    .local v2, components:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v9, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$1200(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "AddMyContactAction"

    invoke-static {v9, v10}, Lcom/htc/opensense/plugin/PluginRegistryHelper;->getPluginComponents(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/ComponentName;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1687
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

    .line 1691
    .local v1, component:Landroid/content/ComponentName;
    :try_start_0
    iget-object v9, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$1300(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8

    .line 1693
    .local v8, pkgContext:Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 1694
    .local v7, loader:Ljava/lang/ClassLoader;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 1696
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

    .line 1697
    .local v3, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lcom/htc/opensense/plugin/ExteriorListAdapter;>;"
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v8, v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/ExteriorListAdapter;

    .line 1698
    .local v0, adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    iget-object v9, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    iget-object v9, v9, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mExteriorListAdapters:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1699
    const/4 v9, 0x1

    new-array v10, v9, [Lcom/htc/opensense/plugin/ExteriorListAdapter;

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    iget-object v9, v9, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mExteriorListAdapters:Ljava/util/List;

    iget-object v12, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    iget-object v12, v12, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mExteriorListAdapters:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense/plugin/ExteriorListAdapter;

    aput-object v9, v10, v11

    invoke-virtual {p0, v10}, Lcom/android/htccontacts/HtcViewMyContactCardActivity$ExteriorAdapterLoadingTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 1700
    .end local v0           #adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    .end local v3           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lcom/htc/opensense/plugin/ExteriorListAdapter;>;"
    .end local v5           #exteriorClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/htc/opensense/plugin/ExteriorListAdapter;>;"
    .end local v7           #loader:Ljava/lang/ClassLoader;
    .end local v8           #pkgContext:Landroid/content/Context;
    :catch_0
    move-exception v4

    .line 1701
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "HtcViewMyContactCardActivity"

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

    .line 1703
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v4

    .line 1704
    .local v4, e:Ljava/lang/ClassNotFoundException;
    const-string v9, "HtcViewMyContactCardActivity"

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

    .line 1706
    .end local v4           #e:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v4

    .line 1707
    .local v4, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v9, "HtcViewMyContactCardActivity"

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

    .line 1709
    .end local v4           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v4

    .line 1710
    .local v4, e:Ljava/lang/Exception;
    const-string v9, "HtcViewMyContactCardActivity"

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

    .line 1715
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
    .line 1673
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity$ExteriorAdapterLoadingTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mGroupListAdapter:Lcom/android/htccontacts/widget/GroupListAdapter;

    new-instance v1, Lcom/android/htccontacts/widget/IndexListAdapter;

    iget-object v2, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$1400(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    iget-object v3, v3, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mActionAdapters:Lcom/android/htccontacts/widget/PartitionedHostAdapter;

    invoke-direct {v1, v2, v3}, Lcom/android/htccontacts/widget/IndexListAdapter;-><init>(Landroid/content/Context;Lcom/android/htccontacts/widget/IIndexableListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/GroupListAdapter;->add(Landroid/widget/BaseAdapter;)Z

    .line 1728
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    iget-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    iget-object v1, v1, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mGroupListAdapter:Lcom/android/htccontacts/widget/GroupListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1729
    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/htc/opensense/plugin/ExteriorListAdapter;)V
    .locals 2
    .parameter "exteriorAdapters"

    .prologue
    const/4 v1, 0x0

    .line 1719
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1720
    aget-object v0, p1, v1

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->loadData()V

    .line 1721
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$ExteriorAdapterLoadingTask;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mActionAdapters:Lcom/android/htccontacts/widget/PartitionedHostAdapter;

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->addExteriorAdapter(Lcom/htc/opensense/plugin/ExteriorListAdapter;)V

    .line 1723
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1673
    check-cast p1, [Lcom/htc/opensense/plugin/ExteriorListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity$ExteriorAdapterLoadingTask;->onProgressUpdate([Lcom/htc/opensense/plugin/ExteriorListAdapter;)V

    return-void
.end method
