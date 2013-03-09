.class Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CustomizationPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter;"
    }
.end annotation


# instance fields
.field selectPosition:I

.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;Landroid/content/Context;II[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "itemLayout"
    .parameter "title"
    .parameter "operators"

    .prologue
    .line 157
    .local p0, this:Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter;,"Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter<TT;>;"
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter;->this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;

    .line 158
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 155
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter;->selectPosition:I

    .line 159
    return-void
.end method


# virtual methods
.method public getSelect()I
    .locals 1

    .prologue
    .line 180
    .local p0, this:Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter;,"Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter<TT;>;"
    iget v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter;->selectPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 163
    .local p0, this:Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter;,"Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 164
    .local v1, v:Landroid/view/View;
    const v2, 0x7f0d0014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 166
    .local v0, radio:Landroid/widget/RadioButton;
    if-eqz v0, :cond_0

    .line 167
    iget v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter;->selectPosition:I

    if-ne v2, p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 168
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter;->this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mRadioButton:I
    invoke-static {v2}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->access$000(Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    .line 171
    :cond_0
    return-object v1

    .line 167
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setSelect(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 175
    .local p0, this:Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter;,"Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter<TT;>;"
    iput p1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter;->selectPosition:I

    .line 176
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter;->notifyDataSetChanged()V

    .line 177
    return-void
.end method
