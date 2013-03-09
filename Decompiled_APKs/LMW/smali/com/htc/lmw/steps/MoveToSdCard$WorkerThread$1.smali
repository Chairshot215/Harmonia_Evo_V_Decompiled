.class Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread$1;
.super Ljava/lang/Object;
.source "MoveToSdCard.java"

# interfaces
.implements Lcom/htc/lmw/AppManager$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;


# direct methods
.method constructor <init>(Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread$1;->this$0:Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processed(II)V
    .locals 4
    .parameter "index"
    .parameter "count"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread$1;->this$0:Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;

    iget-object v0, v0, Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;->owner:Lcom/htc/lmw/steps/MoveToSdCard;

    const v1, 0x7f050026

    invoke-static {v1}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v1

    const v2, 0x7f050029

    invoke-static {v2}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v2

    add-int/lit8 v3, p1, 0x1

    #calls: Lcom/htc/lmw/steps/MoveToSdCard;->updateProgressDialog(IIII)V
    invoke-static {v0, v1, v2, v3, p2}, Lcom/htc/lmw/steps/MoveToSdCard;->access$600(Lcom/htc/lmw/steps/MoveToSdCard;IIII)V

    .line 227
    return-void
.end method
