.class public Lcom/android/mms/transaction/Transaction$RetryPolicy;
.super Ljava/lang/Object;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetryPolicy"
.end annotation


# static fields
.field public static final AUTO:I = 0x1

.field public static final Default_Retry_Policy:Ljava/lang/String; = "0,15,15,15,15,15,15"

.field public static final MANUAL:I = 0x0

.field public static final VZW_MMSC_TIMEOUT_RETRY_POLICY:Ljava/lang/String; = "0,30,180,300,480,480,480"

.field public static maxRetryCount:I

.field public static maxRetryInterval:I

.field public static retry_policy:[Ljava/lang/String;

.field public static vzw_retry_policy:[Ljava/lang/String;


# instance fields
.field private final mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 429
    invoke-static {}, Lcom/android/mms/MmsApp;->getMMSRetryPolicy()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/Transaction$RetryPolicy;->retry_policy:[Ljava/lang/String;

    .line 430
    const-string v0, "0,30,180,300,480,480,480"

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/Transaction$RetryPolicy;->vzw_retry_policy:[Ljava/lang/String;

    .line 431
    sget-object v0, Lcom/android/mms/transaction/Transaction$RetryPolicy;->retry_policy:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/mms/transaction/Transaction$RetryPolicy;->maxRetryCount:I

    .line 432
    sget-object v0, Lcom/android/mms/transaction/Transaction$RetryPolicy;->retry_policy:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/transaction/Transaction$RetryPolicy;->maxRetryInterval:I

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 436
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 437
    iput p1, p0, Lcom/android/mms/transaction/Transaction$RetryPolicy;->mode:I

    .line 438
    return-void
.end method

.method public static getInterval(II)J
    .locals 6
    .parameter "retryCount"
    .parameter "retryMode"

    .prologue
    const-wide/16 v4, 0x3e8

    .line 454
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 455
    sget-object v2, Lcom/android/mms/transaction/Transaction$RetryPolicy;->vzw_retry_policy:[Ljava/lang/String;

    array-length v1, v2

    .line 456
    .local v1, vzw_retry_policy_length:I
    if-lt p0, v1, :cond_0

    .line 457
    add-int/lit8 p0, v1, -0x1

    .line 460
    :cond_0
    sget-object v2, Lcom/android/mms/transaction/Transaction$RetryPolicy;->vzw_retry_policy:[Ljava/lang/String;

    aget-object v2, v2, p0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v4

    .line 467
    .end local v1           #vzw_retry_policy_length:I
    :goto_0
    return-wide v2

    .line 462
    :cond_1
    sget-object v2, Lcom/android/mms/transaction/Transaction$RetryPolicy;->retry_policy:[Ljava/lang/String;

    array-length v0, v2

    .line 463
    .local v0, retry_policy_length:I
    if-lt p0, v0, :cond_2

    .line 464
    add-int/lit8 p0, v0, -0x1

    .line 467
    :cond_2
    sget-object v2, Lcom/android/mms/transaction/Transaction$RetryPolicy;->retry_policy:[Ljava/lang/String;

    aget-object v2, v2, p0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v4

    goto :goto_0
.end method

.method public static getMaxRetryCount()I
    .locals 1

    .prologue
    .line 445
    sget v0, Lcom/android/mms/transaction/Transaction$RetryPolicy;->maxRetryCount:I

    return v0
.end method

.method public static getMaxRetryInterval()J
    .locals 4

    .prologue
    .line 449
    sget v0, Lcom/android/mms/transaction/Transaction$RetryPolicy;->maxRetryInterval:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lcom/android/mms/transaction/Transaction$RetryPolicy;->mode:I

    return v0
.end method
