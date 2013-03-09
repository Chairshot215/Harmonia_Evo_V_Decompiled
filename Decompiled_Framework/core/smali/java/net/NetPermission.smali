.class public final Ljava/net/NetPermission;
.super Ljava/security/BasicPermission;
.source "NetPermission.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getActions()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
