.class Lcom/android/mms/ui/ComposeMessageActivity$100;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->showNGMGroupSelectDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 17361
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$100;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 17363
    if-nez p2, :cond_0

    .line 17364
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$100;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mStateWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/StateWatcher;->updateIsGroupConversation(Z)V

    .line 17365
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$100;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mGroupConversationButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f090085

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 17370
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 17371
    return-void

    .line 17367
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$100;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mStateWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/StateWatcher;->updateIsGroupConversation(Z)V

    .line 17368
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$100;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mGroupConversationButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f090086

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
