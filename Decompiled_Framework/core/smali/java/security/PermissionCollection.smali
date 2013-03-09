.class public abstract Ljava/security/PermissionCollection;
.super Ljava/lang/Object;
.source "PermissionCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract add(Ljava/security/Permission;)V
.end method

.method public abstract elements()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation
.end method

.method public abstract implies(Ljava/security/Permission;)Z
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setReadOnly()V
    .locals 0

    return-void
.end method
