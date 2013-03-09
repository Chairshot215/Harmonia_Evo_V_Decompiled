.class public Lcom/android/mms/ui/IconListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "IconListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/IconListAdapter$1;,
        Lcom/android/mms/ui/IconListAdapter$IconItemGroup;,
        Lcom/android/mms/ui/IconListAdapter$IconListItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field protected m_Inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 54
    iput-object p1, p0, Lcom/android/mms/ui/IconListAdapter;->mContext:Landroid/content/Context;

    .line 55
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/IconListAdapter;->m_Inflater:Landroid/view/LayoutInflater;

    .line 56
    return-void
.end method

.method protected static addItem(Ljava/util/List;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter "strTitle"
    .parameter "nResourceID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    new-instance v0, Lcom/android/mms/ui/IconListAdapter$IconListItem;

    invoke-direct {v0, p1, p2}, Lcom/android/mms/ui/IconListAdapter$IconListItem;-><init>(Ljava/lang/String;I)V

    .line 169
    .local v0, temp:Lcom/android/mms/ui/IconListAdapter$IconListItem;
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method

.method protected static addItem(Ljava/util/List;Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter "strTitle"
    .parameter "nResourceID"
    .parameter "textResource"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    new-instance v0, Lcom/android/mms/ui/IconListAdapter$IconListItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/mms/ui/IconListAdapter$IconListItem;-><init>(Ljava/lang/String;II)V

    .line 174
    .local v0, temp:Lcom/android/mms/ui/IconListAdapter$IconListItem;
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    return-void
.end method

.method private createIconListItem()Lcom/android/mms/ui/IconListAdapter$IconItemGroup;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 179
    new-instance v0, Lcom/android/mms/ui/IconListAdapter$IconItemGroup;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lcom/android/mms/ui/IconListAdapter$IconItemGroup;-><init>(Lcom/android/mms/ui/IconListAdapter$1;)V

    .line 181
    .local v0, group:Lcom/android/mms/ui/IconListAdapter$IconItemGroup;
    new-instance v3, Lcom/htc/widget/HtcListItem;

    iget-object v5, p0, Lcom/android/mms/ui/IconListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;)V

    .line 182
    .local v3, item:Lcom/htc/widget/HtcListItem;
    new-instance v4, Lcom/htc/widget/HtcListItem2LineText;

    iget-object v5, p0, Lcom/android/mms/ui/IconListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;)V

    .line 183
    .local v4, text:Lcom/htc/widget/HtcListItem2LineText;
    new-instance v1, Lcom/htc/widget/HtcListItemImageButton;

    iget-object v5, p0, Lcom/android/mms/ui/IconListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/htc/widget/HtcListItemImageButton;-><init>(Landroid/content/Context;)V

    .line 184
    .local v1, img1:Lcom/htc/widget/HtcListItemImageButton;
    new-instance v2, Lcom/htc/widget/HtcListItemImageButton;

    iget-object v5, p0, Lcom/android/mms/ui/IconListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/htc/widget/HtcListItemImageButton;-><init>(Landroid/content/Context;)V

    .line 186
    .local v2, img2:Lcom/htc/widget/HtcListItemImageButton;
    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 187
    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 188
    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 190
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 191
    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcListItemImageButton;->setClickable(Z)V

    .line 192
    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcListItemImageButton;->setClickable(Z)V

    .line 194
    iput-object v3, v0, Lcom/android/mms/ui/IconListAdapter$IconItemGroup;->ListItem:Landroid/view/View;

    .line 195
    iput-object v4, v0, Lcom/android/mms/ui/IconListAdapter$IconItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    .line 196
    iput-object v1, v0, Lcom/android/mms/ui/IconListAdapter$IconItemGroup;->img1:Lcom/htc/widget/HtcListItemImageButton;

    .line 197
    iput-object v2, v0, Lcom/android/mms/ui/IconListAdapter$IconItemGroup;->img2:Lcom/htc/widget/HtcListItemImageButton;

    .line 198
    return-object v0
