.class Lcom/htc/home/personalize/scene/ScenePicker$5;
.super Ljava/lang/Object;
.source "ScenePicker.java"

# interfaces
.implements Lcom/htc/widget/DeckControl$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/scene/ScenePicker;->initPanelPicker()V
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
    .line 509
    iput-object p1, p0, Lcom/htc/home/personalize/scene/ScenePicker$5;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$5;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #setter for: Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I
    invoke-static {v0, p1}, Lcom/htc/home/personalize/scene/ScenePicker;->access$602(Lcom/htc/home/personalize/scene/ScenePicker;I)I

    .line 513
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$5;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker$5;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I
    invoke-static {v1}, Lcom/htc/home/personalize/scene/ScenePicker;->access$600(Lcom/htc/home/personalize/scene/ScenePicker;)I

    move-result v1

    #calls: Lcom/htc/home/personalize/scene/ScenePicker;->updateSceneTitle(I)V
    invoke-static {v0, v1}, Lcom/htc/home/personalize/scene/ScenePicker;->access$700(Lcom/htc/home/personalize/scene/ScenePicker;I)V

    .line 514
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$5;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v0, v0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker$5;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v1, v1, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker$5;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I
    invoke-static {v2}, Lcom/htc/home/personalize/scene/ScenePicker;->access$600(Lcom/htc/home/personalize/scene/ScenePicker;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getItemId(I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->setSelectSceneId(I)V

    .line 515
    return-void
.end method
