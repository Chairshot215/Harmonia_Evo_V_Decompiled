.class public Lcom/google/android/videochat/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/google/android/videochat/Size;->width:I

    .line 22
    iput p2, p0, Lcom/google/android/videochat/Size;->height:I

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/google/android/videochat/Size;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iget v0, p1, Lcom/google/android/videochat/Size;->width:I

    iput v0, p0, Lcom/google/android/videochat/Size;->width:I

    .line 31
    iget v0, p1, Lcom/google/android/videochat/Size;->height:I

    iput v0, p0, Lcom/google/android/videochat/Size;->height:I

    .line 32
    return-void
.end method

.method public static newWithScaleDown(Lcom/google/android/videochat/Size;F)Lcom/google/android/videochat/Size;
    .locals 3
    .parameter "size"
    .parameter "scale"

    .prologue
    .line 63
    iget v2, p0, Lcom/google/android/videochat/Size;->width:I

    int-to-float v2, v2

    div-float/2addr v2, p1

    float-to-int v1, v2

    .line 64
    .local v1, width:I
    iget v2, p0, Lcom/google/android/videochat/Size;->height:I

    int-to-float v2, v2

    div-float/2addr v2, p1

    float-to-int v0, v2

    .line 66
    .local v0, height:I
    add-int/lit8 v2, v1, 0x2

    and-int/lit8 v1, v2, -0x4

    .line 67
    add-int/lit8 v2, v0, 0x2

    and-int/lit8 v0, v2, -0x4

    .line 68
    new-instance v2, Lcom/google/android/videochat/Size;

    invoke-direct {v2, v1, v0}, Lcom/google/android/videochat/Size;-><init>(II)V

    return-object v2
.end method

.method public static scaleToMax(Lcom/google/android/videochat/Size;Lcom/google/android/videochat/Size;)Lcom/google/android/videochat/Size;
    .locals 8
    .parameter "size"
    .parameter "max"

    .prologue
    const-wide/high16 v6, 0x3ff0

    .line 86
    const/high16 v3, 0x3f80

    .line 87
    .local v3, scale:F
    iget v4, p0, Lcom/google/android/videochat/Size;->width:I

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/videochat/Size;->height:I

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 88
    .local v0, incomingAR:F
    iget v4, p1, Lcom/google/android/videochat/Size;->width:I

    int-to-float v4, v4

    iget v5, p1, Lcom/google/android/videochat/Size;->height:I

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 90
    .local v1, maxAR:F
    float-to-double v4, v0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    float-to-double v4, v1

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_1

    :cond_0
    float-to-double v4, v0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    float-to-double v4, v1

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4

    .line 91
    :cond_1
    const/high16 v4, 0x3f80

    div-float v1, v4, v1

    .line 92
    new-instance v2, Lcom/google/android/videochat/Size;

    iget v4, p1, Lcom/google/android/videochat/Size;->height:I

    iget v5, p1, Lcom/google/android/videochat/Size;->width:I

    invoke-direct {v2, v4, v5}, Lcom/google/android/videochat/Size;-><init>(II)V

    .line 96
    .local v2, maxSize:Lcom/google/android/videochat/Size;
    :goto_0
    cmpl-float v4, v0, v1

    if-lez v4, :cond_5

    .line 97
    iget v4, p0, Lcom/google/android/videochat/Size;->width:I

    iget v5, v2, Lcom/google/android/videochat/Size;->width:I

    if-le v4, v5, :cond_2

    .line 98
    iget v4, p0, Lcom/google/android/videochat/Size;->width:I

    int-to-float v4, v4

    iget v5, v2, Lcom/google/android/videochat/Size;->width:I

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 105
    :cond_2
    :goto_1
    float-to-double v4, v3

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3

    .line 106
    invoke-static {p0, v3}, Lcom/google/android/videochat/Size;->newWithScaleDown(Lcom/google/android/videochat/Size;F)Lcom/google/android/videochat/Size;

    move-result-object p0

    .line 108
    .end local p0
    :cond_3
    return-object p0

    .line 94
    .end local v2           #maxSize:Lcom/google/android/videochat/Size;
    .restart local p0
    :cond_4
    new-instance v2, Lcom/google/android/videochat/Size;

    iget v4, p1, Lcom/google/android/videochat/Size;->width:I

    iget v5, p1, Lcom/google/android/videochat/Size;->height:I

    invoke-direct {v2, v4, v5}, Lcom/google/android/videochat/Size;-><init>(II)V

    .restart local v2       #maxSize:Lcom/google/android/videochat/Size;
    goto :goto_0

    .line 101
    :cond_5
    iget v4, p0, Lcom/google/android/videochat/Size;->height:I

    iget v5, v2, Lcom/google/android/videochat/Size;->height:I

    if-le v4, v5, :cond_2

    .line 102
    iget v4, p0, Lcom/google/android/videochat/Size;->height:I

    int-to-float v4, v4

    iget v5, v2, Lcom/google/android/videochat/Size;->height:I

    int-to-float v5, v5

    div-float v3, v4, v5

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 43
    instance-of v2, p1, Lcom/google/android/videochat/Size;

    if-nez v2, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 46
    check-cast v0, Lcom/google/android/videochat/Size;

    .line 47
    .local v0, s:Lcom/google/android/videochat/Size;
    iget v2, p0, Lcom/google/android/videochat/Size;->width:I

    iget v3, v0, Lcom/google/android/videochat/Size;->width:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/videochat/Size;->height:I

    iget v3, v0, Lcom/google/android/videochat/Size;->height:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getEncodedDimensions()I
    .locals 2

    .prologue
    .line 117
    iget v0, p0, Lcom/google/android/videochat/Size;->width:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/google/android/videochat/Size;->height:I

    or-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Lcom/google/android/videochat/Size;->width:I

    mul-int/lit16 v0, v0, 0x7fc9

    iget v1, p0, Lcom/google/android/videochat/Size;->height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/videochat/Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/videochat/Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