.end method

.method private static isSupportColorIcon()Z
    .locals 1

    .prologue
    .line 114
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x39

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3a

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3b

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 66
    if-nez p2, :cond_1

    .line 69
    invoke-direct {p0}, Lcom/android/mms/ui/IconListAdapter;->createIconListItem()Lcom/android/mms/ui/IconListAdapter$IconItemGroup;

    move-result-object v0

    .line 70
    .local v0, group:Lcom/android/mms/ui/IconListAdapter$IconItemGroup;
    iget-object v5, v0, Lcom/android/mms/ui/IconListAdapter$IconItemGroup;->ListItem:Landroid/view/View;

    .line 71
    .local v5, viewItem:Landroid/view/View;
    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    iget-object v1, v0, Lcom/android/mms/ui/IconListAdapter$IconItemGroup;->img1:Lcom/htc/widget/HtcListItemImageButton;

    .line 73
    .local v1, image:Landroid/widget/ImageView;
    iget-object v4, v0, Lcom/android/mms/ui/IconListAdapter$IconItemGroup;->img2:Lcom/htc/widget/HtcListItemImageButton;

    .line 74
    .local v4, textImage:Landroid/widget/ImageView;
    iget-object v3, v0, Lcom/android/mms/ui/IconListAdapter$IconItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    .line 86
    .local v3, text:Lcom/htc/widget/HtcListItem2LineText;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/IconListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/IconListAdapter$IconListItem;

    .line 91
    .local v2, listItem:Lcom/android/mms/ui/IconListAdapter$IconListItem;
    invoke-virtual {v2}, Lcom/android/mms/ui/IconListAdapter$IconListItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/android/mms/ui/IconListAdapter;->isSupportColorIcon()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 96
    invoke-virtual {v2}, Lcom/android/mms/ui/IconListAdapter$IconListItem;->getResource()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 103
    :cond_0
    invoke-virtual {v2}, Lcom/android/mms/ui/IconListAdapter$IconListItem;->hasTextResource()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/IconListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/ui/IconListAdapter$IconListItem;

    invoke-virtual {v6}, Lcom/android/mms/ui/IconListAdapter$IconListItem;->getTextResource()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 105
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 110
    :goto_1
    return-object v5

    .line 76
    .end local v0           #group:Lcom/android/mms/ui/IconListAdapter$IconItemGroup;
    .end local v1           #image:Landroid/widget/ImageView;
    .end local v2           #listItem:Lcom/android/mms/ui/IconListAdapter$IconListItem;
    .end local v3           #text:Lcom/htc/widget/HtcListItem2LineText;
    .end local v4           #textImage:Landroid/widget/ImageView;
    .end local v5           #viewItem:Landroid/view/View;
    :cond_1
    move-object v5, p2

    .line 77
    .restart local v5       #viewItem:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/IconListAdapter$IconItemGroup;

    .line 78
    .restart local v0       #group:Lcom/android/mms/ui/IconListAdapter$IconItemGroup;
    iget-object v1, v0, Lcom/android/mms/ui/IconListAdapter$IconItemGroup;->img1:Lcom/htc/widget/HtcListItemImageButton;

    .line 79
    .restart local v1       #image:Landroid/widget/ImageView;
    iget-object v4, v0, Lcom/android/mms/ui/IconListAdapter$IconItemGroup;->img2:Lcom/htc/widget/HtcListItemImageButton;

    .line 80
    .restart local v4       #textImage:Landroid/widget/ImageView;
    iget-object v3, v0, Lcom/android/mms/ui/IconListAdapter$IconItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    .restart local v3       #text:Lcom/htc/widget/HtcListItem2LineText;
    goto :goto_0

    .line 107
    .restart local v2       #listItem:Lcom/android/mms/ui/IconListAdapter$IconListItem;
    :cond_2
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method public onItemAction(I)V
    .locals 0
    .parameter "nIDItem"

    .prologue
    .line 165
    return-void
.end method
