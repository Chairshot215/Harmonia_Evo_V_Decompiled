.class public Lcom/google/android/gm/preference/IntegerPickerPreference;
.super Landroid/preference/DialogPreference;
.source "IntegerPickerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/preference/IntegerPickerPreference$Callbacks;
    }
.end annotation


# instance fields
.field private mCallbacks:Lcom/google/android/gm/preference/IntegerPickerPreference$Callbacks;

.field private final mContext:Landroid/content/Context;

.field private mConversationAgeDays:I

.field private mNumberPickerDaysView:Landroid/widget/TextView;

.field private mNumberPickerView:Landroid/widget/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-object p1, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/preference/IntegerPickerPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/gm/preference/IntegerPickerPreference;->updateDays()V

    return-void
.end method

.method private updateDays()V
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->mNumberPickerDaysView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f100019

    iget-object v3, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->mNumberPickerView:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/gm/preference/IntegerPickerPreference$Callbacks;I)V
    .locals 5
    .parameter "callbacks"
    .parameter "conversationAgeDays"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->mCallbacks:Lcom/google/android/gm/preference/IntegerPickerPreference$Callbacks;

    .line 39
    iput p2, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->mConversationAgeDays:I

    .line 40
    iget-object v1, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 41
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f040028

    invoke-virtual {p0, v1}, Lcom/google/android/gm/preference/IntegerPickerPreference;->setDialogLayoutResource(I)V

    .line 42
    const v1, 0x7f0c00dd

    invoke-virtual {p0, v1}, Lcom/google/android/gm/preference/IntegerPickerPreference;->setTitle(I)V

    .line 43
    const v1, 0x7f100018

    iget v2, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->mConversationAgeDays:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->mConversationAgeDays:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gm/preference/IntegerPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 58
    const v0, 0x7f0f0085

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->mNumberPickerDaysView:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0f0084

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    iput-object v0, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->mNumberPickerView:Landroid/widget/NumberPicker;

    .line 60
    iget-object v0, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->mNumberPickerView:Landroid/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 61
    iget-object v0, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->mNumberPickerView:Landroid/widget/NumberPicker;

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 62
    iget-object v0, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->mNumberPickerView:Landroid/widget/NumberPicker;

    iget v1, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->mConversationAgeDays:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 63
    invoke-direct {p0}, Lcom/google/android/gm/preference/IntegerPickerPreference;->updateDays()V

    .line 64
    iget-object v0, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->mNumberPickerView:Landroid/widget/NumberPicker;

    new-instance v1, Lcom/google/android/gm/preference/IntegerPickerPreference$1;

    invoke-direct {v1, p0}, Lcom/google/android/gm/preference/IntegerPickerPreference$1;-><init>(Lcom/google/android/gm/preference/IntegerPickerPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 69
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .parameter "positiveResult"

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->mNumberPickerView:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 80
    iget-object v0, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->mCallbacks:Lcom/google/android/gm/preference/IntegerPickerPreference$Callbacks;

    iget-object v1, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->mNumberPickerView:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gm/preference/IntegerPickerPreference$Callbacks;->onNumberChanged(I)V

    .line 82
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gm/preference/IntegerPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00dd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 53
    return-void
.end method
