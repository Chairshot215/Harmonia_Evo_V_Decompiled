.class Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;
.super Ljava/lang/Thread;
.source "MoveToSdCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lmw/steps/MoveToSdCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkerThread"
.end annotation


# instance fields
.field apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/lmw/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field owner:Lcom/htc/lmw/steps/MoveToSdCard;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lmw/steps/MoveToSdCard$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 214
    const/4 v1, 0x0

    .line 215
    .local v1, storageError:Z
    iget-object v3, p0, Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;->apps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 216
    .local v0, count:I
    if-lez v0, :cond_0

    .line 219
    iget-object v3, p0, Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;->owner:Lcom/htc/lmw/steps/MoveToSdCard;

    const v4, 0x7f050026

    invoke-static {v4}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v4

    const v5, 0x7f050029

    invoke-static {v5}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v5

    #calls: Lcom/htc/lmw/steps/MoveToSdCard;->updateProgressDialog(IIII)V
    invoke-static {v3, v4, v5, v2, v0}, Lcom/htc/lmw/steps/MoveToSdCard;->access$500(Lcom/htc/lmw/steps/MoveToSdCard;IIII)V

    .line 222
    invoke-static {}, Lcom/htc/lmw/AppManager;->getInstance()Lcom/htc/lmw/AppManager;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;->apps:Ljava/util/List;

    new-instance v5, Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread$1;

    invoke-direct {v5, p0}, Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread$1;-><init>(Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/lmw/AppManager;->moveToSdCard(Ljava/util/List;Lcom/htc/lmw/AppManager$ProgressListener;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    .line 232
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;->owner:Lcom/htc/lmw/steps/MoveToSdCard;

    #calls: Lcom/htc/lmw/steps/MoveToSdCard;->dismissProgressDialog()V
    invoke-static {v2}, Lcom/htc/lmw/steps/MoveToSdCard;->access$700(Lcom/htc/lmw/steps/MoveToSdCard;)V

    .line 233
    if-eqz v1, :cond_3

    .line 234
    iget-object v2, p0, Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;->owner:Lcom/htc/lmw/steps/MoveToSdCard;

    #calls: Lcom/htc/lmw/steps/MoveToSdCard;->displayLowStorageDialog()V
    invoke-static {v2}, Lcom/htc/lmw/steps/MoveToSdCard;->access$800(Lcom/htc/lmw/steps/MoveToSdCard;)V

    .line 235
    invoke-static {}, Lcom/htc/lmw/ExternalStorageObserver;->isMediaMounted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 238
    iget-object v2, p0, Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;->owner:Lcom/htc/lmw/steps/MoveToSdCard;

    invoke-virtual {v2}, Lcom/htc/lmw/steps/MoveToSdCard;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 240
    iget-object v2, p0, Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;->owner:Lcom/htc/lmw/steps/MoveToSdCard;

    iget-object v2, v2, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread$2;

    invoke-direct {v3, p0}, Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread$2;-><init>(Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 253
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;->owner:Lcom/htc/lmw/steps/MoveToSdCard;

    const/4 v3, 0x0

    #setter for: Lcom/htc/lmw/steps/MoveToSdCard;->worker:Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;
    invoke-static {v2, v3}, Lcom/htc/lmw/steps/MoveToSdCard;->access$1002(Lcom/htc/lmw/steps/MoveToSdCard;Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;)Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;

    .line 254
    return-void

    :cond_2
    move v1, v2

    .line 222
    goto :goto_0

    .line 252
    :cond_3
    iget-object v2, p0, Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;->owner:Lcom/htc/lmw/steps/MoveToSdCard;

    #calls: Lcom/htc/lmw/steps/MoveToSdCard;->finishActivity()V
    invoke-static {v2}, Lcom/htc/lmw/steps/MoveToSdCard;->access$900(Lcom/htc/lmw/steps/MoveToSdCard;)V

    goto :goto_1
.end method
