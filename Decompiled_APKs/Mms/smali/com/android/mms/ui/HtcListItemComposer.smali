.class public Lcom/android/mms/ui/HtcListItemComposer;
.super Ljava/lang/Object;
.source "HtcListItemComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;,
        Lcom/android/mms/ui/HtcListItemComposer$ListItemType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 171
    return-void
.end method

.method public static createCheckboxListItem(Landroid/content/Context;Z)Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    .locals 10
    .parameter "context"
    .parameter "hideContact"

    .prologue
    const/16 v9, 0x8

    .line 51
    new-instance v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    invoke-direct {v1}, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;-><init>()V

    .line 58
    .local v1, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 59
    .local v4, mInflater:Landroid/view/LayoutInflater;
    const v7, 0x7f030012

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem;

    .line 61
    .local v3, item:Lcom/htc/widget/HtcListItem;
    const v7, 0x7f0e0056

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItemQuickContactBadge;

    .line 62
    .local v5, photo:Lcom/htc/widget/HtcListItemQuickContactBadge;
    if-eqz p1, :cond_1

    .line 63
    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setVisibility(I)V

    .line 68
    :goto_0
    const v7, 0x7f0e0057

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcListItem2LineText;

    .line 69
    .local v6, text:Lcom/htc/widget/HtcListItem2LineText;
    const v7, 0x7f0e0058

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemCheckBox;

    .line 70
    .local v0, checkbox:Lcom/htc/widget/HtcListItemCheckBox;
    const v7, 0x7f0e0059

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemImageButton;

    .line 71
    .local v2, imgButton:Lcom/htc/widget/HtcListItemImageButton;
    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v2, v9}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 74
    :cond_0
    iput-object v3, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    .line 75
    iput-object v6, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    .line 76
    iput-object v0, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Checkbox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 77
    iput-object v2, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ImgButton:Lcom/htc/widget/HtcListItemImageButton;

    .line 78
    iput-object v5, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Badge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    .line 79
    sget-object v7, Lcom/android/mms/ui/HtcListItemComposer$ListItemType;->LISTITEM_CHECKBOX:Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    iput-object v7, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Type:Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    .line 80
    return-object v1

    .line 65
    .end local v0           #checkbox:Lcom/htc/widget/HtcListItemCheckBox;
    .end local v2           #imgButton:Lcom/htc/widget/HtcListItemImageButton;
    .end local v6           #text:Lcom/htc/widget/HtcListItem2LineText;
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setVisibility(I)V

    goto :goto_0
.end method

.method public static createConversationListItem(Landroid/content/Context;)Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    .locals 6
    .parameter "context"

    .prologue
    .line 32
    new-instance v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    invoke-direct {v0}, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;-><init>()V

    .line 34
    .local v0, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 35
    .local v2, mInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030013

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem;

    .line 40
    .local v1, item:Lcom/htc/widget/HtcListItem;
    const v4, 0x7f0e005a

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemMessageBody;

    .line 41
    .local v3, v:Lcom/htc/widget/HtcListItemMessageBody;
    invoke-virtual {v3}, Lcom/htc/widget/HtcListItemMessageBody;->getQuickContactBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v4

    const v5, 0x7f0200f3

    invoke-virtual {v4, v5}, Lcom/htc/widget/QuickContactBadge;->setBackgroundResource(I)V

    .line 43
    iput-object v3, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ThreadListItem:Lcom/htc/widget/HtcListItemMessageBody;

    .line 44
    iput-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    .line 45
    sget-object v4, Lcom/android/mms/ui/HtcListItemComposer$ListItemType;->LISTITEM_THREAD:Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    iput-object v4, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Type:Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    .line 46
    return-object v0
.end method

