.class Lcom/htc/launcher/Launcher$CellInfoHandler$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Launcher$CellInfoHandler;->onTouchMove(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/launcher/Launcher$CellInfoHandler;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher$CellInfoHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 9441
    iput-object p1, p0, Lcom/htc/launcher/Launcher$CellInfoHandler$1;->this$1:Lcom/htc/launcher/Launcher$CellInfoHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 9444
    const-string v0, "CellInfoHandler"

    const-string v1, "[STICKY] CellInfo dragItem - run()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9445
    iget-object v0, p0, Lcom/htc/launcher/Launcher$CellInfoHandler$1;->this$1:Lcom/htc/launcher/Launcher$CellInfoHandler;

    #getter for: Lcom/htc/launcher/Launcher$CellInfoHandler;->mSelectTime:J
    invoke-static {v0}, Lcom/htc/launcher/Launcher$CellInfoHandler;->access$10900(Lcom/htc/launcher/Launcher$CellInfoHandler;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/Launcher$CellInfoHandler$1;->this$1:Lcom/htc/launcher/Launcher$CellInfoHandler;

    #getter for: Lcom/htc/launcher/Launcher$CellInfoHandler;->mCellInfo:Lcom/htc/launcher/CellInfo;
    invoke-static {v0}, Lcom/htc/launcher/Launcher$CellInfoHandler;->access$11000(Lcom/htc/launcher/Launcher$CellInfoHandler;)Lcom/htc/launcher/CellInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9446
    iget-object v0, p0, Lcom/htc/launcher/Launcher$CellInfoHandler$1;->this$1:Lcom/htc/launcher/Launcher$CellInfoHandler;

    iget-object v0, v0, Lcom/htc/launcher/Launcher$CellInfoHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, p0, Lcom/htc/launcher/Launcher$CellInfoHandler$1;->this$1:Lcom/htc/launcher/Launcher$CellInfoHandler;

    #getter for: Lcom/htc/launcher/Launcher$CellInfoHandler;->mCellInfo:Lcom/htc/launcher/CellInfo;
    invoke-static {v1}, Lcom/htc/launcher/Launcher$CellInfoHandler;->access$11000(Lcom/htc/launcher/Launcher$CellInfoHandler;)Lcom/htc/launcher/CellInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Launcher;->dragStickyItem(Lcom/htc/launcher/CellInfo;)V

    .line 9448
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/Launcher$CellInfoHandler$1;->this$1:Lcom/htc/launcher/Launcher$CellInfoHandler;

    const/4 v1, 0x0

    #setter for: Lcom/htc/launcher/Launcher$CellInfoHandler;->mCallback:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/htc/launcher/Launcher$CellInfoHandler;->access$11102(Lcom/htc/launcher/Launcher$CellInfoHandler;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 9449
    return-void
.end method
