.class Lcom/htc/home/personalize/scene/ScenePicker$1;
.super Ljava/lang/Object;
.source "ScenePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/scene/ScenePicker;->initButtonListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/scene/ScenePicker;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/scene/ScenePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/htc/home/personalize/scene/ScenePicker$1;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$1;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mCurrentMode:I
    invoke-static {v0}, Lcom/htc/home/personalize/scene/ScenePicker;->access$000(Lcom/htc/home/personalize/scene/ScenePicker;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$1;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/scene/ScenePicker;->showDialog(I)V

    .line 261
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$1;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mIsPanelView:Z
    invoke-static {v0}, Lcom/htc/home/personalize/scene/ScenePicker;->access$100(Lcom/htc/home/personalize/scene/ScenePicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$1;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v0, v0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker$1;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v1, v1, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker$1;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;
    invoke-static {v2}, Lcom/htc/home/personalize/scene/ScenePicker;->access$200(Lcom/htc/home/personalize/scene/ScenePicker;)Lcom/htc/widget/DeckControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/DeckControl;->getSelection()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getItemId(I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->setSelectSceneId(I)V

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$1;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v0, v0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->onApply()V

    .line 257
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$1;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-static {v0}, Lcom/htc/home/personalize/PersonalizeCarousel;->launchHome(Landroid/content/Context;)V

    .line 258
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$1;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.home.personalize.ACTION_FINISH_AND_LAUNCH_HOME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/scene/ScenePicker;->sendBroadcast(Landroid/content/Intent;)V

    .line 259
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$1;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-virtual {v0}, Lcom/htc/home/personalize/scene/ScenePicker;->finish()V

    goto :goto_0
.end method
