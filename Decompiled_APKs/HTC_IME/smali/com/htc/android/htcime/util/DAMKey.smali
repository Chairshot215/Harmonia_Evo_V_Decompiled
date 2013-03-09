.class public Lcom/htc/android/htcime/util/DAMKey;
.super Ljava/lang/Object;
.source "DAMKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/util/DAMKey$DAMTap;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "DAM"


# instance fields
.field private DEBUG_LOG:Z

.field private colorArray:[I

.field private index:I

.field public m_CenterX:I

.field public m_CenterY:I

.field public m_lastAvgDiff:F

.field private solidColorArray:[I

.field private track:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/htcime/util/DAMKey$DAMTap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "KeyIndex"

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/util/DAMKey;->DEBUG_LOG:Z

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/util/DAMKey;->track:Ljava/util/ArrayList;

    .line 25
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/android/htcime/util/DAMKey;->colorArray:[I

    .line 26
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/htc/android/htcime/util/DAMKey;->solidColorArray:[I

    .line 28
    iput p1, p0, Lcom/htc/android/htcime/util/DAMKey;->index:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/htcime/util/DAMKey;->m_lastAvgDiff:F

    .line 30
    iput v1, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterX:I

    .line 31
    iput v1, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterY:I

    .line 32
    return-void

    .line 25
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0x64t
        0x0t 0xfft 0x0t 0x64t
        0xfft 0x0t 0x0t 0x64t
        0x0t 0xfft 0xfft 0x64t
        0xfft 0xfft 0x0t 0x64t
        0xfft 0x0t 0xfft 0x64t
    .end array-data

    .line 26
    :array_1
    .array-data 0x4
        0x0t 0x0t 0xa0t 0xfft
        0x0t 0xa0t 0x0t 0xfft
        0xa0t 0x0t 0x0t 0xfft
        0x0t 0xa0t 0xa0t 0xfft
        0xa0t 0xa0t 0x0t 0xfft
        0xa0t 0x0t 0xa0t 0xfft
    .end array-data
.end method

.method public constructor <init>(III)V
    .locals 3
    .parameter "KeyIndex"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v2, 0x6

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/htcime/util/DAMKey;->DEBUG_LOG:Z

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/android/htcime/util/DAMKey;->track:Ljava/util/ArrayList;

    .line 25
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/htc/android/htcime/util/DAMKey;->colorArray:[I

    .line 26
    new-array v1, v2, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/htc/android/htcime/util/DAMKey;->solidColorArray:[I

    .line 35
    iput p1, p0, Lcom/htc/android/htcime/util/DAMKey;->index:I

    .line 36
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/android/htcime/util/DAMKey;->m_lastAvgDiff:F

    .line 37
    iput p2, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterX:I

    .line 38
    iput p3, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterY:I

    .line 40
    new-instance v0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;

    iget v1, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterX:I

    iget v2, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterY:I

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/android/htcime/util/DAMKey$DAMTap;-><init>(Lcom/htc/android/htcime/util/DAMKey;II)V

    .line 41
    .local v0, tap:Lcom/htc/android/htcime/util/DAMKey$DAMTap;
    iget-object v1, p0, Lcom/htc/android/htcime/util/DAMKey;->track:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    return-void

    .line 25
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0x64t
        0x0t 0xfft 0x0t 0x64t
        0xfft 0x0t 0x0t 0x64t
        0x0t 0xfft 0xfft 0x64t
        0xfft 0xfft 0x0t 0x64t
        0xfft 0x0t 0xfft 0x64t
    .end array-data

    .line 26
    :array_1
    .array-data 0x4
        0x0t 0x0t 0xa0t 0xfft
        0x0t 0xa0t 0x0t 0xfft
        0xa0t 0x0t 0x0t 0xfft
        0x0t 0xa0t 0xa0t 0xfft
        0xa0t 0xa0t 0x0t 0xfft
        0xa0t 0x0t 0xa0t 0xfft
    .end array-data
.end method


# virtual methods
.method public AddTrake(II)I
    .locals 2
    .parameter "X"
    .parameter "Y"

    .prologue
    .line 45
    new-instance v0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/android/htcime/util/DAMKey$DAMTap;-><init>(Lcom/htc/android/htcime/util/DAMKey;II)V

    .line 46
    .local v0, tap:Lcom/htc/android/htcime/util/DAMKey$DAMTap;
    iget-object v1, p0, Lcom/htc/android/htcime/util/DAMKey;->track:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v1, p0, Lcom/htc/android/htcime/util/DAMKey;->track:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1
.end method

.method public drawTrack(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 100
    new-instance v2, Landroid/graphics/Paint;

    const/4 v4, 0x4

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 101
    .local v2, paint:Landroid/graphics/Paint;
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    const/4 v4, 0x0

    iget v5, p0, Lcom/htc/android/htcime/util/DAMKey;->m_lastAvgDiff:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 103
    const/high16 v4, -0x100

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget v4, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterY:I

    int-to-float v5, v5

    const/high16 v6, 0x4120

    invoke-virtual {p1, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 111
    :goto_0
    new-instance v1, Landroid/graphics/RectF;

    iget v4, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterY:I

    int-to-float v5, v5

    iget v6, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterX:I

    int-to-float v6, v6

    iget v7, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterY:I

    int-to-float v7, v7

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 112
    .local v1, oval:Landroid/graphics/RectF;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/htc/android/htcime/util/DAMKey;->track:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 113
    iget-object v4, p0, Lcom/htc/android/htcime/util/DAMKey;->track:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcime/util/DAMKey$DAMTap;

    .line 114
    .local v3, tap:Lcom/htc/android/htcime/util/DAMKey$DAMTap;
    iget-object v4, p0, Lcom/htc/android/htcime/util/DAMKey;->solidColorArray:[I

    iget-object v5, p0, Lcom/htc/android/htcime/util/DAMKey;->solidColorArray:[I

    array-length v5, v5

    rem-int v5, v0, v5

    aget v4, v4, v5

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget v4, v3, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->tap_x:I

    int-to-float v4, v4

    iget v5, v3, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->tap_y:I

    int-to-float v5, v5

    const/high16 v6, 0x3fc0

    invoke-virtual {p1, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    .end local v0           #i:I
    .end local v1           #oval:Landroid/graphics/RectF;
    .end local v3           #tap:Lcom/htc/android/htcime/util/DAMKey$DAMTap;
    :cond_0
    iget-object v4, p0, Lcom/htc/android/htcime/util/DAMKey;->colorArray:[I

    iget v5, p0, Lcom/htc/android/htcime/util/DAMKey;->index:I

    iget-object v6, p0, Lcom/htc/android/htcime/util/DAMKey;->colorArray:[I

    array-length v6, v6

    rem-int/2addr v5, v6

    aget v4, v4, v5

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget v4, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterY:I

    int-to-float v5, v5

    iget v6, p0, Lcom/htc/android/htcime/util/DAMKey;->m_lastAvgDiff:F

    invoke-virtual {p1, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 117
    .restart local v0       #i:I
    .restart local v1       #oval:Landroid/graphics/RectF;
    :cond_1
    return-void
.end method

.method public dump()V
    .locals 5

    .prologue
    .line 207
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/android/htcime/util/DAMKey;->track:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/htc/android/htcime/util/DAMKey;->track:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcime/util/DAMKey$DAMTap;

    .line 210
    .local v1, tap:Lcom/htc/android/htcime/util/DAMKey$DAMTap;
    const-string v2, "DAM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "i:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    .end local v1           #tap:Lcom/htc/android/htcime/util/DAMKey$DAMTap;
    :cond_0
    return-void
.end method

.method public getInstance(II)I
    .locals 4
    .parameter "X"
    .parameter "Y"

    .prologue
    .line 51
    iget v2, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterX:I

    sub-int v0, p1, v2

    .line 52
    .local v0, dx:I
    iget v2, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterY:I

    sub-int v1, p2, v2

    .line 53
    .local v1, dy:I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    return v2
.end method

.method public readLog(Ljava/io/RandomAccessFile;I)Z
    .locals 10
    .parameter "LogFile"
    .parameter "refKeyCount"

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 60
    .local v1, bRet:Z
    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    iput v7, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterX:I

    .line 61
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    iput v7, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterY:I

    .line 63
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v7

    iput v7, p0, Lcom/htc/android/htcime/util/DAMKey;->m_lastAvgDiff:F

    .line 64
    const-string v7, "DAM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[readLog] key:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/android/htcime/util/DAMKey;->index:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "m_CenterX:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterX:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v7, "DAM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[readLog] key:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/android/htcime/util/DAMKey;->index:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "m_CenterY:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterY:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v7, "DAM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[readLog] key:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/android/htcime/util/DAMKey;->index:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "m_lastAvgDiff:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/android/htcime/util/DAMKey;->m_lastAvgDiff:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v0

    .line 69
    .local v0, actual_ref_count:I
    iget-object v7, p0, Lcom/htc/android/htcime/util/DAMKey;->track:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 70
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    if-ge v3, p2, :cond_1

    .line 73
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    .line 74
    .local v5, x:I
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    .line 76
    .local v6, y:I
    if-ge v3, v0, :cond_0

    .line 77
    new-instance v4, Lcom/htc/android/htcime/util/DAMKey$DAMTap;

    invoke-direct {v4, p0, v5, v6}, Lcom/htc/android/htcime/util/DAMKey$DAMTap;-><init>(Lcom/htc/android/htcime/util/DAMKey;II)V

    .line 78
    .local v4, tap:Lcom/htc/android/htcime/util/DAMKey$DAMTap;
    iget-object v7, p0, Lcom/htc/android/htcime/util/DAMKey;->track:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v4           #tap:Lcom/htc/android/htcime/util/DAMKey$DAMTap;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_1
    const/4 v1, 0x1

    .line 88
    .end local v0           #actual_ref_count:I
    .end local v3           #j:I
    :goto_1
    return v1

    .line 83
    :catch_0
    move-exception v2

    .line 85
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    iput v1, p0, Lcom/htc/android/htcime/util/DAMKey;->index:I

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/htcime/util/DAMKey;->m_lastAvgDiff:F

    .line 94
    iput v1, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterX:I

    .line 95
    iput v1, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterY:I

    .line 96
    iget-object v0, p0, Lcom/htc/android/htcime/util/DAMKey;->track:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 97
    return-void
.end method

.method public writeLog(Ljava/nio/MappedByteBuffer;I)Z
    .locals 10
    .parameter "mbbuffer"
    .parameter "refKeyCount"

    .prologue
    const/4 v9, 0x0

    .line 120
    const/4 v1, 0x0

    .line 121
    .local v1, bRet:Z
    const/4 v0, 0x0

    .line 122
    .local v0, actual_ref_points:I
    const/4 v5, 0x0

    .line 123
    .local v5, sum_diff:F
    const/4 v3, 0x0

    .local v3, sum_center_x:I
    const/4 v4, 0x0

    .line 125
    .local v4, sum_center_y:I
    iget-object v6, p0, Lcom/htc/android/htcime/util/DAMKey;->track:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 127
    iget-object v6, p0, Lcom/htc/android/htcime/util/DAMKey;->track:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    div-int/lit8 v7, p2, 0x2

    if-lt v6, v7, :cond_1

    .line 128
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/htc/android/htcime/util/DAMKey;->track:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 129
    iget-object v6, p0, Lcom/htc/android/htcime/util/DAMKey;->track:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/htcime/util/DAMKey$DAMTap;

    iget v6, v6, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->tap_x:I

    add-int/2addr v3, v6

    .line 130
    iget-object v6, p0, Lcom/htc/android/htcime/util/DAMKey;->track:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/htcime/util/DAMKey$DAMTap;

    iget v6, v6, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->tap_y:I

    add-int/2addr v4, v6

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    :cond_0
    iget-object v6, p0, Lcom/htc/android/htcime/util/DAMKey;->track:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    div-int v6, v3, v6

    iput v6, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterX:I

    .line 135
    iget-object v6, p0, Lcom/htc/android/htcime/util/DAMKey;->track:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    div-int v6, v4, v6

    iput v6, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterY:I

    .line 139
    .end local v2           #i:I
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    iget-object v6, p0, Lcom/htc/android/htcime/util/DAMKey;->track:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 140
    iget-object v6, p0, Lcom/htc/android/htcime/util/DAMKey;->track:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/htcime/util/DAMKey$DAMTap;

    invoke-virtual {v6}, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->getDistanceFromCenterNoSqur()I

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 143
    :cond_2
    iget-object v6, p0, Lcom/htc/android/htcime/util/DAMKey;->track:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 145
    iget-object v6, p0, Lcom/htc/android/htcime/util/DAMKey;->track:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 146
    if-le v0, p2, :cond_3

    move v0, p2

    .line 148
    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_4

    .line 149
    iget-object v6, p0, Lcom/htc/android/htcime/util/DAMKey;->track:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/htcime/util/DAMKey$DAMTap;

    iget v6, v6, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->distance:I

    int-to-float v6, v6

    invoke-static {v6}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v6

    add-float/2addr v5, v6

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 152
    :cond_4
    iget v6, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterX:I

    invoke-virtual {p1, v6}, Ljava/nio/MappedByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 153
    iget-boolean v6, p0, Lcom/htc/android/htcime/util/DAMKey;->DEBUG_LOG:Z

    if-eqz v6, :cond_5

    const-string v6, "DAM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[writeLog] Key["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/android/htcime/util/DAMKey;->index:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] Center_X="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterX:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_5
    iget v6, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterY:I

    invoke-virtual {p1, v6}, Ljava/nio/MappedByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 155
    iget-boolean v6, p0, Lcom/htc/android/htcime/util/DAMKey;->DEBUG_LOG:Z

    if-eqz v6, :cond_6

    const-string v6, "DAM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[writeLog] Key["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/android/htcime/util/DAMKey;->index:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] Center_Y="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_6
    int-to-float v6, v0

    div-float v6, v5, v6

    invoke-virtual {p1, v6}, Ljava/nio/MappedByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 157
    iget-boolean v6, p0, Lcom/htc/android/htcime/util/DAMKey;->DEBUG_LOG:Z

    if-eqz v6, :cond_7

    const-string v6, "DAM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[writeLog] Key["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/android/htcime/util/DAMKey;->index:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] Diff="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    int-to-float v8, v0

    div-float v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .end local v2           #i:I
    :cond_7
    :goto_3
    int-to-short v6, v0

    invoke-virtual {p1, v6}, Ljava/nio/MappedByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 170
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, p2, :cond_c

    .line 171
    if-lt v2, v0, :cond_b

    .line 172
    invoke-virtual {p1, v9}, Ljava/nio/MappedByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 173
    invoke-virtual {p1, v9}, Ljava/nio/MappedByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 170
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 160
    .end local v2           #i:I
    :cond_8
    iget v6, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterX:I

    invoke-virtual {p1, v6}, Ljava/nio/MappedByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 161
    iget-boolean v6, p0, Lcom/htc/android/htcime/util/DAMKey;->DEBUG_LOG:Z

    if-eqz v6, :cond_9

    const-string v6, "DAM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[writeLog] Key["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/android/htcime/util/DAMKey;->index:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] Center_X="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterX:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_9
    iget v6, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterY:I

    invoke-virtual {p1, v6}, Ljava/nio/MappedByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 163
    iget-boolean v6, p0, Lcom/htc/android/htcime/util/DAMKey;->DEBUG_LOG:Z

    if-eqz v6, :cond_a

    const-string v6, "DAM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[writeLog] Key["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/android/htcime/util/DAMKey;->index:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] Center_Y="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/android/htcime/util/DAMKey;->m_CenterY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_a
    iget v6, p0, Lcom/htc/android/htcime/util/DAMKey;->m_lastAvgDiff:F

    invoke-virtual {p1, v6}, Ljava/nio/MappedByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 165
    iget-boolean v6, p0, Lcom/htc/android/htcime/util/DAMKey;->DEBUG_LOG:Z

    if-eqz v6, :cond_7

    const-string v6, "DAM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[writeLog] Key["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/android/htcime/util/DAMKey;->index:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] Diff="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/android/htcime/util/DAMKey;->m_lastAvgDiff:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 175
    .restart local v2       #i:I
    :cond_b
    iget-object v6, p0, Lcom/htc/android/htcime/util/DAMKey;->track:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/htcime/util/DAMKey$DAMTap;

    iget v6, v6, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->tap_x:I

    invoke-virtual {p1, v6}, Ljava/nio/MappedByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 176
    iget-object v6, p0, Lcom/htc/android/htcime/util/DAMKey;->track:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/htcime/util/DAMKey$DAMTap;

    iget v6, v6, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->tap_y:I

    invoke-virtual {p1, v6}, Ljava/nio/MappedByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_5

    .line 202
    :cond_c
    const/4 v1, 0x1

    .line 203
    return v1
.end method
