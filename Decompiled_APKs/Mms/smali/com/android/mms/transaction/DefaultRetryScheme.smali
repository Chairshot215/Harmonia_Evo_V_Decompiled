.class public Lcom/android/mms/transaction/DefaultRetryScheme;
.super Lcom/android/mms/transaction/AbstractRetryScheme;
.source "DefaultRetryScheme.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "DefaultRetryScheme"

.field private static final sDefaultRetryScheme:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x98t 0x3at 0x0t 0x0t
        0x98t 0x3at 0x0t 0x0t
        0x98t 0x3at 0x0t 0x0t
        0x98t 0x3at 0x0t 0x0t
        0x98t 0x3at 0x0t 0x0t
        0x98t 0x3at 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "errorType"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/mms/transaction/DefaultRetryScheme;-><init>(Landroid/content/Context;II)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "retriedTimes"
    .parameter "errorType"

    .prologue
    .line 43
    invoke-direct {p0, p2, p3}, Lcom/android/mms/transaction/AbstractRetryScheme;-><init>(II)V

    .line 45
    iget v0, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    .line 46
    iget v0, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    sget-object v1, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iput v0, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    .line 50
    return-void

    .line 45
    :cond_0
    iget v0, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    goto :goto_0

    .line 46
    :cond_1
    iget v0, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    goto :goto_1
.end method


# virtual methods
.method public getRetryLimit()I
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    array-length v0, v0

    return v0
.end method

.method public getWaitingInterval()J
    .locals 4

    .prologue
    .line 60
    const-string v0, "DefaultRetryScheme"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Next int: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    iget v3, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    iget v1, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    aget v0, v0, v1

    int-to-long v0, v0

    return-wide v0
.end method
