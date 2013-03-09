.class Lcom/htc/home/personalize/scene/ScenePicker$7;
.super Landroid/database/DataSetObserver;
.source "ScenePicker.java"


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
    .line 532
    iput-object p1, p0, Lcom/htc/home/personalize/scene/ScenePicker$7;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$7;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v0}, Lcom/htc/home/personalize/scene/ScenePicker;->access$900(Lcom/htc/home/personalize/scene/ScenePicker;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$7;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v0, v0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$7;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v0}, Lcom/htc/home/personalize/scene/ScenePicker;->access$900(Lcom/htc/home/personalize/scene/ScenePicker;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 543
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 544
    return-void

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$7;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v0}, Lcom/htc/home/personalize/scene/ScenePicker;->access$900(Lcom/htc/home/personalize/scene/ScenePicker;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0
.end method
