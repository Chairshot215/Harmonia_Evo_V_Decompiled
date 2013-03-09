.class public Lcom/android/browser/Performance;
.super Ljava/lang/Object;
.source "Performance.java"


# static fields
.field private static final LOGD_ENABLED:Z = true

.field private static final LOGTAG:Ljava/lang/String; = "browser"

.field private static final SYSTEM_CPU_FORMAT:[I

.field private static mIdleStart:J

.field private static mInTrace:Z

.field private static mIrqStart:J

.field private static mProcessStart:J

.field private static mStart:J

.field private static mSystemStart:J

.field private static mUiStart:J

.field private static mUserStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/browser/Performance;->SYSTEM_CPU_FORMAT:[I

    return-void

    :array_0
    .array-data 0x4
        0x20t 0x1t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static onPageFinished(Ljava/lang/String;)V
    .locals 12
    .parameter "url"

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x7

    const-wide/16 v9, 0xa

    .line 95
    new-array v2, v11, [J

    .line 96
    .local v2, sysCpu:[J
    const-string v4, "/proc/stat"

    sget-object v5, Lcom/android/browser/Performance;->SYSTEM_CPU_FORMAT:[I

    invoke-static {v4, v5, v6, v2, v6}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UI thread used "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lcom/android/browser/Performance;->mUiStart:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, uiInfo:Ljava/lang/String;
    const-string v4, "browser"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "It took total "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sget-wide v7, Lcom/android/browser/Performance;->mStart:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms clock time to load the page."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nbrowser process used "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v5

    sget-wide v7, Lcom/android/browser/Performance;->mProcessStart:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms, user processes used "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-wide v5, v2, v5

    const/4 v7, 0x1

    aget-wide v7, v2, v7

    add-long/2addr v5, v7

    sget-wide v7, Lcom/android/browser/Performance;->mUserStart:J

    sub-long/2addr v5, v7

    mul-long/2addr v5, v9

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms, kernel used "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget-wide v5, v2, v5

    sget-wide v7, Lcom/android/browser/Performance;->mSystemStart:J

    sub-long/2addr v5, v7

    mul-long/2addr v5, v9

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms, idle took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget-wide v5, v2, v5

    sget-wide v7, Lcom/android/browser/Performance;->mIdleStart:J

    sub-long/2addr v5, v7

    mul-long/2addr v5, v9

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms and irq took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    aget-wide v5, v2, v5

    const/4 v7, 0x5

    aget-wide v7, v2, v7

    add-long/2addr v5, v7

    const/4 v7, 0x6

    aget-wide v7, v2, v7

    add-long/2addr v5, v7

    sget-wide v7, Lcom/android/browser/Performance;->mIrqStart:J

    sub-long/2addr v5, v7

    mul-long/2addr v5, v9

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, performanceString:Ljava/lang/String;
    const-string v4, "browser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nWebpage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    if-eqz p0, :cond_1

    .line 117
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, newUrl:Ljava/lang/String;
    const-string v4, "http://www."

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    :cond_0
    :goto_0
    const-string v4, "browser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " loaded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v0           #newUrl:Ljava/lang/String;
    .end local v1           #performanceString:Ljava/lang/String;
    .end local v3           #uiInfo:Ljava/lang/String;
    :cond_1
    return-void

    .line 120
    .restart local v0       #newUrl:Ljava/lang/String;
    .restart local v1       #performanceString:Ljava/lang/String;
    .restart local v3       #uiInfo:Ljava/lang/String;
    :cond_2
    const-string v4, "http://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 121
    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_3
    const-string v4, "https://www."

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 123
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_4
    const-string v4, "https://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static onPageStarted()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/android/browser/Performance;->mStart:J

    .line 83
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v1

    sput-wide v1, Lcom/android/browser/Performance;->mProcessStart:J

    .line 84
    const/4 v1, 0x7

    new-array v0, v1, [J

    .line 85
    .local v0, sysCpu:[J
    const-string v1, "/proc/stat"

    sget-object v2, Lcom/android/browser/Performance;->SYSTEM_CPU_FORMAT:[I

    invoke-static {v1, v2, v3, v0, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    sput-wide v1, Lcom/android/browser/Performance;->mUserStart:J

    .line 87
    const/4 v1, 0x2

    aget-wide v1, v0, v1

    sput-wide v1, Lcom/android/browser/Performance;->mSystemStart:J

    .line 88
    const/4 v1, 0x3

    aget-wide v1, v0, v1

    sput-wide v1, Lcom/android/browser/Performance;->mIdleStart:J

    .line 89
    const/4 v1, 0x4

    aget-wide v1, v0, v1

    const/4 v3, 0x5

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    const/4 v3, 0x6

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    sput-wide v1, Lcom/android/browser/Performance;->mIrqStart:J

    .line 91
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/android/browser/Performance;->mUiStart:J

    .line 92
    return-void
.end method

.method static tracePageFinished()V
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Lcom/android/browser/Performance;->mInTrace:Z

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/browser/Performance;->mInTrace:Z

    .line 77
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 79
    :cond_0
    return-void
.end method

.method static tracePageStart(Ljava/lang/String;)V
    .locals 5
    .parameter "url"

    .prologue
    .line 59
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/BrowserSettings;->isTracing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    :try_start_0
    new-instance v2, Landroid/net/WebAddress;

    invoke-direct {v2, p0}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 63
    .local v2, uri:Landroid/net/WebAddress;
    invoke-virtual {v2}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 67
    .end local v2           #uri:Landroid/net/WebAddress;
    .local v1, host:Ljava/lang/String;
    :goto_0
    const/16 v3, 0x2e

    const/16 v4, 0x5f

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".trace"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/browser/Performance;->mInTrace:Z

    .line 70
    const/high16 v3, 0x140

    invoke-static {v1, v3}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 72
    .end local v1           #host:Ljava/lang/String;
    :cond_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, ex:Landroid/net/ParseException;
    const-string v1, "browser"

    .restart local v1       #host:Ljava/lang/String;
    goto :goto_0
.end method
