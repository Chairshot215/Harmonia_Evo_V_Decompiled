.class Lcom/htc/home/personalize/scene/NewSceneActivity$3;
.super Ljava/lang/Object;
.source "NewSceneActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 236
    iput-object p1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$3;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 240
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 245
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "text"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$3;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    #calls: Lcom/htc/home/personalize/scene/NewSceneActivity;->checkNullOrAllSpaceString(Ljava/lang/CharSequence;)Z
    invoke-static {v0, p1}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$800(Lcom/htc/home/personalize/scene/NewSceneActivity;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$3;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    #getter for: Lcom/htc/home/personalize/scene/NewSceneActivity;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v0}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$900(Lcom/htc/home/personalize/scene/NewSceneActivity;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 254
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$3;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    #getter for: Lcom/htc/home/personalize/scene/NewSceneActivity;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v0}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$900(Lcom/htc/home/personalize/scene/NewSceneActivity;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0
.end method
