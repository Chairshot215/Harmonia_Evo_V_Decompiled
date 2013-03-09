.class public Lcom/scalado/caps/autorama/stereo/StereoPanoramaFromMultiAngle;
.super Lcom/scalado/caps/autorama/stereo/StereoPanorama;
.source "StereoPanoramaFromMultiAngle.java"


# instance fields
.field private stitcher:Lcom/scalado/caps/autorama/Stitcher;


# direct methods
.method public constructor <init>(Lcom/scalado/caps/autorama/Stitcher;III)V
    .locals 3

    invoke-direct {p0}, Lcom/scalado/caps/autorama/stereo/StereoPanorama;-><init>()V

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "stitcher must be allocated!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x2

    if-ge p2, v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "numberOfSegments must be at least greater than 1!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-gez p4, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "rightRenderingSegment must be > 0!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-lt p4, p2, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "rightRenderingSegment must be < numberOfSegments!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-gez p3, :cond_4

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "leftRenderingSegment must be > 0!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    if-lt p3, p4, :cond_5

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "leftRenderingSegment must be < rightRenderingSegment!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    iput-object p1, p0, Lcom/scalado/caps/autorama/stereo/StereoPanoramaFromMultiAngle;->stitcher:Lcom/scalado/caps/autorama/Stitcher;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/scalado/caps/autorama/stereo/StereoPanoramaFromMultiAngle;->nativeCreate(Lcom/scalado/caps/autorama/Stitcher;III)I

    move-result v0

    return-void
.end method

.method private native nativeCreate(Lcom/scalado/caps/autorama/Stitcher;III)I
.end method
