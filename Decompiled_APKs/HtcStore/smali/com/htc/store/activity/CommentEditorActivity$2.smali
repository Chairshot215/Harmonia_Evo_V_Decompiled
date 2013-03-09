.class Lcom/htc/store/activity/CommentEditorActivity$2;
.super Ljava/lang/Object;
.source "CommentEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 156
    iput-object p1, p0, Lcom/htc/store/activity/CommentEditorActivity$2;->this$0:Lcom/htc/store/activity/CommentEditorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    .line 158
    if-eqz p2, :cond_0

    .line 159
    iget-object v0, p0, Lcom/htc/store/activity/CommentEditorActivity$2;->this$0:Lcom/htc/store/activity/CommentEditorActivity;

    #getter for: Lcom/htc/store/activity/CommentEditorActivity;->mSipLauncher:Lcom/htc/store/module/SipLauncher;
    invoke-static {v0}, Lcom/htc/store/activity/CommentEditorActivity;->access$400(Lcom/htc/store/activity/CommentEditorActivity;)Lcom/htc/store/module/SipLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/store/activity/CommentEditorActivity$2;->this$0:Lcom/htc/store/activity/CommentEditorActivity;

    #getter for: Lcom/htc/store/activity/CommentEditorActivity;->mTextComment:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/store/activity/CommentEditorActivity;->access$000(Lcom/htc/store/activity/CommentEditorActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/store/module/SipLauncher;->show(Landroid/widget/EditText;)V

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/CommentEditorActivity$2;->this$0:Lcom/htc/store/activity/CommentEditorActivity;

    #getter for: Lcom/htc/store/activity/CommentEditorActivity;->mSipLauncher:Lcom/htc/store/module/SipLauncher;
    invoke-static {v0}, Lcom/htc/store/activity/CommentEditorActivity;->access$400(Lcom/htc/store/activity/CommentEditorActivity;)Lcom/htc/store/module/SipLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/store/activity/CommentEditorActivity$2;->this$0:Lcom/htc/store/activity/CommentEditorActivity;

    #getter for: Lcom/htc/store/activity/CommentEditorActivity;->mTextComment:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/store/activity/CommentEditorActivity;->access$000(Lcom/htc/store/activity/CommentEditorActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/store/module/SipLauncher;->hide(Landroid/widget/EditText;)V

    goto :goto_0
.end method
