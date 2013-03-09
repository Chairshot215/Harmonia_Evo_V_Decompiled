.class public Ljava/security/spec/PSSParameterSpec;
.super Ljava/lang/Object;
.source "PSSParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final DEFAULT:Ljava/security/spec/PSSParameterSpec;


# instance fields
.field private final mdName:Ljava/lang/String;

.field private final mgfName:Ljava/lang/String;

.field private final mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final saltLen:I

.field private final trailerField:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/security/spec/PSSParameterSpec;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/security/spec/PSSParameterSpec;-><init>(I)V

    sput-object v0, Ljava/security/spec/PSSParameterSpec;->DEFAULT:Ljava/security/spec/PSSParameterSpec;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "saltLen < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Ljava/security/spec/PSSParameterSpec;->saltLen:I

    const-string v0, "SHA-1"

    iput-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mdName:Ljava/lang/String;

    const-string v0, "MGF1"

    iput-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mgfName:Ljava/lang/String;

    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    iput-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    const/4 v0, 0x1

    iput v0, p0, Ljava/security/spec/PSSParameterSpec;->trailerField:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mdName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mgfName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gez p4, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "saltLen < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-gez p5, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "trailerField < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p1, p0, Ljava/security/spec/PSSParameterSpec;->mdName:Ljava/lang/String;

    iput-object p2, p0, Ljava/security/spec/PSSParameterSpec;->mgfName:Ljava/lang/String;

    iput-object p3, p0, Ljava/security/spec/PSSParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    iput p4, p0, Ljava/security/spec/PSSParameterSpec;->saltLen:I

    iput p5, p0, Ljava/security/spec/PSSParameterSpec;->trailerField:I

    return-void
.end method


# virtual methods
.method public getDigestAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mdName:Ljava/lang/String;

    return-object v0
.end method

.method public getMGFAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mgfName:Ljava/lang/String;

    return-object v0
.end method

.method public getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public getSaltLength()I
    .locals 1

    iget v0, p0, Ljava/security/spec/PSSParameterSpec;->saltLen:I

    return v0
.end method

.method public getTrailerField()I
    .locals 1

    iget v0, p0, Ljava/security/spec/PSSParameterSpec;->trailerField:I

    return v0
.end method
