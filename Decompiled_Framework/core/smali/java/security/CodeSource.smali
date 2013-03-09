.class public Ljava/security/CodeSource;
.super Ljava/lang/Object;
.source "CodeSource.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Ljava/net/URL;[Ljava/security/CodeSigner;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCodeSigners()[Ljava/security/CodeSigner;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLocation()Ljava/net/URL;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public implies(Ljava/security/CodeSource;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
