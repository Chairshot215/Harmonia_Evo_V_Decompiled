.class public Ljava/security/spec/RSAPrivateKeySpec;
.super Ljava/lang/Object;
.source "RSAPrivateKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final modulus:Ljava/math/BigInteger;

.field private final privateExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/security/spec/RSAPrivateKeySpec;->modulus:Ljava/math/BigInteger;

    iput-object p2, p0, Ljava/security/spec/RSAPrivateKeySpec;->privateExponent:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/RSAPrivateKeySpec;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrivateExponent()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/RSAPrivateKeySpec;->privateExponent:Ljava/math/BigInteger;

    return-object v0
.end method
