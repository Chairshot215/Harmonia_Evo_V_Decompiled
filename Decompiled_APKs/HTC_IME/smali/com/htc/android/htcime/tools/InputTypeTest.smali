.class public Lcom/htc/android/htcime/tools/InputTypeTest;
.super Landroid/app/Activity;
.source "InputTypeTest.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/tools/InputTypeTest$MyOnItemSelectedListener;
    }
.end annotation


# instance fields
.field errorLabel:Landroid/widget/TextView;

.field inputTypeField:Landroid/widget/EditText;

.field inputTypeValue:[Ljava/lang/String;

.field prefix:Ljava/lang/String;

.field resultField:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/htc/android/htcime/tools/InputTypeTest;->inputTypeField:Landroid/widget/EditText;

    .line 27
    iput-object v1, p0, Lcom/htc/android/htcime/tools/InputTypeTest;->resultField:Landroid/widget/EditText;

    .line 28
    iput-object v1, p0, Lcom/htc/android/htcime/tools/InputTypeTest;->errorLabel:Landroid/widget/TextView;

    .line 29
    const-string v0, "0x"

    iput-object v0, p0, Lcom/htc/android/htcime/tools/InputTypeTest;->prefix:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/htc/android/htcime/tools/InputTypeTest;->inputTypeValue:[Ljava/lang/String;

    .line 95
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v2, 0x7f030020

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/tools/InputTypeTest;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/InputTypeTest;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/tools/InputTypeTest;->inputTypeValue:[Ljava/lang/String;

    .line 39
    const v2, 0x7f0e003c

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/tools/InputTypeTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/htc/android/htcime/tools/InputTypeTest;->inputTypeField:Landroid/widget/EditText;

    .line 40
    const v2, 0x7f0e003d

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/tools/InputTypeTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/htc/android/htcime/tools/InputTypeTest;->resultField:Landroid/widget/EditText;

    .line 41
    const v2, 0x7f0e003e

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/tools/InputTypeTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/android/htcime/tools/InputTypeTest;->errorLabel:Landroid/widget/TextView;

    .line 43
    iget-object v2, p0, Lcom/htc/android/htcime/tools/InputTypeTest;->resultField:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 44
    iget-object v2, p0, Lcom/htc/android/htcime/tools/InputTypeTest;->inputTypeField:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 45
    iget-object v2, p0, Lcom/htc/android/htcime/tools/InputTypeTest;->resultField:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 47
    const v2, 0x7f0e003b

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/tools/InputTypeTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 48
    .local v1, spinner:Landroid/widget/Spinner;
    const v2, 0x7f070028

    const v3, 0x1090008

    invoke-static {p0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 50
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 51
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 52
    new-instance v2, Lcom/htc/android/htcime/tools/InputTypeTest$MyOnItemSelectedListener;

    invoke-direct {v2, p0}, Lcom/htc/android/htcime/tools/InputTypeTest$MyOnItemSelectedListener;-><init>(Lcom/htc/android/htcime/tools/InputTypeTest;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 53
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/android/htcime/tools/InputTypeTest;->inputTypeField:Landroid/widget/EditText;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 68
    iget-object v0, p0, Lcom/htc/android/htcime/tools/InputTypeTest;->inputTypeField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/htc/android/htcime/tools/InputTypeTest;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/htc/android/htcime/tools/InputTypeTest;->inputTypeField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/htc/android/htcime/tools/InputTypeTest;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/tools/InputTypeTest;->resultField:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/InputTypeTest;->setInputType()V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 57
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/InputTypeTest;->finish()V

    .line 59
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    .line 61
    :cond_0
    const/16 v0, 0x52

    if-eq p1, v0, :cond_1

    const/16 v0, 0x54

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 63
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method setInputType()V
    .locals 6

    .prologue
    .line 77
    iget-object v3, p0, Lcom/htc/android/htcime/tools/InputTypeTest;->errorLabel:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v3, p0, Lcom/htc/android/htcime/tools/InputTypeTest;->inputTypeField:Landroid/widget/EditText;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/android/htcime/tools/InputTypeTest;->inputTypeField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 79
    const/4 v2, 0x0

    .line 81
    .local v2, origInputType:Ljava/lang/String;
    const/4 v1, 0x0

    .line 82
    .local v1, inputType:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/htcime/tools/InputTypeTest;->inputTypeField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 83
    move-object v1, v2

    .line 85
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/tools/InputTypeTest;->prefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 86
    iget-object v3, p0, Lcom/htc/android/htcime/tools/InputTypeTest;->prefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    :cond_0
    iget-object v3, p0, Lcom/htc/android/htcime/tools/InputTypeTest;->resultField:Landroid/widget/EditText;

    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v1           #inputType:Ljava/lang/String;
    .end local v2           #origInputType:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 89
    .restart local v1       #inputType:Ljava/lang/String;
    .restart local v2       #origInputType:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/htc/android/htcime/tools/InputTypeTest;->errorLabel:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid inputType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
