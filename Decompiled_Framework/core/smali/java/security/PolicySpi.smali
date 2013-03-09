.class public abstract Ljava/security/PolicySpi;
.super Ljava/lang/Object;
.source "PolicySpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .locals 1

    sget-object v0, Ljava/security/Policy;->UNSUPPORTED_EMPTY_COLLECTION:Ljava/security/PermissionCollection;

    return-object v0
.end method

.method protected engineGetPermissions(Ljava/security/ProtectionDomain;)Ljava/security/PermissionCollection;
    .locals 1

    sget-object v0, Ljava/security/Policy;->UNSUPPORTED_EMPTY_COLLECTION:Ljava/security/PermissionCollection;

    return-object v0
.end method

.method protected abstract engineImplies(Ljava/security/ProtectionDomain;Ljava/security/Permission;)Z
.end method

.method protected engineRefresh()V
    .locals 0

    return-void
.end method
