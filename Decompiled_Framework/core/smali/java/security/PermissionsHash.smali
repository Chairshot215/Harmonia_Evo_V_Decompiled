.class final Ljava/security/PermissionsHash;
.super Ljava/security/PermissionCollection;
.source "PermissionsHash.java"


# static fields
.field private static final serialVersionUID:J = -0x75d99a4b59c2a2c0L


# instance fields
.field private final perms:Ljava/util/Hashtable;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljava/security/PermissionsHash;->perms:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public add(Ljava/security/Permission;)V
    .locals 1

    iget-object v0, p0, Ljava/security/PermissionsHash;->perms:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Ljava/security/PermissionsHash;->perms:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/security/PermissionsHash;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Permission;

    invoke-virtual {v1, p1}, Ljava/security/Permission;->implies(Ljava/security/Permission;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
