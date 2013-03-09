.class public Lcom/htc/Weather/AddCity$EditTextWatcher;
.super Ljava/lang/Object;
.source "AddCity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/AddCity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EditTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/AddCity;


# direct methods
.method public constructor <init>(Lcom/htc/Weather/AddCity;)V
    .locals 0
    .parameter

    .prologue
    .line 1010
    iput-object p1, p0, Lcom/htc/Weather/AddCity$EditTextWatcher;->this$0:Lcom/htc/Weather/AddCity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1011
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .parameter "s"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1046
    iget-object v2, p0, Lcom/htc/Weather/AddCity$EditTextWatcher;->this$0:Lcom/htc/Weather/AddCity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/Weather/AddCity;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/Weather/AddCity;->access$700(Lcom/htc/Weather/AddCity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1047
    .local v1, str:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1049
    .local v0, length:I
    if-nez v0, :cond_1

    .line 1052
    iget-object v2, p0, Lcom/htc/Weather/AddCity$EditTextWatcher;->this$0:Lcom/htc/Weather/AddCity;

    iget-boolean v2, v2, Lcom/htc/Weather/AddCity;->mDisableSmartSearch:Z

    if-ne v2, v5, :cond_0

    .line 1054
    iget-object v2, p0, Lcom/htc/Weather/AddCity$EditTextWatcher;->this$0:Lcom/htc/Weather/AddCity;

    iput-boolean v4, v2, Lcom/htc/Weather/AddCity;->mDisableSmartSearch:Z

    .line 1055
    iget-object v2, p0, Lcom/htc/Weather/AddCity$EditTextWatcher;->this$0:Lcom/htc/Weather/AddCity;

    #getter for: Lcom/htc/Weather/AddCity;->mCityList:Lcom/htc/widget/HtcListView;
    invoke-static {v2}, Lcom/htc/Weather/AddCity;->access$100(Lcom/htc/Weather/AddCity;)Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 1058
    :cond_0
    iget-object v2, p0, Lcom/htc/Weather/AddCity$EditTextWatcher;->this$0:Lcom/htc/Weather/AddCity;

    #getter for: Lcom/htc/Weather/AddCity;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v2}, Lcom/htc/Weather/AddCity;->access$1300(Lcom/htc/Weather/AddCity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/Weather/AddCity$EditTextWatcher;->this$0:Lcom/htc/Weather/AddCity;

    #getter for: Lcom/htc/Weather/AddCity;->mEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/htc/Weather/AddCity;->access$600(Lcom/htc/Weather/AddCity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1061
    :cond_1
    iget-object v2, p0, Lcom/htc/Weather/AddCity$EditTextWatcher;->this$0:Lcom/htc/Weather/AddCity;

    iget-boolean v2, v2, Lcom/htc/Weather/AddCity;->mDisableSmartSearch:Z

    if-nez v2, :cond_2

    .line 1064
    if-lez v0, :cond_3

    .line 1069
    iget-object v2, p0, Lcom/htc/Weather/AddCity$EditTextWatcher;->this$0:Lcom/htc/Weather/AddCity;

    iget-object v2, v2, Lcom/htc/Weather/AddCity;->mKeyClicked:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/Weather/AddCity$EditTextWatcher;->this$0:Lcom/htc/Weather/AddCity;

    iget-object v2, v2, Lcom/htc/Weather/AddCity;->mKeyClicked:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 1071
    iget-object v2, p0, Lcom/htc/Weather/AddCity$EditTextWatcher;->this$0:Lcom/htc/Weather/AddCity;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/htc/Weather/AddCity$EditTextWatcher;->this$0:Lcom/htc/Weather/AddCity;

    iget-object v4, v4, Lcom/htc/Weather/AddCity;->mKeyClicked:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/htc/Weather/AddCity;->search(ILjava/lang/String;)V

    .line 1084
    :cond_2
    :goto_0
    return-void

    .line 1076
    :cond_3
    iget-object v2, p0, Lcom/htc/Weather/AddCity$EditTextWatcher;->this$0:Lcom/htc/Weather/AddCity;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/Weather/AddCity;->search(ILjava/lang/String;)V

    .line 1077
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 1080
    iget-object v2, p0, Lcom/htc/Weather/AddCity$EditTextWatcher;->this$0:Lcom/htc/Weather/AddCity;

    #calls: Lcom/htc/Weather/AddCity;->resetList(Z)V
    invoke-static {v2, v5}, Lcom/htc/Weather/AddCity;->access$900(Lcom/htc/Weather/AddCity;Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 1014
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    const/4 v4, 0x0

    .line 1018
    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1021
    .local v0, length:I
    iget-object v1, p0, Lcom/htc/Weather/AddCity$EditTextWatcher;->this$0:Lcom/htc/Weather/AddCity;

    iget-boolean v1, v1, Lcom/htc/Weather/AddCity;->mBoolRequeryDB:Z

    if-eqz v1, :cond_0

    .line 1022
    iget-object v1, p0, Lcom/htc/Weather/AddCity$EditTextWatcher;->this$0:Lcom/htc/Weather/AddCity;

    iput-boolean v4, v1, Lcom/htc/Weather/AddCity;->mBoolRequeryDB:Z

    .line 1043
    :goto_0
    return-void

    .line 1026
    :cond_0
    if-lez v0, :cond_1

    .line 1032
    iget-object v1, p0, Lcom/htc/Weather/AddCity$EditTextWatcher;->this$0:Lcom/htc/Weather/AddCity;

    iget-object v2, p0, Lcom/htc/Weather/AddCity$EditTextWatcher;->this$0:Lcom/htc/Weather/AddCity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/Weather/AddCity;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/Weather/AddCity;->access$700(Lcom/htc/Weather/AddCity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/Weather/AddCity;->mKeyClicked:Ljava/lang/String;

    .line 1034
    iget-object v1, p0, Lcom/htc/Weather/AddCity$EditTextWatcher;->this$0:Lcom/htc/Weather/AddCity;

    #setter for: Lcom/htc/Weather/AddCity;->mBoolStopQuery:Z
    invoke-static {v1, v4}, Lcom/htc/Weather/AddCity;->access$802(Lcom/htc/Weather/AddCity;Z)Z

    goto :goto_0

    .line 1040
    :cond_1
    iget-object v1, p0, Lcom/htc/Weather/AddCity$EditTextWatcher;->this$0:Lcom/htc/Weather/AddCity;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/Weather/AddCity;->search(ILjava/lang/String;)V

    goto :goto_0
.end method
