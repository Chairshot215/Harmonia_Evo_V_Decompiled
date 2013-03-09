.class public Lcom/android/mms/ui/NumberPickerDialog;
.super Lcom/htc/widget/HtcAlertDialog;
.source "NumberPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;,
        Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;
    }
.end annotation


# static fields
.field private static final NUMBER:Ljava/lang/String; = "number"


# instance fields
.field private final mCallback:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mInitialNumber:I

.field private final mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V
    .locals 7
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "number"
    .parameter "rangeMin"
    .parameter "rangeMax"
    .parameter "title"

    .prologue
    const/4 v5, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 84
    iput-object p3, p0, Lcom/android/mms/ui/NumberPickerDialog;->mCallback:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 85
    iput p4, p0, Lcom/android/mms/ui/NumberPickerDialog;->mInitialNumber:I

    .line 87
    invoke-virtual {p0, p7}, Lcom/android/mms/ui/NumberPickerDialog;->setTitle(I)V

    .line 89
    const v4, 0x104000a

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4, p0}, Lcom/android/mms/ui/NumberPickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 90
    const v4, 0x20c0164

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v4, v5

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v6, v4}, Lcom/android/mms/ui/NumberPickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 92
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 94
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03002a

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 95
    .local v3, view:Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/NumberPickerDialog;->setView(Landroid/view/View;)V

    .line 96
    const v4, 0x7f0e009e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    iput-object v4, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    .line 99
    iget-object v4, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v4, p5, p6}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->setRange(II)V

    .line 100
    iget-object v4, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v4, p4}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->setCurrent(I)V

    .line 101
    iget-object v4, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    const-wide/16 v5, 0x96

    invoke-virtual {v4, v5, v6}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->setSpeed(J)V

    .line 104
    const v4, 0x7f0e009d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 105
    .local v2, tv:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v1, sb:Ljava/lang/StringBuilder;
    const v4, 0x7f09026a

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v4, ":\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    const-string v4, "~"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V
    .locals 8
    .parameter "context"
    .parameter "callBack"
    .parameter "number"
    .parameter "rangeMin"
    .parameter "rangeMax"
    .parameter "title"

    .prologue
    .line 66
    const v2, 0x10302ef

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;ILcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V

    .line 68
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mCallback:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->clearFocus()V

    .line 117
    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mCallback:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v1}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->getCurrent()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;->onNumberSet(I)V

    .line 119
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 131
    const-string v1, "number"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 132
    .local v0, number:I
    iget-object v1, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->setCurrent(I)V

    .line 133
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 123
    invoke-super {p0}, Lcom/htc/widget/HtcAlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 124
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "number"

    iget-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;

    invoke-virtual {v2}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;->getCurrent()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    return-object v0
.end method
