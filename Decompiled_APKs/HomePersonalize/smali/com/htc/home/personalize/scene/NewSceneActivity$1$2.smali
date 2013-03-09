.class Lcom/htc/home/personalize/scene/NewSceneActivity$1$2;
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
    .line 158
    iput-object p1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1$2;->this$1:Lcom/htc/home/personalize/scene/NewSceneActivity$1;

    iput p2, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1$2;->val$scene:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 160
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 161
    .local v0, data:Landroid/content/Intent;
    const-string v1, "delete_scene_id"

    iget v2, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1$2;->val$scene:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    iget-object v1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1$2;->this$1:Lcom/htc/home/personalize/scene/NewSceneActivity$1;

    iget-object v1, v1, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/htc/home/personalize/scene/NewSceneActivity;->setResult(ILandroid/content/Intent;)V

    .line 163
    iget-object v1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1$2;->this$1:Lcom/htc/home/personalize/scene/NewSceneActivity$1;

    iget-object v1, v1, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    #calls: Lcom/htc/home/personalize/scene/NewSceneActivity;->createNewScene()V
    invoke-static {v1}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$400(Lcom/htc/home/personalize/scene/NewSceneActivity;)V

    .line 164
    iget-object v1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1$2;->this$1:Lcom/htc/home/personalize/scene/NewSceneActivity$1;

    iget-object v1, v1, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    invoke-virtual {v1}, Lcom/htc/home/personalize/scene/NewSceneActivity;->finish()V

    .line 165
    return-void
.end method
