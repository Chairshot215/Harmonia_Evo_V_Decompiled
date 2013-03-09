.class final Lcom/android/mms/transaction/TransactionService$ServiceHandler;
.super Landroid/os/Handler;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ServiceHandler"
.end annotation


# static fields
.field public static final MSG_LOAD_TRANSACTIONS_FROM_DB:I = 0x2

.field public static final MSG_SERVICE_STOPPING:I = 0x64

.field public static final MSG_TRANSACTION_FINISHED:I = 0x4be

.field public static final MSG_TRANSACTION_REQUEST:I = 0x1

.field public static final MSG_TRANSACTION_STARTED:I = 0x4bd


# instance fields
.field private final service:Lcom/android/mms/transaction/TransactionService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/mms/transaction/TransactionService;)V
    .locals 0
    .parameter "looper"
    .parameter "service"

    .prologue
    .line 889
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 890
    iput-object p2, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->service:Lcom/android/mms/transaction/TransactionService;

    .line 891
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 901
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "4-Handling incoming message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 922
    :goto_0
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :goto_1
    return-void

    .line 906
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    goto :goto_1

    .line 911
    :sswitch_1
    const-string v1, "TransactionService"

    const-string v2, "5-handleMessage()-EVENT_TRANSACTION_REQUEST"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->service:Lcom/android/mms/transaction/TransactionService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/mms/transaction/TransactionBundle;

    iget v3, p1, Landroid/os/Message;->arg1:I

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/mms/transaction/TransactionService;->handleTransactionRequest(Lcom/android/mms/transaction/TransactionBundle;IJ)V

    goto :goto_1

    .line 916
    :sswitch_2
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->service:Lcom/android/mms/transaction/TransactionService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionService;->loadTransactionsFromDb(I)V

    goto :goto_1

    .line 919
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    .line 920
    .local v0, tx:Lcom/android/mms/transaction/Transaction;
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->service:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v1, v0}, Lcom/android/mms/transaction/TransactionService;->handleTransationResult(Lcom/android/mms/transaction/Transaction;)V

    goto :goto_0

    .line 904
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x64 -> :sswitch_0
        0x4be -> :sswitch_3
    .end sparse-switch
.end method
