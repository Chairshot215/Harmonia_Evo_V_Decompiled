.class Lcom/htc/home/personalize/scene/NewSceneActivity$1$4;
.super Ljava/lang/Object;
.source "NewSceneActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/scene/NewSceneActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/home/personalize/scene/NewSceneActivity$1;

.field final synthetic val$scene:I


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/scene/NewSceneActivity$1;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1$4;->this$1:Lcom/htc/home/personalize/scene/NewSceneActivity$1;

    iput p2, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1$4;->val$scene:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 205
    iget v1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1$4;->val$scene:I

    iget-object v2, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1$4;->this$1:Lcom/htc/home/personalize/scene/NewSceneActivity$1;

    iget-object v2, v2, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    #getter for: Lcom/htc/home/personalize/scene/NewSceneActivity;->mSelectId:I
    invoke-static {v2}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$500(Lcom/htc/home/personalize/scene/NewSceneActivity;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 206
    iget-object v1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1$4;->this$1:Lcom/htc/home/personalize/scene/NewSceneActivity$1;

    iget-object v1, v1, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    #getter for: Lcom/htc/home/personalize/scene/NewSceneActivity;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;
    invoke-static {v1}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$300(Lcom/htc/home/personalize/scene/NewSceneActivity;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1$4;->this$1:Lcom/htc/home/personalize/scene/NewSceneActivity$1;

    iget-object v2, v2, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1$4;->this$1:Lcom/htc/home/personalize/scene/NewSceneActivity$1;

    iget-object v3, v3, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    #getter for: Lcom/htc/home/personalize/scene/NewSceneActivity;->mSelectId:I
    invoke-static {v3}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$500(Lcom/htc/home/personalize/scene/NewSceneActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1$4;->this$1:Lcom/htc/home/personalize/scene/NewSceneActivity$1;

    iget-object v4, v4, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    #getter for: Lcom/htc/home/personalize/scene/NewSceneActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$100(Lcom/htc/home/personalize/scene/NewSceneActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/htcSceneManager/scene/SceneManager;->renameScene(Landroid/content/Context;ILjava/lang/String;)V

    .line 207
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 208
    .local v0, data:Landroid/content/Intent;
    const-string v1, "delete_scene_id"

    iget v2, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1$4;->val$scene:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    iget-object v1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1$4;->this$1:Lcom/htc/home/personalize/scene/NewSceneActivity$1;

    iget-object v1, v1, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/htc/home/personalize/scene/NewSceneActivity;->setResult(ILandroid/content/Intent;)V

    .line 211
    .end local v0           #data:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1$4;->this$1:Lcom/htc/home/personalize/scene/NewSceneActivity$1;

    iget-object v1, v1, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    invoke-virtual {v1}, Lcom/htc/home/personalize/scene/NewSceneActivity;->finish()V

    .line 212
    return-void
.end method
