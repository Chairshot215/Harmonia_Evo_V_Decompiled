.class final Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$23;
.super Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;
.source "SECNamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 13

    const/16 v1, 0xc1

    const/16 v2, 0xf

    const-string v7, "0017858FEB7A98975169E171F77B4087DE098AC8A911DF7B01"

    #calls: Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    const-string v7, "00FDFB49BFE6C3A89FACADAA7A1E5BBC7CC1C2E5D831478814"

    #calls: Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    const-string v7, "103FAEC74D696E676875615175777FC5B191EF30"

    invoke-static {v7}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v12

    const-string v7, "01000000000000000000000000C7F34A778F443ACC920EBA49"

    #calls: Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    const-wide/16 v7, 0x2

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string v7, "0401F481BC5F0FF84A74AD6CDF6FDEF4BF6179625372D8C0C5E10025E399F2903712CCF3EA9E3A1AD17FB0B3201B6AF7CE1B05"

    invoke-static {v7}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    new-instance v7, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-object v8, v0

    move-object v10, v5

    move-object v11, v6

    invoke-direct/range {v7 .. v12}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v7
.end method
