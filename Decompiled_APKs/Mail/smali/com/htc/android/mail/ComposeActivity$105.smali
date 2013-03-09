.class Lcom/htc/android/mail/ComposeActivity$105;
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
    .line 12416
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$105;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 12418
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$105;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/htc/android/mail/ComposeActivity;->selectView:Landroid/widget/LinearLayout;

    .line 12420
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$105;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity;->contactPicker_to:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_1

    .line 12423
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$105;->this$0:Lcom/htc/android/mail/ComposeActivity;

    sget-object v1, Lcom/htc/android/mail/ComposeActivity$PickerMode;->TO:Lcom/htc/android/mail/ComposeActivity$PickerMode;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mModePicker:Lcom/htc/android/mail/ComposeActivity$PickerMode;
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$13802(Lcom/htc/android/mail/ComposeActivity;Lcom/htc/android/mail/ComposeActivity$PickerMode;)Lcom/htc/android/mail/ComposeActivity$PickerMode;

    .line 12424
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$105;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$105;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, v1, Lcom/htc/android/mail/ComposeActivity;->editTo:Landroid/widget/IMEAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/IMEAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mPickerString:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$13902(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 12440
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$105;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->pickMail()V
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$2500(Lcom/htc/android/mail/ComposeActivity;)V

    .line 12441
    return-void

    .line 12426
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$105;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity;->contactPicker_cc:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_2

    .line 12429
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$105;->this$0:Lcom/htc/android/mail/ComposeActivity;

    sget-object v1, Lcom/htc/android/mail/ComposeActivity$PickerMode;->CC:Lcom/htc/android/mail/ComposeActivity$PickerMode;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mModePicker:Lcom/htc/android/mail/ComposeActivity$PickerMode;
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$13802(Lcom/htc/android/mail/ComposeActivity;Lcom/htc/android/mail/ComposeActivity$PickerMode;)Lcom/htc/android/mail/ComposeActivity$PickerMode;

    .line 12430
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$105;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$105;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, v1, Lcom/htc/android/mail/ComposeActivity;->edit_cc:Landroid/widget/IMEAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/IMEAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mPickerString:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$13902(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 12432
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$105;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity;->contactPicker_bcc:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_0

    .line 12435
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$105;->this$0:Lcom/htc/android/mail/ComposeActivity;

    sget-object v1, Lcom/htc/android/mail/ComposeActivity$PickerMode;->BCC:Lcom/htc/android/mail/ComposeActivity$PickerMode;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mModePicker:Lcom/htc/android/mail/ComposeActivity$PickerMode;
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$13802(Lcom/htc/android/mail/ComposeActivity;Lcom/htc/android/mail/ComposeActivity$PickerMode;)Lcom/htc/android/mail/ComposeActivity$PickerMode;

    .line 12436
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$105;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$105;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, v1, Lcom/htc/android/mail/ComposeActivity;->edit_bcc:Landroid/widget/IMEAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/IMEAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mPickerString:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$13902(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
