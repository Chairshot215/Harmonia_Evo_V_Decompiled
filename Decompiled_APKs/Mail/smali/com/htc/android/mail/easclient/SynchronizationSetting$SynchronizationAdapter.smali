.class Lcom/htc/android/mail/easclient/SynchronizationSetting$SynchronizationAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SynchronizationSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/SynchronizationSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizationAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:[Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Lcom/htc/widget/HtcListView;

.field private mResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "resource"
    .parameter "objects"

    .prologue
    .line 754
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 755
    iput-object p3, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting$SynchronizationAdapter;->mData:[Ljava/lang/String;

    .line 756
    iput-object p1, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting$SynchronizationAdapter;->mContext:Landroid/content/Context;

    .line 757
    iput p2, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting$SynchronizationAdapter;->mResource:I

    .line 758
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting$SynchronizationAdapter;->mData:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 768
    const/4 v4, 0x0

    .line 770
    .local v4, v:Landroid/view/View;
    if-nez p2, :cond_0

    .line 771
    iget-object v5, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting$SynchronizationAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iget v6, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting$SynchronizationAdapter;->mResource:I

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .end local v4           #v:Landroid/view/View;
    check-cast v4, Lcom/htc/widget/HtcListItem;

    .line 776
    .restart local v4       #v:Landroid/view/View;
    :goto_0
    iget-object v5, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting$SynchronizationAdapter;->mData:[Ljava/lang/String;

    if-nez v5, :cond_1

    .line 795
    :goto_1
    return-object v4

    .line 773
    :cond_0
    move-object v4, p2

    goto :goto_0

    .line 780
    :cond_1
    iget-object v5, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting$SynchronizationAdapter;->mData:[Ljava/lang/String;

    aget-object v1, v5, p1

    .line 781
    .local v1, data:Ljava/lang/String;
    const v5, 0x7f0900ba

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemCheckBox;

    .line 782
    .local v0, checkBox:Lcom/htc/widget/HtcListItemCheckBox;
    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcListItemCheckBox;->setVisibility(I)V

    .line 784
    iget-object v5, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting$SynchronizationAdapter;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, p1}, Lcom/htc/widget/HtcListView;->isItemChecked(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 785
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 790
    :goto_2
    if-nez v1, :cond_3

    const-string v3, ""

    .line 792
    .local v3, text:Ljava/lang/String;
    :goto_3
    const v5, 0x7f0900b9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    .line 793
    .local v2, listItemText:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 794
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_1

    .line 787
    .end local v2           #listItemText:Lcom/htc/widget/HtcListItem2LineText;
    .end local v3           #text:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    goto :goto_2

    .line 790
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method public setCheckedStatus(Lcom/htc/widget/HtcListView;)V
    .locals 0
    .parameter "list"

    .prologue
    .line 799
    iput-object p1, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting$SynchronizationAdapter;->mList:Lcom/htc/widget/HtcListView;

    .line 800
    return-void
.end method
