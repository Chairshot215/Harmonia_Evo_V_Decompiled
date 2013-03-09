.class public final Ljava/security/KeyPair;
.super Ljava/lang/Object;
.source "KeyPair.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x68fcf3c52d32ed6dL


# instance fields
.field private final privateKey:Ljava/security/PrivateKey;

.field private final publicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljava/security/KeyPair;->privateKey:Ljava/security/PrivateKey;

    iput-object p1, p0, Ljava/security/KeyPair;->publicKey:Ljava/security/PublicKey;

    return-void
.end method


# virtual methods
.method public getPrivate()Ljava/security/PrivateKey;
    .locals 1

    iget-object v0, p0, Ljava/security/KeyPair;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getPublic()Ljava/security/PublicKey;
    .locals 1

    iget-object v0, p0, Ljava/security/KeyPair;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method
