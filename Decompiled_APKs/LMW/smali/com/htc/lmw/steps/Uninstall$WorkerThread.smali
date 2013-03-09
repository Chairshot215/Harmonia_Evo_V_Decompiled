.class Lcom/htc/lmw/steps/Uninstall$WorkerThread;
.super Ljava/lang/Thread;
.source "Uninstall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lmw/steps/Uninstall;
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

.field owner:Lcom/htc/lmw/steps/Uninstall;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lmw/steps/Uninstall$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/htc/lmw/steps/Uninstall$WorkerThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 166
    iget-object v1, p0, Lcom/htc/lmw/steps/Uninstall$WorkerThread;->apps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 167
    .local v0, count:I
    if-lez v0, :cond_0

    .line 170
    iget-object v1, p0, Lcom/htc/lmw/steps/Uninstall$WorkerThread;->owner:Lcom/htc/lmw/steps/Uninstall;

    const v2, 0x7f050034

    invoke-static {v2}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v2

    const v3, 0x7f050038

    invoke-static {v3}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v3

    const/4 v4, 0x0

    #calls: Lcom/htc/lmw/steps/Uninstall;->updateProgressDialog(IIII)V
    invoke-static {v1, v2, v3, v4, v0}, Lcom/htc/lmw/steps/Uninstall;->access$500(Lcom/htc/lmw/steps/Uninstall;IIII)V

    .line 173
    invoke-static {}, Lcom/htc/lmw/AppManager;->getInstance()Lcom/htc/lmw/AppManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lmw/steps/Uninstall$WorkerThread;->apps:Ljava/util/List;

    new-instance v3, Lcom/htc/lmw/steps/Uninstall$WorkerThread$1;

    invoke-direct {v3, p0}, Lcom/htc/lmw/steps/Uninstall$WorkerThread$1;-><init>(Lcom/htc/lmw/steps/Uninstall$WorkerThread;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/lmw/AppManager;->uninstall(Ljava/util/List;Lcom/htc/lmw/AppManager$ProgressListener;)V

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/htc/lmw/steps/Uninstall$WorkerThread;->owner:Lcom/htc/lmw/steps/Uninstall;

    #calls: Lcom/htc/lmw/steps/Uninstall;->dismissProgressDialog()V
    invoke-static {v1}, Lcom/htc/lmw/steps/Uninstall;->access$700(Lcom/htc/lmw/steps/Uninstall;)V

    .line 184
    iget-object v1, p0, Lcom/htc/lmw/steps/Uninstall$WorkerThread;->owner:Lcom/htc/lmw/steps/Uninstall;

    #calls: Lcom/htc/lmw/steps/Uninstall;->finishActivity()V
    invoke-static {v1}, Lcom/htc/lmw/steps/Uninstall;->access$800(Lcom/htc/lmw/steps/Uninstall;)V

    .line 185
    iget-object v1, p0, Lcom/htc/lmw/steps/Uninstall$WorkerThread;->owner:Lcom/htc/lmw/steps/Uninstall;

    const/4 v2, 0x0

    #setter for: Lcom/htc/lmw/steps/Uninstall;->worker:Lcom/htc/lmw/steps/Uninstall$WorkerThread;
    invoke-static {v1, v2}, Lcom/htc/lmw/steps/Uninstall;->access$902(Lcom/htc/lmw/steps/Uninstall;Lcom/htc/lmw/steps/Uninstall$WorkerThread;)Lcom/htc/lmw/steps/Uninstall$WorkerThread;

    .line 186
    return-void
.end method
