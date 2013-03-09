.class public Lcom/htc/album/SocialNetworkManager/DataPluginHelper;
.super Ljava/lang/Object;
.source "DataPluginHelper.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "DataPluginHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAlbumListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;)Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    .locals 12
    .parameter "context"
    .parameter "className"
    .parameter "uihandler"

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x2

    .line 56
    const-string v10, ":"

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, classes:[Ljava/lang/String;
    array-length v10, v1

    if-eq v10, v11, :cond_0

    move-object v4, v9

    .line 92
    :goto_0
    return-object v4

    .line 59
    :cond_0
    const/4 v4, 0x0

    .line 61
    .local v4, dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    const/4 v8, 0x0

    .line 63
    .local v8, pkgContext:Landroid/content/Context;
    const/4 v10, 0x0

    :try_start_0
    aget-object v10, v1, v10

    const/4 v11, 0x3

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 72
    :goto_1
    if-nez v8, :cond_1

    move-object v4, v9

    goto :goto_0

    .line 66
    :catch_0
    move-exception v6

    .line 69
    .local v6, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "DataPluginHelper"

    const-string v11, "create package fail."

    invoke-static {v10, v11}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 74
    .end local v6           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 75
    .local v7, loader:Ljava/lang/ClassLoader;
    const/4 v2, 0x0

    .line 77
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/htc/opensense/album/plugin/AlbumListPluginBase;>;"
    const/4 v9, 0x1

    :try_start_1
    aget-object v9, v1, v9

    invoke-virtual {v7, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 86
    :goto_2
    const/4 v9, 0x2

    :try_start_2
    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Lcom/htc/opensense/album/plugin/IUIHandler;

    aput-object v11, v9, v10

    invoke-virtual {v2, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 87
    .local v3, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/AlbumListPluginBase;>;"
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    move-object v4, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 78
    .end local v3           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/AlbumListPluginBase;>;"
    :catch_1
    move-exception v6

    .line 81
    .local v6, e1:Ljava/lang/ClassNotFoundException;
    const-string v9, "DataPluginHelper"

    const-string v10, "load class fail."

    invoke-static {v9, v10}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 88
    .end local v6           #e1:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v5

    .line 89
    .local v5, e:Ljava/lang/Exception;
    const-string v9, "DataPluginHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "call constructor fail. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createFriendListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;)Lcom/htc/opensense/album/plugin/FriendListPluginBase;
    .locals 12
    .parameter "context"
    .parameter "className"
    .parameter "uihandler"

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x2

    .line 19
    const-string v10, ":"

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, classes:[Ljava/lang/String;
    array-length v10, v1

    if-eq v10, v11, :cond_0

    move-object v4, v9

    .line 51
    :goto_0
    return-object v4

    .line 22
    :cond_0
    const/4 v4, 0x0

    .line 24
    .local v4, dataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;
    const/4 v8, 0x0

    .line 26
    .local v8, pkgContext:Landroid/content/Context;
    const/4 v10, 0x0

    :try_start_0
    aget-object v10, v1, v10

    const/4 v11, 0x3

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 33
    :goto_1
    if-nez v8, :cond_1

    move-object v4, v9

    goto :goto_0

    .line 29
    :catch_0
    move-exception v6

    .line 30
    .local v6, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "DataPluginHelper"

    const-string v11, "create package fail."

    invoke-static {v10, v11}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 35
    .end local v6           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 36
    .local v7, loader:Ljava/lang/ClassLoader;
    const/4 v2, 0x0

    .line 38
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/htc/opensense/album/plugin/FriendListPluginBase;>;"
    const/4 v9, 0x1

    :try_start_1
    aget-object v9, v1, v9

    invoke-virtual {v7, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 45
    :goto_2
    const/4 v9, 0x2

    :try_start_2
    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Lcom/htc/opensense/album/plugin/IUIHandler;

    aput-object v11, v9, v10

    invoke-virtual {v2, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 46
    .local v3, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/FriendListPluginBase;>;"
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    move-object v4, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 39
    .end local v3           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/FriendListPluginBase;>;"
    :catch_1
    move-exception v6

    .line 40
    .local v6, e1:Ljava/lang/ClassNotFoundException;
    const-string v9, "DataPluginHelper"

    const-string v10, "load class fail."

    invoke-static {v9, v10}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 47
    .end local v6           #e1:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v5

    .line 48
    .local v5, e:Ljava/lang/Exception;
    const-string v9, "DataPluginHelper"

    const-string v10, "call constructor fail."

    invoke-static {v9, v10}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createFullPhotoListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;
    .locals 12
    .parameter "context"
    .parameter "className"
    .parameter "uihandler"
    .parameter "pid"

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x2

    .line 134
    const-string v10, ":"

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, classes:[Ljava/lang/String;
    array-length v10, v1

    if-eq v10, v11, :cond_0

    move-object v4, v9

    .line 166
    :goto_0
    return-object v4

    .line 137
    :cond_0
    const/4 v4, 0x0

    .line 139
    .local v4, dataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;
    const/4 v8, 0x0

    .line 141
    .local v8, pkgContext:Landroid/content/Context;
    const/4 v10, 0x0

    :try_start_0
    aget-object v10, v1, v10

    const/4 v11, 0x3

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 148
    :goto_1
    if-nez v8, :cond_1

    move-object v4, v9

    goto :goto_0

    .line 144
    :catch_0
    move-exception v6

    .line 145
    .local v6, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "DataPluginHelper"

    const-string v11, "create package fail."

    invoke-static {v10, v11}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 150
    .end local v6           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 151
    .local v7, loader:Ljava/lang/ClassLoader;
    const/4 v2, 0x0

    .line 153
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;>;"
    const/4 v9, 0x1

    :try_start_1
    aget-object v9, v1, v9

    invoke-virtual {v7, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 160
    :goto_2
    const/4 v9, 0x3

    :try_start_2
    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Lcom/htc/opensense/album/plugin/IUIHandler;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v2, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 161
    .local v3, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;>;"
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    const/4 v10, 0x2

    aput-object p3, v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    move-object v4, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 154
    .end local v3           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;>;"
    :catch_1
    move-exception v6

    .line 155
    .local v6, e1:Ljava/lang/ClassNotFoundException;
    const-string v9, "DataPluginHelper"

    const-string v10, "load class fail."

    invoke-static {v9, v10}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 162
    .end local v6           #e1:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v5

    .line 163
    .local v5, e:Ljava/lang/Exception;
    const-string v9, "DataPluginHelper"

    const-string v10, "call constructor fail."

    invoke-static {v9, v10}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createThumbPhotoListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;
    .locals 12
    .parameter "context"
    .parameter "className"
    .parameter "uihandler"
    .parameter "pid"

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x2

    .line 97
    const-string v10, ":"

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, classes:[Ljava/lang/String;
    array-length v10, v1

    if-eq v10, v11, :cond_0

    move-object v4, v9

    .line 129
    :goto_0
    return-object v4

    .line 100
    :cond_0
    const/4 v4, 0x0

    .line 102
    .local v4, dataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;
    const/4 v8, 0x0

    .line 104
    .local v8, pkgContext:Landroid/content/Context;
    const/4 v10, 0x0

    :try_start_0
    aget-object v10, v1, v10

    const/4 v11, 0x3

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 111
    :goto_1
    if-nez v8, :cond_1

    move-object v4, v9

    goto :goto_0

    .line 107
    :catch_0
    move-exception v6

    .line 108
    .local v6, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "DataPluginHelper"

    const-string v11, "create package fail."

    invoke-static {v10, v11}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 113
    .end local v6           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 114
    .local v7, loader:Ljava/lang/ClassLoader;
    const/4 v2, 0x0

    .line 116
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;>;"
    const/4 v9, 0x1

    :try_start_1
    aget-object v9, v1, v9

    invoke-virtual {v7, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 123
    :goto_2
    const/4 v9, 0x3

    :try_start_2
    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Lcom/htc/opensense/album/plugin/IUIHandler;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v2, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 124
    .local v3, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;>;"
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    const/4 v10, 0x2

    aput-object p3, v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    move-object v4, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 117
    .end local v3           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;>;"
    :catch_1
    move-exception v6

    .line 118
    .local v6, e1:Ljava/lang/ClassNotFoundException;
    const-string v9, "DataPluginHelper"

    const-string v10, "load class fail."

    invoke-static {v9, v10}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 125
    .end local v6           #e1:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v5

    .line 126
    .local v5, e:Ljava/lang/Exception;
    const-string v9, "DataPluginHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "call constructor fail."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
