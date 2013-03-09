.class Lcom/android/calculator2/Logic$1;
.super Ljava/lang/Object;
.source "Logic.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/Logic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/Logic;


# direct methods
.method constructor <init>(Lcom/android/calculator2/Logic;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/calculator2/Logic$1;->this$0:Lcom/android/calculator2/Logic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .parameter "s"

    .prologue
    .line 136
    iget-object v5, p0, Lcom/android/calculator2/Logic$1;->this$0:Lcom/android/calculator2/Logic;

    iget-boolean v5, v5, Lcom/android/calculator2/Logic;->mHasToAddComma:Z

    if-eqz v5, :cond_1

    .line 137
    iget-object v5, p0, Lcom/android/calculator2/Logic$1;->this$0:Lcom/android/calculator2/Logic;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/calculator2/Logic;->mHasToAddComma:Z

    .line 138
    iget-object v5, p0, Lcom/android/calculator2/Logic$1;->this$0:Lcom/android/calculator2/Logic;

    #calls: Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/calculator2/Logic;->access$000(Lcom/android/calculator2/Logic;)Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, origin:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 141
    iget-object v5, p0, Lcom/android/calculator2/Logic$1;->this$0:Lcom/android/calculator2/Logic;

    #getter for: Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;
    invoke-static {v5}, Lcom/android/calculator2/Logic;->access$100(Lcom/android/calculator2/Logic;)Lcom/android/calculator2/CalculatorDisplay;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/calculator2/CalculatorDisplay;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 142
    .local v1, currentEditText:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v5

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v6

    sub-int v4, v5, v6

    .line 144
    .local v4, selectionFromEnd:I
    iget-object v5, p0, Lcom/android/calculator2/Logic$1;->this$0:Lcom/android/calculator2/Logic;

    const-string v6, ","

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/calculator2/Logic;->addComma(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, commaAdded:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 149
    .local v2, length:I
    if-le v4, v2, :cond_0

    .line 150
    move v4, v2

    .line 152
    :cond_0
    sub-int v5, v2, v4

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 155
    .end local v0           #commaAdded:Ljava/lang/String;
    .end local v1           #currentEditText:Landroid/widget/EditText;
    .end local v2           #length:I
    .end local v3           #origin:Ljava/lang/String;
    .end local v4           #selectionFromEnd:I
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 129
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 133
    return-void
.end method
