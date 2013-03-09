.class Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LocalePickerSetupWizardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LocalePickerSetupWizardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "LocaleInfo:Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter;"
    }
.end annotation


# instance fields
.field selectPosition:I

.field final synthetic this$0:Lcom/android/settings/LocalePickerSetupWizardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/LocalePickerSetupWizardFragment;Landroid/content/Context;II[Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[T",
            "LocaleInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, this:Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;,"Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter<TLocaleInfo;>;"
    .local p5, objects:[Ljava/lang/Object;,"[TLocaleInfo;"
    iput-object p1, p0, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;->this$0:Lcom/android/settings/LocalePickerSetupWizardFragment;

    .line 189
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;->selectPosition:I

    .line 190
    return-void
.end method


# virtual methods
.method public getSelect()I
    .locals 1

    .prologue
    .line 216
    .local p0, this:Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;,"Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter<TLocaleInfo;>;"
    iget v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;->selectPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 194
    .local p0, this:Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;,"Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter<TLocaleInfo;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 196
    .local v2, v:Landroid/view/View;
    const v3, 0x7f0800ca

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 197
    .local v0, radio:Landroid/widget/RadioButton;
    if-eqz v0, :cond_0

    .line 198
    iget v3, p0, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;->selectPosition:I

    if-ne v3, p1, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 201
    :cond_0
    const v3, 0x7f0800c8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 202
    .local v1, selector:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_1

    .line 204
    iget-object v3, p0, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;->this$0:Lcom/android/settings/LocalePickerSetupWizardFragment;

    #calls: Lcom/android/settings/LocalePickerSetupWizardFragment;->getListSelectorBackground()I
    invoke-static {v3}, Lcom/android/settings/LocalePickerSetupWizardFragment;->access$000(Lcom/android/settings/LocalePickerSetupWizardFragment;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 207
    :cond_1
    return-object v2

    .line 198
    .end local v1           #selector:Landroid/widget/LinearLayout;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setSelect(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 211
    .local p0, this:Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;,"Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter<TLocaleInfo;>;"
    iput p1, p0, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;->selectPosition:I

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;->notifyDataSetChanged()V

    .line 213
    return-void
.end method
