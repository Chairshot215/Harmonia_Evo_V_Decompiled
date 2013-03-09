.class public final Ljava/security/UnresolvedPermission;
.super Ljava/security/Permission;
.source "UnresolvedPermission.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/security/cert/Certificate;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getActions()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnresolvedActions()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnresolvedCerts()[Ljava/security/cert/Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnresolvedName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnresolvedType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
