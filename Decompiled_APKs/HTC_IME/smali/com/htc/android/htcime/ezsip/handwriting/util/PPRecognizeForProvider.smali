.class public Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;
.super Ljava/lang/Object;
.source "PPRecognizeForProvider.java"


# static fields
.field public static final ALL_TYPE:I = 0x7ff

.field public static final ALPHA_TYPE:I = 0x3

.field public static final CHINESE_1_TYPE:I = 0x200

.field public static final CHINESE_2_TYPE:I = 0x400

.field public static final CURSIVE_TYPE:I = 0x7f

.field public static final DISABLE_CONTINOUS_MODE:I = 0x0

.field private static final DUMP_LOG:Z = false

.field public static final ENABLE_CONTINOUS_MODE:I = 0x1

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

.field private mManager:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

.field private m_arrayCandidateCode:[I

.field private m_arrayCandidateString:[Ljava/lang/String;

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

    sput-object v0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->SYMBOL_LIST_HALF:[I

    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->SYMBOL_LIST_FULL:[I

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

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    .line 87
    iput v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_nRecognizeType:I

    .line 88
    iput v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_nPhraseType:I

    .line 93
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->COMBINEPHRASE:Z

    .line 94
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->FINDPHRASEZI:Z

    .line 105
    const/16 v0, 0x7ff

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_nRecognizeType:I

    .line 106
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_nPhraseType:I

    .line 107
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_arrayCandidateCode:[I

    .line 108
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_arrayPhraseCode:[I

    .line 109
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_arrayCandidateString:[Ljava/lang/String;

    .line 110
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_arrayPhraseString:[Ljava/lang/String;

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
    .line 297
    .local p1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 298
    .local v2, nNumOfStrokePoints:I
    mul-int/lit8 v6, v2, 0x2

    new-array v5, v6, [I

    .line 299
    .local v5, strokeArray:[I
    const/4 v1, 0x0

    .line 301
    .local v1, i:I
    const/4 v0, 0x0

    .line 302
    .local v0, bRet:Z
    const/4 v3, 0x0

    .line 306
    .local v3, nRet:I
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    if-eqz v6, :cond_1

    const/4 v6, 0x5

    if-lt v2, v6, :cond_1

    .line 308
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 309
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 310
    .local v4, ptStroke:Landroid/graphics/PointF;
    mul-int/lit8 v6, v1, 0x2

    iget v7, v4, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    aput v7, v5, v6

    .line 311
    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, v4, Landroid/graphics/PointF;->y:F

    float-to-int v7, v7

    aput v7, v5, v6

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    .end local v4           #ptStroke:Landroid/graphics/PointF;
    :cond_0
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    invoke-virtual {v6, v5, p2}, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->BuildAIRecord([II)I

    move-result v3

    .line 316
    if-nez v3, :cond_2

    .line 317
    const/4 v0, 0x1

    .line 323
    :cond_1
    :goto_1
    return v0

    .line 319
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
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_arrayCandidateCode:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 228
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_arrayCandidateString:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_0
    return-void
.end method

.method public clearPhraseArray()V
    .locals 3

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 241
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_arrayPhraseCode:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 243
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_arrayPhraseString:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
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
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->finish()V

    .line 167
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

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
    .line 485
    const/4 v0, 0x0

    .line 489
    .local v0, nCandidateUnicode:I
    if-ltz p1, :cond_0

    const/16 v1, 0xa

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_arrayCandidateCode:[I

    if-eqz v1, :cond_0

    .line 490
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_arrayCandidateCode:[I

    aget v0, v1, p1

    .line 493
    :cond_0
    return v0
.end method

.method public getPhraseString(I)Ljava/lang/String;
    .locals 2
    .parameter "nIndex"

    .prologue
    .line 502
    const/4 v0, 0x0

    .line 506
    .local v0, strPhrase:Ljava/lang/String;
    if-ltz p1, :cond_0

    const/16 v1, 0x14

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_arrayPhraseString:[Ljava/lang/String;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_arrayPhraseString:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 510
    :cond_0
    return-object v0
.end method

.method public getPhraseType()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_nPhraseType:I

    return v0
.end method

.method public getRecognizeType()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_nRecognizeType:I

    return v0
.end method

.method public init()Z
    .locals 2

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 122
    .local v0, bRet:Z
    invoke-static {}, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->getInstance()Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    .line 123
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->init()V

    .line 125
    const/16 v1, 0x678

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->setRecognizeType(I)V

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
    invoke-static {}, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->getInstance()Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    .line 146
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->init()V

    .line 148
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->setRecognizeType(I)V

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

.method public recognizeCandidate(Ljava/util/ArrayList;Z)Z
    .locals 11
    .parameter
    .parameter "bEnableContinuousMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 253
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 254
    .local v3, nNumOfStrokePoints:I
    mul-int/lit8 v7, v3, 0x2

    new-array v6, v7, [I

    .line 255
    .local v6, strokeArray:[I
    const/4 v2, 0x0

    .line 257
    .local v2, i:I
    const/4 v0, 0x0

    .line 261
    .local v0, bRet:Z
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->clearCandidateArray()V

    .line 262
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    if-eqz v7, :cond_2

    const/4 v7, 0x5

    if-lt v3, v7, :cond_2

    .line 263
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 264
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 265
    .local v4, ptStroke:Landroid/graphics/PointF;
    mul-int/lit8 v7, v2, 0x2

    iget v8, v4, Landroid/graphics/PointF;->x:F

    float-to-int v8, v8

    aput v8, v6, v7

    .line 266
    mul-int/lit8 v7, v2, 0x2

    add-int/lit8 v7, v7, 0x1

    iget v8, v4, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    aput v8, v6, v7

    .line 263
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    .end local v4           #ptStroke:Landroid/graphics/PointF;
    :cond_0
    if-eqz p2, :cond_1

    .line 271
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    invoke-virtual {v7, v6, v9}, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->recognize([II)[I

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_arrayCandidateCode:[I

    .line 274
    :goto_1
    const/4 v0, 0x1

    .line 277
    if-ne v0, v9, :cond_2

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_arrayCandidateCode:[I

    if-eqz v7, :cond_2

    .line 278
    const/4 v2, 0x0

    :goto_2
    const/16 v7, 0xa

    if-ge v2, v7, :cond_2

    .line 279
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_arrayCandidateCode:[I

    aget v7, v7, v2

    if-eqz v7, :cond_2

    .line 280
    new-array v1, v9, [C

    .line 281
    .local v1, ch_candidate:[C
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_arrayCandidateCode:[I

    aget v7, v7, v2

    int-to-char v7, v7

    aput-char v7, v1, v10

    .line 282
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    .line 283
    .local v5, str_candidate:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_arrayCandidateString:[Ljava/lang/String;

    aput-object v5, v7, v2

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 273
    .end local v1           #ch_candidate:[C
    .end local v5           #str_candidate:Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    invoke-virtual {v7, v6, v10}, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->recognize([II)[I

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_arrayCandidateCode:[I

    goto :goto_1

    .line 292
    :cond_2
    return v0
.end method

.method public recognizePhrase(I)Z
    .locals 6
    .parameter "nCandidateUnicode"

    .prologue
    const/4 v5, 0x1

    .line 398
    const/4 v2, 0x0

    .line 399
    .local v2, i:I
    const/4 v0, 0x0

    .line 403
    .local v0, bRet:Z
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->clearPhraseArray()V

    .line 427
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    if-eqz v3, :cond_0

    .line 428
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    invoke-virtual {v3, p1}, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->findPhrase(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_arrayPhraseCode:[I

    .line 429
    const/4 v0, 0x1

    .line 431
    if-ne v0, v5, :cond_0

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_arrayCandidateCode:[I

    if-eqz v3, :cond_0

    .line 432
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    .line 433
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_arrayPhraseCode:[I

    aget v3, v3, v2

    if-eqz v3, :cond_0

    .line 444
    new-array v1, v5, [C

    .line 445
    .local v1, c:[C
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_arrayPhraseCode:[I

    aget v4, v4, v2

    int-to-char v4, v4

    aput-char v4, v1, v3

    .line 446
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_arrayPhraseString:[Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    aput-object v4, v3, v2

    .line 432
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 457
    .end local v1           #c:[C
    :cond_0
    return v0
.end method

.method public recognizeSymbol(Z)V
    .locals 4
    .parameter "bFullWidth"

    .prologue
    .line 465
    if-eqz p1, :cond_0

    sget-object v2, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->SYMBOL_LIST_FULL:[I

    array-length v1, v2

    .line 466
    .local v1, nLength:I
    :goto_0
    const/4 v0, 0x0

    .line 470
    .local v0, i:I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 471
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_arrayCandidateCode:[I

    if-eqz p1, :cond_1

    sget-object v2, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->SYMBOL_LIST_FULL:[I

    aget v2, v2, v0

    :goto_2
    aput v2, v3, v0

    .line 470
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 465
    .end local v0           #i:I
    .end local v1           #nLength:I
    :cond_0
    sget-object v2, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->SYMBOL_LIST_HALF:[I

    array-length v1, v2

    goto :goto_0

    .line 471
    .restart local v0       #i:I
    .restart local v1       #nLength:I
    :cond_1
    sget-object v2, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->SYMBOL_LIST_HALF:[I

    aget v2, v2, v0

    goto :goto_2

    .line 474
    :cond_2
    move v0, v1

    :goto_3
    const/16 v2, 0xa

    if-ge v0, v2, :cond_3

    .line 475
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_arrayCandidateCode:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 477
    :cond_3
    return-void
.end method

.method public removeAIrecord(I)Z
    .locals 5
    .parameter "nCode"

    .prologue
    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, bRet:Z
    const/4 v1, 0x0

    .line 334
    .local v1, nRet:I
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    if-eqz v2, :cond_0

    .line 335
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    invoke-virtual {v2, p1}, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->RemoveAIRecord(I)I

    move-result v1

    .line 337
    if-nez v1, :cond_1

    .line 338
    const/4 v0, 0x1

    .line 342
    :cond_0
    :goto_0
    return v0

    .line 340
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
    .line 530
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->enhanceRecord(I)V

    .line 534
    :cond_0
    return-void
.end method

.method public setFirstCandidateType(I)V
    .locals 1
    .parameter "nType"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->setFirstCandidateType(I)V

    .line 520
    :cond_0
    return-void
.end method

.method public setPhraseType(I)V
    .locals 0
    .parameter "nType"

    .prologue
    .line 204
    iput p1, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_nPhraseType:I

    .line 205
    return-void
.end method

.method public setRecognizeType(I)V
    .locals 2
    .parameter "nType"

    .prologue
    .line 181
    iput p1, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_nRecognizeType:I

    .line 182
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    iget v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->m_nRecognizeType:I

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->setLocale(I)V

    .line 184
    :cond_0
    return-void
.end method

.method public setResolution(II)V
    .locals 1
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->mManager:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->setResolution(II)V

    .line 544
    :cond_0
    return-void
.end method
