.class Lcom/htc/home/personalize/scene/ScenePicker$InstalledSceneReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScenePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/scene/ScenePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstalledSceneReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/scene/ScenePicker;


# direct methods
.method private constructor <init>(Lcom/htc/home/personalize/scene/ScenePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1261
    iput-object p1, p0, Lcom/htc/home/personalize/scene/ScenePicker$InstalledSceneReceiver;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/home/personalize/scene/ScenePicker;Lcom/htc/home/personalize/scene/ScenePicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1261
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/scene/ScenePicker$InstalledSceneReceiver;-><init>(Lcom/htc/home/personalize/scene/ScenePicker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$InstalledSceneReceiver;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v0, v0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->update()V

    .line 1267
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$InstalledSceneReceiver;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v0, v0, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->notifyDataSetChanged()V

    .line 1268
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$InstalledSceneReceiver;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker$InstalledSceneReceiver;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;
    invoke-static {v1}, Lcom/htc/home/personalize/scene/ScenePicker;->access$200(Lcom/htc/home/personalize/scene/ScenePicker;)Lcom/htc/widget/DeckControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/DeckControl;->getSelection()I

    move-result v1

    #calls: Lcom/htc/home/personalize/scene/ScenePicker;->updateSceneTitle(I)V
    invoke-static {v0, v1}, Lcom/htc/home/personalize/scene/ScenePicker;->access$700(Lcom/htc/home/personalize/scene/ScenePicker;I)V

    .line 1269
    return-void
.end method
