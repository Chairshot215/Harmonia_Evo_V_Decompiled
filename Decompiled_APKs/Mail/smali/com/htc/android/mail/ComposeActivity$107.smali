.class Lcom/htc/android/mail/ComposeActivity$107;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 12717
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$107;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 12719
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$107;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$107;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-boolean v0, v0, Lcom/htc/android/mail/ComposeActivity;->showCcSapphire:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v2, Lcom/htc/android/mail/ComposeActivity;->showCcSapphire:Z

    .line 12720
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$107;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->ShowCCList()V
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$14400(Lcom/htc/android/mail/ComposeActivity;)V

    .line 12721
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$107;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-boolean v0, v0, Lcom/htc/android/mail/ComposeActivity;->showCcSapphire:Z

    if-eqz v0, :cond_1

    .line 12722
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$107;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity;->edit_cc:Landroid/widget/IMEAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/IMEAutoCompleteTextView;->requestFocus()Z

    .line 12723
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$107;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$107;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, v2, Lcom/htc/android/mail/ComposeActivity;->edit_cc:Landroid/widget/IMEAutoCompleteTextView;

    invoke-virtual {v0, v2, v1}, Lcom/htc/android/mail/ComposeActivity;->requestSip(Landroid/view/View;Z)V

    .line 12728
    :goto_1
    return-void

    .line 12719
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 12725
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$107;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity;->editTo:Landroid/widget/IMEAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/IMEAutoCompleteTextView;->requestFocus()Z

    .line 12726
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$107;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$107;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, v2, Lcom/htc/android/mail/ComposeActivity;->editTo:Landroid/widget/IMEAutoCompleteTextView;

    invoke-virtual {v0, v2, v1}, Lcom/htc/android/mail/ComposeActivity;->requestSip(Landroid/view/View;Z)V

    goto :goto_1
.end method
