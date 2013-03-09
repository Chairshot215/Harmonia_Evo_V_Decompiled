.class Lcom/htc/Weather/AddCity$4;
.super Ljava/lang/Object;
.source "AddCity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/AddCity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/AddCity;


# direct methods
.method constructor <init>(Lcom/htc/Weather/AddCity;)V
    .locals 0
    .parameter

    .prologue
    .line 1194
    iput-object p1, p0, Lcom/htc/Weather/AddCity$4;->this$0:Lcom/htc/Weather/AddCity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x0

    .line 1197
    iget-object v0, p0, Lcom/htc/Weather/AddCity$4;->this$0:Lcom/htc/Weather/AddCity;

    #getter for: Lcom/htc/Weather/AddCity;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/htc/Weather/AddCity;->access$600(Lcom/htc/Weather/AddCity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1198
    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    .line 1200
    iget-object v0, p0, Lcom/htc/Weather/AddCity$4;->this$0:Lcom/htc/Weather/AddCity;

    #getter for: Lcom/htc/Weather/AddCity;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/Weather/AddCity;->access$1300(Lcom/htc/Weather/AddCity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/Weather/AddCity$4;->this$0:Lcom/htc/Weather/AddCity;

    #getter for: Lcom/htc/Weather/AddCity;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/Weather/AddCity;->access$600(Lcom/htc/Weather/AddCity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1206
    :cond_0
    :goto_0
    return-void

    .line 1203
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/AddCity$4;->this$0:Lcom/htc/Weather/AddCity;

    #getter for: Lcom/htc/Weather/AddCity;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/Weather/AddCity;->access$1300(Lcom/htc/Weather/AddCity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/Weather/AddCity$4;->this$0:Lcom/htc/Weather/AddCity;

    #getter for: Lcom/htc/Weather/AddCity;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/Weather/AddCity;->access$600(Lcom/htc/Weather/AddCity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
