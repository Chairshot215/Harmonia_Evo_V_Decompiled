.class Lcom/htc/lmw/steps/Uninstall$WorkerThread$1;
.super Ljava/lang/Object;
.source "Uninstall.java"

# interfaces
.implements Lcom/htc/lmw/AppManager$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lmw/steps/Uninstall$WorkerThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lmw/steps/Uninstall$WorkerThread;


# direct methods
.method constructor <init>(Lcom/htc/lmw/steps/Uninstall$WorkerThread;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/htc/lmw/steps/Uninstall$WorkerThread$1;->this$0:Lcom/htc/lmw/steps/Uninstall$WorkerThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processed(II)V
    .locals 4
    .parameter "index"
    .parameter "count"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/lmw/steps/Uninstall$WorkerThread$1;->this$0:Lcom/htc/lmw/steps/Uninstall$WorkerThread;

    iget-object v0, v0, Lcom/htc/lmw/steps/Uninstall$WorkerThread;->owner:Lcom/htc/lmw/steps/Uninstall;

    const v1, 0x7f050034

    invoke-static {v1}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v1

    const v2, 0x7f050038

    invoke-static {v2}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v2

    add-int/lit8 v3, p1, 0x1

    #calls: Lcom/htc/lmw/steps/Uninstall;->updateProgressDialog(IIII)V
    invoke-static {v0, v1, v2, v3, p2}, Lcom/htc/lmw/steps/Uninstall;->access$600(Lcom/htc/lmw/steps/Uninstall;IIII)V

    .line 178
    return-void
.end method
