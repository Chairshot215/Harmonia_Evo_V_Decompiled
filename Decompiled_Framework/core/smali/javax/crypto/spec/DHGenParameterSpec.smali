.class public Ljavax/crypto/spec/DHGenParameterSpec;
.super Ljava/lang/Object;
.source "DHGenParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final exponentSize:I

.field private final primeSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljavax/crypto/spec/DHGenParameterSpec;->primeSize:I

    iput p2, p0, Ljavax/crypto/spec/DHGenParameterSpec;->exponentSize:I

    return-void
.end method


# virtual methods
.method public getExponentSize()I
    .locals 1

    iget v0, p0, Ljavax/crypto/spec/DHGenParameterSpec;->exponentSize:I

    return v0
.end method

.method public getPrimeSize()I
    .locals 1

    iget v0, p0, Ljavax/crypto/spec/DHGenParameterSpec;->primeSize:I

    return v0
.end method