.method public static createImageButtonListItem(Landroid/content/Context;)Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    .locals 7
    .parameter "context"

    .prologue
    .line 144
    new-instance v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    invoke-direct {v0}, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;-><init>()V

    .line 145
    .local v0, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 146
    .local v3, mInflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030014

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem;

    .line 148
    .local v2, item:Lcom/htc/widget/HtcListItem;
    const v5, 0x7f0e0029

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemImageButton;

    .line 150
    .local v1, icon:Lcom/htc/widget/HtcListItemImageButton;
    const v5, 0x7f0e0057

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineText;

    .line 151
    .local v4, text:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 153
    iput-object v2, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    .line 154
    iput-object v4, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    .line 155
    iput-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Photo:Lcom/htc/widget/HtcListItemImageButton;

    .line 156
    sget-object v5, Lcom/android/mms/ui/HtcListItemComposer$ListItemType;->LISTITEM_IMAGEBUTTON:Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    iput-object v5, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Type:Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    .line 158
    return-object v0
.end method

.method public static createSimpleListItem(Landroid/content/Context;ZZZ)Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    .locals 9
    .parameter "context"
    .parameter "hideContact"
    .parameter "useCommonPhoto"
    .parameter "hideCheck"

    .prologue
    const/16 v8, 0x8

    .line 115
    new-instance v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    invoke-direct {v1}, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;-><init>()V

    .line 116
    .local v1, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 117
    .local v4, mInflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030015

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem;

    .line 119
    .local v3, item:Lcom/htc/widget/HtcListItem;
    const v6, 0x7f0e005b

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemTileImage;

    .line 120
    .local v2, image:Lcom/htc/widget/HtcListItemTileImage;
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcListItemTileImage;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 121
    if-eqz p1, :cond_1

    .line 122
    invoke-virtual {v2, v8}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 128
    :goto_0
    const v6, 0x7f0e0057

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItem2LineText;

    .line 129
    .local v5, text:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 131
    const v6, 0x7f0e0058

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemCheckBox;

    .line 132
    .local v0, check:Lcom/htc/widget/HtcListItemCheckBox;
    if-eqz p3, :cond_0

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcListItemCheckBox;->setVisibility(I)V

    .line 134
    :cond_0
    iput-object v3, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    .line 135
    iput-object v5, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    .line 136
    iput-object v2, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->TitleImage:Lcom/htc/widget/HtcListItemTileImage;

    .line 137
    iput-object v0, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Checkbox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 138
    sget-object v6, Lcom/android/mms/ui/HtcListItemComposer$ListItemType;->LISTITEM_SIMPLE:Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    iput-object v6, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Type:Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    .line 140
    return-object v1

    .line 125
    .end local v0           #check:Lcom/htc/widget/HtcListItemCheckBox;
    .end local v5           #text:Lcom/htc/widget/HtcListItem2LineText;
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public static createStampListItem(Landroid/content/Context;Z)Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    .locals 8
    .parameter "context"
    .parameter "hideContact"

    .prologue
    .line 86
    new-instance v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    invoke-direct {v0}, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;-><init>()V

    .line 93
    .local v0, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 94
    .local v2, mInflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030016

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem;

    .line 97
    .local v1, item:Lcom/htc/widget/HtcListItem;
    const v6, 0x7f0e0056

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemQuickContactBadge;

    .line 98
    .local v3, photo:Lcom/htc/widget/HtcListItemQuickContactBadge;
    if-eqz p1, :cond_0

    .line 99
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setVisibility(I)V

    .line 101
    :cond_0
    const v6, 0x7f0e0057

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItem2LineText;

    .line 102
    .local v5, text:Lcom/htc/widget/HtcListItem2LineText;
    const v6, 0x7f0e005c

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    .line 105
    .local v4, stamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;
    iput-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    .line 106
    iput-object v5, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    .line 107
    iput-object v4, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Stamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    .line 108
    iput-object v3, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Badge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    .line 109
    sget-object v6, Lcom/android/mms/ui/HtcListItemComposer$ListItemType;->LISTITEM_STAMP:Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    iput-object v6, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Type:Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    .line 110
    return-object v0
.end method
