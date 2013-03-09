.class Lcom/android/mms/ui/BackupActivity$6;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BackupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BackupActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BackupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/mms/ui/BackupActivity$6;->this$0:Lcom/android/mms/ui/BackupActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 233
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 236
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 239
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/mms/ui/BackupActivity$6;->this$0:Lcom/android/mms/ui/BackupActivity;

    iget-object v0, v0, Lcom/android/mms/ui/BackupActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 241
    iget-object v0, p0, Lcom/android/mms/ui/BackupActivity$6;->this$0:Lcom/android/mms/ui/BackupActivity;

    iget-object v0, v0, Lcom/android/mms/ui/BackupActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 246
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BackupActivity$6;->this$0:Lcom/android/mms/ui/BackupActivity;

    iget-object v0, v0, Lcom/android/mms/ui/BackupActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 244
    iget-object v0, p0, Lcom/android/mms/ui/BackupActivity$6;->this$0:Lcom/android/mms/ui/BackupActivity;

    iget-object v0, v0, Lcom/android/mms/ui/BackupActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    goto :goto_0
.end method
