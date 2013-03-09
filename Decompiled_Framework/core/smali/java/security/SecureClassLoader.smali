.class public Ljava/security/SecureClassLoader;
.super Ljava/lang/ClassLoader;
.source "SecureClassLoader.java"


# instance fields
.field private pds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/security/CodeSource;",
            "Ljava/security/ProtectionDomain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/security/SecureClassLoader;->pds:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/security/SecureClassLoader;->pds:Ljava/util/HashMap;

    return-void
.end method

.method private getPD(Ljava/security/CodeSource;)Ljava/security/ProtectionDomain;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v3, p0, Ljava/security/SecureClassLoader;->pds:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Ljava/security/SecureClassLoader;->pds:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/ProtectionDomain;

    if-eqz v0, :cond_1

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/security/SecureClassLoader;->getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;

    move-result-object v1

    new-instance v0, Ljava/security/ProtectionDomain;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p0, v2}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;Ljava/lang/ClassLoader;[Ljava/security/Principal;)V

    iget-object v2, p0, Ljava/security/SecureClassLoader;->pds:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method protected final defineClass(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/security/CodeSource;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/security/CodeSource;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    if-nez p3, :cond_0

    array-length v0, v2

    invoke-virtual {p0, p1, v2, v3, v0}, Ljava/security/SecureClassLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    array-length v4, v2

    invoke-direct {p0, p3}, Ljava/security/SecureClassLoader;->getPD(Ljava/security/CodeSource;)Ljava/security/ProtectionDomain;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/security/SecureClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method protected final defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BII",
            "Ljava/security/CodeSource;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    if-nez p5, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/security/SecureClassLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p5}, Ljava/security/SecureClassLoader;->getPD(Ljava/security/CodeSource;)Ljava/security/ProtectionDomain;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/security/SecureClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method protected getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .locals 1

    new-instance v0, Ljava/security/Permissions;

    invoke-direct {v0}, Ljava/security/Permissions;-><init>()V

    return-object v0
.end method
