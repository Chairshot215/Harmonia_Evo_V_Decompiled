.class Lcom/htc/home/personalize/scene/NewSceneActivity$7;
.super Ljava/lang/Object;
.source "NewSceneActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/scene/NewSceneActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/scene/NewSceneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$7;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 486
    iget-object v1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$7;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    #getter for: Lcom/htc/home/personalize/scene/NewSceneActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$100(Lcom/htc/home/personalize/scene/NewSceneActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, sceneName:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$7;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    #getter for: Lcom/htc/home/personalize/scene/NewSceneActivity;->mLaunchMode:I
    invoke-static {v1}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$000(Lcom/htc/home/personalize/scene/NewSceneActivity;)I

    move-result v1

    if-nez v1, :cond_2

    .line 489
    iget-object v1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$7;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    #calls: Lcom/htc/home/personalize/scene/NewSceneActivity;->createNewScene()V
    invoke-static {v1}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$400(Lcom/htc/home/personalize/scene/NewSceneActivity;)V

    .line 493
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/htc/home/personalize/config/SettingUtil;->localLOGD:Z

    if-eqz v1, :cond_1

    .line 494
    const-string v1, "NewSceneActivity"

    const-string v2, "Duplicate scene name dialog: click replace"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_1
    return-void

    .line 490
    :cond_2
    iget-object v1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$7;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    #getter for: Lcom/htc/home/personalize/scene/NewSceneActivity;->mLaunchMode:I
    invoke-static {v1}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$000(Lcom/htc/home/personalize/scene/NewSceneActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 491
    iget-object v1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$7;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    #calls: Lcom/htc/home/personalize/scene/NewSceneActivity;->renameScene()V
    invoke-static {v1}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$700(Lcom/htc/home/personalize/scene/NewSceneActivity;)V

    goto :goto_0
.end method
