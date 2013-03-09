.class public abstract Lcom/htc/opensense/plugin/HostListAdapter;
.super Landroid/widget/BaseAdapter;
.source "HostListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;,
        Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final MAX_COUNT_UNLIMITED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HostListAdapter"

.field public static final VIEW_PROXY_TYPE_ASYNCHRONOUS:I = 0x2

.field public static final VIEW_PROXY_TYPE_DEFAULT:I = 0x0

.field public static final VIEW_PROXY_TYPE_SYNCHRONOUS:I = 0x1


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mLimit:I

.field private mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/plugin/HostListAdapter;->mLimit:I

    .line 36
    iput-object p1, p0, Lcom/htc/opensense/plugin/HostListAdapter;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public static loadExteriorAdapter(Landroid/content/Context;Lcom/htc/opensense/plugin/Plugin;)Lcom/htc/opensense/plugin/ExteriorListAdapter;
    .locals 13
    .parameter "context"
    .parameter "plugin"

    .prologue
    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 52
    const/4 v1, 0x0

    .line 54
    .local v1, adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    :try_start_0
    iget-object v7, p1, Lcom/htc/opensense/plugin/Plugin;->component_name:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 57
    .local v6, pkgContext:Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 58
    .local v5, loader:Ljava/lang/ClassLoader;
    iget-object v7, p1, Lcom/htc/opensense/plugin/Plugin;->component_name:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 59
    .local v4, exteriorClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/htc/opensense/plugin/ExteriorListAdapter;>;"
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 61
    .local v2, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lcom/htc/opensense/plugin/ExteriorListAdapter;>;"
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object v6, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/htc/opensense/plugin/ExteriorListAdapter;

    move-object v1, v0

    .line 62
    iget v7, p1, Lcom/htc/opensense/plugin/Plugin;->id:I

    invoke-virtual {v1, v7}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->setId(I)V

    .line 63
    iget-object v7, p1, Lcom/htc/opensense/plugin/Plugin;->description:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->setDescription(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v2           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lcom/htc/opensense/plugin/ExteriorListAdapter;>;"
    .end local v4           #exteriorClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/htc/opensense/plugin/ExteriorListAdapter;>;"
    .end local v5           #loader:Ljava/lang/ClassLoader;
    .end local v6           #pkgContext:Landroid/content/Context;
    :goto_0
    return-object v1

    .line 64
    :catch_0
    move-exception v3

    .line 65
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "HostListAdapter"

    const-string v8, "ExteriorListAdapter %s %s could not be loaded."

    new-array v9, v10, [Ljava/lang/Object;

    iget-object v10, p1, Lcom/htc/opensense/plugin/Plugin;->component_name:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    iget-object v10, p1, Lcom/htc/opensense/plugin/Plugin;->component_name:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static loadExteriorAdaptersFromFeatures(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "context"
    .parameter "features"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/ExteriorListAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v1, adapters:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/plugin/ExteriorListAdapter;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v7, plugins:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/plugin/Plugin;>;"
    move-object v2, p1

    .local v2, arr$:[Ljava/lang/String;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v2, v4

    .line 92
    .local v3, feature:Ljava/lang/String;
    :try_start_0
    invoke-static {p0, v3}, Lcom/htc/opensense/plugin/PluginRegistryHelper;->getPlugins(Landroid/content/Context;Ljava/lang/String;)[Lcom/htc/opensense/plugin/Plugin;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 99
    .end local v3           #feature:Ljava/lang/String;
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/plugin/Plugin;

    .line 100
    .local v6, plugin:Lcom/htc/opensense/plugin/Plugin;
    invoke-static {p0, v6}, Lcom/htc/opensense/plugin/HostListAdapter;->loadExteriorAdapter(Landroid/content/Context;Lcom/htc/opensense/plugin/Plugin;)Lcom/htc/opensense/plugin/ExteriorListAdapter;

    move-result-object v0

    .line 101
    .local v0, adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    if-eqz v0, :cond_1

    .line 102
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 106
    .end local v0           #adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    .end local v6           #plugin:Lcom/htc/opensense/plugin/Plugin;
    :cond_2
    return-object v1

    .line 94
    .restart local v3       #feature:Ljava/lang/String;
    .local v4, i$:I
    :catch_0
    move-exception v8

    goto :goto_1
.end method


# virtual methods
.method public abstract addExteriorAdapter(Lcom/htc/opensense/plugin/ExteriorListAdapter;)V
.end method

.method public varargs addExteriorAdapters([Lcom/htc/opensense/plugin/ExteriorListAdapter;)V
    .locals 4
    .parameter "adapters"

    .prologue
    .line 149
    move-object v1, p1

    .local v1, arr$:[Lcom/htc/opensense/plugin/ExteriorListAdapter;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 150
    .local v0, adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0, v0}, Lcom/htc/opensense/plugin/HostListAdapter;->addExteriorAdapter(Lcom/htc/opensense/plugin/ExteriorListAdapter;)V

    .line 149
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    .end local v0           #adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    :cond_1
    return-void
.end method

.method public abstract getExteriorAdapterAtPosition(I)Lcom/htc/opensense/plugin/ExteriorListAdapter;
.end method

.method public abstract getExteriorContextMenuItems(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/ExteriorListAdapter$ExteriorContextMenuItem;",
            ">;"
        }
    .end annotation
.end method

.method public getItemViewProxy(I)Lcom/htc/opensense/plugin/ItemViewProxy;
    .locals 1
    .parameter "position"

    .prologue
    .line 269
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemViewProxy(II)Lcom/htc/opensense/plugin/ItemViewProxy;
    .locals 1
    .parameter "position"
    .parameter "proxyType"

    .prologue
    .line 277
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemsCountLimit()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/htc/opensense/plugin/HostListAdapter;->mLimit:I

    return v0
.end method

.method public getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/htc/opensense/plugin/HostListAdapter;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    return-object v0
.end method

.method public instantiateExteriorAdaptersFromFeatures([Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "features"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/ExteriorListAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v1, adapters:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/plugin/ExteriorListAdapter;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v7, plugins:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/plugin/Plugin;>;"
    move-object v2, p1

    .local v2, arr$:[Ljava/lang/String;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v2, v4

    .line 124
    .local v3, feature:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/htc/opensense/plugin/HostListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8, v3}, Lcom/htc/opensense/plugin/PluginRegistryHelper;->getPlugins(Landroid/content/Context;Ljava/lang/String;)[Lcom/htc/opensense/plugin/Plugin;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 131
    .end local v3           #feature:Ljava/lang/String;
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/plugin/Plugin;

    .line 132
    .local v6, plugin:Lcom/htc/opensense/plugin/Plugin;
    iget-object v8, p0, Lcom/htc/opensense/plugin/HostListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/htc/opensense/plugin/HostListAdapter;->loadExteriorAdapter(Landroid/content/Context;Lcom/htc/opensense/plugin/Plugin;)Lcom/htc/opensense/plugin/ExteriorListAdapter;

    move-result-object v0

    .line 133
    .local v0, adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    if-eqz v0, :cond_1

    .line 134
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 138
    .end local v0           #adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    .end local v6           #plugin:Lcom/htc/opensense/plugin/Plugin;
    :cond_2
    return-object v1

    .line 126
    .restart local v3       #feature:Ljava/lang/String;
    .local v4, i$:I
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public abstract onContextItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 202
    return-void
.end method

.method public abstract removeExteriorAdapter(Lcom/htc/opensense/plugin/ExteriorListAdapter;)V
.end method

.method public abstract removeExteriorAdapters()V
.end method

.method public setItemsCountLimit(I)V
    .locals 0
    .parameter "limit"

    .prologue
    .line 179
    iput p1, p0, Lcom/htc/opensense/plugin/HostListAdapter;->mLimit:I

    .line 180
    return-void
.end method

.method public setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/htc/opensense/plugin/HostListAdapter;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    .line 190
    return-void
.end method
