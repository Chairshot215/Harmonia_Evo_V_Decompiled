.class public Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;
.super Ljava/lang/Object;
.source "PPRecognize.java"


# static fields
.field public static final ALL_TYPE:I = 0x7ff

.field public static final ALPHA_TYPE:I = 0x3

.field public static final CHINESE_1_TYPE:I = 0x200

.field public static final CHINESE_2_TYPE:I = 0x400

.field public static final CURSIVE_TYPE:I = 0x7f

.field private static final DUMP_LOG:Z = false

.field public static final EXTEND_PUNCT_TYPE:I = 0x10

.field public static final EXTEND_SYMBOL_TYPE:I = 0x40

.field public static final FIRST_CANDIDATE_TYPE_CHINESE:I = 0x2

.field public static final FIRST_CANDIDATE_TYPE_ENGLISH:I = 0x3

.field public static final FIRST_CANDIDATE_TYPE_NONE:I = 0x1

.field public static final GENERAL_PUNCT_TYPE:I = 0x8

.field public static final GENERAL_SYMBOL_TYPE:I = 0x20

.field public static final GESTURE_TYPE:I = 0x80

.field public static final HIRA_TYPE:I = 0x4000

.field public static final HONGKONG_PHRASE:I = 0x2

.field public static final HTC_DEFINED_ALL:I = 0x77f

.field public static final HTC_DEFINED_CHINESE:I = 0x704

.field public static final HTC_DEFINED_ENGLISH:I = 0x7f

.field public static final IN_13052_TYPE:I = 0x400

.field public static final IN_5401_TYPE:I = 0x200

.field public static final IN_HK_TYPE:I = 0x800

.field public static final KATA_TYPE:I = 0x8000

.field private static final LOG_CLASS:Ljava/lang/String; = "[PPRecognize] "

.field private static final LOG_TITLE:Ljava/lang/String; = "PPLOG"

.field public static final LOWER_ALPHA_TYPE:I = 0x1

.field public static final MAINLAND_PHRASE:I = 0x4

.field public static final MAX_CANDIDATE_NUM:I = 0xa

.field public static final MAX_PHRASE_NUM:I = 0x14

.field public static final MIN_STROKE_POINTS_FOR_RECOGNIZE:I = 0x5

.field public static final NUMA_TYPE:I = 0x4

.field public static final NUMERIC_TYPE:I = 0x4

.field public static final RADICAL_TYPE:I = 0x100

.field public static final SEPARATOR:Ljava/lang/String; = "\t"

.field public static final SIMPLIFIED_ONLY:I = 0x1000

