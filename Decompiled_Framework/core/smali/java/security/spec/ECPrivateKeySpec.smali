.class public Ljava/security/spec/ECPrivateKeySpec;
.super Ljava/lang/Object;
.source "ECPrivateKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final params:Ljava/security/spec/ECParameterSpec;

.field private final s:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/security/spec/ECPrivateKeySpec;->s:Ljava/math/BigInteger;

    iput-object p2, p0, Ljava/security/spec/ECPrivateKeySpec;->params:Ljava/security/spec/ECParameterSpec;

    iget-object v0, p0, Ljava/security/spec/ECPrivateKeySpec;->s:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "s == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/security/spec/ECPrivateKeySpec;->params:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "params == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/ECPrivateKeySpec;->params:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/ECPrivateKeySpec;->s:Ljava/math/BigInteger;

    return-object v0
.end method
