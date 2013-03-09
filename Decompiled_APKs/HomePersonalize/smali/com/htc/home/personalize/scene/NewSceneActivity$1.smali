.class Lcom/htc/home/personalize/scene/NewSceneActivity$1;
.super Ljava/lang/Object;
.source "NewSceneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/scene/NewSceneActivity;->init()V
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
    .line 141
    iput-object p1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const v10, 0x7f09005b

    const v9, 0x7f090059

    const v8, 0x7f090058

    const v7, 0x20c013d

    const/4 v6, -0x1

    .line 143
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    #getter for: Lcom/htc/home/personalize/scene/NewSceneActivity;->mLaunchMode:I
    invoke-static {v3}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$000(Lcom/htc/home/personalize/scene/NewSceneActivity;)I

    move-result v3

    if-nez v3, :cond_2

    .line 145
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    #getter for: Lcom/htc/home/personalize/scene/NewSceneActivity;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;
    invoke-static {v3}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$300(Lcom/htc/home/personalize/scene/NewSceneActivity;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    iget-object v5, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    #getter for: Lcom/htc/home/personalize/scene/NewSceneActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$100(Lcom/htc/home/personalize/scene/NewSceneActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/htc/home/personalize/scene/NewSceneActivity;->getOrgSceneName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$200(Lcom/htc/home/personalize/scene/NewSceneActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/htcSceneManager/scene/SceneManager;->findSceneByName(Ljava/lang/String;)I

    move-result v2

    .line 146
    .local v2, scene:I
    if-eq v2, v6, :cond_1

    .line 147
    const-string v3, "NewSceneActivity"

    const-string v4, "Replace scene"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    invoke-direct {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 149
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    invoke-virtual {v3, v8}, Lcom/htc/home/personalize/scene/NewSceneActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 150
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    invoke-virtual {v3, v9}, Lcom/htc/home/personalize/scene/NewSceneActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 151
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    invoke-virtual {v3, v7}, Lcom/htc/home/personalize/scene/NewSceneActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/htc/home/personalize/scene/NewSceneActivity$1$1;

    invoke-direct {v4, p0}, Lcom/htc/home/personalize/scene/NewSceneActivity$1$1;-><init>(Lcom/htc/home/personalize/scene/NewSceneActivity$1;)V

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 157
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    invoke-virtual {v3, v10}, Lcom/htc/home/personalize/scene/NewSceneActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/htc/home/personalize/scene/NewSceneActivity$1$2;

    invoke-direct {v4, p0, v2}, Lcom/htc/home/personalize/scene/NewSceneActivity$1$2;-><init>(Lcom/htc/home/personalize/scene/NewSceneActivity$1;I)V

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 169
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 170
    .local v1, dialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 225
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v1           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v2           #scene:I
    :cond_0
    :goto_0
    return-void

    .line 173
    .restart local v2       #scene:I
    :cond_1
    const-string v3, "NewSceneActivity"

    const-string v4, "Create new scene"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    #calls: Lcom/htc/home/personalize/scene/NewSceneActivity;->createNewScene()V
    invoke-static {v3}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$400(Lcom/htc/home/personalize/scene/NewSceneActivity;)V

    .line 175
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/htc/home/personalize/scene/NewSceneActivity;->setResult(I)V

    .line 176
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    invoke-virtual {v3}, Lcom/htc/home/personalize/scene/NewSceneActivity;->finish()V

    goto :goto_0

    .line 179
    .end local v2           #scene:I
    :cond_2
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    #getter for: Lcom/htc/home/personalize/scene/NewSceneActivity;->mLaunchMode:I
    invoke-static {v3}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$000(Lcom/htc/home/personalize/scene/NewSceneActivity;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 180
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    #getter for: Lcom/htc/home/personalize/scene/NewSceneActivity;->mSelectId:I
    invoke-static {v3}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$500(Lcom/htc/home/personalize/scene/NewSceneActivity;)I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 181
    const-string v3, "NewSceneActivity"

    const-string v4, "onClick(), mLaunchMode == RENAME_SCENE, mSelectId is invalidate"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    invoke-virtual {v3}, Lcom/htc/home/personalize/scene/NewSceneActivity;->finish()V

    .line 185
    :cond_3
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    iget-object v4, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    #getter for: Lcom/htc/home/personalize/scene/NewSceneActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$100(Lcom/htc/home/personalize/scene/NewSceneActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/htc/home/personalize/scene/NewSceneActivity;->checkSceneNameNotChange(Ljava/lang/String;)Z
    invoke-static {v3, v4}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$600(Lcom/htc/home/personalize/scene/NewSceneActivity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 186
    const-string v3, "NewSceneActivity"

    const-string v4, "The name does not change"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    invoke-virtual {v3}, Lcom/htc/home/personalize/scene/NewSceneActivity;->finish()V

    goto :goto_0

    .line 191
    :cond_4
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    #getter for: Lcom/htc/home/personalize/scene/NewSceneActivity;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;
    invoke-static {v3}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$300(Lcom/htc/home/personalize/scene/NewSceneActivity;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    iget-object v5, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    #getter for: Lcom/htc/home/personalize/scene/NewSceneActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$100(Lcom/htc/home/personalize/scene/NewSceneActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/htc/home/personalize/scene/NewSceneActivity;->getOrgSceneName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$200(Lcom/htc/home/personalize/scene/NewSceneActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/htcSceneManager/scene/SceneManager;->findSceneByName(Ljava/lang/String;)I

    move-result v2

    .line 192
    .restart local v2       #scene:I
    if-eq v2, v6, :cond_5

    .line 193
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    invoke-direct {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 194
    .restart local v0       #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    invoke-virtual {v3, v8}, Lcom/htc/home/personalize/scene/NewSceneActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 195
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    invoke-virtual {v3, v9}, Lcom/htc/home/personalize/scene/NewSceneActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 196
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    invoke-virtual {v3, v7}, Lcom/htc/home/personalize/scene/NewSceneActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/htc/home/personalize/scene/NewSceneActivity$1$3;

    invoke-direct {v4, p0}, Lcom/htc/home/personalize/scene/NewSceneActivity$1$3;-><init>(Lcom/htc/home/personalize/scene/NewSceneActivity$1;)V

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 202
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    invoke-virtual {v3, v10}, Lcom/htc/home/personalize/scene/NewSceneActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/htc/home/personalize/scene/NewSceneActivity$1$4;

    invoke-direct {v4, p0, v2}, Lcom/htc/home/personalize/scene/NewSceneActivity$1$4;-><init>(Lcom/htc/home/personalize/scene/NewSceneActivity$1;I)V

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 216
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 217
    .restart local v1       #dialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_0

    .line 220
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v1           #dialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_5
    iget-object v3, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$1;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    #calls: Lcom/htc/home/personalize/scene/NewSceneActivity;->renameScene()V
    invoke-static {v3}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$700(Lcom/htc/home/personalize/scene/NewSceneActivity;)V

    goto/16 :goto_0
.end method
