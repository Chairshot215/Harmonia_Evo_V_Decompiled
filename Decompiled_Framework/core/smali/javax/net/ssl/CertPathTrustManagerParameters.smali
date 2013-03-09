.class public Ljavax/net/ssl/CertPathTrustManagerParameters;
.super Ljava/lang/Object;
.source "CertPathTrustManagerParameters.java"

# interfaces
.implements Ljavax/net/ssl/ManagerFactoryParameters;


# instance fields
.field private final param:Ljava/security/cert/CertPathParameters;


# direct methods
.method public constructor <init>(Ljava/security/cert/CertPathParameters;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/security/cert/CertPathParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CertPathParameters;

    iput-object v0, p0, Ljavax/net/ssl/CertPathTrustManagerParameters;->param:Ljava/security/cert/CertPathParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Ljava/security/cert/CertPathParameters;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/CertPathTrustManagerParameters;->param:Ljava/security/cert/CertPathParameters;

    invoke-interface {v0}, Ljava/security/cert/CertPathParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CertPathParameters;

    return-object v0
.end method
