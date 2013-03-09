.class Lcom/htc/store/activity/CommentEditorActivity$1;
.super Ljava/lang/Object;
.source "CommentEditorActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/store/activity/CommentEditorActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/CommentEditorActivity;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/CommentEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/htc/store/activity/CommentEditorActivity$1;->this$0:Lcom/htc/store/activity/CommentEditorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    const/16 v2, 0x96

    .line 138
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 139
    .local v0, length:I
    if-le v0, v2, :cond_0

    .line 140
    invoke-interface {p1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    move-result-object p1

    .line 141
    iget-object v1, p0, Lcom/htc/store/activity/CommentEditorActivity$1;->this$0:Lcom/htc/store/activity/CommentEditorActivity;

    #getter for: Lcom/htc/store/activity/CommentEditorActivity;->mTextComment:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/store/activity/CommentEditorActivity;->access$000(Lcom/htc/store/activity/CommentEditorActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v1, p0, Lcom/htc/store/activity/CommentEditorActivity$1;->this$0:Lcom/htc/store/activity/CommentEditorActivity;

    #getter for: Lcom/htc/store/activity/CommentEditorActivity;->mTextComment:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/store/activity/CommentEditorActivity;->access$000(Lcom/htc/store/activity/CommentEditorActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 146
    :goto_0
    if-lez v0, :cond_1

    .line 147
    iget-object v1, p0, Lcom/htc/store/activity/CommentEditorActivity$1;->this$0:Lcom/htc/store/activity/CommentEditorActivity;

    iget-object v2, p0, Lcom/htc/store/activity/CommentEditorActivity$1;->this$0:Lcom/htc/store/activity/CommentEditorActivity;

    #getter for: Lcom/htc/store/activity/CommentEditorActivity;->mButtonPost:Landroid/widget/Button;
    invoke-static {v2}, Lcom/htc/store/activity/CommentEditorActivity;->access$200(Lcom/htc/store/activity/CommentEditorActivity;)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x1

    #calls: Lcom/htc/store/activity/CommentEditorActivity;->setButtonEnabled(Landroid/widget/Button;Z)V
    invoke-static {v1, v2, v3}, Lcom/htc/store/activity/CommentEditorActivity;->access$300(Lcom/htc/store/activity/CommentEditorActivity;Landroid/widget/Button;Z)V

    .line 151
    :goto_1
    return-void

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/htc/store/activity/CommentEditorActivity$1;->this$0:Lcom/htc/store/activity/CommentEditorActivity;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    rsub-int v2, v2, 0x96

    #calls: Lcom/htc/store/activity/CommentEditorActivity;->setLengthRemained(I)V
    invoke-static {v1, v2}, Lcom/htc/store/activity/CommentEditorActivity;->access$100(Lcom/htc/store/activity/CommentEditorActivity;I)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/htc/store/activity/CommentEditorActivity$1;->this$0:Lcom/htc/store/activity/CommentEditorActivity;

    iget-object v2, p0, Lcom/htc/store/activity/CommentEditorActivity$1;->this$0:Lcom/htc/store/activity/CommentEditorActivity;

    #getter for: Lcom/htc/store/activity/CommentEditorActivity;->mButtonPost:Landroid/widget/Button;
    invoke-static {v2}, Lcom/htc/store/activity/CommentEditorActivity;->access$200(Lcom/htc/store/activity/CommentEditorActivity;)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    #calls: Lcom/htc/store/activity/CommentEditorActivity;->setButtonEnabled(Landroid/widget/Button;Z)V
    invoke-static {v1, v2, v3}, Lcom/htc/store/activity/CommentEditorActivity;->access$300(Lcom/htc/store/activity/CommentEditorActivity;Landroid/widget/Button;Z)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 153
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 154
    return-void
.end method
