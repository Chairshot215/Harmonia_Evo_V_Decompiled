.class Ljava/lang/BootClassLoader;
.super Ljava/lang/ClassLoader;
.source "ClassLoader.java"


# static fields
.field private static instance:Ljava/lang/BootClassLoader;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;Z)V

    return-void
.end method

.method public static declared-synchronized getInstance()Ljava/lang/BootClassLoader;
    .locals 2
    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "DP_CREATE_CLASSLOADER_INSIDE_DO_PRIVILEGED"
        }
    .end annotation

    const-class v1, Ljava/lang/BootClassLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/lang/BootClassLoader;->instance:Ljava/lang/BootClassLoader;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/BootClassLoader;

    invoke-direct {v0}, Ljava/lang/BootClassLoader;-><init>()V

    sput-object v0, Ljava/lang/BootClassLoader;->instance:Ljava/lang/BootClassLoader;

    :cond_0
    sget-object v0, Ljava/lang/BootClassLoader;->instance:Ljava/lang/BootClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/VMClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    invoke-static {p1}, Ljava/lang/VMClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method protected findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/VMClassLoader;->getResources(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method protected getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .locals 10

    const/4 v9, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v9

    if-nez v9, :cond_0

    const-string v2, "Unknown"

    const-string v3, "0.0"

    const-string v4, "Unknown"

    const-string v5, "Unknown"

    const-string v6, "0.0"

    const-string v7, "Unknown"

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Ljava/lang/BootClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v9

    :cond_0
    monitor-exit p0

    :cond_1
    return-object v9

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/BootClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/BootClassLoader;->findResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/BootClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/BootClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    return-object v0
.end method
