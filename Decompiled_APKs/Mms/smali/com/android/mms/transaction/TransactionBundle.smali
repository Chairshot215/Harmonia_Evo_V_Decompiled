.class public Lcom/android/mms/transaction/TransactionBundle;
.super Ljava/lang/Object;
.source "TransactionBundle.java"


# static fields
.field private static final ERROR_CODE:Ljava/lang/String; = "error-code"

.field private static final PUSH_DATA:Ljava/lang/String; = "mms-push-data"

.field private static final RETRY_COUNT:Ljava/lang/String; = "retry-count"

.field public static final TRANSACTION_TYPE:Ljava/lang/String; = "type"

.field public static final URI:Ljava/lang/String; = "uri"


# instance fields
.field private final mBundle:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(I)V
    .locals 2
    .parameter "transactionType"

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    .line 65
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .parameter "transactionType"
    .parameter "uri"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionBundle;-><init>(I)V

    .line 80
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "uri"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .parameter "transactionType"
    .parameter "pushData"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionBundle;-><init>(I)V

    .line 92
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "mms-push-data"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    .line 102
    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "error-code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPushData()[B
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "mms-push-data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getRetryCount()I
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "retry-count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTransactionType()I
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setErrorCode(I)V
    .locals 2
    .parameter "code"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "error-code"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    return-void
.end method

.method public setRetryCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "retry-count"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransactionBundle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionBundle;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "TransactionBundle: null"

    goto :goto_0
.end method
