.class Lcom/htc/dockmode/saver/SaverControl$4;
.super Ljava/lang/Object;
.source "SaverControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 249
    iput-object p1, p0, Lcom/htc/dockmode/saver/SaverControl$4;->this$0:Lcom/htc/dockmode/saver/SaverControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 251
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl$4;->this$0:Lcom/htc/dockmode/saver/SaverControl;

    #getter for: Lcom/htc/dockmode/saver/SaverControl;->mScreenSaver:Lcom/htc/dockmode/saver/ScreenSaver;
    invoke-static {v0}, Lcom/htc/dockmode/saver/SaverControl;->access$600(Lcom/htc/dockmode/saver/SaverControl;)Lcom/htc/dockmode/saver/ScreenSaver;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl$4;->this$0:Lcom/htc/dockmode/saver/SaverControl;

    #getter for: Lcom/htc/dockmode/saver/SaverControl;->mScreenSaver:Lcom/htc/dockmode/saver/ScreenSaver;
    invoke-static {v0}, Lcom/htc/dockmode/saver/SaverControl;->access$600(Lcom/htc/dockmode/saver/SaverControl;)Lcom/htc/dockmode/saver/ScreenSaver;

    move-result-object v0

    iget-boolean v0, v0, Lcom/htc/dockmode/saver/ScreenSaver;->mDimmed:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v2, Lcom/htc/dockmode/saver/ScreenSaver;->mDimmed:Z

    .line 252
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl$4;->this$0:Lcom/htc/dockmode/saver/SaverControl;

    #calls: Lcom/htc/dockmode/saver/SaverControl;->doDim(Z)V
    invoke-static {v0, v1}, Lcom/htc/dockmode/saver/SaverControl;->access$700(Lcom/htc/dockmode/saver/SaverControl;Z)V

    .line 253
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl$4;->this$0:Lcom/htc/dockmode/saver/SaverControl;

    #getter for: Lcom/htc/dockmode/saver/SaverControl;->mScreenSaver:Lcom/htc/dockmode/saver/ScreenSaver;
    invoke-static {v0}, Lcom/htc/dockmode/saver/SaverControl;->access$600(Lcom/htc/dockmode/saver/SaverControl;)Lcom/htc/dockmode/saver/ScreenSaver;

    move-result-object v0

    iget-boolean v0, v0, Lcom/htc/dockmode/saver/ScreenSaver;->mDimmed:Z

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl$4;->this$0:Lcom/htc/dockmode/saver/SaverControl;

    #calls: Lcom/htc/dockmode/saver/SaverControl;->stopDimTimer()V
    invoke-static {v0}, Lcom/htc/dockmode/saver/SaverControl;->access$800(Lcom/htc/dockmode/saver/SaverControl;)V

    .line 258
    :goto_1
    return-void

    .line 251
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl$4;->this$0:Lcom/htc/dockmode/saver/SaverControl;

    #calls: Lcom/htc/dockmode/saver/SaverControl;->startDimTimer()V
    invoke-static {v0}, Lcom/htc/dockmode/saver/SaverControl;->access$900(Lcom/htc/dockmode/saver/SaverControl;)V

    goto :goto_1
.end method
