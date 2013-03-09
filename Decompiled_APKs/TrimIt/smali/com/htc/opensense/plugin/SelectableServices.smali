.class public Lcom/htc/opensense/plugin/SelectableServices;
.super Ljava/lang/Object;
.source "SelectableServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/plugin/SelectableServices$ServiceComponent;
    }
.end annotation


# instance fields
.field FEATURE_NAME_STREAM_HOST_SUPPORTS:Ljava/lang/String;

.field mActivity:Landroid/app/Activity;

.field public serviceLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/SelectableServices$ServiceComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/ComponentName;)V
    .locals 10
    .parameter "activity"
    .parameter "hostName"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v7, "SupportStreamHost"

    iput-object v7, p0, Lcom/htc/opensense/plugin/SelectableServices;->FEATURE_NAME_STREAM_HOST_SUPPORTS:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/htc/opensense/plugin/SelectableServices;->mActivity:Landroid/app/Activity;

    .line 34
    iget-object v7, p0, Lcom/htc/opensense/plugin/SelectableServices;->mActivity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/htc/opensense/plugin/SelectableServices;->FEATURE_NAME_STREAM_HOST_SUPPORTS:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/htc/opensense/plugin/PluginRegistryHelper;->getPlugins(Landroid/content/Context;Ljava/lang/String;)[Lcom/htc/opensense/plugin/Plugin;

    move-result-object v5

    .line 36
    .local v5, plugins:[Lcom/htc/opensense/plugin/Plugin;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/htc/opensense/plugin/SelectableServices;->serviceLists:Ljava/util/List;

    .line 37
    move-object v1, v5

    .local v1, arr$:[Lcom/htc/opensense/plugin/Plugin;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 38
    .local v4, plugin:Lcom/htc/opensense/plugin/Plugin;
    iget-object v7, v4, Lcom/htc/opensense/plugin/Plugin;->component_name:Landroid/content/ComponentName;

    invoke-virtual {v7, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 37
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, v4, Lcom/htc/opensense/plugin/Plugin;->pluginMeta:Ljava/lang/String;

    .line 42
    .local v0, accountType:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/htc/opensense/plugin/SelectableServices;->isLogin(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 45
    iget-object v7, v4, Lcom/htc/opensense/plugin/Plugin;->component_name:Landroid/content/ComponentName;

    invoke-direct {p0, v7}, Lcom/htc/opensense/plugin/SelectableServices;->getTitleFromComponentName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 47
    .local v6, title:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/opensense/plugin/SelectableServices;->serviceLists:Ljava/util/List;

    new-instance v8, Lcom/htc/opensense/plugin/SelectableServices$ServiceComponent;

    iget-object v9, v4, Lcom/htc/opensense/plugin/Plugin;->component_name:Landroid/content/ComponentName;

    invoke-direct {v8, v6, v9}, Lcom/htc/opensense/plugin/SelectableServices$ServiceComponent;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 50
    .end local v0           #accountType:Ljava/lang/String;
    .end local v4           #plugin:Lcom/htc/opensense/plugin/Plugin;
    .end local v6           #title:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/htc/opensense/plugin/SelectableServices;->serviceLists:Ljava/util/List;

    new-instance v8, Lcom/htc/opensense/plugin/SelectableServices$1;

    invoke-direct {v8, p0}, Lcom/htc/opensense/plugin/SelectableServices$1;-><init>(Lcom/htc/opensense/plugin/SelectableServices;)V

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 56
    return-void
.end method

.method private getTitleFromComponentName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "component_name"

    .prologue
    .line 64
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense/plugin/SelectableServices;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 66
    .local v1, info:Landroid/content/pm/ActivityInfo;
    iget-object v3, p0, Lcom/htc/opensense/plugin/SelectableServices;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 69
    .local v2, pkgContext:Landroid/content/Context;
    iget v3, v1, Landroid/content/pm/ActivityInfo;->labelRes:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 73
    .end local v1           #info:Landroid/content/pm/ActivityInfo;
    .end local v2           #pkgContext:Landroid/content/Context;
    :goto_0
    return-object v3

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 73
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isLogin(Ljava/lang/String;)Z
    .locals 3
    .parameter "accountType"

    .prologue
    .line 58
    iget-object v2, p0, Lcom/htc/opensense/plugin/SelectableServices;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 59
    .local v0, accountManager:Landroid/accounts/AccountManager;
    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 60
    .local v1, accounts:[Landroid/accounts/Account;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
