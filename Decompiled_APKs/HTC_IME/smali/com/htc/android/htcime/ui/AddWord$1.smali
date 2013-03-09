.class Lcom/htc/android/htcime/ui/AddWord$1;
.super Ljava/lang/Object;
.source "AddWord.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/ui/AddWord;->keyboardTypeLayoutCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ui/AddWord;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ui/AddWord;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/htc/android/htcime/ui/AddWord$1;->this$0:Lcom/htc/android/htcime/ui/AddWord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWord$1;->this$0:Lcom/htc/android/htcime/ui/AddWord;

    #calls: Lcom/htc/android/htcime/ui/AddWord;->updateButtonState()V
    invoke-static {v0}, Lcom/htc/android/htcime/ui/AddWord;->access$000(Lcom/htc/android/htcime/ui/AddWord;)V

    .line 167
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "buffer"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 159
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "buffer"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 163
    return-void
.end method
