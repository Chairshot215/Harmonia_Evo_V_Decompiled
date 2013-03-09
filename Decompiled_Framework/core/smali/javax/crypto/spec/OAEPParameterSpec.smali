.class public Ljavax/crypto/spec/OAEPParameterSpec;
.super Ljava/lang/Object;
.source "OAEPParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;


# instance fields
.field private final mdName:Ljava/lang/String;

.field private final mgfName:Ljava/lang/String;

.field private final mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final pSrc:Ljavax/crypto/spec/PSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-direct {v0}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>()V

    sput-object v0, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SHA-1"

    iput-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mdName:Ljava/lang/String;

    const-string v0, "MGF1"

    iput-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mgfName:Ljava/lang/String;

    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    iput-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    sget-object v0, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    iput-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->pSrc:Ljavax/crypto/spec/PSource;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mdName:Ljava/lang/String;

    iput-object p2, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mgfName:Ljava/lang/String;

    iput-object p3, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    iput-object p4, p0, Ljavax/crypto/spec/OAEPParameterSpec;->pSrc:Ljavax/crypto/spec/PSource;

    return-void
.end method


# virtual methods
.method public getDigestAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mdName:Ljava/lang/String;

    return-object v0
.end method

.method public getMGFAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mgfName:Ljava/lang/String;

    return-object v0
.end method

.method public getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public getPSource()Ljavax/crypto/spec/PSource;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;->pSrc:Ljavax/crypto/spec/PSource;

    return-object v0
.end method
