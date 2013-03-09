.class public Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;
.super Ljava/lang/Object;
.source "PphwrForProvider.java"


# static fields
.field private static libLoaded:Z

.field private static singleton:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 33
    const/4 v1, 0x0

    sput-object v1, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->singleton:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    .line 34
    sput-boolean v3, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->libLoaded:Z

    .line 202
    :try_start_0
    const-string v1, "pphwrprovider"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 204
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->libLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 206
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 207
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: Could not load libpphwrprovider.so"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 208
    sput-boolean v3, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->libLoaded:Z

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;
    .locals 2

    .prologue
    .line 48
    const-class v1, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->singleton:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    if-nez v0, :cond_0

    .line 49
    sget-boolean v0, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->libLoaded:Z

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    invoke-direct {v0}, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->singleton:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;

    .line 54
    :cond_0
    sget-object v0, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->singleton:Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
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

.method private static native nativeInit()I
.end method

.method private static native nativeRecognize([II)[I
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
    .line 148
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->nativeBuildAIRecord([II)I
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

.method public declared-synchronized RemoveAIRecord(I)I
    .locals 1
    .parameter "nCode"

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->nativeRemoveAIRecord(I)I
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
    .line 137
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->nativeEnhanceRecord(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized findPhrase(I)[I
    .locals 3
    .parameter "code"

    .prologue
    .line 123
    monitor-enter p0

    const/16 v2, 0x14

    :try_start_0
    new-array v1, v2, [I

    .line 126
    .local v1, resultArray:[I
    invoke-static {p1, v1}, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->nativeFindPhrase(I[I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 128
    .local v0, bRet:Z
    monitor-exit p0

    return-object v1

    .line 123
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
    .line 70
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->nativeFinish()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 71
    .local v0, res:I
    monitor-exit p0

    return-void

    .line 70
    .end local v0           #res:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getLocale()I
    .locals 2

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->nativeGetLocale()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 113
    .local v0, nLocale:I
    monitor-exit p0

    return v0

    .line 111
    .end local v0           #nLocale:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized init()V
    .locals 2

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->nativeInit()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 64
    .local v0, res:I
    monitor-exit p0

    return-void

    .line 63
    .end local v0           #res:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized recognize([II)[I
    .locals 2
    .parameter "stroke_array"
    .parameter "bEnableContinuous"

    .prologue
    .line 80
    monitor-enter p0

    const/16 v1, 0xa

    :try_start_0
    new-array v0, v1, [I

    .line 82
    .local v0, resultArray:[I
    invoke-static {p1, p2}, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->nativeRecognize([II)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 84
    monitor-exit p0

    return-object v0

    .line 80
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
    .line 167
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->nativeSetCapitalFirst(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFirstCandidateType(I)V
    .locals 1
    .parameter "nFlag"

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->nativeSetFirstCandidateType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLocale(I)V
    .locals 1
    .parameter "nLocale"

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->nativeSetLocale(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 93
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
    .line 102
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/htc/android/htcime/ezsip/handwriting/util/PphwrForProvider;->nativeSetResolution(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
