.class public Lcom/htc/android/htcime/provider/HTCPPIMEProvider;
.super Landroid/content/ContentProvider;
.source "HTCPPIMEProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "htc_ppime"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final FINISH_HWR:I = 0x63

.field private static final GET_HWR_SUGGEST:I = 0x5

.field private static final SET_CONTINUE_INPUT_MODE:I = 0x6

.field private static final SET_HWR_SIZE:I = 0x4

.field private static final SET_INPUT_TYPE:I = 0x7

.field private static final SUGGESTION_COLUMNS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "HTPPIMEProvider"

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;

.field m_bRecognizerHasBeenInitialized:Z

.field m_bRecongizerContinuousInputMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 23
    const-string v0, "content://htc_ppime"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "COLUMN_SUGGESTION"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->SUGGESTION_COLUMNS:[Ljava/lang/String;

    .line 232
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 233
    sget-object v0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_ppime"

    const-string v2, "set_touch_zone_size"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 234
    sget-object v0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_ppime"

    const-string v2, "get_suggestion_by_trace"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 235
    sget-object v0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_ppime"

    const-string v2, "set_continue_input_mode"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 236
    sget-object v0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_ppime"

    const-string v2, "set_input_type"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 237
    sget-object v0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_ppime"

    const-string v2, "finish"

    const/16 v3, 0x63

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 238
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;

    .line 33
    iput-boolean v1, p0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->m_bRecognizerHasBeenInitialized:Z

    .line 34
    iput-boolean v1, p0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->m_bRecongizerContinuousInputMode:Z

    .line 18
    return-void
.end method

.method private checkRecognizeInitState()Z
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;

    invoke-direct {v0}, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->m_bRecognizerHasBeenInitialized:Z

    .line 47
    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->m_bRecognizerHasBeenInitialized:Z

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->init(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->m_bRecognizerHasBeenInitialized:Z

    .line 51
    :cond_1
    iget-boolean v0, p0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->m_bRecognizerHasBeenInitialized:Z

    return v0
.end method

.method private convertToPt(Ljava/lang/String;)Landroid/graphics/PointF;
    .locals 6
    .parameter "ptStr"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x2

    .line 109
    const/4 v1, 0x0

    .local v1, x:F
    const/4 v2, 0x0

    .line 110
    .local v2, y:F
    if-nez p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-object v3

    .line 113
    :cond_1
    const-string v4, ","

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, splitedStr:[Ljava/lang/String;
    array-length v4, v0

    if-ne v4, v5, :cond_0

    .line 116
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 117
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 118
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method private finish()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->finish()Z

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->m_bRecognizerHasBeenInitialized:Z

    .line 100
    :cond_0
    return-void
.end method

.method private recognizeCandidate(Ljava/util/ArrayList;)Landroid/database/MatrixCursor;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Landroid/database/MatrixCursor;"
        }
    .end annotation

    .prologue
    .local p1, ptList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 55
    const/4 v3, 0x0

    .line 56
    .local v3, nCode:I
    const/4 v1, 0x0

    .line 57
    .local v1, i:I
    const/4 v2, 0x0

    .line 59
    .local v2, mac:Landroid/database/MatrixCursor;
    invoke-direct {p0}, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->checkRecognizeInitState()Z

    .line 61
    iget-boolean v5, p0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->m_bRecognizerHasBeenInitialized:Z

    if-eqz v5, :cond_1

    .line 62
    new-instance v2, Landroid/database/MatrixCursor;

    .end local v2           #mac:Landroid/database/MatrixCursor;
    sget-object v5, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->SUGGESTION_COLUMNS:[Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 63
    .restart local v2       #mac:Landroid/database/MatrixCursor;
    iget-object v5, p0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;

    iget-boolean v6, p0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->m_bRecongizerContinuousInputMode:Z

    invoke-virtual {v5, p1, v6}, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->recognizeCandidate(Ljava/util/ArrayList;Z)Z

    .line 65
    const-string v4, ""

    .line 66
    .local v4, strResult:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    :goto_0
    const/16 v5, 0xa

    if-ge v1, v5, :cond_0

    .line 69
    iget-object v5, p0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;

    invoke-virtual {v5, v1}, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->getCandidateUnicode(I)I

    move-result v3

    .line 70
    if-nez v3, :cond_2

    .line 79
    :cond_0
    iget-boolean v5, p0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->m_bRecongizerContinuousInputMode:Z

    if-eqz v5, :cond_1

    .line 80
    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 83
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v4           #strResult:Ljava/lang/String;
    :cond_1
    return-object v2

    .line 72
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    .restart local v4       #strResult:Ljava/lang/String;
    :cond_2
    iget-boolean v5, p0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->m_bRecongizerContinuousInputMode:Z

    if-nez v5, :cond_3

    .line 73
    new-array v5, v9, [Ljava/lang/Object;

    int-to-char v6, v3

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 68
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_3
    int-to-char v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private setPanelResolution(Landroid/graphics/Point;)V
    .locals 3
    .parameter "pt"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->checkRecognizeInitState()Z

    .line 89
    iget-boolean v0, p0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->m_bRecognizerHasBeenInitialized:Z

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->setResolution(II)V

    .line 91
    :cond_0
    return-void
.end method

.method private updateRecognizeType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->checkRecognizeInitState()Z

    .line 124
    iget-object v0, p0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ezsip/handwriting/util/PPRecognizeForProvider;->setRecognizeType(I)V

    .line 125
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 221
    new-instance v0, Landroid/database/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not support delete. Failed to insert row into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 209
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 215
    new-instance v0, Landroid/database/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not support insert. Failed to insert row into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 132
    sget-object v4, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 200
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 134
    :sswitch_0
    if-eqz p2, :cond_1

    array-length v4, p2

    if-ne v4, v7, :cond_1

    .line 135
    aget-object v4, p2, v6

    invoke-direct {p0, v4}, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->convertToPt(Ljava/lang/String;)Landroid/graphics/PointF;

    move-result-object v1

    .line 137
    .local v1, pt:Landroid/graphics/PointF;
    new-instance v4, Landroid/graphics/Point;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    float-to-int v5, v5

    iget v6, v1, Landroid/graphics/PointF;->y:F

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, v4}, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->setPanelResolution(Landroid/graphics/Point;)V

    .line 203
    .end local v1           #pt:Landroid/graphics/PointF;
    :cond_0
    :goto_0
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 139
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HandWrite Engine invalid parameter:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 143
    :sswitch_1
    if-eqz p2, :cond_0

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v2, ptList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v4, p2

    if-ge v0, v4, :cond_2

    .line 146
    aget-object v4, p2, v0

    invoke-direct {p0, v4}, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->convertToPt(Ljava/lang/String;)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 149
    :cond_2
    invoke-direct {p0, v2}, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->recognizeCandidate(Ljava/util/ArrayList;)Landroid/database/MatrixCursor;

    move-result-object v4

    goto :goto_1

    .line 154
    .end local v0           #i:I
    .end local v2           #ptList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    :sswitch_2
    if-eqz p2, :cond_5

    array-length v4, p2

    if-ne v4, v7, :cond_5

    .line 155
    const/4 v3, 0x0

    .line 156
    .local v3, recognizeType:I
    aget-object v4, p2, v6

    const-string v5, "EN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 157
    const/4 v3, 0x3

    .line 163
    :goto_3
    invoke-direct {p0, v3}, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->updateRecognizeType(I)V

    .line 164
    iput-boolean v7, p0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->m_bRecongizerContinuousInputMode:Z

    goto :goto_0

    .line 158
    :cond_3
    aget-object v4, p2, v6

    const-string v5, "NUM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 159
    const/4 v3, 0x4

    goto :goto_3

    .line 161
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown CONTINUE INPUT Type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 167
    .end local v3           #recognizeType:I
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HandWrite Engine invalid parameter:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 171
    :sswitch_3
    if-eqz p2, :cond_c

    .line 172
    iput-boolean v6, p0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->m_bRecongizerContinuousInputMode:Z

    .line 173
    const/4 v3, 0x0

    .line 174
    .restart local v3       #recognizeType:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    array-length v4, p2

    if-ge v0, v4, :cond_6

    .line 175
    aget-object v4, p2, v0

    const-string v5, "CH"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 176
    const/16 v3, 0x704

    .line 177
    iput-boolean v6, p0, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->m_bRecongizerContinuousInputMode:Z

    .line 188
    :cond_6
    if-nez v3, :cond_7

    .line 189
    const/4 v3, 0x3

    .line 191
    :cond_7
    invoke-direct {p0, v3}, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->updateRecognizeType(I)V

    goto/16 :goto_0

    .line 179
    :cond_8
    aget-object v4, p2, v0

    const-string v5, "NUM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 180
    or-int/lit8 v3, v3, 0x4

    .line 174
    :cond_9
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 181
    :cond_a
    aget-object v4, p2, v0

    const-string v5, "EN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 182
    or-int/lit8 v3, v3, 0x3

    goto :goto_5

    .line 183
    :cond_b
    aget-object v4, p2, v0

    const-string v5, "SYM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 184
    or-int/lit8 v3, v3, 0x78

    goto :goto_5

    .line 194
    .end local v0           #i:I
    .end local v3           #recognizeType:I
    :cond_c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HandWrite Engine invalid parameter:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 197
    :sswitch_4
    invoke-direct {p0}, Lcom/htc/android/htcime/provider/HTCPPIMEProvider;->finish()V

    goto/16 :goto_0

    .line 132
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x63 -> :sswitch_4
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method
