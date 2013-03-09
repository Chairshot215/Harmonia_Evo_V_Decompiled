.class public Lcom/htc/android/mail/util/SummaryColumnsStore;
.super Ljava/lang/Object;
.source "SummaryColumnsStore.java"


# static fields
.field private static PREVIEW_LINE_SIZE_OPTION:I

.field public static PREVIEW_ONE_LINE_SIZE:I

.field public static PREVIEW_SIZE:I

.field private static SUMMARY_COLUMNS:[[Ljava/lang/String;

.field private static SUMMARY_COLUMNS_OUTBOX:[[Ljava/lang/String;

.field private static SUMMARY_COLUMNS_THREAD:[[Ljava/lang/String;

.field private static SUMMARY_COLUMNS_THREAD_OUTBOX:[[Ljava/lang/String;

.field private static mLock:Ljava/lang/Object;

.field private static mStore:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/htc/android/mail/util/SummaryColumnsStore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x6

    sput v0, Lcom/htc/android/mail/util/SummaryColumnsStore;->PREVIEW_LINE_SIZE_OPTION:I

    .line 9
    const/16 v0, 0x3c

    sput v0, Lcom/htc/android/mail/util/SummaryColumnsStore;->PREVIEW_ONE_LINE_SIZE:I

    .line 10
    sget v0, Lcom/htc/android/mail/util/SummaryColumnsStore;->PREVIEW_ONE_LINE_SIZE:I

    mul-int/lit8 v0, v0, 0x5

    sput v0, Lcom/htc/android/mail/util/SummaryColumnsStore;->PREVIEW_SIZE:I

    .line 11
    sget v0, Lcom/htc/android/mail/util/SummaryColumnsStore;->PREVIEW_LINE_SIZE_OPTION:I

    new-array v0, v0, [[Ljava/lang/String;

    sput-object v0, Lcom/htc/android/mail/util/SummaryColumnsStore;->SUMMARY_COLUMNS:[[Ljava/lang/String;

    .line 12
    sget v0, Lcom/htc/android/mail/util/SummaryColumnsStore;->PREVIEW_LINE_SIZE_OPTION:I

    new-array v0, v0, [[Ljava/lang/String;

    sput-object v0, Lcom/htc/android/mail/util/SummaryColumnsStore;->SUMMARY_COLUMNS_OUTBOX:[[Ljava/lang/String;

    .line 13
    sget v0, Lcom/htc/android/mail/util/SummaryColumnsStore;->PREVIEW_LINE_SIZE_OPTION:I

    new-array v0, v0, [[Ljava/lang/String;

    sput-object v0, Lcom/htc/android/mail/util/SummaryColumnsStore;->SUMMARY_COLUMNS_THREAD:[[Ljava/lang/String;

    .line 14
    sget v0, Lcom/htc/android/mail/util/SummaryColumnsStore;->PREVIEW_LINE_SIZE_OPTION:I

    new-array v0, v0, [[Ljava/lang/String;

    sput-object v0, Lcom/htc/android/mail/util/SummaryColumnsStore;->SUMMARY_COLUMNS_THREAD_OUTBOX:[[Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/android/mail/util/SummaryColumnsStore;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/htc/android/mail/util/SummaryColumnsStore;
    .locals 4

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, store:Lcom/htc/android/mail/util/SummaryColumnsStore;
    sget-object v3, Lcom/htc/android/mail/util/SummaryColumnsStore;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 21
    :try_start_0
    sget-object v2, Lcom/htc/android/mail/util/SummaryColumnsStore;->mStore:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/htc/android/mail/util/SummaryColumnsStore;->mStore:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/util/SummaryColumnsStore;

    move-object v0, v2

    .line 22
    :goto_0
    if-nez v0, :cond_0

    .line 23
    new-instance v1, Lcom/htc/android/mail/util/SummaryColumnsStore;

    invoke-direct {v1}, Lcom/htc/android/mail/util/SummaryColumnsStore;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .end local v0           #store:Lcom/htc/android/mail/util/SummaryColumnsStore;
    .local v1, store:Lcom/htc/android/mail/util/SummaryColumnsStore;
    :try_start_1
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/htc/android/mail/util/SummaryColumnsStore;->mStore:Ljava/lang/ref/SoftReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 26
    .end local v1           #store:Lcom/htc/android/mail/util/SummaryColumnsStore;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 27
    return-object v0

    .line 21
    .restart local v0       #store:Lcom/htc/android/mail/util/SummaryColumnsStore;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 26
    .end local v0           #store:Lcom/htc/android/mail/util/SummaryColumnsStore;
    :catchall_0
    move-exception v2

    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v1       #store:Lcom/htc/android/mail/util/SummaryColumnsStore;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .local v0, store:Ljava/lang/Object;
    goto :goto_1
.end method

.method private getPreviewColumn(I)Ljava/lang/String;
    .locals 3
    .parameter "previewSize"

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "substr(_preview, 0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") as _preview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getProjectByType(ZZI)[Ljava/lang/String;
    .locals 5
    .parameter "showSender"
    .parameter "isThreadType"
    .parameter "previewLine"

    .prologue
    .line 31
    move v0, p3

    .line 32
    .local v0, pl:I
    if-gez p3, :cond_0

    const/4 v0, 0x0

    .line 33
    :cond_0
    const/4 v1, 0x5

    if-le p3, v1, :cond_1

    const/4 v0, 0x5

    .line 34
    :cond_1
    sget-object v2, Lcom/htc/android/mail/util/SummaryColumnsStore;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 35
    if-eqz p1, :cond_7

    .line 36
    if-eqz p2, :cond_4

    .line 37
    :try_start_0
    sget-object v1, Lcom/htc/android/mail/util/SummaryColumnsStore;->SUMMARY_COLUMNS_THREAD:[[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    sget-object v1, Lcom/htc/android/mail/util/SummaryColumnsStore;->SUMMARY_COLUMNS_THREAD:[[Ljava/lang/String;

    aget-object v1, v1, v0

    array-length v1, v1

    if-nez v1, :cond_3

    .line 38
    :cond_2
    sget-object v3, Lcom/htc/android/mail/util/SummaryColumnsStore;->SUMMARY_COLUMNS_THREAD:[[Ljava/lang/String;

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sSummaryColumnsForThread:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aput-object v1, v3, v0

    .line 39
    sget-object v1, Lcom/htc/android/mail/util/SummaryColumnsStore;->SUMMARY_COLUMNS_THREAD:[[Ljava/lang/String;

    aget-object v1, v1, v0

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sSummaryColumnsForThread:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    sget v4, Lcom/htc/android/mail/util/SummaryColumnsStore;->PREVIEW_ONE_LINE_SIZE:I

    mul-int/2addr v4, v0

    invoke-direct {p0, v4}, Lcom/htc/android/mail/util/SummaryColumnsStore;->getPreviewColumn(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 41
    :cond_3
    sget-object v1, Lcom/htc/android/mail/util/SummaryColumnsStore;->SUMMARY_COLUMNS_THREAD:[[Ljava/lang/String;

    aget-object v1, v1, v0

    monitor-exit v2

    .line 61
    :goto_0
    return-object v1

    .line 43
    :cond_4
    sget-object v1, Lcom/htc/android/mail/util/SummaryColumnsStore;->SUMMARY_COLUMNS:[[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    sget-object v1, Lcom/htc/android/mail/util/SummaryColumnsStore;->SUMMARY_COLUMNS:[[Ljava/lang/String;

    aget-object v1, v1, v0

    array-length v1, v1

    if-nez v1, :cond_6

    .line 44
    :cond_5
    sget-object v3, Lcom/htc/android/mail/util/SummaryColumnsStore;->SUMMARY_COLUMNS:[[Ljava/lang/String;

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sSummaryColumns:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aput-object v1, v3, v0

    .line 45
    sget-object v1, Lcom/htc/android/mail/util/SummaryColumnsStore;->SUMMARY_COLUMNS:[[Ljava/lang/String;

    aget-object v1, v1, v0

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sSummaryColumns:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    sget v4, Lcom/htc/android/mail/util/SummaryColumnsStore;->PREVIEW_ONE_LINE_SIZE:I

    mul-int/2addr v4, v0

    invoke-direct {p0, v4}, Lcom/htc/android/mail/util/SummaryColumnsStore;->getPreviewColumn(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 47
    :cond_6
    sget-object v1, Lcom/htc/android/mail/util/SummaryColumnsStore;->SUMMARY_COLUMNS:[[Ljava/lang/String;

    aget-object v1, v1, v0

    monitor-exit v2

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 50
    :cond_7
    if-eqz p2, :cond_a

    .line 51
    :try_start_1
    sget-object v1, Lcom/htc/android/mail/util/SummaryColumnsStore;->SUMMARY_COLUMNS_THREAD_OUTBOX:[[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_8

    sget-object v1, Lcom/htc/android/mail/util/SummaryColumnsStore;->SUMMARY_COLUMNS_THREAD_OUTBOX:[[Ljava/lang/String;

    aget-object v1, v1, v0

    array-length v1, v1

    if-nez v1, :cond_9

    .line 52
    :cond_8
    sget-object v3, Lcom/htc/android/mail/util/SummaryColumnsStore;->SUMMARY_COLUMNS_THREAD_OUTBOX:[[Ljava/lang/String;

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sSummaryColumnsForThreadOutbox:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aput-object v1, v3, v0

    .line 53
    sget-object v1, Lcom/htc/android/mail/util/SummaryColumnsStore;->SUMMARY_COLUMNS_THREAD_OUTBOX:[[Ljava/lang/String;

    aget-object v1, v1, v0

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sSummaryColumnsForThreadOutbox:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    sget v4, Lcom/htc/android/mail/util/SummaryColumnsStore;->PREVIEW_ONE_LINE_SIZE:I

    mul-int/2addr v4, v0

    invoke-direct {p0, v4}, Lcom/htc/android/mail/util/SummaryColumnsStore;->getPreviewColumn(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 55
    :cond_9
    sget-object v1, Lcom/htc/android/mail/util/SummaryColumnsStore;->SUMMARY_COLUMNS_THREAD_OUTBOX:[[Ljava/lang/String;

    aget-object v1, v1, v0

    monitor-exit v2

    goto :goto_0

    .line 57
    :cond_a
    sget-object v1, Lcom/htc/android/mail/util/SummaryColumnsStore;->SUMMARY_COLUMNS_OUTBOX:[[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_b

    sget-object v1, Lcom/htc/android/mail/util/SummaryColumnsStore;->SUMMARY_COLUMNS_OUTBOX:[[Ljava/lang/String;

    aget-object v1, v1, v0

    array-length v1, v1

    if-nez v1, :cond_c

    .line 58
    :cond_b
    sget-object v3, Lcom/htc/android/mail/util/SummaryColumnsStore;->SUMMARY_COLUMNS_OUTBOX:[[Ljava/lang/String;

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sSummaryColumnsForOutbox:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aput-object v1, v3, v0

    .line 59
    sget-object v1, Lcom/htc/android/mail/util/SummaryColumnsStore;->SUMMARY_COLUMNS_OUTBOX:[[Ljava/lang/String;

    aget-object v1, v1, v0

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sSummaryColumnsForOutbox:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    sget v4, Lcom/htc/android/mail/util/SummaryColumnsStore;->PREVIEW_ONE_LINE_SIZE:I

    mul-int/2addr v4, v0

    invoke-direct {p0, v4}, Lcom/htc/android/mail/util/SummaryColumnsStore;->getPreviewColumn(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 61
    :cond_c
    sget-object v1, Lcom/htc/android/mail/util/SummaryColumnsStore;->SUMMARY_COLUMNS_OUTBOX:[[Ljava/lang/String;

    aget-object v1, v1, v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
