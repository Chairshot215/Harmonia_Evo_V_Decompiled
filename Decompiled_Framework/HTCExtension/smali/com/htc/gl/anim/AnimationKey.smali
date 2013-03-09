.class public Lcom/htc/gl/anim/AnimationKey;
.super Ljava/lang/Object;
.source "AnimationKey.java"


# instance fields
.field private mFrame:I

.field private mValue:[F


# direct methods
.method public constructor <init>(IF)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/htc/gl/anim/AnimationKey;->mFrame:I

    const/4 v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/gl/anim/AnimationKey;->mValue:[F

    iget-object v0, p0, Lcom/htc/gl/anim/AnimationKey;->mValue:[F

    const/4 v1, 0x0

    aput p2, v0, v1

    return-void
.end method

.method public constructor <init>(IFF)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/htc/gl/anim/AnimationKey;->mFrame:I

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/gl/anim/AnimationKey;->mValue:[F

    iget-object v0, p0, Lcom/htc/gl/anim/AnimationKey;->mValue:[F

    const/4 v1, 0x0

    aput p2, v0, v1

    iget-object v0, p0, Lcom/htc/gl/anim/AnimationKey;->mValue:[F

    const/4 v1, 0x1

    aput p3, v0, v1

    return-void
.end method

.method public constructor <init>(IFFF)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/htc/gl/anim/AnimationKey;->mFrame:I

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/gl/anim/AnimationKey;->mValue:[F

    iget-object v0, p0, Lcom/htc/gl/anim/AnimationKey;->mValue:[F

    const/4 v1, 0x0

    aput p2, v0, v1

    iget-object v0, p0, Lcom/htc/gl/anim/AnimationKey;->mValue:[F

    const/4 v1, 0x1

    aput p3, v0, v1

    iget-object v0, p0, Lcom/htc/gl/anim/AnimationKey;->mValue:[F

    const/4 v1, 0x2

    aput p4, v0, v1

    return-void
.end method

.method public constructor <init>(I[F)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/htc/gl/anim/AnimationKey;->mFrame:I

    iput-object p2, p0, Lcom/htc/gl/anim/AnimationKey;->mValue:[F

    return-void
.end method


# virtual methods
.method public getFreame()I
    .locals 1

    iget v0, p0, Lcom/htc/gl/anim/AnimationKey;->mFrame:I

    return v0
.end method

.method public getValue()[F
    .locals 1

    iget-object v0, p0, Lcom/htc/gl/anim/AnimationKey;->mValue:[F

    return-object v0
.end method
