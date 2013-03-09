.class public Ljava/security/cert/CertPathValidatorException;
.super Ljava/security/GeneralSecurityException;
.source "CertPathValidatorException.java"


# static fields
.field private static final serialVersionUID:J = -0x2ac9a7e362fbb593L


# instance fields
.field private certPath:Ljava/security/cert/CertPath;

.field private index:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    iput v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V
    .locals 2

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    if-nez p3, :cond_0

    if-eq p4, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index should be -1 when CertPath is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p3, :cond_2

    if-lt p4, v0, :cond_1

    invoke-virtual {p3}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p4, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2
    iput-object p3, p0, Ljava/security/cert/CertPathValidatorException;->certPath:Ljava/security/cert/CertPath;

    iput p4, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    iput v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    return-void
.end method


# virtual methods
.method public getCertPath()Ljava/security/cert/CertPath;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/CertPathValidatorException;->certPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    return v0
.end method
