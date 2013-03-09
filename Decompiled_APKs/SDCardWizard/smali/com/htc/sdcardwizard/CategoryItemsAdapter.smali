.class final Lcom/htc/sdcardwizard/CategoryItemsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CategoryItemsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sdcardwizard/CategoryItemsAdapter$ItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/htc/sdcardwizard/CategoryItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final inflater:Landroid/view/LayoutInflater;

.field private final listItems:Lcom/htc/sdcardwizard/CategoryList;

.field private final owner:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILcom/htc/sdcardwizard/CategoryList;)V
    .locals 1
    .parameter "owner"
    .parameter "textViewResourceId"
    .parameter "listItems"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 24
    iput-object p1, p0, Lcom/htc/sdcardwizard/CategoryItemsAdapter;->owner:Landroid/app/Activity;

    .line 25
    iput-object p3, p0, Lcom/htc/sdcardwizard/CategoryItemsAdapter;->listItems:Lcom/htc/sdcardwizard/CategoryList;

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdcardwizard/CategoryItemsAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/sdcardwizard/CategoryItemsAdapter;->listItems:Lcom/htc/sdcardwizard/CategoryList;

    invoke-virtual {v0}, Lcom/htc/sdcardwizard/CategoryList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/htc/sdcardwizard/CategoryItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/sdcardwizard/CategoryItemsAdapter;->listItems:Lcom/htc/sdcardwizard/CategoryList;

    invoke-virtual {v0, p1}, Lcom/htc/sdcardwizard/CategoryList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sdcardwizard/CategoryItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/htc/sdcardwizard/CategoryItemsAdapter;->getItem(I)Lcom/htc/sdcardwizard/CategoryItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 36
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, holder:Lcom/htc/sdcardwizard/CategoryItemsAdapter$ItemHolder;
    iget-object v5, p0, Lcom/htc/sdcardwizard/CategoryItemsAdapter;->listItems:Lcom/htc/sdcardwizard/CategoryList;

    invoke-virtual {v5, p1}, Lcom/htc/sdcardwizard/CategoryList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sdcardwizard/CategoryItem;

    .line 54
    .local v2, item:Lcom/htc/sdcardwizard/CategoryItem;
    if-nez p2, :cond_1

    .line 55
    iget-object v5, p0, Lcom/htc/sdcardwizard/CategoryItemsAdapter;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030001

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 57
    const v5, 0x7f060006

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemColorIcon;

    .line 58
    .local v1, icon:Lcom/htc/widget/HtcListItemColorIcon;
    const v5, 0x7f060007

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineText;

    .line 59
    .local v4, text:Lcom/htc/widget/HtcListItem2LineText;
    const v5, 0x7f060008

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineStamp;

    .line 60
    .local v3, stamp:Lcom/htc/widget/HtcListItem2LineStamp;
    new-instance v0, Lcom/htc/sdcardwizard/CategoryItemsAdapter$ItemHolder;

    .end local v0           #holder:Lcom/htc/sdcardwizard/CategoryItemsAdapter$ItemHolder;
    invoke-direct {v0, v1, v4, v3}, Lcom/htc/sdcardwizard/CategoryItemsAdapter$ItemHolder;-><init>(Lcom/htc/widget/HtcListItemColorIcon;Lcom/htc/widget/HtcListItem2LineText;Lcom/htc/widget/HtcListItem2LineStamp;)V

    .line 61
    .restart local v0       #holder:Lcom/htc/sdcardwizard/CategoryItemsAdapter$ItemHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    .end local v1           #icon:Lcom/htc/widget/HtcListItemColorIcon;
    .end local v3           #stamp:Lcom/htc/widget/HtcListItem2LineStamp;
    .end local v4           #text:Lcom/htc/widget/HtcListItem2LineText;
    :goto_0
    iget-object v5, p0, Lcom/htc/sdcardwizard/CategoryItemsAdapter;->listItems:Lcom/htc/sdcardwizard/CategoryList;

    invoke-virtual {v5}, Lcom/htc/sdcardwizard/CategoryList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p1, v5, :cond_2

    move v5, v6

    :goto_1
    invoke-virtual {p2, v7, v5}, Landroid/view/View;->setRoundedCornerEnabled(ZZ)V

    .line 68
    if-eqz v0, :cond_0

    .line 69
    iget-object v5, p0, Lcom/htc/sdcardwizard/CategoryItemsAdapter;->owner:Landroid/app/Activity;

    invoke-virtual {v0, v5, v2}, Lcom/htc/sdcardwizard/CategoryItemsAdapter$ItemHolder;->setItem(Landroid/content/Context;Lcom/htc/sdcardwizard/CategoryItem;)V

    .line 72
    :cond_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/htc/sdcardwizard/CategoryItem;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_2
    invoke-virtual {p2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 73
    return-object p2

    .line 63
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/htc/sdcardwizard/CategoryItemsAdapter$ItemHolder;
    check-cast v0, Lcom/htc/sdcardwizard/CategoryItemsAdapter$ItemHolder;

    .restart local v0       #holder:Lcom/htc/sdcardwizard/CategoryItemsAdapter$ItemHolder;
    goto :goto_0

    :cond_2
    move v5, v7

    .line 66
    goto :goto_1

    :cond_3
    move v6, v7

    .line 72
    goto :goto_2
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 46
    iget-object v1, p0, Lcom/htc/sdcardwizard/CategoryItemsAdapter;->listItems:Lcom/htc/sdcardwizard/CategoryList;

    invoke-virtual {v1, p1}, Lcom/htc/sdcardwizard/CategoryList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sdcardwizard/CategoryItem;

    .line 47
    .local v0, item:Lcom/htc/sdcardwizard/CategoryItem;
    invoke-virtual {v0}, Lcom/htc/sdcardwizard/CategoryItem;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
