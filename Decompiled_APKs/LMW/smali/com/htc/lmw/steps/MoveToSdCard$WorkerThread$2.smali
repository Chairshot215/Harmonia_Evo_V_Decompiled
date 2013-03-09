.class Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread$2;
.super Ljava/lang/Object;
.source "MoveToSdCard.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 240
    iput-object p1, p0, Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread$2;->this$0:Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread$2;->this$0:Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;

    iget-object v0, v0, Lcom/htc/lmw/steps/MoveToSdCard$WorkerThread;->owner:Lcom/htc/lmw/steps/MoveToSdCard;

    invoke-static {}, Lcom/htc/lmw/ExternalStorageObserver;->isMediaMounted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/lmw/steps/MoveToSdCard;->setNextButtonEnabled(Z)V

    .line 245
    return-void
.end method
