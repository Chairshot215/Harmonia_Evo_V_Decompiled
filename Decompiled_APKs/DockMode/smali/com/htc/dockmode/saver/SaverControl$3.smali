.class Lcom/htc/dockmode/saver/SaverControl$3;
.super Ljava/lang/Object;
.source "SaverControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/saver/SaverControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/saver/SaverControl;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/saver/SaverControl;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/htc/dockmode/saver/SaverControl$3;->this$0:Lcom/htc/dockmode/saver/SaverControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 225
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl$3;->this$0:Lcom/htc/dockmode/saver/SaverControl;

    #getter for: Lcom/htc/dockmode/saver/SaverControl;->mStopped:Z
    invoke-static {v0}, Lcom/htc/dockmode/saver/SaverControl;->access$000(Lcom/htc/dockmode/saver/SaverControl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl$3;->this$0:Lcom/htc/dockmode/saver/SaverControl;

    #getter for: Lcom/htc/dockmode/saver/SaverControl;->mScreenSaver:Lcom/htc/dockmode/saver/ScreenSaver;
    invoke-static {v0}, Lcom/htc/dockmode/saver/SaverControl;->access$600(Lcom/htc/dockmode/saver/SaverControl;)Lcom/htc/dockmode/saver/ScreenSaver;

    move-result-object v0

    iget-boolean v0, v0, Lcom/htc/dockmode/saver/ScreenSaver;->mDimmed:Z

    if-eq v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl$3;->this$0:Lcom/htc/dockmode/saver/SaverControl;

    #getter for: Lcom/htc/dockmode/saver/SaverControl;->mScreenSaver:Lcom/htc/dockmode/saver/ScreenSaver;
    invoke-static {v0}, Lcom/htc/dockmode/saver/SaverControl;->access$600(Lcom/htc/dockmode/saver/SaverControl;)Lcom/htc/dockmode/saver/ScreenSaver;

    move-result-object v0

    iput-boolean v1, v0, Lcom/htc/dockmode/saver/ScreenSaver;->mDimmed:Z

    .line 229
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl$3;->this$0:Lcom/htc/dockmode/saver/SaverControl;

    #calls: Lcom/htc/dockmode/saver/SaverControl;->doDim(Z)V
    invoke-static {v0, v1}, Lcom/htc/dockmode/saver/SaverControl;->access$700(Lcom/htc/dockmode/saver/SaverControl;Z)V

    goto :goto_0
.end method
