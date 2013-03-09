.class Lcom/htc/launcher/Launcher$9;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/htc/launcher/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Launcher;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 2200
    iput-object p1, p0, Lcom/htc/launcher/Launcher$9;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2233
    iget-object v0, p0, Lcom/htc/launcher/Launcher$9;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mTiltListener:Lcom/htc/launcher/Launcher$ExSensorEventListener;
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$2200(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/Launcher$ExSensorEventListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher$ExSensorEventListener;->reset()V

    .line 2236
    iget-object v0, p0, Lcom/htc/launcher/Launcher$9;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mWidgetTilter:Lcom/htc/launcher/Launcher$WidgetTilter;
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$2300(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/Launcher$WidgetTilter;

    move-result-object v0

    #setter for: Lcom/htc/launcher/Launcher$WidgetTilter;->mSurpressScroll:Z
    invoke-static {v0, v1}, Lcom/htc/launcher/Launcher$WidgetTilter;->access$2402(Lcom/htc/launcher/Launcher$WidgetTilter;Z)Z

    .line 2237
    iget-object v0, p0, Lcom/htc/launcher/Launcher$9;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mWidgetTilter:Lcom/htc/launcher/Launcher$WidgetTilter;
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$2300(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/Launcher$WidgetTilter;

    move-result-object v0

    #calls: Lcom/htc/launcher/Launcher$WidgetTilter;->reset()V
    invoke-static {v0}, Lcom/htc/launcher/Launcher$WidgetTilter;->access$1300(Lcom/htc/launcher/Launcher$WidgetTilter;)V

    .line 2238
    iget-object v0, p0, Lcom/htc/launcher/Launcher$9;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->freezeTilt(Z)V
    invoke-static {v0, v1}, Lcom/htc/launcher/Launcher;->access$2100(Lcom/htc/launcher/Launcher;Z)V

    .line 2240
    iget-object v0, p0, Lcom/htc/launcher/Launcher$9;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->isStickyMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/Launcher$9;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/Launcher$9;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->isMoving()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/Launcher$9;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$2500(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/DragLayer;->getOpenFolder()Lcom/htc/launcher/Folder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2242
    iget-object v0, p0, Lcom/htc/launcher/Launcher$9;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Launcher;->showWindow(Z)V

    .line 2243
    :cond_0
    return-void
.end method

.method public onPostDragStart(Lcom/htc/launcher/Draggee;Lcom/htc/launcher/DragSource;Ljava/lang/Object;I)V
    .locals 0
    .parameter "cell"
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 2226
    return-void
.end method

.method public onPreDragStart(Lcom/htc/launcher/Draggee;Lcom/htc/launcher/DragSource;Ljava/lang/Object;I)V
    .locals 5
    .parameter "cell"
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2204
    iget-object v1, p0, Lcom/htc/launcher/Launcher$9;->this$0:Lcom/htc/launcher/Launcher;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/htc/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2205
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 2206
    iget-object v1, p0, Lcom/htc/launcher/Launcher$9;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2209
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/Launcher$9;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->freezeTilt(Z)V
    invoke-static {v1, v3}, Lcom/htc/launcher/Launcher;->access$2100(Lcom/htc/launcher/Launcher;Z)V

    .line 2210
    iget-object v1, p0, Lcom/htc/launcher/Launcher$9;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mTiltListener:Lcom/htc/launcher/Launcher$ExSensorEventListener;
    invoke-static {v1}, Lcom/htc/launcher/Launcher;->access$2200(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/Launcher$ExSensorEventListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher$ExSensorEventListener;->reset()V

    .line 2213
    iget-object v1, p0, Lcom/htc/launcher/Launcher$9;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mWidgetTilter:Lcom/htc/launcher/Launcher$WidgetTilter;
    invoke-static {v1}, Lcom/htc/launcher/Launcher;->access$2300(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/Launcher$WidgetTilter;

    move-result-object v1

    #calls: Lcom/htc/launcher/Launcher$WidgetTilter;->reset()V
    invoke-static {v1}, Lcom/htc/launcher/Launcher$WidgetTilter;->access$1300(Lcom/htc/launcher/Launcher$WidgetTilter;)V

    .line 2214
    iget-object v1, p0, Lcom/htc/launcher/Launcher$9;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mWidgetTilter:Lcom/htc/launcher/Launcher$WidgetTilter;
    invoke-static {v1}, Lcom/htc/launcher/Launcher;->access$2300(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/Launcher$WidgetTilter;

    move-result-object v1

    #setter for: Lcom/htc/launcher/Launcher$WidgetTilter;->mSurpressScroll:Z
    invoke-static {v1, v3}, Lcom/htc/launcher/Launcher$WidgetTilter;->access$2402(Lcom/htc/launcher/Launcher$WidgetTilter;Z)Z

    .line 2216
    iget-object v1, p0, Lcom/htc/launcher/Launcher$9;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1, v3}, Lcom/htc/launcher/Launcher;->showWindow(Z)V

    .line 2218
    sget-boolean v1, Lcom/htc/launcher/Launcher;->isPreStickyMode:Z

    if-eqz v1, :cond_1

    .line 2219
    sput-boolean v4, Lcom/htc/launcher/Launcher;->isPreStickyMode:Z

    .line 2220
    :cond_1
    return-void
.end method
