.class Lcom/htc/home/personalize/scene/NewSceneActivity$5;
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
    .line 285
    iput-object p1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$5;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 288
    iget-object v4, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$5;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    #getter for: Lcom/htc/home/personalize/scene/NewSceneActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$100(Lcom/htc/home/personalize/scene/NewSceneActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 289
    iget-object v4, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$5;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    #getter for: Lcom/htc/home/personalize/scene/NewSceneActivity;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v4}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$900(Lcom/htc/home/personalize/scene/NewSceneActivity;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 302
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v4, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$5;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    #getter for: Lcom/htc/home/personalize/scene/NewSceneActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$100(Lcom/htc/home/personalize/scene/NewSceneActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v2

    .line 293
    .local v2, length:I
    const/4 v0, 0x1

    .line 294
    .local v0, allspace:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 295
    iget-object v4, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$5;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    #getter for: Lcom/htc/home/personalize/scene/NewSceneActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$100(Lcom/htc/home/personalize/scene/NewSceneActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_1

    .line 296
    const/4 v0, 0x0

    .line 294
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 300
    :cond_2
    iget-object v4, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$5;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    #getter for: Lcom/htc/home/personalize/scene/NewSceneActivity;->mFooterButtonRight:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v4}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$900(Lcom/htc/home/personalize/scene/NewSceneActivity;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v4

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 306
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 310
    return-void
.end method
