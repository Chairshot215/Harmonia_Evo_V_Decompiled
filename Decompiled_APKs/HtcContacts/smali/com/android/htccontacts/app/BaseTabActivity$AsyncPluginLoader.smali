.class Lcom/android/htccontacts/app/BaseTabActivity$AsyncPluginLoader;
.super Landroid/os/AsyncTask;
.source "BaseTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/app/BaseTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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
.field private mContext:Landroid/content/Context;

.field private mFeature:Ljava/lang/String;

.field private mTabPluginComponents:[Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/android/htccontacts/app/BaseTabActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/app/BaseTabActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "feature"

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/htccontacts/app/BaseTabActivity$AsyncPluginLoader;->this$0:Lcom/android/htccontacts/app/BaseTabActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 371
    iput-object p2, p0, Lcom/android/htccontacts/app/BaseTabActivity$AsyncPluginLoader;->mContext:Landroid/content/Context;

    .line 372
    iput-object p3, p0, Lcom/android/htccontacts/app/BaseTabActivity$AsyncPluginLoader;->mFeature:Ljava/lang/String;

    .line 373
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 364
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/app/BaseTabActivity$AsyncPluginLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14
    .parameter "params"

    .prologue
    const/4 v13, 0x0

    .line 376
    iget-object v9, p0, Lcom/android/htccontacts/app/BaseTabActivity$AsyncPluginLoader;->mFeature:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 414
    :cond_0
    return-object v13

    .line 379
    :cond_1
    iget-object v9, p0, Lcom/android/htccontacts/app/BaseTabActivity$AsyncPluginLoader;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/htccontacts/app/BaseTabActivity$AsyncPluginLoader;->mFeature:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/htc/opensense/plugin/PluginRegistryHelper;->getPluginComponents(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/ComponentName;

    move-result-object v2

    .line 381
    .local v2, components:[Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    .line 382
    const-string v9, "PluginLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "components loaded: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for feature: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/htccontacts/app/BaseTabActivity$AsyncPluginLoader;->mFeature:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v9, "PluginLoader"

    const-string v10, "Start loading People browse layer component..."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/16 v5, 0x64

    .line 385
    .local v5, index:I
    move-object v0, v2

    .local v0, arr$:[Landroid/content/ComponentName;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v1, v0, v4

    .line 387
    .local v1, component:Landroid/content/ComponentName;
    :try_start_0
    new-instance v8, Lcom/htc/opensense/plugin/TabPluginWrapper;

    iget-object v9, p0, Lcom/android/htccontacts/app/BaseTabActivity$AsyncPluginLoader;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v1}, Lcom/htc/opensense/plugin/TabPluginWrapper;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 388
    .local v8, tabWrapper:Lcom/htc/opensense/plugin/TabPluginWrapper;
    invoke-virtual {v8}, Lcom/htc/opensense/plugin/TabPluginWrapper;->getTabName()Ljava/lang/String;

    move-result-object v7

    .line 389
    .local v7, name:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 390
    const-string v9, "PluginLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Loading component: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to tab... [Failed]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v9, "PluginLoader"

    const-string v10, "The tab tag cannot be empty"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #tabWrapper:Lcom/htc/opensense/plugin/TabPluginWrapper;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 395
    .restart local v7       #name:Ljava/lang/String;
    .restart local v8       #tabWrapper:Lcom/htc/opensense/plugin/TabPluginWrapper;
    :cond_2
    iget-object v9, p0, Lcom/android/htccontacts/app/BaseTabActivity$AsyncPluginLoader;->this$0:Lcom/android/htccontacts/app/BaseTabActivity;

    #getter for: Lcom/android/htccontacts/app/BaseTabActivity;->mTabsTag:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/htccontacts/app/BaseTabActivity;->access$200(Lcom/android/htccontacts/app/BaseTabActivity;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 396
    iget-object v9, p0, Lcom/android/htccontacts/app/BaseTabActivity$AsyncPluginLoader;->this$0:Lcom/android/htccontacts/app/BaseTabActivity;

    #getter for: Lcom/android/htccontacts/app/BaseTabActivity;->mTabs:Ljava/util/TreeMap;
    invoke-static {v9}, Lcom/android/htccontacts/app/BaseTabActivity;->access$300(Lcom/android/htccontacts/app/BaseTabActivity;)Ljava/util/TreeMap;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Lcom/android/htccontacts/app/BaseTabActivity$TabPlugInfo;

    const/4 v12, 0x0

    invoke-direct {v11, v8, v12}, Lcom/android/htccontacts/app/BaseTabActivity$TabPlugInfo;-><init>(Lcom/htc/opensense/plugin/TabPluginWrapper;Z)V

    invoke-virtual {v9, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    add-int/lit8 v5, v5, 0x1

    .line 398
    iget-object v9, p0, Lcom/android/htccontacts/app/BaseTabActivity$AsyncPluginLoader;->this$0:Lcom/android/htccontacts/app/BaseTabActivity;

    #getter for: Lcom/android/htccontacts/app/BaseTabActivity;->mTabsTag:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/htccontacts/app/BaseTabActivity;->access$200(Lcom/android/htccontacts/app/BaseTabActivity;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 399
    const-string v9, "PluginLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Loading component: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to tab... [Success]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 408
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #tabWrapper:Lcom/htc/opensense/plugin/TabPluginWrapper;
    :catch_0
    move-exception v3

    .line 409
    .local v3, e:Ljava/lang/Exception;
    const-string v9, "PluginLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Loading component: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to tab... [Failed]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 403
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v7       #name:Ljava/lang/String;
    .restart local v8       #tabWrapper:Lcom/htc/opensense/plugin/TabPluginWrapper;
    :cond_3
    :try_start_1
    const-string v9, "PluginLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Loading component: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to tab... [Failed]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string v9, "PluginLoader"

    const-string v10, "The plugin already existed"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 364
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/app/BaseTabActivity$AsyncPluginLoader;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 418
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseTabActivity$AsyncPluginLoader;->this$0:Lcom/android/htccontacts/app/BaseTabActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/app/BaseTabActivity;->getTabHost()Lcom/htc/widget/TabSwitchHost;

    move-result-object v0

    .line 420
    .local v0, tabHost:Lcom/htc/widget/TabSwitchHost;
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$OpenSense;->isOpenSenseEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseTabActivity$AsyncPluginLoader;->this$0:Lcom/android/htccontacts/app/BaseTabActivity;

    iget-object v2, p0, Lcom/android/htccontacts/app/BaseTabActivity$AsyncPluginLoader;->this$0:Lcom/android/htccontacts/app/BaseTabActivity;

    #getter for: Lcom/android/htccontacts/app/BaseTabActivity;->mTabs:Ljava/util/TreeMap;
    invoke-static {v2}, Lcom/android/htccontacts/app/BaseTabActivity;->access$300(Lcom/android/htccontacts/app/BaseTabActivity;)Ljava/util/TreeMap;

    move-result-object v2

    #calls: Lcom/android/htccontacts/app/BaseTabActivity;->addPluginTab(Lcom/htc/widget/TabSwitchHost;Ljava/util/TreeMap;)V
    invoke-static {v1, v0, v2}, Lcom/android/htccontacts/app/BaseTabActivity;->access$400(Lcom/android/htccontacts/app/BaseTabActivity;Lcom/htc/widget/TabSwitchHost;Ljava/util/TreeMap;)V

    .line 423
    :cond_0
    return-void
.end method
