.class Lcom/htc/home/personalize/scene/ScenePicker$8;
.super Ljava/lang/Object;
.source "ScenePicker.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/scene/ScenePicker;->initListPicker()V
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
    .line 710
    iput-object p1, p0, Lcom/htc/home/personalize/scene/ScenePicker$8;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 713
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$8;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mCurrentMode:I
    invoke-static {v0}, Lcom/htc/home/personalize/scene/ScenePicker;->access$000(Lcom/htc/home/personalize/scene/ScenePicker;)I

    move-result v0

    if-nez v0, :cond_0

    if-ltz p3, :cond_0

    .line 714
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$8;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #setter for: Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I
    invoke-static {v0, p3}, Lcom/htc/home/personalize/scene/ScenePicker;->access$602(Lcom/htc/home/personalize/scene/ScenePicker;I)I

    .line 715
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$8;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mListView:Lcom/htc/widget/HtcListView;
    invoke-static {v0}, Lcom/htc/home/personalize/scene/ScenePicker;->access$1400(Lcom/htc/home/personalize/scene/ScenePicker;)Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker$8;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I
    invoke-static {v1}, Lcom/htc/home/personalize/scene/ScenePicker;->access$600(Lcom/htc/home/personalize/scene/ScenePicker;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 716
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$8;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v0, v0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker$8;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v1, v1, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker$8;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I
    invoke-static {v2}, Lcom/htc/home/personalize/scene/ScenePicker;->access$600(Lcom/htc/home/personalize/scene/ScenePicker;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getItemId(I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->setSelectSceneId(I)V

    .line 717
    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker$8;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$8;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v0, v0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v0, p3}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/scene/ScenePickerItem;

    #calls: Lcom/htc/home/personalize/scene/ScenePicker;->createRenameSceneDialog(Lcom/htc/home/personalize/scene/ScenePickerItem;)V
    invoke-static {v1, v0}, Lcom/htc/home/personalize/scene/ScenePicker;->access$800(Lcom/htc/home/personalize/scene/ScenePicker;Lcom/htc/home/personalize/scene/ScenePickerItem;)V

    .line 718
    const/4 v0, 0x1

    .line 720
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
