.class Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "OperatorPickerSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OperatorPickerSetupWizard;
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

.field final synthetic this$0:Lcom/android/settings/OperatorPickerSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/settings/OperatorPickerSetupWizard;Landroid/content/Context;II[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "itemLayout"
    .parameter "title"
    .parameter "operators"

    .prologue
    .line 225
    .local p0, this:Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;,"Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter<TT;>;"
    iput-object p1, p0, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;->this$0:Lcom/android/settings/OperatorPickerSetupWizard;

    .line 226
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 223
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;->selectPosition:I

    .line 227
    return-void
.end method


# virtual methods
.method public getSelect()I
    .locals 1

    .prologue
    .line 260
    .local p0, this:Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;,"Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter<TT;>;"
    iget v0, p0, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;->selectPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .local p0, this:Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;,"Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter<TT;>;"
    const v6, 0x2050010

    const/4 v3, 0x0

    .line 231
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 233
    .local v2, v:Landroid/view/View;
    const v4, 0x7f0800ea

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 234
    .local v1, title:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 235
    sget-object v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v5, "3.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 236
    iget-object v4, p0, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;->this$0:Lcom/android/settings/OperatorPickerSetupWizard;

    invoke-virtual {v4}, Lcom/android/settings/OperatorPickerSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x205000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 244
    :cond_0
    :goto_0
    const v4, 0x7f0800ca

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 246
    .local v0, radio:Landroid/widget/RadioButton;
    if-eqz v0, :cond_2

    .line 247
    iget v4, p0, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;->selectPosition:I

    if-ne v4, p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 248
    iget-object v3, p0, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;->this$0:Lcom/android/settings/OperatorPickerSetupWizard;

    #getter for: Lcom/android/settings/OperatorPickerSetupWizard;->mRadioButton:I
    invoke-static {v3}, Lcom/android/settings/OperatorPickerSetupWizard;->access$000(Lcom/android/settings/OperatorPickerSetupWizard;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    .line 251
    :cond_2
    return-object v2

    .line 237
    .end local v0           #radio:Landroid/widget/RadioButton;
    :cond_3
    sget-object v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v5, "3.5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 238
    iget-object v4, p0, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;->this$0:Lcom/android/settings/OperatorPickerSetupWizard;

    invoke-virtual {v4}, Lcom/android/settings/OperatorPickerSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 240
    :cond_4
    iget-object v4, p0, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;->this$0:Lcom/android/settings/OperatorPickerSetupWizard;

    invoke-virtual {v4}, Lcom/android/settings/OperatorPickerSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method public setSelect(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 255
    .local p0, this:Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;,"Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter<TT;>;"
    iput p1, p0, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;->selectPosition:I

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;->notifyDataSetChanged()V

    .line 257
    return-void
.end method
