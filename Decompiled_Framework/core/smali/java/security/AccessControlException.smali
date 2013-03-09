.class public Ljava/security/AccessControlException;
.super Ljava/lang/SecurityException;
.source "AccessControlException.java"


# static fields
.field private static final serialVersionUID:J = 0x474ea5094463b577L


# instance fields
.field private perm:Ljava/security/Permission;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/Permission;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Ljava/security/AccessControlException;->perm:Ljava/security/Permission;

    return-void
.end method


# virtual methods
.method public getPermission()Ljava/security/Permission;
    .locals 1

    iget-object v0, p0, Ljava/security/AccessControlException;->perm:Ljava/security/Permission;

    return-object v0
.end method
