.class Lcom/htc/android/htcime/ui/AddWordDialog$1;
.super Ljava/lang/Object;
.source "AddWordDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/ui/AddWordDialog;->keyboardTypeLayoutCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ui/AddWordDialog;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ui/AddWordDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/htc/android/htcime/ui/AddWordDialog$1;->this$0:Lcom/htc/android/htcime/ui/AddWordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWordDialog$1;->this$0:Lcom/htc/android/htcime/ui/AddWordDialog;

    #calls: Lcom/htc/android/htcime/ui/AddWordDialog;->updateButtonState()V
    invoke-static {v0}, Lcom/htc/android/htcime/ui/AddWordDialog;->access$000(Lcom/htc/android/htcime/ui/AddWordDialog;)V

    .line 154
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "buffer"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 146
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "buffer"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 150
    return-void
.end method
