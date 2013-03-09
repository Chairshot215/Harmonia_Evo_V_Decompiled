.class public Lcom/htc/gl/anim/AnimationKey;
.super Ljava/lang/Object;
.source "AnimationKey.java"


# instance fields
.field private mFrame:I

.field private mValue:[F


# direct methods
.method public constructor <init>(IF)V
    .locals 2
    .parameter "frame"
    .parameter "value"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/htc/gl/anim/AnimationKey;->mFrame:I

    .line 11
    const/4 v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/gl/anim/AnimationKey;->mValue:[F

    .line 12
    iget-object v0, p0, Lcom/htc/gl/anim/AnimationKey;->mValue:[F

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 13
    return-void
.end method

.method public constructor <init>(IFF)V
    .locals 2
    .parameter "frame"
    .parameter "value1"
    .parameter "value2"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/htc/gl/anim/AnimationKey;->mFrame:I

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/gl/anim/AnimationKey;->mValue:[F

    .line 19
    iget-object v0, p0, Lcom/htc/gl/anim/AnimationKey;->mValue:[F

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 20
    iget-object v0, p0, Lcom/htc/gl/anim/AnimationKey;->mValue:[F

    const/4 v1, 0x1

    aput p3, v0, v1

    .line 21
    return-void
.end method

.method public constructor <init>(IFFF)V
    .locals 2
    .parameter "frame"
    .parameter "value1"
    .parameter "value2"
    .parameter "value3"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/htc/gl/anim/AnimationKey;->mFrame:I

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/gl/anim/AnimationKey;->mValue:[F

    .line 27
    iget-object v0, p0, Lcom/htc/gl/anim/AnimationKey;->mValue:[F

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 28
    iget-object v0, p0, Lcom/htc/gl/anim/AnimationKey;->mValue:[F

    const/4 v1, 0x1

    aput p3, v0, v1

    .line 29
    iget-object v0, p0, Lcom/htc/gl/anim/AnimationKey;->mValue:[F

    const/4 v1, 0x2

    aput p4, v0, v1

    .line 30
    return-void
.end method

.method public constructor <init>(I[F)V
    .locals 0
    .parameter "frame"
    .parameter "value"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/htc/gl/anim/AnimationKey;->mFrame:I

    .line 35
    iput-object p2, p0, Lcom/htc/gl/anim/AnimationKey;->mValue:[F

    .line 36
    return-void
.end method


# virtual methods
.method public getFreame()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/htc/gl/anim/AnimationKey;->mFrame:I

    return v0
.end method

.method public getValue()[F
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/gl/anim/AnimationKey;->mValue:[F

    return-object v0
.end method
