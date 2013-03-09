.class public Ljava/security/spec/ECPublicKeySpec;
.super Ljava/lang/Object;
.source "ECPublicKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final params:Ljava/security/spec/ECParameterSpec;

.field private final w:Ljava/security/spec/ECPoint;


# direct methods
.method public constructor <init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/security/spec/ECPublicKeySpec;->w:Ljava/security/spec/ECPoint;

    iput-object p2, p0, Ljava/security/spec/ECPublicKeySpec;->params:Ljava/security/spec/ECParameterSpec;

    iget-object v0, p0, Ljava/security/spec/ECPublicKeySpec;->w:Ljava/security/spec/ECPoint;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "w == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/security/spec/ECPublicKeySpec;->params:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "params == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/security/spec/ECPublicKeySpec;->w:Ljava/security/spec/ECPoint;

    sget-object v1, Ljava/security/spec/ECPoint;->POINT_INFINITY:Ljava/security/spec/ECPoint;

    invoke-virtual {v0, v1}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the w parameter is point at infinity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/ECPublicKeySpec;->params:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/ECPublicKeySpec;->w:Ljava/security/spec/ECPoint;

    return-object v0
.end method
