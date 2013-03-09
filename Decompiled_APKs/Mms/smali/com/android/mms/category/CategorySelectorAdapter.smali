.class public Lcom/android/mms/category/CategorySelectorAdapter;
.super Landroid/widget/BaseAdapter;
.source "CategorySelectorAdapter.java"


# static fields
.field private static iCurrentCategory:I


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, CategoryNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/android/mms/category/CategorySelectorAdapter;->items:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/android/mms/category/CategorySelectorAdapter;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method public static getCurrentCategory()I
    .locals 1

    .prologue
    .line 96
    sget v0, Lcom/android/mms/category/CategorySelectorAdapter;->iCurrentCategory:I

    return v0
.end method

.method public static setCurrentCategory(I)V
    .locals 0
    .parameter "iCurrrentCategory"

    .prologue
    .line 92
    sput p0, Lcom/android/mms/category/CategorySelectorAdapter;->iCurrentCategory:I

    .line 93
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mms/category/CategorySelectorAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/mms/category/CategorySelectorAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 54
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

    .line 60
    const/4 v3, 0x0

    .line 61
    .local v3, text:Lcom/htc/widget/HtcListItem2LineText;
    const/4 v1, 0x0

    .line 63
    .local v1, checkbox:Lcom/htc/widget/HtcListItemCheckBox;
    if-nez p2, :cond_0

    .line 64
    iget-object v4, p0, Lcom/android/mms/category/CategorySelectorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/android/mms/ui/HtcListItemComposer;->createCheckboxListItem(Landroid/content/Context;Z)Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    move-result-object v2

    .line 65
    .local v2, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object p2, v2, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    .line 66
    move-object v0, v2

    .line 67
    .local v0, cache:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v3, v2, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    .line 68
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 69
    const v4, 0x2030012

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 70
    iget-object v1, v2, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Checkbox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 71
    iget-object v4, p0, Lcom/android/mms/category/CategorySelectorAdapter;->mContext:Landroid/content/Context;

    const-string v5, "common_radiobutton"

    const v6, 0x7f0200e8

    invoke-static {v4, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItemCheckBox;->setButtonDrawable(I)V

    .line 74
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    .end local v2           #group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    :goto_0
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Checkbox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 82
    sget v4, Lcom/android/mms/category/CategorySelectorAdapter;->iCurrentCategory:I

    if-ne v4, p1, :cond_1

    .line 83
    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 87
    :goto_1
    iget-object v4, p0, Lcom/android/mms/category/CategorySelectorAdapter;->items:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 88
    return-object p2

    .line 78
    .end local v0           #cache:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    .restart local v0       #cache:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    goto :goto_0

    .line 85
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    goto :goto_1
.end method
