.class public Lcom/htc/lmw/ui/NumberPickerDialog;
.super Lcom/htc/dialog/HtcAlertDialog;
.source "NumberPickerDialog.java"


# instance fields
.field private editBox:Landroid/widget/EditText;

.field private initialNumber:I

.field private inputManager:Landroid/view/inputmethod/InputMethodManager;

.field private maxNumber:I

.field private minNumber:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)V
    .locals 11
    .parameter "context"
    .parameter "rangeMin"
    .parameter "rangeMax"
    .parameter "okClickListener"

    .prologue
    const/4 v5, 0x0

    const v10, 0x7f070011

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 28
    invoke-direct {p0, p1}, Lcom/htc/dialog/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    .line 24
    iput v8, p0, Lcom/htc/lmw/ui/NumberPickerDialog;->initialNumber:I

    .line 30
    invoke-static {}, Lcom/htc/lmw/Customize;->getDialogIcon()I

    move-result v2

    .line 31
    .local v2, iconId:I
    if-lez v2, :cond_0

    .line 32
    invoke-virtual {p0, v2}, Lcom/htc/lmw/ui/NumberPickerDialog;->setIcon(I)V

    .line 34
    :cond_0
    iput p2, p0, Lcom/htc/lmw/ui/NumberPickerDialog;->minNumber:I

    .line 35
    iput p3, p0, Lcom/htc/lmw/ui/NumberPickerDialog;->maxNumber:I

    .line 37
    const/4 v4, -0x1

    const v6, 0x104000a

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0, v4, v6, p4}, Lcom/htc/lmw/ui/NumberPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 38
    const/4 v6, -0x2

    const v4, 0x1040009

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v4, v5

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v6, v7, v4}, Lcom/htc/lmw/ui/NumberPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f03000d

    invoke-virtual {v4, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 41
    .local v3, view:Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/htc/lmw/ui/NumberPickerDialog;->setView(Landroid/view/View;)V

    .line 43
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/htc/lmw/ui/NumberPickerDialog;->editBox:Landroid/widget/EditText;

    .line 44
    iget-object v4, p0, Lcom/htc/lmw/ui/NumberPickerDialog;->editBox:Landroid/widget/EditText;

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 45
    iget-object v4, p0, Lcom/htc/lmw/ui/NumberPickerDialog;->editBox:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 46
    iget-object v4, p0, Lcom/htc/lmw/ui/NumberPickerDialog;->editBox:Landroid/widget/EditText;

    new-instance v5, Lcom/htc/lmw/ui/NumberPickerDialog$1;

    invoke-direct {v5, p0}, Lcom/htc/lmw/ui/NumberPickerDialog$1;-><init>(Lcom/htc/lmw/ui/NumberPickerDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 75
    const v4, 0x7f070010

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 76
    .local v1, hintText:Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050056

    invoke-static {v5}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, p0, Lcom/htc/lmw/ui/NumberPickerDialog;->minNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/lmw/ui/NumberPickerDialog;->maxNumber:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "common_inputfield_light"

    const v6, 0x2080045

    invoke-static {v4, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 81
    .local v0, editBackgroundId:I
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 83
    const-string v4, "input_method"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/htc/lmw/ui/NumberPickerDialog;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lmw/ui/NumberPickerDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/lmw/ui/NumberPickerDialog;->editBox:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/lmw/ui/NumberPickerDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/htc/lmw/ui/NumberPickerDialog;->maxNumber:I

    return v0
.end method


# virtual methods
.method public getNumber()I
    .locals 3

    .prologue
    .line 103
    iget-object v2, p0, Lcom/htc/lmw/ui/NumberPickerDialog;->editBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, str:Ljava/lang/String;
    const/4 v0, 0x0

    .line 107
    .local v0, number:I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 112
    :goto_0
    iget v2, p0, Lcom/htc/lmw/ui/NumberPickerDialog;->minNumber:I

    if-ge v0, v2, :cond_0

    .line 113
    iget v0, p0, Lcom/htc/lmw/ui/NumberPickerDialog;->initialNumber:I

    .line 114
    :cond_0
    iget v2, p0, Lcom/htc/lmw/ui/NumberPickerDialog;->maxNumber:I

    if-le v0, v2, :cond_1

    .line 115
    iget v0, p0, Lcom/htc/lmw/ui/NumberPickerDialog;->maxNumber:I

    .line 116
    :cond_1
    return v0

    .line 109
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 89
    invoke-super {p0}, Lcom/htc/dialog/HtcAlertDialog;->onStart()V

    .line 90
    iget-object v0, p0, Lcom/htc/lmw/ui/NumberPickerDialog;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/lmw/ui/NumberPickerDialog;->editBox:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 91
    return-void
.end method

.method public setNumber(I)V
    .locals 3
    .parameter "number"

    .prologue
    .line 95
    iput p1, p0, Lcom/htc/lmw/ui/NumberPickerDialog;->initialNumber:I

    .line 96
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/lmw/ui/NumberPickerDialog;->editBox:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v1, p0, Lcom/htc/lmw/ui/NumberPickerDialog;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 99
    return-void
.end method
