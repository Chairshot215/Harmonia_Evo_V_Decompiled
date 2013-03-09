.class Lcom/google/android/finsky/activities/FlagItemUserMessageDialog$2;
.super Ljava/lang/Object;
.source "FlagItemUserMessageDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;

.field final synthetic val$okButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog$2;->this$0:Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;

    iput-object p2, p0, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog$2;->val$okButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 97
    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog$2;->this$0:Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    #setter for: Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->mMessage:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->access$102(Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog$2;->val$okButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog$2;->this$0:Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;

    #getter for: Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->mMessage:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->access$100(Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 99
    return-void

    .line 97
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 102
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 105
    return-void
.end method
