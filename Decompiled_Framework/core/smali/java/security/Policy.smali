.class public abstract Ljava/security/Policy;
.super Ljava/lang/Object;
.source "Policy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Policy$Parameters;
    }
.end annotation


# static fields
.field public static final UNSUPPORTED_EMPTY_COLLECTION:Ljava/security/PermissionCollection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/security/AllPermissionCollection;

    invoke-direct {v0}, Ljava/security/AllPermissionCollection;-><init>()V

    sput-object v0, Ljava/security/Policy;->UNSUPPORTED_EMPTY_COLLECTION:Ljava/security/PermissionCollection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Policy$Parameters;)Ljava/security/Policy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Policy$Parameters;Ljava/lang/String;)Ljava/security/Policy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Policy$Parameters;Ljava/security/Provider;)Ljava/security/Policy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPolicy()Ljava/security/Policy;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static setPolicy(Ljava/security/Policy;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getParameters()Ljava/security/Policy$Parameters;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPermissions(Ljava/security/ProtectionDomain;)Ljava/security/PermissionCollection;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProvider()Ljava/security/Provider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public implies(Ljava/security/ProtectionDomain;Ljava/security/Permission;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public refresh()V
    .locals 0

    return-void
.end method
