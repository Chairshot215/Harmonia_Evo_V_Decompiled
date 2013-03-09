.class Lcom/htc/widget/SearchBoxView$1;
.super Ljava/lang/Object;
.source "SearchBoxView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/SearchBoxView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/SearchBoxView;


# direct methods
.method constructor <init>(Lcom/htc/widget/SearchBoxView;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/widget/SearchBoxView$1;->this$0:Lcom/htc/widget/SearchBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 54
    iget-object v1, p0, Lcom/htc/widget/SearchBoxView$1;->this$0:Lcom/htc/widget/SearchBoxView;

    #getter for: Lcom/htc/widget/SearchBoxView;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/widget/SearchBoxView;->access$000(Lcom/htc/widget/SearchBoxView;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, p0, Lcom/htc/widget/SearchBoxView$1;->this$0:Lcom/htc/widget/SearchBoxView;

    #getter for: Lcom/htc/widget/SearchBoxView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/widget/SearchBoxView;->access$100(Lcom/htc/widget/SearchBoxView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 56
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/htc/widget/SearchBoxView$1;->this$0:Lcom/htc/widget/SearchBoxView;

    #getter for: Lcom/htc/widget/SearchBoxView;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/widget/SearchBoxView;->access$000(Lcom/htc/widget/SearchBoxView;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 58
    :cond_0
    return-void
.end method
