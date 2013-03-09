.class Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
.super Ljava/lang/Object;
.source "WNafPreCompInfo.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field private preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

.field private twiceP:Lcom/android/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->twiceP:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-void
.end method


# virtual methods
.method protected getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method protected getTwiceP()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->twiceP:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method protected setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-void
.end method

.method protected setTwiceP(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->twiceP:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-void
.end method
