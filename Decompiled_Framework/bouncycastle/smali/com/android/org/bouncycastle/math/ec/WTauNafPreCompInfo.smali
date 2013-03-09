.class Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;
.super Ljava/lang/Object;
.source "WTauNafPreCompInfo.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field private preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;


# direct methods
.method constructor <init>([Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    return-void
.end method


# virtual methods
.method protected getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    return-object v0
.end method
