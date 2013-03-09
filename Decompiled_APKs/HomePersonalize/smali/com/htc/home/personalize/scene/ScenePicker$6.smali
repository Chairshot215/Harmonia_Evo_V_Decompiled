.class Lcom/htc/home/personalize/scene/ScenePicker$6;
.super Ljava/lang/Object;
.source "ScenePicker.java"

# interfaces
.implements Lcom/htc/sunny/SPresentation$OnItemLongClickListener;


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
    .line 518
    iput-object p1, p0, Lcom/htc/home/personalize/scene/ScenePicker$6;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPresentationItemLongClick(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 522
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker$6;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mCurrentMode:I
    invoke-static {v1}, Lcom/htc/home/personalize/scene/ScenePicker;->access$000(Lcom/htc/home/personalize/scene/ScenePicker;)I

    move-result v1

    if-nez v1, :cond_0

    .line 523
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker$6;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v1, v1, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/scene/ScenePickerItem;

    .line 524
    .local v0, item:Lcom/htc/home/personalize/scene/ScenePickerItem;
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker$6;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #calls: Lcom/htc/home/personalize/scene/ScenePicker;->createRenameSceneDialog(Lcom/htc/home/personalize/scene/ScenePickerItem;)V
    invoke-static {v1, v0}, Lcom/htc/home/personalize/scene/ScenePicker;->access$800(Lcom/htc/home/personalize/scene/ScenePicker;Lcom/htc/home/personalize/scene/ScenePickerItem;)V

    .line 527
    .end local v0           #item:Lcom/htc/home/personalize/scene/ScenePickerItem;
    :cond_0
    return-void
.end method
