.class Lcom/htc/home/personalize/scene/ScenePicker$12;
.super Ljava/lang/Object;
.source "ScenePicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/scene/ScenePicker;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
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
    .line 1175
    iput-object p1, p0, Lcom/htc/home/personalize/scene/ScenePicker$12;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1177
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker$12;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v3, v3, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->onDelete()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1178
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker$12;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v3, v3, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 1179
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker$12;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v3, v3, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker$12;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v3, v3, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 1180
    invoke-static {}, Lcom/htc/home/personalize/scene/ScenePicker;->access$1600()Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker$12;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-static {v4}, Lcom/htc/home/personalize/scene/NewSceneActivity;->generateHint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/htcSceneManager/scene/SceneManager;->createNewScene(Ljava/lang/String;)I

    move-result v1

    .line 1181
    .local v1, currentSceneId:I
    invoke-static {}, Lcom/htc/home/personalize/scene/ScenePicker;->access$1600()Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/htcSceneManager/scene/SceneManager;->setCurrentScene(I)Z

    move-result v0

    .line 1182
    .local v0, bApply:Z
    if-eqz v0, :cond_0

    .line 1183
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1184
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.htc.launcher.ThemeChooser.action.theme_change"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1185
    const-string v3, "workspace_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1187
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker$12;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-virtual {v3, v2}, Lcom/htc/home/personalize/scene/ScenePicker;->sendBroadcast(Landroid/content/Intent;)V

    .line 1189
    invoke-static {}, Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;->getInstance()Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;->setInSceneChange()V

    .line 1190
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker$12;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-static {v3, v1}, Lcom/htc/home/personalize/SceneProvider/SaveHomeWallpaper;->loadHomeWallpaper(Landroid/content/Context;I)V

    .line 1192
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker$12;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #setter for: Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I
    invoke-static {v3, v6}, Lcom/htc/home/personalize/scene/ScenePicker;->access$602(Lcom/htc/home/personalize/scene/ScenePicker;I)I

    .line 1215
    .end local v0           #bApply:Z
    .end local v1           #currentSceneId:I
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker$12;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker$12;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I
    invoke-static {v4}, Lcom/htc/home/personalize/scene/ScenePicker;->access$600(Lcom/htc/home/personalize/scene/ScenePicker;)I

    move-result v4

    #calls: Lcom/htc/home/personalize/scene/ScenePicker;->updateSceneTitle(I)V
    invoke-static {v3, v4}, Lcom/htc/home/personalize/scene/ScenePicker;->access$700(Lcom/htc/home/personalize/scene/ScenePicker;I)V

    .line 1217
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker$12;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #calls: Lcom/htc/home/personalize/scene/ScenePicker;->switchMode(I)V
    invoke-static {v3, v6}, Lcom/htc/home/personalize/scene/ScenePicker;->access$300(Lcom/htc/home/personalize/scene/ScenePicker;I)V

    .line 1218
    return-void

    .line 1195
    :cond_2
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker$12;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v3, v3, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v3, v6}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/home/personalize/scene/ScenePickerItem;

    invoke-virtual {v3}, Lcom/htc/home/personalize/scene/ScenePickerItem;->getId()I

    move-result v1

    .line 1196
    .restart local v1       #currentSceneId:I
    invoke-static {}, Lcom/htc/home/personalize/scene/ScenePicker;->access$1600()Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/htcSceneManager/scene/SceneManager;->setCurrentScene(I)Z

    move-result v0

    .line 1197
    .restart local v0       #bApply:Z
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1198
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v3, "com.htc.launcher.ThemeChooser.action.theme_change"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1199
    const-string v3, "workspace_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1200
    const-string v3, "extra_auto_save"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1202
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker$12;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-virtual {v3, v2}, Lcom/htc/home/personalize/scene/ScenePicker;->sendBroadcast(Landroid/content/Intent;)V

    .line 1203
    invoke-static {}, Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;->getInstance()Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;->setInSceneChange()V

    .line 1204
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker$12;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-static {v3, v1}, Lcom/htc/home/personalize/SceneProvider/SaveHomeWallpaper;->loadHomeWallpaper(Landroid/content/Context;I)V

    .line 1206
    invoke-static {}, Lcom/htc/home/personalize/scene/ScenePicker;->access$1600()Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/htc/htcSceneManager/scene/SceneManager;->setSceneUpdate(Z)V

    .line 1207
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker$12;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mIsPanelView:Z
    invoke-static {v3}, Lcom/htc/home/personalize/scene/ScenePicker;->access$100(Lcom/htc/home/personalize/scene/ScenePicker;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1208
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker$12;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mDeckControl:Lcom/htc/widget/DeckControl;
    invoke-static {v3}, Lcom/htc/home/personalize/scene/ScenePicker;->access$200(Lcom/htc/home/personalize/scene/ScenePicker;)Lcom/htc/widget/DeckControl;

    move-result-object v3

    invoke-virtual {v3, v6, v4}, Lcom/htc/widget/DeckControl;->setSelection(IZ)V

    .line 1210
    :cond_3
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker$12;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker$12;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I
    invoke-static {v4}, Lcom/htc/home/personalize/scene/ScenePicker;->access$600(Lcom/htc/home/personalize/scene/ScenePicker;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker$12;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v5, v5, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v5}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    #setter for: Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I
    invoke-static {v3, v4}, Lcom/htc/home/personalize/scene/ScenePicker;->access$602(Lcom/htc/home/personalize/scene/ScenePicker;I)I

    goto :goto_0

    .line 1213
    .end local v0           #bApply:Z
    .end local v1           #currentSceneId:I
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker$12;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker$12;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I
    invoke-static {v4}, Lcom/htc/home/personalize/scene/ScenePicker;->access$600(Lcom/htc/home/personalize/scene/ScenePicker;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker$12;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v5, v5, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v5}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    #setter for: Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I
    invoke-static {v3, v4}, Lcom/htc/home/personalize/scene/ScenePicker;->access$602(Lcom/htc/home/personalize/scene/ScenePicker;I)I

    goto/16 :goto_0
.end method
