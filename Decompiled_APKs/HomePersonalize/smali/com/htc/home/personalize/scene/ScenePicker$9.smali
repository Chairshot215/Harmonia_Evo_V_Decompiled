.class Lcom/htc/home/personalize/scene/ScenePicker$9;
.super Ljava/lang/Object;
.source "ScenePicker.java"

# interfaces
.implements Lcom/htc/widget/DeckControl$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/scene/ScenePicker;
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
    .line 838
    iput-object p1, p0, Lcom/htc/home/personalize/scene/ScenePicker$9;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 8
    .parameter "position"

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 842
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker$9;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mIsPanelView:Z
    invoke-static {v2}, Lcom/htc/home/personalize/scene/ScenePicker;->access$100(Lcom/htc/home/personalize/scene/ScenePicker;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 843
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker$9;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mCurrentMode:I
    invoke-static {v2}, Lcom/htc/home/personalize/scene/ScenePicker;->access$000(Lcom/htc/home/personalize/scene/ScenePicker;)I

    move-result v2

    if-nez v2, :cond_1

    .line 844
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker$9;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v2, v2, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker$9;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v3, v3, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker$9;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;
    invoke-static {v4}, Lcom/htc/home/personalize/scene/ScenePicker;->access$200(Lcom/htc/home/personalize/scene/ScenePicker;)Lcom/htc/widget/DeckControl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/DeckControl;->getSelection()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getItemId(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->setSelectSceneId(I)V

    .line 845
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker$9;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v2, v2, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v2}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->onApply()V

    .line 846
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker$9;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-static {v2}, Lcom/htc/home/personalize/PersonalizeCarousel;->launchHome(Landroid/content/Context;)V

    .line 847
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker$9;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.home.personalize.ACTION_FINISH_AND_LAUNCH_HOME"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/htc/home/personalize/scene/ScenePicker;->sendBroadcast(Landroid/content/Intent;)V

    .line 848
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker$9;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-virtual {v2}, Lcom/htc/home/personalize/scene/ScenePicker;->finish()V

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker$9;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mCurrentMode:I
    invoke-static {v2}, Lcom/htc/home/personalize/scene/ScenePicker;->access$000(Lcom/htc/home/personalize/scene/ScenePicker;)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 850
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker$9;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v2, v2, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v2, p1}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->addDeleteIndex(I)V

    .line 851
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker$9;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v2, v2, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v2, p1}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->notifyUpdateItem(I)V

    .line 852
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker$9;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v2, v2, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v2}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getDeleteItemCount()I

    move-result v0

    .line 853
    .local v0, deleteItemCount:I
    const-string v2, "%s (%d)"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker$9;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-virtual {v4}, Lcom/htc/home/personalize/scene/ScenePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20c01fc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 854
    .local v1, strFooterButtonRightText:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker$9;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v2}, Lcom/htc/home/personalize/scene/ScenePicker;->access$900(Lcom/htc/home/personalize/scene/ScenePicker;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 855
    if-lez v0, :cond_2

    .line 856
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker$9;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v2}, Lcom/htc/home/personalize/scene/ScenePicker;->access$900(Lcom/htc/home/personalize/scene/ScenePicker;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0

    .line 858
    :cond_2
    iget-object v2, p0, Lcom/htc/home/personalize/scene/ScenePicker$9;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v2}, Lcom/htc/home/personalize/scene/ScenePicker;->access$900(Lcom/htc/home/personalize/scene/ScenePicker;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0
.end method
