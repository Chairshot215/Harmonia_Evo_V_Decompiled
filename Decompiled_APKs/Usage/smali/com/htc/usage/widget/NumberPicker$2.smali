.class Lcom/htc/usage/widget/NumberPicker$2;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 589
    iput-object p1, p0, Lcom/htc/usage/widget/NumberPicker$2;->this$0:Lcom/htc/usage/widget/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 591
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 592
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/usage/widget/NumberPicker$2;->this$0:Lcom/htc/usage/widget/NumberPicker;

    #getter for: Lcom/htc/usage/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/usage/widget/NumberPicker;->access$000(Lcom/htc/usage/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    iget-object v1, p0, Lcom/htc/usage/widget/NumberPicker$2;->this$0:Lcom/htc/usage/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/htc/usage/widget/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 595
    :cond_0
    iget-object v1, p0, Lcom/htc/usage/widget/NumberPicker$2;->this$0:Lcom/htc/usage/widget/NumberPicker;

    #getter for: Lcom/htc/usage/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/usage/widget/NumberPicker;->access$000(Lcom/htc/usage/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 596
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x10202c7

    if-ne v1, v2, :cond_1

    .line 597
    iget-object v1, p0, Lcom/htc/usage/widget/NumberPicker$2;->this$0:Lcom/htc/usage/widget/NumberPicker;

    const/4 v2, 0x1

    #calls: Lcom/htc/usage/widget/NumberPicker;->changeCurrentByOne(Z)V
    invoke-static {v1, v2}, Lcom/htc/usage/widget/NumberPicker;->access$100(Lcom/htc/usage/widget/NumberPicker;Z)V

    .line 601
    :goto_0
    return-void

    .line 599
    :cond_1
    iget-object v1, p0, Lcom/htc/usage/widget/NumberPicker$2;->this$0:Lcom/htc/usage/widget/NumberPicker;

    #calls: Lcom/htc/usage/widget/NumberPicker;->changeCurrentByOne(Z)V
    invoke-static {v1, v3}, Lcom/htc/usage/widget/NumberPicker;->access$100(Lcom/htc/usage/widget/NumberPicker;Z)V

    goto :goto_0
.end method
