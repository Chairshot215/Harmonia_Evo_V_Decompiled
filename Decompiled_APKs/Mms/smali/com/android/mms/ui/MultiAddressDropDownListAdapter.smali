.class Lcom/android/mms/ui/MultiAddressDropDownListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MultipleNumberDropDownListAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultSelect:I

.field private mPhoneNumList:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "phoneNumList"

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MultiAddressDropDownListAdapter;->mDefaultSelect:I

    .line 21
    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/MultiAddressDropDownListAdapter;->mPhoneNumList:[Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/android/mms/ui/MultiAddressDropDownListAdapter;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/mms/ui/MultiAddressDropDownListAdapter;->mPhoneNumList:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x1

    .line 53
    const/4 v3, 0x0

    .line 54
    .local v3, text:Lcom/htc/widget/HtcListItem2LineText;
    const/4 v1, 0x0

    .line 56
    .local v1, checkbox:Lcom/htc/widget/HtcListItemCheckBox;
    if-nez p2, :cond_0

    .line 57
    iget-object v4, p0, Lcom/android/mms/ui/MultiAddressDropDownListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/android/mms/ui/HtcListItemComposer;->createCheckboxListItem(Landroid/content/Context;Z)Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    move-result-object v2

    .line 58
    .local v2, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object p2, v2, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    .line 59
    move-object v0, v2

    .line 60
    .local v0, cache:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v3, v2, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    .line 61
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 62
    const v4, 0x2030012

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 63
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Checkbox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 64
    iget-object v4, p0, Lcom/android/mms/ui/MultiAddressDropDownListAdapter;->mContext:Landroid/content/Context;

    const-string v5, "common_radiobutton"

    const v6, 0x7f0200e8

    invoke-static {v4, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItemCheckBox;->setButtonDrawable(I)V

    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    .end local v2           #group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/MultiAddressDropDownListAdapter;->mPhoneNumList:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 74
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Checkbox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 76
    iget v4, p0, Lcom/android/mms/ui/MultiAddressDropDownListAdapter;->mDefaultSelect:I

    if-ne v4, p1, :cond_1

    .line 77
    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 81
    :goto_1
    return-object p2

    .line 69
    .end local v0           #cache:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    .line 70
    .restart local v0       #cache:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v3, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    goto :goto_0

    .line 79
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public setDefaultAddress(I)V
    .locals 0
    .parameter "select"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/mms/ui/MultiAddressDropDownListAdapter;->mDefaultSelect:I

    .line 91
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .parameter "newValue"

    .prologue
    .line 94
    check-cast p1, [Ljava/lang/String;

    .end local p1
    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/mms/ui/MultiAddressDropDownListAdapter;->mPhoneNumList:[Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/android/mms/ui/MultiAddressDropDownListAdapter;->notifyDataSetChanged()V

    .line 96
    return-void
.end method