.field public static final SYMBOL_LIST_FULL:[I = null

.field public static final SYMBOL_LIST_HALF:[I = null

.field public static final SYMBOL_TYPE:I = 0x78

.field public static final TAIWAN_PHRASE:I = 0x1

.field public static final TRADITIONAL_ONLY:I = 0x2000

.field public static final UPPER_ALPHA_TYPE:I = 0x2

.field public static final VALID_TYPE:I = 0x7ff


# instance fields
.field private final COMBINEPHRASE:Z

.field private final FINDPHRASEZI:Z

.field private mManager:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

.field private m_arrayCandidateCode:[I

.field private m_arrayCandidateString:[Ljava/lang/String;

.field private m_arrayMultipleResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_arrayPhraseCode:[I

.field private m_arrayPhraseString:[Ljava/lang/String;

.field private m_nPhraseType:I

.field private m_nRecognizeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->SYMBOL_LIST_HALF:[I

    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->SYMBOL_LIST_FULL:[I

    return-void

    .line 64
    nop

    :array_0
    .array-data 0x4
        0x2et 0x0t 0x0t 0x0t
        0xb7t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0xb0t 0x0t 0x0t 0x0t
    .end array-data

    .line 65
    :array_1
    .array-data 0x4
        0xet 0xfft 0x0t 0x0t
        0xct 0xfft 0x0t 0x0t
        0x7t 0xfft 0x0t 0x0t
        0x40t 0xfft 0x0t 0x0t
        0x2t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x14

    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    .line 87
    iput v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_nRecognizeType:I

    .line 88
    iput v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_nPhraseType:I

    .line 94
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->COMBINEPHRASE:Z

    .line 95
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->FINDPHRASEZI:Z

    .line 103
    const/16 v0, 0x7ff

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_nRecognizeType:I

    .line 104
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_nPhraseType:I

    .line 105
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayCandidateCode:[I

    .line 106
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayPhraseCode:[I

    .line 107
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayCandidateString:[Ljava/lang/String;

    .line 108
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayPhraseString:[Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayMultipleResult:Ljava/util/ArrayList;

    .line 111
    return-void
.end method


# virtual methods
.method public buildAIrecord(Ljava/util/ArrayList;I)Z
    .locals 9
    .parameter
    .parameter "nCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 310
    .local v2, nNumOfStrokePoints:I
    mul-int/lit8 v6, v2, 0x2

    new-array v5, v6, [I

    .line 311
    .local v5, strokeArray:[I
    const/4 v1, 0x0

    .line 313
    .local v1, i:I
    const/4 v0, 0x0

    .line 314
    .local v0, bRet:Z
    const/4 v3, 0x0

    .line 318
    .local v3, nRet:I
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    if-eqz v6, :cond_1

    const/4 v6, 0x5

    if-lt v2, v6, :cond_1

    .line 320
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 321
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 322
    .local v4, ptStroke:Landroid/graphics/PointF;
    mul-int/lit8 v6, v1, 0x2

    iget v7, v4, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    aput v7, v5, v6

    .line 323
    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, v4, Landroid/graphics/PointF;->y:F

    float-to-int v7, v7

    aput v7, v5, v6

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    .end local v4           #ptStroke:Landroid/graphics/PointF;
    :cond_0
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    invoke-virtual {v6, v5, p2}, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->BuildAIRecord([II)I

    move-result v3

    .line 328
    if-nez v3, :cond_2

    .line 329
    const/4 v0, 0x1

    .line 335
    :cond_1
    :goto_1
    return v0

    .line 331
    :cond_2
    const-string v6, "PPRecognize"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buildAIrecord, bRet = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public clearCandidateArray()V
    .locals 3

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 226
    .local v0, i:I
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayMultipleResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 227
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayCandidateCode:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 229
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayCandidateString:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    return-void
.end method

.method public clearPhraseArray()V
    .locals 3

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 242
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayPhraseCode:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 244
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayPhraseString:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_0
    return-void
.end method

.method public finish()Z
    .locals 2

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->finish()V

    .line 167
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    .line 168
    const/4 v0, 0x1

    .line 171
    :cond_0
    return v0
.end method

.method public getCandidateUnicode(I)I
    .locals 2
    .parameter "nIndex"

    .prologue
    .line 497
    const/4 v0, 0x0

    .line 501
    .local v0, nCandidateUnicode:I
    if-ltz p1, :cond_0

    const/16 v1, 0xa

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayCandidateCode:[I

    if-eqz v1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayCandidateCode:[I

    aget v0, v1, p1

    .line 505
    :cond_0
    return v0
.end method

.method public getMultipleResultSize()I
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayMultipleResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getMultipleResultcode(I)I
    .locals 2
    .parameter "nIndex"

    .prologue
    .line 514
    const/4 v0, 0x0

    .line 518
    .local v0, nResultcode:I
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayMultipleResult:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayMultipleResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayMultipleResult:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 522
    :cond_0
    return v0
.end method

.method public getPhraseString(I)Ljava/lang/String;
    .locals 2
    .parameter "nIndex"

    .prologue
    .line 539
    const/4 v0, 0x0

    .line 543
    .local v0, strPhrase:Ljava/lang/String;
    if-ltz p1, :cond_0

    const/16 v1, 0x14

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayPhraseString:[Ljava/lang/String;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayPhraseString:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 547
    :cond_0
    return-object v0
.end method

.method public getPhraseType()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_nPhraseType:I

    return v0
.end method

.method public getRecognizeType()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_nRecognizeType:I

    return v0
.end method

.method public init()Z
    .locals 2

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 122
    .local v0, bRet:Z
    invoke-static {}, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->getInstance()Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    .line 123
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->init()V

    .line 125
    const/16 v1, 0x678

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->setRecognizeType(I)V

    .line 126
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(I)Z
    .locals 2
    .parameter "RT"

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 145
    .local v0, bRet:Z
    invoke-static {}, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->getInstance()Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    .line 146
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->init()V

    .line 148
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->setRecognizeType(I)V

    .line 149
    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0

    .line 152
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recognizeCandidate(Ljava/util/ArrayList;)Z
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    const/4 v11, 0x1

    .line 254
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 255
    .local v4, nNumOfStrokePoints:I
    mul-int/lit8 v9, v4, 0x2

    new-array v7, v9, [I

    .line 256
    .local v7, strokeArray:[I
    const/4 v3, 0x0

    .line 258
    .local v3, i:I
    const/4 v1, 0x0

    .line 262
    .local v1, bRet:Z
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->clearCandidateArray()V

    .line 263
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    if-eqz v9, :cond_3

    const/4 v9, 0x5

    if-lt v4, v9, :cond_3

    .line 264
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    .line 265
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    .line 266
    .local v5, ptStroke:Landroid/graphics/PointF;
    mul-int/lit8 v9, v3, 0x2

    iget v10, v5, Landroid/graphics/PointF;->x:F

    float-to-int v10, v10

    aput v10, v7, v9

    .line 267
    mul-int/lit8 v9, v3, 0x2

    add-int/lit8 v9, v9, 0x1

    iget v10, v5, Landroid/graphics/PointF;->y:F

    float-to-int v10, v10

    aput v10, v7, v9

    .line 264
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 272
    .end local v5           #ptStroke:Landroid/graphics/PointF;
    :cond_0
    sget v9, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContinuousInputMode:I

    if-eq v11, v9, :cond_1

    .line 274
    const/4 v8, 0x0

    .line 276
    .local v8, total:I
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    invoke-virtual {v9, v7}, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->Multiplerecognize([I)I

    move-result v8

    .line 277
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    invoke-virtual {v9, v8}, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->GetMultiplerecognizeResult(I)[I

    move-result-object v0

    .line 279
    .local v0, Result:[I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v8, :cond_2

    .line 280
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayMultipleResult:Ljava/util/ArrayList;

    aget v10, v0, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 284
    .end local v0           #Result:[I
    .end local v8           #total:I
    :cond_1
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    invoke-virtual {v9, v7}, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->recognize([I)[I

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayCandidateCode:[I

    .line 286
    :cond_2
    const/4 v1, 0x1

    .line 289
    if-ne v1, v11, :cond_3

    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayCandidateCode:[I

    if-eqz v9, :cond_3

    .line 290
    const/4 v3, 0x0

    :goto_2
    const/16 v9, 0xa

    if-ge v3, v9, :cond_3

    .line 291
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayCandidateCode:[I

    aget v9, v9, v3

    if-eqz v9, :cond_3

    .line 292
    new-array v2, v11, [C

    .line 293
    .local v2, ch_candidate:[C
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayCandidateCode:[I

    aget v10, v10, v3

    int-to-char v10, v10

    aput-char v10, v2, v9

    .line 294
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([C)V

    .line 295
    .local v6, str_candidate:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayCandidateString:[Ljava/lang/String;

    aput-object v6, v9, v3

    .line 290
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 304
    .end local v2           #ch_candidate:[C
    .end local v6           #str_candidate:Ljava/lang/String;
    :cond_3
    return v1
.end method

.method public recognizePhrase(I)Z
    .locals 6
    .parameter "nCandidateUnicode"

    .prologue
    const/4 v5, 0x1

    .line 410
    const/4 v2, 0x0

    .line 411
    .local v2, i:I
    const/4 v0, 0x0

    .line 415
    .local v0, bRet:Z
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->clearPhraseArray()V

    .line 439
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    if-eqz v3, :cond_0

    .line 440
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    invoke-virtual {v3, p1}, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->findPhrase(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayPhraseCode:[I

    .line 441
    const/4 v0, 0x1

    .line 443
    if-ne v0, v5, :cond_0

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayCandidateCode:[I

    if-eqz v3, :cond_0

    .line 444
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    .line 445
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayPhraseCode:[I

    aget v3, v3, v2

    if-eqz v3, :cond_0

    .line 456
    new-array v1, v5, [C

    .line 457
    .local v1, c:[C
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayPhraseCode:[I

    aget v4, v4, v2

    int-to-char v4, v4

    aput-char v4, v1, v3

    .line 458
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayPhraseString:[Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    aput-object v4, v3, v2

    .line 444
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 469
    .end local v1           #c:[C
    :cond_0
    return v0
.end method

.method public recognizeSymbol(Z)V
    .locals 4
    .parameter "bFullWidth"

    .prologue
    .line 477
    if-eqz p1, :cond_0

    sget-object v2, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->SYMBOL_LIST_FULL:[I

    array-length v1, v2

    .line 478
    .local v1, nLength:I
    :goto_0
    const/4 v0, 0x0

    .line 482
    .local v0, i:I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 483
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayCandidateCode:[I

    if-eqz p1, :cond_1

    sget-object v2, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->SYMBOL_LIST_FULL:[I

    aget v2, v2, v0

    :goto_2
    aput v2, v3, v0

    .line 482
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 477
    .end local v0           #i:I
    .end local v1           #nLength:I
    :cond_0
    sget-object v2, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->SYMBOL_LIST_HALF:[I

    array-length v1, v2

    goto :goto_0

    .line 483
    .restart local v0       #i:I
    .restart local v1       #nLength:I
    :cond_1
    sget-object v2, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->SYMBOL_LIST_HALF:[I

    aget v2, v2, v0

    goto :goto_2

    .line 486
    :cond_2
    move v0, v1

    :goto_3
    const/16 v2, 0xa

    if-ge v0, v2, :cond_3

    .line 487
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_arrayCandidateCode:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 486
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 489
    :cond_3
    return-void
.end method

.method public removeAIrecord(I)Z
    .locals 5
    .parameter "nCode"

    .prologue
    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, bRet:Z
    const/4 v1, 0x0

    .line 346
    .local v1, nRet:I
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    if-eqz v2, :cond_0

    .line 347
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    invoke-virtual {v2, p1}, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->RemoveAIRecord(I)I

    move-result v1

    .line 349
    if-nez v1, :cond_1

    .line 350
    const/4 v0, 0x1

    .line 354
    :cond_0
    :goto_0
    return v0

    .line 352
    :cond_1
    const-string v2, "PPRecognize"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeAIrecord, bRet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEnhanceRecord(I)V
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->enhanceRecord(I)V

    .line 571
    :cond_0
    return-void
.end method

.method public setFirstCandidateType(I)V
    .locals 1
    .parameter "nType"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->setFirstCandidateType(I)V

    .line 557
    :cond_0
    return-void
.end method

.method public setPhraseType(I)V
    .locals 0
    .parameter "nType"

    .prologue
    .line 204
    iput p1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_nPhraseType:I

    .line 205
    return-void
.end method

.method public setRecognizeType(I)V
    .locals 2
    .parameter "nType"

    .prologue
    .line 181
    iput p1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_nRecognizeType:I

    .line 182
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    iget v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->m_nRecognizeType:I

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->setLocale(I)V

    .line 184
    :cond_0
    return-void
.end method

.method public setResolution(II)V
    .locals 1
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->setResolution(II)V

    .line 581
    :cond_0
    return-void
.end method
