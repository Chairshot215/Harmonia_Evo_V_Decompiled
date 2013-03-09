.class public Lcom/google/android/finsky/layout/InstrumentFamilyRow;
.super Landroid/widget/LinearLayout;
.source "InstrumentFamilyRow.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mDescription:Landroid/widget/TextView;

.field private mSelector:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/finsky/layout/InstrumentFamilyRow;->mSelector:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 28
    const v0, 0x7f08015b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/InstrumentFamilyRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/InstrumentFamilyRow;->mDescription:Landroid/widget/TextView;

    .line 29
    const v0, 0x7f08015c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/InstrumentFamilyRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/google/android/finsky/layout/InstrumentFamilyRow;->mSelector:Landroid/widget/RadioButton;

    .line 30
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/finsky/layout/InstrumentFamilyRow;->mSelector:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 44
    return-void
.end method

.method public setInstrumentFamilyDescription(Ljava/lang/String;)V
    .locals 1
    .parameter "description"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/layout/InstrumentFamilyRow;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/finsky/layout/InstrumentFamilyRow;->mSelector:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->toggle()V

    .line 49
    return-void
.end method
