.class Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
.super Ljava/lang/Object;
.source "ReasonsMask.java"


# static fields
.field static final allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;


# instance fields
.field private _reasons:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    const v1, 0x80ff

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    return-void
.end method


# virtual methods
.method addReasons(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)V
    .locals 2

    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->getReasons()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    return-void
.end method

.method getReasons()I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    return v0
.end method

.method hasNewReasons(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)Z
    .locals 3

    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->getReasons()I

    move-result v1

    iget v2, p0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method intersect(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .locals 4

    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>()V

    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    iget v2, p0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->getReasons()I

    move-result v3

    and-int/2addr v2, v3

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->addReasons(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)V

    return-object v0
.end method

.method isAllReasons()Z
    .locals 2

    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    iget v1, v1, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
