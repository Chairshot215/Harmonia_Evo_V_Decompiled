.class public Ljava/security/ProtectionDomain;
.super Ljava/lang/Object;
.source "ProtectionDomain.java"


# direct methods
.method public constructor <init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;Ljava/lang/ClassLoader;[Ljava/security/Principal;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCodeSource()Ljava/security/CodeSource;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPermissions()Ljava/security/PermissionCollection;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPrincipals()[Ljava/security/Principal;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
