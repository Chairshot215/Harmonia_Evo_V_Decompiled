.class final Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves$18;
.super Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;
.source "X962NamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;
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
    .locals 9

    const/16 v8, 0x10

    new-instance v5, Ljava/math/BigInteger;

    const-string v1, "0CCCCCCCCCCCCCCCCCCCCCCCCCCCCCAC4912D2D9DF903EF9888B8A0E4CFF"

    invoke-direct {v5, v1, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    const/16 v1, 0xef

    const/16 v2, 0x24

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "01238774666A67766D6676F778E676B66999176666E687666D8766C66A9F"

    invoke-direct {v3, v4, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v7, "6A941977BA9F6A435199ACFC51067ED587F519C5ECB541B8E44111DE1D40"

    invoke-direct {v4, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v2, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    const-string v1, "0370F6E9D04D289C4E89913CE3530BFDE903977D42B146D539BF1BDE4E9C92"

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    const/4 v7, 0x0

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v2
.end method
