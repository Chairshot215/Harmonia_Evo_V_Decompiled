.class Lcom/htc/dockmode/saver/SaverControl$6;
.super Ljava/lang/Object;
.source "SaverControl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 273
    iput-object p1, p0, Lcom/htc/dockmode/saver/SaverControl$6;->this$0:Lcom/htc/dockmode/saver/SaverControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl$6;->this$0:Lcom/htc/dockmode/saver/SaverControl;

    #getter for: Lcom/htc/dockmode/saver/SaverControl;->mScreenSaver:Lcom/htc/dockmode/saver/ScreenSaver;
    invoke-static {v0}, Lcom/htc/dockmode/saver/SaverControl;->access$600(Lcom/htc/dockmode/saver/SaverControl;)Lcom/htc/dockmode/saver/ScreenSaver;

    move-result-object v0

    iget-boolean v0, v0, Lcom/htc/dockmode/saver/ScreenSaver;->mDimmed:Z

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl$6;->this$0:Lcom/htc/dockmode/saver/SaverControl;

    #calls: Lcom/htc/dockmode/saver/SaverControl;->exitDimScreen()V
    invoke-static {v0}, Lcom/htc/dockmode/saver/SaverControl;->access$1000(Lcom/htc/dockmode/saver/SaverControl;)V

    .line 277
    const/4 v0, 0x1

    .line 279
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
