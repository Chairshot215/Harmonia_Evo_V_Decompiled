.class public Lcom/google/android/talk/util/ChatColorMaker;
.super Ljava/lang/Object;
.source "ChatColorMaker.java"


# instance fields
.field private mBaseOffset:I

.field private mColors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private mLinkHue:F

.field private mTempHSV:[F


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .parameter "seed"
    .parameter "linkColor"

    .prologue
    const/4 v1, 0x3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/talk/util/ChatColorMaker;->mTempHSV:[F

    .line 38
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/talk/util/ChatColorMaker;->mTempHSV:[F

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/util/ChatColorMaker;->mColors:Ljava/util/HashMap;

    .line 42
    iget-object v0, p0, Lcom/google/android/talk/util/ChatColorMaker;->mTempHSV:[F

    invoke-static {p2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 43
    iget-object v0, p0, Lcom/google/android/talk/util/ChatColorMaker;->mTempHSV:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/google/android/talk/util/ChatColorMaker;->mLinkHue:F

    .line 45
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/google/android/talk/util/ChatColorMaker;->mBaseOffset:I

    .line 46
    iget-object v0, p0, Lcom/google/android/talk/util/ChatColorMaker;->mTempHSV:[F

    const/4 v1, 0x2

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 47
    return-void
.end method


# virtual methods
.method public final freeze(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 100
    const-string v0, "colormaker:base"

    iget v1, p0, Lcom/google/android/talk/util/ChatColorMaker;->mBaseOffset:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const-string v0, "colormaker:colors"

    iget-object v1, p0, Lcom/google/android/talk/util/ChatColorMaker;->mColors:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 102
    const-string v0, "colormaker:linkhue"

    iget v1, p0, Lcom/google/android/talk/util/ChatColorMaker;->mLinkHue:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 103
    return-void
.end method
