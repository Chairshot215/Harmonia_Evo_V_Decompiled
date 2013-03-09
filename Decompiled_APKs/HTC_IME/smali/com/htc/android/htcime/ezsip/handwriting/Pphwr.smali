.class public Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;
.super Ljava/lang/Object;
.source "Pphwr.java"


# static fields
.field private static singleton:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v1, 0x0

    sput-object v1, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->singleton:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    .line 229
    :try_start_0
    const-string v1, "pphwr"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 232
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 233
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: Could not load libpphwr.so"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;
    .locals 2

    .prologue
    .line 47
    const-class v1, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->singleton:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    invoke-direct {v0}, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->singleton:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;

    .line 51
    :cond_0
    sget-object v0, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->singleton:Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native nativeBuildAIRecord([II)I
.end method

.method private static native nativeEnhanceRecord(I)V
.end method

.method private static native nativeFindPhrase(I[I)Z
.end method

.method private static native nativeFinish()I
.end method

.method private static native nativeGetLocale()I
.end method

.method private static native nativeGetMultipleRecognizeResult()[I
.end method

.method private static native nativeInit()I
.end method

.method private static native nativeMultipleRecognize([I)I
.end method

.method private static native nativeRecognize([I)[I
.end method

.method private static native nativeRemoveAIRecord(I)I
.end method

.method private static native nativeSetCapitalFirst(I)V
.end method

.method private static native nativeSetFirstCandidateType(I)V
.end method

.method private static native nativeSetLocale(I)V
.end method

.method private static native nativeSetResolution(II)V
.end method


# virtual methods
.method public declared-synchronized BuildAIRecord([II)I
    .locals 1
    .parameter "stroke_array"
    .parameter "nCode"

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->nativeBuildAIRecord([II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized GetMultiplerecognizeResult(I)[I
    .locals 2
    .parameter "MaxResultNum"

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    new-array v0, p1, [I

    .line 107
    .local v0, resultArray:[I
    invoke-static {}, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->nativeGetMultipleRecognizeResult()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 109
    monitor-exit p0

    return-object v0

    .line 105
    .end local v0           #resultArray:[I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized Multiplerecognize([I)I
    .locals 2
    .parameter "stroke_array"

    .prologue
    .line 91
    monitor-enter p0

    const/4 v0, 0x0

    .line 93
    .local v0, TotalResult:I
    :try_start_0
    invoke-static {p1}, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->nativeMultipleRecognize([I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 95
    monitor-exit p0

    return v0

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized RemoveAIRecord(I)I
    .locals 1
    .parameter "nCode"

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->nativeRemoveAIRecord(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enhanceRecord(I)V
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->nativeEnhanceRecord(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized findPhrase(I)[I
    .locals 3
    .parameter "code"

    .prologue
    .line 148
    monitor-enter p0

    const/16 v2, 0x14

    :try_start_0
    new-array v1, v2, [I

    .line 151
    .local v1, resultArray:[I
    invoke-static {p1, v1}, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->nativeFindPhrase(I[I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 153
    .local v0, bRet:Z
    monitor-exit p0

    return-object v1

    .line 148
    .end local v0           #bRet:Z
    .end local v1           #resultArray:[I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized finish()V
    .locals 2

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->nativeFinish()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 68
    .local v0, res:I
    monitor-exit p0

    return-void

    .line 67
    .end local v0           #res:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getLocale()I
    .locals 2

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->nativeGetLocale()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 138
    .local v0, nLocale:I
    monitor-exit p0

    return v0

    .line 136
    .end local v0           #nLocale:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized init()V
    .locals 2

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->nativeInit()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 61
    .local v0, res:I
    monitor-exit p0

    return-void

    .line 60
    .end local v0           #res:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized recognize([I)[I
    .locals 2
    .parameter "stroke_array"

    .prologue
    .line 77
    monitor-enter p0

    const/16 v1, 0xa

    :try_start_0
    new-array v0, v1, [I

    .line 79
    .local v0, resultArray:[I
    invoke-static {p1}, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->nativeRecognize([I)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 81
    monitor-exit p0

    return-object v0

    .line 77
    .end local v0           #resultArray:[I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setCapitalFirst(I)V
    .locals 1
    .parameter "nFlag"

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->nativeSetCapitalFirst(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFirstCandidateType(I)V
    .locals 1
    .parameter "nFlag"

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->nativeSetFirstCandidateType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLocale(I)V
    .locals 1
    .parameter "nLocale"

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->nativeSetLocale(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setResolution(II)V
    .locals 1
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/htc/android/htcime/ezsip/handwriting/Pphwr;->nativeSetResolution(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
