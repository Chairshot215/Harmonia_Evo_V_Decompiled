.class public Lcom/htc/opensense/plugin/PluginHostAdapter$FriendStreamHost;
.super Ljava/util/ArrayList;
.source "PluginHostAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/plugin/PluginHostAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FriendStreamHost"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FriendStreamHost"

.field static final PluginFriendStream:Landroid/content/ComponentName;


# instance fields
.field FEATURE_NAME_STREAM_HOST_SUPPORTS:Ljava/lang/String;

.field FEATURE_NAME_STREAM_HOST_SUPPORTS_PLUGIN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 118
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.htc.friendstream"

    const-string v2, "com.htc.friendstream.PluginFriendStream"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/opensense/plugin/PluginHostAdapter$FriendStreamHost;->PluginFriendStream:Landroid/content/ComponentName;

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "context"
    .parameter "hostName"

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/opensense/plugin/PluginHostAdapter$FriendStreamHost;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "hostName"
    .parameter "pluginAccountType"

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    const-string v8, "SupportStreamHost"

    iput-object v8, p0, Lcom/htc/opensense/plugin/PluginHostAdapter$FriendStreamHost;->FEATURE_NAME_STREAM_HOST_SUPPORTS:Ljava/lang/String;

    .line 113
    const-string v8, "SupportStreamHostPlugin"

    iput-object v8, p0, Lcom/htc/opensense/plugin/PluginHostAdapter$FriendStreamHost;->FEATURE_NAME_STREAM_HOST_SUPPORTS_PLUGIN:Ljava/lang/String;

    .line 128
    iget-object v8, p0, Lcom/htc/opensense/plugin/PluginHostAdapter$FriendStreamHost;->FEATURE_NAME_STREAM_HOST_SUPPORTS:Ljava/lang/String;

    invoke-static {p1, v8}, Lcom/htc/opensense/plugin/PluginRegistryHelper;->getPlugins(Landroid/content/Context;Ljava/lang/String;)[Lcom/htc/opensense/plugin/Plugin;

    move-result-object v5

    .line 130
    .local v5, plugins:[Lcom/htc/opensense/plugin/Plugin;
    move-object v1, v5

    .local v1, arr$:[Lcom/htc/opensense/plugin/Plugin;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 131
    .local v4, plugin:Lcom/htc/opensense/plugin/Plugin;
    iget-object v8, v4, Lcom/htc/opensense/plugin/Plugin;->component_name:Landroid/content/ComponentName;

    invoke-virtual {v8, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 130
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, v4, Lcom/htc/opensense/plugin/Plugin;->pluginMeta:Ljava/lang/String;

    .line 135
    .local v0, accountType:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/htc/opensense/plugin/PluginHostAdapter$FriendStreamHost;->isLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 138
    iget-object v8, v4, Lcom/htc/opensense/plugin/Plugin;->component_name:Landroid/content/ComponentName;

    invoke-static {p1, v8}, Lcom/htc/opensense/plugin/PluginHostAdapter$FriendStreamHost;->getTitleFromComponentName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 140
    .local v7, title:Ljava/lang/String;
    new-instance v8, Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;

    iget-object v9, v4, Lcom/htc/opensense/plugin/Plugin;->component_name:Landroid/content/ComponentName;

    invoke-direct {v8, v7, v9, v0}, Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/htc/opensense/plugin/PluginHostAdapter$FriendStreamHost;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 142
    .end local v0           #accountType:Ljava/lang/String;
    .end local v4           #plugin:Lcom/htc/opensense/plugin/Plugin;
    .end local v7           #title:Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/htc/opensense/plugin/PluginHostAdapter$FriendStreamHost;->FEATURE_NAME_STREAM_HOST_SUPPORTS_PLUGIN:Ljava/lang/String;

    invoke-static {p1, v8}, Lcom/htc/opensense/plugin/PluginRegistryHelper;->getPlugins(Landroid/content/Context;Ljava/lang/String;)[Lcom/htc/opensense/plugin/Plugin;

    move-result-object v5

    .line 144
    const-string v8, "FriendStreamHost"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "plugins "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    move-object v1, v5

    array-length v3, v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_5

    aget-object v4, v1, v2

    .line 146
    .restart local v4       #plugin:Lcom/htc/opensense/plugin/Plugin;
    iget-object v0, v4, Lcom/htc/opensense/plugin/Plugin;->pluginMeta:Ljava/lang/String;

    .line 147
    .restart local v0       #accountType:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/htc/opensense/plugin/PluginHostAdapter$FriendStreamHost;->isLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 145
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 150
    :cond_4
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 154
    iget-object v8, v4, Lcom/htc/opensense/plugin/Plugin;->component_name:Landroid/content/ComponentName;

    invoke-static {p1, v8}, Lcom/htc/opensense/plugin/PluginHostAdapter$FriendStreamHost;->getPluginProxy(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/htc/opensense/plugin/FriendStreamHostProxy;

    move-result-object v6

    .line 156
    .local v6, proxy:Lcom/htc/opensense/plugin/FriendStreamHostProxy;
    new-instance v8, Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;

    invoke-virtual {v6}, Lcom/htc/opensense/plugin/FriendStreamHostProxy;->getTitle()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/htc/opensense/plugin/PluginHostAdapter$FriendStreamHost;->PluginFriendStream:Landroid/content/ComponentName;

    iget-object v11, v4, Lcom/htc/opensense/plugin/Plugin;->component_name:Landroid/content/ComponentName;

    invoke-direct {v8, v9, v10, v11, v0}, Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/htc/opensense/plugin/PluginHostAdapter$FriendStreamHost;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 159
    .end local v0           #accountType:Ljava/lang/String;
    .end local v4           #plugin:Lcom/htc/opensense/plugin/Plugin;
    .end local v6           #proxy:Lcom/htc/opensense/plugin/FriendStreamHostProxy;
    :cond_5
    new-instance v8, Lcom/htc/opensense/plugin/PluginHostAdapter$FriendStreamHost$1;

    invoke-direct {v8, p0}, Lcom/htc/opensense/plugin/PluginHostAdapter$FriendStreamHost$1;-><init>(Lcom/htc/opensense/plugin/PluginHostAdapter$FriendStreamHost;)V

    invoke-static {p0, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 164
    return-void
.end method

.method private static getPluginProxy(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/htc/opensense/plugin/FriendStreamHostProxy;
    .locals 4
    .parameter "context"
    .parameter "name"

    .prologue
    .line 197
    :try_start_0
    invoke-static {p0, p1}, Lcom/htc/opensense/plugin/PluginHostAdapter$FriendStreamHost;->loadHostProxy(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/htc/opensense/plugin/FriendStreamHostProxy;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 202
    :goto_0
    return-object v1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string v2, "FriendStreamHost"

    const-string v3, "error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getTitleFromComponentName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "context"
    .parameter "component_name"

    .prologue
    .line 174
    const/4 v5, 0x0

    .line 176
    .local v5, pkgLabel:Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 177
    .local v3, pManger:Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 180
    .local v0, aInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 181
    const/16 v6, 0x80

    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 183
    .local v2, info:Landroid/content/pm/ActivityInfo;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 187
    .local v4, pkgContext:Landroid/content/Context;
    iget v6, v2, Landroid/content/pm/ActivityInfo;->labelRes:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 191
    .end local v0           #aInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #info:Landroid/content/pm/ActivityInfo;
    .end local v3           #pManger:Landroid/content/pm/PackageManager;
    .end local v4           #pkgContext:Landroid/content/Context;
    :goto_0
    return-object v6

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v6, v5

    .line 191
    goto :goto_0
.end method

.method private static isLogin(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "accountType"

    .prologue
    .line 167
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 168
    .local v0, accountManager:Landroid/accounts/AccountManager;
    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 169
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

.method public static loadHostProxy(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/htc/opensense/plugin/FriendStreamHostProxy;
    .locals 9
    .parameter "context"
    .parameter "cName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 207
    const/4 v5, 0x0

    .line 208
    .local v5, proxy:Lcom/htc/opensense/plugin/FriendStreamHostProxy;
    const-string v6, "PluginFriendStream"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cName "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 213
    .local v4, pkgContext:Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 214
    .local v3, loader:Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 217
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/htc/opensense/plugin/FriendStreamHostProxy;>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 218
    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/plugin/FriendStreamHostProxy;>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #proxy:Lcom/htc/opensense/plugin/FriendStreamHostProxy;
    check-cast v5, Lcom/htc/opensense/plugin/FriendStreamHostProxy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .restart local v5       #proxy:Lcom/htc/opensense/plugin/FriendStreamHostProxy;
    return-object v5

    .line 219
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/htc/opensense/plugin/FriendStreamHostProxy;>;"
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/plugin/FriendStreamHostProxy;>;"
    .end local v3           #loader:Ljava/lang/ClassLoader;
    .end local v4           #pkgContext:Landroid/content/Context;
    .end local v5           #proxy:Lcom/htc/opensense/plugin/FriendStreamHostProxy;
    :catch_0
    move-exception v2

    .line 220
    .local v2, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/ClassNotFoundException;

    const-string v7, "Can not load plugin class"

    invoke-direct {v6, v7, v2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method
