.class Lcom/htc/usage/widget/NumberPicker$4;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/usage/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/usage/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/htc/usage/widget/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 628
    iput-object p1, p0, Lcom/htc/usage/widget/NumberPicker$4;->this$0:Lcom/htc/usage/widget/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v2, 0x0

    .line 630
    if-eqz p2, :cond_1

    .line 631
    iget-object v1, p0, Lcom/htc/usage/widget/NumberPicker$4;->this$0:Lcom/htc/usage/widget/NumberPicker;

    #getter for: Lcom/htc/usage/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/usage/widget/NumberPicker;->access$000(Lcom/htc/usage/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 632
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 633
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 634
    iget-object v1, p0, Lcom/htc/usage/widget/NumberPicker$4;->this$0:Lcom/htc/usage/widget/NumberPicker;

    #getter for: Lcom/htc/usage/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/usage/widget/NumberPicker;->access$000(Lcom/htc/usage/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 640
    .end local v0           #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    iget-object v1, p0, Lcom/htc/usage/widget/NumberPicker$4;->this$0:Lcom/htc/usage/widget/NumberPicker;

    #getter for: Lcom/htc/usage/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/usage/widget/NumberPicker;->access$000(Lcom/htc/usage/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 638
    iget-object v1, p0, Lcom/htc/usage/widget/NumberPicker$4;->this$0:Lcom/htc/usage/widget/NumberPicker;

    #calls: Lcom/htc/usage/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V
    invoke-static {v1, p1}, Lcom/htc/usage/widget/NumberPicker;->access$300(Lcom/htc/usage/widget/NumberPicker;Landroid/view/View;)V

    goto :goto_0
.end method
