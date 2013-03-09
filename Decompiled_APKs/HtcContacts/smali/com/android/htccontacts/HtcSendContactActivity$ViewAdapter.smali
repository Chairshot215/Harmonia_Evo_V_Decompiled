.class public final Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "HtcSendContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcSendContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "ViewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcSendContactActivity;


# direct methods
.method protected constructor <init>(Lcom/android/htccontacts/HtcSendContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1989
    iput-object p1, p0, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method bindInformationView(Landroid/view/View;Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;)Z
    .locals 3
    .parameter "view"
    .parameter "entry"

    .prologue
    .line 2135
    const v1, 0x7f070014

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/HtcSendContactActivity$InformationItem;

    .line 2136
    .local v0, item:Lcom/android/htccontacts/HtcSendContactActivity$InformationItem;
    iget-object v1, v0, Lcom/android/htccontacts/HtcSendContactActivity$InformationItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v2, p2, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 2137
    iget-object v1, v0, Lcom/android/htccontacts/HtcSendContactActivity$InformationItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v2, p2, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 2138
    iget-object v1, v0, Lcom/android/htccontacts/HtcSendContactActivity$InformationItem;->mHtcListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    iget-boolean v2, p2, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->isChecked:Z

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 2139
    const/4 v1, 0x1

    return v1
.end method

.method bindPhotoView(Landroid/view/View;Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;)Z
    .locals 3
    .parameter "view"
    .parameter "entry"

    .prologue
    .line 2122
    iget v1, p2, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->kind:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 2123
    const v1, 0x7f070014

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/HtcSendContactActivity$PhotoListItem;

    .line 2124
    .local v0, item:Lcom/android/htccontacts/HtcSendContactActivity$PhotoListItem;
    iget-object v1, v0, Lcom/android/htccontacts/HtcSendContactActivity$PhotoListItem;->mHtcListItemTileImage:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v2, p0, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #getter for: Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;
    invoke-static {v2}, Lcom/android/htccontacts/HtcSendContactActivity;->access$200(Lcom/android/htccontacts/HtcSendContactActivity;)Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/htccontacts/HtcContactInfoBase;->bmRawPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2125
    iget-object v1, v0, Lcom/android/htccontacts/HtcSendContactActivity$PhotoListItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v2, p2, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 2126
    iget-object v1, v0, Lcom/android/htccontacts/HtcSendContactActivity$PhotoListItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 2127
    iget-object v1, v0, Lcom/android/htccontacts/HtcSendContactActivity$PhotoListItem;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    const v2, 0x20804a9

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 2128
    const/4 v1, 0x1

    .line 2130
    .end local v0           #item:Lcom/android/htccontacts/HtcSendContactActivity$PhotoListItem;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method bindSendViaView(Landroid/view/View;Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;)Z
    .locals 4
    .parameter "view"
    .parameter "entry"

    .prologue
    const/4 v1, 0x1

    .line 2107
    iget v2, p2, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->kind:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 2108
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2109
    const v2, 0x7f070014

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/HtcSendContactActivity$SendViaItem;

    .line 2110
    .local v0, item:Lcom/android/htccontacts/HtcSendContactActivity$SendViaItem;
    iget-object v2, v0, Lcom/android/htccontacts/HtcSendContactActivity$SendViaItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v3, p2, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->text1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 2111
    iget-object v2, v0, Lcom/android/htccontacts/HtcSendContactActivity$SendViaItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 2112
    iget-object v2, v0, Lcom/android/htccontacts/HtcSendContactActivity$SendViaItem;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    const v3, 0x20804a9

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 2113
    iput-boolean v1, p2, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->enabled:Z

    .line 2118
    .end local v0           #item:Lcom/android/htccontacts/HtcSendContactActivity$SendViaItem;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bindView(Landroid/view/View;Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;)V
    .locals 1
    .parameter "view"
    .parameter "entry"

    .prologue
    .line 2081
    iput-object p1, p2, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->view:Landroid/view/View;

    .line 2083
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->bindSendViaView(Landroid/view/View;Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2092
    :cond_0
    :goto_0
    return-void

    .line 2087
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->bindPhotoView(Landroid/view/View;Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2091
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->bindInformationView(Landroid/view/View;Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;)Z

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1992
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #getter for: Lcom/android/htccontacts/HtcSendContactActivity;->mSections:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/HtcSendContactActivity;->access$1100(Lcom/android/htccontacts/HtcSendContactActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1996
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #getter for: Lcom/android/htccontacts/HtcSendContactActivity;->mSections:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/HtcSendContactActivity;->access$1100(Lcom/android/htccontacts/HtcSendContactActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 2000
    iget-object v1, p0, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #getter for: Lcom/android/htccontacts/HtcSendContactActivity;->mSections:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/htccontacts/HtcSendContactActivity;->access$1100(Lcom/android/htccontacts/HtcSendContactActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    .line 2001
    .local v0, item:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    iget-wide v1, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->id:J

    return-wide v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2037
    invoke-virtual {p0, p1, p3}, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->newView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 2038
    .local v8, v:Landroid/view/View;
    const/4 v7, 0x0

    .local v7, topConer:Z
    const/4 v0, 0x0

    .line 2039
    .local v0, bottomConer:Z
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    .line 2041
    .local v2, entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    iget v9, v2, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->kind:I

    invoke-virtual {p0, v9}, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->getViewTypeByKind(I)I

    move-result v1

    .line 2042
    .local v1, currentViewType:I
    const/4 v6, -0x1

    .line 2043
    .local v6, previousViewType:I
    if-lez p1, :cond_0

    .line 2044
    add-int/lit8 v9, p1, -0x1

    invoke-virtual {p0, v9}, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    .line 2045
    .local v5, previousEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    iget v9, v5, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->kind:I

    invoke-virtual {p0, v9}, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->getViewTypeByKind(I)I

    move-result v6

    .line 2047
    .end local v5           #previousEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    :cond_0
    const/4 v4, -0x1

    .line 2048
    .local v4, nextViewType:I
    add-int/lit8 v9, p1, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->getCount()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 2049
    add-int/lit8 v9, p1, 0x1

    invoke-virtual {p0, v9}, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    .line 2050
    .local v3, nextEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    iget v9, v3, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->kind:I

    invoke-virtual {p0, v9}, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->getViewTypeByKind(I)I

    move-result v4

    .line 2053
    .end local v3           #nextEntry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    :cond_1
    if-eq v6, v1, :cond_2

    .line 2054
    const/4 v7, 0x1

    .line 2057
    :cond_2
    if-eq v4, v1, :cond_3

    .line 2058
    const/4 v0, 0x1

    .line 2061
    :cond_3
    if-nez p1, :cond_4

    .line 2062
    const/4 v7, 0x0

    .line 2065
    :cond_4
    if-eqz v7, :cond_6

    if-eqz v0, :cond_6

    move-object v9, v8

    .line 2066
    check-cast v9, Lcom/htc/widget/HtcListItem;

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    .line 2073
    :cond_5
    :goto_0
    invoke-virtual {p0, v8, v2}, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->bindView(Landroid/view/View;Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;)V

    .line 2075
    return-object v8

    .line 2067
    :cond_6
    if-eqz v7, :cond_7

    move-object v9, v8

    .line 2068
    check-cast v9, Lcom/htc/widget/HtcListItem;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto :goto_0

    .line 2069
    :cond_7
    if-eqz v0, :cond_5

    move-object v9, v8

    .line 2070
    check-cast v9, Lcom/htc/widget/HtcListItem;

    const/16 v10, 0xb

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    goto :goto_0
.end method

.method getViewTypeByKind(I)I
    .locals 3
    .parameter "kind"

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x2

    .line 2095
    const/16 v2, 0xc

    if-ne p1, v2, :cond_1

    .line 2096
    const/4 v0, 0x3

    .line 2102
    :cond_0
    :goto_0
    return v0

    .line 2097
    :cond_1
    const/16 v2, 0xa

    if-eq p1, v2, :cond_0

    .line 2099
    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 2100
    goto :goto_0

    .line 2102
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected newView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f070014

    .line 2005
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;

    .line 2006
    .local v0, entry:Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;
    const/4 v2, 0x0

    .line 2007
    .local v2, v:Lcom/htc/widget/HtcListItem;
    iget v3, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->kind:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 2009
    new-instance v2, Lcom/htc/widget/HtcListItem;

    .end local v2           #v:Lcom/htc/widget/HtcListItem;
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    invoke-direct {v2, v3, v6}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2010
    .restart local v2       #v:Lcom/htc/widget/HtcListItem;
    new-instance v1, Lcom/android/htccontacts/HtcSendContactActivity$PhotoListItem;

    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    iget-object v4, p0, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    invoke-direct {v1, v3, v4}, Lcom/android/htccontacts/HtcSendContactActivity$PhotoListItem;-><init>(Lcom/android/htccontacts/HtcSendContactActivity;Landroid/content/Context;)V

    .line 2011
    .local v1, item:Lcom/android/htccontacts/HtcSendContactActivity$PhotoListItem;
    iget-object v3, v1, Lcom/android/htccontacts/HtcSendContactActivity$PhotoListItem;->mHtcListItemTileImage:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 2012
    iget-object v3, v1, Lcom/android/htccontacts/HtcSendContactActivity$PhotoListItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 2013
    iget-object v3, v1, Lcom/android/htccontacts/HtcSendContactActivity$PhotoListItem;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 2014
    iget v3, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->kind:I

    iput v3, v1, Lcom/android/htccontacts/HtcSendContactActivity$CommonListItem;->kind:I

    .line 2015
    invoke-virtual {v2, v5, v1}, Lcom/htc/widget/HtcListItem;->setTag(ILjava/lang/Object;)V

    .line 2033
    .end local v1           #item:Lcom/android/htccontacts/HtcSendContactActivity$PhotoListItem;
    :goto_0
    return-object v2

    .line 2016
    :cond_0
    iget v3, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->kind:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    .line 2018
    new-instance v2, Lcom/htc/widget/HtcListItem;

    .end local v2           #v:Lcom/htc/widget/HtcListItem;
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    invoke-direct {v2, v3, v6}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2019
    .restart local v2       #v:Lcom/htc/widget/HtcListItem;
    new-instance v1, Lcom/android/htccontacts/HtcSendContactActivity$SendViaItem;

    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    iget-object v4, p0, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    invoke-direct {v1, v3, v4}, Lcom/android/htccontacts/HtcSendContactActivity$SendViaItem;-><init>(Lcom/android/htccontacts/HtcSendContactActivity;Landroid/content/Context;)V

    .line 2020
    .local v1, item:Lcom/android/htccontacts/HtcSendContactActivity$SendViaItem;
    iget-object v3, v1, Lcom/android/htccontacts/HtcSendContactActivity$SendViaItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 2021
    iget-object v3, v1, Lcom/android/htccontacts/HtcSendContactActivity$SendViaItem;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 2022
    iget v3, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->kind:I

    iput v3, v1, Lcom/android/htccontacts/HtcSendContactActivity$CommonListItem;->kind:I

    .line 2023
    invoke-virtual {v2, v5, v1}, Lcom/htc/widget/HtcListItem;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 2026
    .end local v1           #item:Lcom/android/htccontacts/HtcSendContactActivity$SendViaItem;
    :cond_1
    new-instance v2, Lcom/htc/widget/HtcListItem;

    .end local v2           #v:Lcom/htc/widget/HtcListItem;
    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    invoke-direct {v2, v3, v6}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2027
    .restart local v2       #v:Lcom/htc/widget/HtcListItem;
    new-instance v1, Lcom/android/htccontacts/HtcSendContactActivity$InformationItem;

    iget-object v3, p0, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    iget-object v4, p0, Lcom/android/htccontacts/HtcSendContactActivity$ViewAdapter;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    invoke-direct {v1, v3, v4}, Lcom/android/htccontacts/HtcSendContactActivity$InformationItem;-><init>(Lcom/android/htccontacts/HtcSendContactActivity;Landroid/content/Context;)V

    .line 2028
    .local v1, item:Lcom/android/htccontacts/HtcSendContactActivity$InformationItem;
    iget-object v3, v1, Lcom/android/htccontacts/HtcSendContactActivity$InformationItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 2029
    iget-object v3, v1, Lcom/android/htccontacts/HtcSendContactActivity$InformationItem;->mHtcListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 2030
    iget v3, v0, Lcom/android/htccontacts/HtcSendContactActivity$ViewEntry;->kind:I

    iput v3, v1, Lcom/android/htccontacts/HtcSendContactActivity$CommonListItem;->kind:I

    .line 2031
    invoke-virtual {v2, v5, v1}, Lcom/htc/widget/HtcListItem;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method
