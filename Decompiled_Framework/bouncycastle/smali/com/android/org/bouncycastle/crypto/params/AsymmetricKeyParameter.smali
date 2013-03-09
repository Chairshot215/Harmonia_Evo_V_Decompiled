.class public Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
.super Ljava/lang/Object;
.source "AsymmetricKeyParameter.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field privateKey:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->privateKey:Z

    return-void
.end method


# virtual methods
.method public isPrivate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->privateKey:Z

    return v0
.end method
