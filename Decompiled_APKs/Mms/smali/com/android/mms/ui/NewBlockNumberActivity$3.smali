.class Lcom/android/mms/ui/NewBlockNumberActivity$3;
.super Ljava/lang/Object;
.source "NewBlockNumberActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/NewBlockNumberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NewBlockNumberActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewBlockNumberActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/mms/ui/NewBlockNumberActivity$3;->this$0:Lcom/android/mms/ui/NewBlockNumberActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/mms/ui/NewBlockNumberActivity$3;->this$0:Lcom/android/mms/ui/NewBlockNumberActivity;

    #getter for: Lcom/android/mms/ui/NewBlockNumberActivity;->mNumberEdit:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/NewBlockNumberActivity;->access$000(Lcom/android/mms/ui/NewBlockNumberActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/mms/ui/NewBlockNumberActivity$3;->this$0:Lcom/android/mms/ui/NewBlockNumberActivity;

    #getter for: Lcom/android/mms/ui/NewBlockNumberActivity;->mNumberEdit:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/NewBlockNumberActivity;->access$000(Lcom/android/mms/ui/NewBlockNumberActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/NewBlockNumberActivity$3;->this$0:Lcom/android/mms/ui/NewBlockNumberActivity;

    #getter for: Lcom/android/mms/ui/NewBlockNumberActivity;->mNumberEdit:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v1}, Lcom/android/mms/ui/NewBlockNumberActivity;->access$000(Lcom/android/mms/ui/NewBlockNumberActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    const-string v3, ";"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/android/mms/ui/NewBlockNumberActivity$3;->this$0:Lcom/android/mms/ui/NewBlockNumberActivity;

    #getter for: Lcom/android/mms/ui/NewBlockNumberActivity;->mNumberEdit:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/NewBlockNumberActivity;->access$000(Lcom/android/mms/ui/NewBlockNumberActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setSelection(I)V

    .line 135
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 138
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/mms/ui/NewBlockNumberActivity$3;->this$0:Lcom/android/mms/ui/NewBlockNumberActivity;

    iget-object v1, v1, Lcom/android/mms/ui/NewBlockNumberActivity;->mDone:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 142
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 143
    .local v0, enabled:Z
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/NewBlockNumberActivity$3;->this$0:Lcom/android/mms/ui/NewBlockNumberActivity;

    iget-object v1, v1, Lcom/android/mms/ui/NewBlockNumberActivity;->mDone:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    .line 144
    iget-object v1, p0, Lcom/android/mms/ui/NewBlockNumberActivity$3;->this$0:Lcom/android/mms/ui/NewBlockNumberActivity;

    iget-object v1, v1, Lcom/android/mms/ui/NewBlockNumberActivity;->mDone:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 146
    .end local v0           #enabled:Z
    :cond_0
    return-void

    .line 142
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
