.class public Lcom/android/htccontacts/widget/HtcListItemBuilder;
.super Lcom/htc/widget/HtcListItem;
.source "HtcListItemBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/widget/HtcListItemBuilder$ListItemTextColor;,
        Lcom/android/htccontacts/widget/HtcListItemBuilder$ListItem7BadgesIndex;,
        Lcom/android/htccontacts/widget/HtcListItemBuilder$ListItem2StampIndex;,
        Lcom/android/htccontacts/widget/HtcListItemBuilder$ListItem2TextIndex;,
        Lcom/android/htccontacts/widget/HtcListItemBuilder$QuickContactBadgeType;,
        Lcom/android/htccontacts/widget/HtcListItemBuilder$ListItemType;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static HtcContactListItemType:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HtcListItemBuilder"


# instance fields
.field mContext:Landroid/content/Context;

.field private mHtcListItemImageLeft:Lcom/htc/widget/HtcListItemImageButton;

.field private mListItem1Button:Lcom/android/htccontacts/widget/HtcListItem1Button;

.field private mListItem1LineCenteredText:Lcom/android/htccontacts/widget/HtcListItem1Text;

.field private mListItem2LineStamp:Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;

.field private mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

.field private mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

.field private mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

.field private mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

.field private mListItemQuickContactBage:Lcom/htc/widget/HtcListItemQuickContactBadge;

.field private mListItemRadioButton:Lcom/htc/widget/HtcListItemRadioButton;

.field private mListItemSearchBox:Lcom/android/htccontacts/widget/HtcListItemSearchBox;

.field private mListItemSingleText:Lcom/htc/widget/HtcListItemSingleText;

.field private mTextMode:I

.field private quickContactBadgeMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, -0x1

    sput v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->HtcContactListItemType:I

    .line 119
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isDebug()Z

    move-result v0

    sput-boolean v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "listItemType"

    .prologue
    const/4 v1, 0x0

    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    iput v1, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->quickContactBadgeMode:I

    .line 117
    iput v1, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mTextMode:I

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->construct(Landroid/content/Context;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "listItemType"
    .parameter "quickContactBadgeMode"

    .prologue
    const/4 v1, 0x0

    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    iput v1, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->quickContactBadgeMode:I

    .line 117
    iput v1, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mTextMode:I

    .line 138
    iput p3, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->quickContactBadgeMode:I

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->construct(Landroid/content/Context;I)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2
    .parameter "context"
    .parameter "listItemType"
    .parameter "quickContactBadgeMode"
    .parameter "textMode"

    .prologue
    const/4 v1, 0x0

    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    iput v1, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->quickContactBadgeMode:I

    .line 117
    iput v1, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mTextMode:I

    .line 131
    iput p4, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mTextMode:I

    .line 132
    iput p3, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->quickContactBadgeMode:I

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->construct(Landroid/content/Context;I)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "listItemType"

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    iput v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->quickContactBadgeMode:I

    .line 117
    iput v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mTextMode:I

    .line 146
    invoke-direct {p0, p1, p3}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->construct(Landroid/content/Context;I)V

    .line 147
    return-void
.end method

.method private checkType(I)V
    .locals 2
    .parameter "listItemType"

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->init(I)V

    .line 317
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->removeAllViews()V

    .line 319
    sget v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->HtcContactListItemType:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->isSencondaryTextLarge:Z

    .line 321
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const v1, 0x203003d

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextStyle(I)V

    .line 332
    :cond_0
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 397
    :goto_1
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->isSencondaryTextLarge:Z

    goto :goto_0

    .line 342
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setGenericHtcListItem(I)V

    goto :goto_1

    .line 349
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setPhoto2TextHtcListItem(I)V

    goto :goto_1

    .line 357
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setPhoto2Text2StampHtcListItem(I)V

    goto :goto_1

    .line 361
    :sswitch_3
    invoke-direct {p0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setSearchBoxImageButtonHtcListItem()V

    goto :goto_1

    .line 365
    :sswitch_4
    invoke-direct {p0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->set1ButtonHtcListItem()V

    goto :goto_1

    .line 369
    :sswitch_5
    invoke-direct {p0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->set1CenteredTextHtcListItem()V

    goto :goto_1

    .line 378
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setImage2TextHtcListItem(I)V

    goto :goto_1

    .line 385
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setCheckBoxHtcListItem(I)V

    goto :goto_1

    .line 390
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setImageImageTextListItem(I)V

    goto :goto_1

    .line 332
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
        0x6c -> :sswitch_0
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_1
        0xca -> :sswitch_1
        0xcb -> :sswitch_1
        0x12c -> :sswitch_2
        0x12d -> :sswitch_2
        0x12e -> :sswitch_2
        0x12f -> :sswitch_2
        0x130 -> :sswitch_2
        0x190 -> :sswitch_6
        0x191 -> :sswitch_6
        0x192 -> :sswitch_6
        0x193 -> :sswitch_6
        0x194 -> :sswitch_6
        0x195 -> :sswitch_8
        0x1f4 -> :sswitch_7
        0x1f5 -> :sswitch_7
        0x1f6 -> :sswitch_7
        0x258 -> :sswitch_3
        0x2bc -> :sswitch_4
        0x2bd -> :sswitch_5
    .end sparse-switch
.end method

.method private construct(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "listItemType"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mContext:Landroid/content/Context;

    .line 151
    sput p2, Lcom/android/htccontacts/widget/HtcListItemBuilder;->HtcContactListItemType:I

    .line 152
    invoke-direct {p0, p2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->checkType(I)V

    .line 153
    return-void
.end method

.method private init(I)V
    .locals 5
    .parameter "listItemType"

    .prologue
    const/4 v4, 0x0

    .line 156
    sparse-switch p1, :sswitch_data_0

    .line 173
    :goto_0
    sparse-switch p1, :sswitch_data_1

    .line 204
    :goto_1
    sparse-switch p1, :sswitch_data_2

    .line 220
    :goto_2
    packed-switch p1, :pswitch_data_0

    .line 232
    :goto_3
    sparse-switch p1, :sswitch_data_3

    .line 246
    :goto_4
    sparse-switch p1, :sswitch_data_4

    .line 262
    :goto_5
    sparse-switch p1, :sswitch_data_5

    .line 271
    :goto_6
    packed-switch p1, :pswitch_data_1

    .line 277
    :goto_7
    packed-switch p1, :pswitch_data_2

    .line 284
    :goto_8
    packed-switch p1, :pswitch_data_3

    .line 292
    :goto_9
    packed-switch p1, :pswitch_data_4

    .line 299
    :goto_a
    packed-switch p1, :pswitch_data_5

    .line 313
    :goto_b
    return-void

    .line 168
    :sswitch_0
    new-instance v1, Lcom/htc/widget/HtcListItemQuickContactBadge;

    iget-object v2, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->quickContactBadgeMode:I

    invoke-direct {v1, v2, v3}, Lcom/htc/widget/HtcListItemQuickContactBadge;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemQuickContactBage:Lcom/htc/widget/HtcListItemQuickContactBadge;

    goto :goto_0

    .line 199
    :sswitch_1
    new-instance v1, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    iget-object v2, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mTextMode:I

    invoke-direct {v1, v2, v3}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    .line 200
    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->enableMarquee(Z)V

    goto :goto_1

    .line 214
    :sswitch_2
    new-instance v1, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;

    iget-object v2, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mTextMode:I

    invoke-direct {v1, v2, v3}, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineStamp:Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;

    .line 215
    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineStamp:Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;->enableMarquee(Z)V

    goto :goto_2

    .line 227
    :pswitch_0
    new-instance v1, Lcom/htc/widget/HtcListItemImageButton;

    iget-object v2, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcListItemImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mHtcListItemImageLeft:Lcom/htc/widget/HtcListItemImageButton;

    goto :goto_3

    .line 241
    :sswitch_3
    new-instance v1, Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;

    iget-object v2, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    goto :goto_4

    .line 257
    :sswitch_4
    new-instance v1, Lcom/android/htccontacts/widget/HtcListItemRestImageButton;

    iget-object v2, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/htccontacts/widget/HtcListItemRestImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    goto :goto_5

    .line 267
    :sswitch_5
    new-instance v1, Lcom/htc/widget/HtcListItemRadioButton;

    iget-object v2, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcListItemRadioButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemRadioButton:Lcom/htc/widget/HtcListItemRadioButton;

    goto :goto_6

    .line 273
    :pswitch_1
    new-instance v1, Lcom/android/htccontacts/widget/HtcListItemSearchBox;

    iget-object v2, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/htccontacts/widget/HtcListItemSearchBox;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemSearchBox:Lcom/android/htccontacts/widget/HtcListItemSearchBox;

    goto :goto_7

    .line 279
    :pswitch_2
    new-instance v1, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    iget-object v2, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    goto :goto_8

    .line 287
    :pswitch_3
    new-instance v1, Lcom/htc/widget/HtcListItemSingleText;

    iget-object v2, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcListItemSingleText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemSingleText:Lcom/htc/widget/HtcListItemSingleText;

    goto :goto_9

    .line 294
    :pswitch_4
    new-instance v1, Lcom/android/htccontacts/widget/HtcListItem1Button;

    iget-object v2, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/htccontacts/widget/HtcListItem1Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem1Button:Lcom/android/htccontacts/widget/HtcListItem1Button;

    goto/16 :goto_a

    .line 301
    :pswitch_5
    new-instance v1, Lcom/android/htccontacts/widget/HtcListItem1Text;

    iget-object v2, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/htccontacts/widget/HtcListItem1Text;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem1LineCenteredText:Lcom/android/htccontacts/widget/HtcListItem1Text;

    .line 302
    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem1LineCenteredText:Lcom/android/htccontacts/widget/HtcListItem1Text;

    const v2, 0x2030036

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/widget/HtcListItem1Text;->setTextStyle(I)V

    .line 305
    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem1LineCenteredText:Lcom/android/htccontacts/widget/HtcListItem1Text;

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/widget/HtcListItem1Text;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 306
    .local v0, param:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 307
    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem1LineCenteredText:Lcom/android/htccontacts/widget/HtcListItem1Text;

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/widget/HtcListItem1Text;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_b

    .line 156
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
        0xca -> :sswitch_0
        0xcb -> :sswitch_0
        0x12c -> :sswitch_0
        0x12d -> :sswitch_0
        0x12e -> :sswitch_0
        0x12f -> :sswitch_0
        0x130 -> :sswitch_0
        0x1f5 -> :sswitch_0
        0x1f6 -> :sswitch_0
    .end sparse-switch

    .line 173
    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
        0x67 -> :sswitch_1
        0x68 -> :sswitch_1
        0x69 -> :sswitch_1
        0x6a -> :sswitch_1
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_1
        0xca -> :sswitch_1
        0xcb -> :sswitch_1
        0x12c -> :sswitch_1
        0x12d -> :sswitch_1
        0x12e -> :sswitch_1
        0x12f -> :sswitch_1
        0x130 -> :sswitch_1
        0x190 -> :sswitch_1
        0x191 -> :sswitch_1
        0x192 -> :sswitch_1
        0x193 -> :sswitch_1
        0x194 -> :sswitch_1
        0x195 -> :sswitch_1
        0x1f4 -> :sswitch_1
        0x1f5 -> :sswitch_1
        0x1f6 -> :sswitch_1
    .end sparse-switch

    .line 204
    :sswitch_data_2
    .sparse-switch
        0x68 -> :sswitch_2
        0x69 -> :sswitch_2
        0x6c -> :sswitch_2
        0x12c -> :sswitch_2
        0x12d -> :sswitch_2
        0x12e -> :sswitch_2
        0x12f -> :sswitch_2
        0x130 -> :sswitch_2
        0x194 -> :sswitch_2
    .end sparse-switch

    .line 220
    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 232
    :sswitch_data_3
    .sparse-switch
        0x67 -> :sswitch_3
        0xcb -> :sswitch_3
        0x12f -> :sswitch_3
        0x130 -> :sswitch_3
        0x193 -> :sswitch_3
        0x1f4 -> :sswitch_3
        0x1f5 -> :sswitch_3
        0x1f6 -> :sswitch_3
    .end sparse-switch

    .line 246
    :sswitch_data_4
    .sparse-switch
        0x65 -> :sswitch_4
        0x69 -> :sswitch_4
        0xc9 -> :sswitch_4
        0x12d -> :sswitch_4
        0x130 -> :sswitch_4
        0x191 -> :sswitch_4
        0x194 -> :sswitch_4
        0x195 -> :sswitch_4
        0x1f6 -> :sswitch_4
        0x258 -> :sswitch_4
    .end sparse-switch

    .line 262
    :sswitch_data_5
    .sparse-switch
        0x66 -> :sswitch_5
        0xca -> :sswitch_5
        0x12e -> :sswitch_5
        0x192 -> :sswitch_5
    .end sparse-switch

    .line 271
    :pswitch_data_1
    .packed-switch 0x258
        :pswitch_1
    .end packed-switch

    .line 277
    :pswitch_data_2
    .packed-switch 0x6a
        :pswitch_2
    .end packed-switch

    .line 284
    :pswitch_data_3
    .packed-switch 0x6b
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 292
    :pswitch_data_4
    .packed-switch 0x2bc
        :pswitch_4
    .end packed-switch

    .line 299
    :pswitch_data_5
    .packed-switch 0x2bd
        :pswitch_5
    .end packed-switch
.end method

.method private set1ButtonHtcListItem()V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem1Button:Lcom/android/htccontacts/widget/HtcListItem1Button;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    .line 506
    return-void
.end method

.method private set1CenteredTextHtcListItem()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem1LineCenteredText:Lcom/android/htccontacts/widget/HtcListItem1Text;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    .line 401
    return-void
.end method

.method private setSearchBoxImageButtonHtcListItem()V
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemSearchBox:Lcom/android/htccontacts/widget/HtcListItemSearchBox;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    .line 498
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    .line 502
    return-void
.end method


# virtual methods
.method public get1Button()Lcom/android/htccontacts/widget/HtcListItem1Button;
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem1Button:Lcom/android/htccontacts/widget/HtcListItem1Button;

    return-object v0
.end method

.method public get1LineCenteredText()Lcom/android/htccontacts/widget/HtcListItem1Text;
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem1LineCenteredText:Lcom/android/htccontacts/widget/HtcListItem1Text;

    return-object v0
.end method

.method public get2LineStamp()Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineStamp:Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;

    if-nez v0, :cond_0

    .line 748
    sget-boolean v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcListItemBuilder"

    const-string v1, "mListItem2LineStamp == null, please check the list item type is correct"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineStamp:Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;

    return-object v0
.end method

.method public get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;
    .locals 2

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    if-nez v0, :cond_0

    .line 741
    sget-boolean v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcListItemBuilder"

    const-string v1, "mListItem2LineText == null, please check the list item type is correct"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    return-object v0
.end method

.method public get7BadgesAndStamp()Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    return-object v0
.end method

.method public getCheckBox()Lcom/htc/widget/HtcListItemCheckBox;
    .locals 2

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    if-nez v0, :cond_0

    .line 755
    sget-boolean v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcListItemBuilder"

    const-string v1, "mListItemCheckBox == null, please check the list item type is correct"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    return-object v0
.end method

.method public getImageButton()Lcom/htc/widget/HtcListItemImageButton;
    .locals 2

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    if-nez v0, :cond_0

    .line 762
    sget-boolean v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcListItemBuilder"

    const-string v1, "mListItemImageButton == null, please check the list item type is correct"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    return-object v0
.end method

.method public getLeftImage()Lcom/htc/widget/HtcListItemImageButton;
    .locals 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mHtcListItemImageLeft:Lcom/htc/widget/HtcListItemImageButton;

    if-nez v0, :cond_0

    .line 727
    sget-boolean v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcListItemBuilder"

    const-string v1, "mHtcListItemImageLeft == null, please check the list item type is correct"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mHtcListItemImageLeft:Lcom/htc/widget/HtcListItemImageButton;

    return-object v0
.end method

.method public getQuickContactBadge()Lcom/htc/widget/HtcListItemQuickContactBadge;
    .locals 2

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemQuickContactBage:Lcom/htc/widget/HtcListItemQuickContactBadge;

    if-nez v0, :cond_0

    .line 720
    sget-boolean v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcListItemBuilder"

    const-string v1, "mListItemQuickContactBage == null, please check the list item type is correct"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemQuickContactBage:Lcom/htc/widget/HtcListItemQuickContactBadge;

    return-object v0
.end method

.method public getRadioButton()Lcom/htc/widget/HtcListItemRadioButton;
    .locals 2

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemRadioButton:Lcom/htc/widget/HtcListItemRadioButton;

    if-nez v0, :cond_0

    .line 769
    sget-boolean v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcListItemBuilder"

    const-string v1, "mListItemRadioButton == null, please check the list item type is correct"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemRadioButton:Lcom/htc/widget/HtcListItemRadioButton;

    return-object v0
.end method

.method public getSearchBox()Lcom/android/htccontacts/widget/HtcListItemSearchBox;
    .locals 2

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemSearchBox:Lcom/android/htccontacts/widget/HtcListItemSearchBox;

    if-nez v0, :cond_0

    .line 776
    sget-boolean v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcListItemBuilder"

    const-string v1, "mListItemSearchBox == null, please check the list item type is correct"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemSearchBox:Lcom/android/htccontacts/widget/HtcListItemSearchBox;

    return-object v0
.end method

.method public getSingleLineText()Lcom/htc/widget/HtcListItemSingleText;
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemSingleText:Lcom/htc/widget/HtcListItemSingleText;

    if-nez v0, :cond_0

    .line 734
    sget-boolean v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcListItemBuilder"

    const-string v1, "mListItemSingleText == null, please check the list item type is correct"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemSingleText:Lcom/htc/widget/HtcListItemSingleText;

    return-object v0
.end method

.method public removeImageButton()V
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    if-nez v0, :cond_1

    .line 644
    sget-boolean v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcListItemBuilder"

    const-string v1, "mListItemImageButton == null, please check the list item type is correct"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public set1LineCenteredText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem1LineCenteredText:Lcom/android/htccontacts/widget/HtcListItem1Text;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/widget/HtcListItem1Text;->setText(I)V

    .line 708
    return-void
.end method

.method public set1LineCenteredText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem1LineCenteredText:Lcom/android/htccontacts/widget/HtcListItem1Text;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/widget/HtcListItem1Text;->setText(Ljava/lang/CharSequence;)V

    .line 712
    return-void
.end method

.method public set1LineCenteredTextStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem1LineCenteredText:Lcom/android/htccontacts/widget/HtcListItem1Text;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/widget/HtcListItem1Text;->setTextStyle(I)V

    .line 716
    return-void
.end method

.method public set7BadgesStamp(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setTextStamp(I)V

    .line 700
    return-void
.end method

.method public set7BadgesStamp(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setTextStamp(Ljava/lang/String;)V

    .line 696
    return-void
.end method

.method public set7BadgesState(IZ)V
    .locals 1
    .parameter "index"
    .parameter "enable"

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setBadgeState(IZ)V

    .line 704
    return-void
.end method

.method public setCheckBox(Z)V
    .locals 2
    .parameter "isChecked"

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    if-nez v0, :cond_0

    .line 689
    sget-boolean v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcListItemBuilder"

    const-string v1, "mListItemCheckBox == null, please check the list item type is correct"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 692
    return-void
.end method

.method protected setCheckBoxHtcListItem(I)V
    .locals 1
    .parameter "listItemType"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    .line 534
    packed-switch p1, :pswitch_data_0

    .line 544
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    .line 546
    const/16 v0, 0x1f6

    if-ne p1, v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    .line 550
    :cond_0
    return-void

    .line 537
    :pswitch_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemQuickContactBage:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 534
    nop

    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected setGenericHtcListItem(I)V
    .locals 2
    .parameter "listItemType"

    .prologue
    const/16 v1, 0x6c

    .line 410
    const/16 v0, 0x6b

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_2

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemSingleText:Lcom/htc/widget/HtcListItemSingleText;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    .line 413
    if-ne p1, v1, :cond_1

    .line 414
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineStamp:Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    .line 445
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 419
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    .line 420
    const/16 v0, 0x69

    if-eq p1, v0, :cond_3

    const/16 v0, 0x68

    if-ne p1, v0, :cond_4

    .line 422
    :cond_3
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineStamp:Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    .line 425
    :cond_4
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 430
    :pswitch_2
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 433
    :pswitch_3
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemRadioButton:Lcom/htc/widget/HtcListItemRadioButton;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 436
    :pswitch_4
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 439
    :pswitch_5
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem7BadgesStamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 425
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method protected setImage2TextHtcListItem(I)V
    .locals 1
    .parameter "listItemType"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mHtcListItemImageLeft:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    .line 510
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    .line 511
    const/16 v0, 0x194

    if-ne p1, v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineStamp:Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    .line 515
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 529
    :goto_0
    return-void

    .line 518
    :pswitch_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 521
    :pswitch_1
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemRadioButton:Lcom/htc/widget/HtcListItemRadioButton;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 524
    :pswitch_2
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 515
    nop

    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setImageButton(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    if-nez v0, :cond_0

    .line 631
    sget-boolean v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcListItemBuilder"

    const-string v1, "mListItemImageButton == null, please check the list item type is correct"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundResource(I)V

    .line 634
    return-void
.end method

.method public setImageButton(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "mDrawable"

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    if-nez v0, :cond_0

    .line 637
    sget-boolean v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcListItemBuilder"

    const-string v1, "mListItemImageButton == null, please check the list item type is correct"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 640
    return-void
.end method

.method protected setImageImageTextListItem(I)V
    .locals 1
    .parameter "listItemType"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mHtcListItemImageLeft:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    .line 405
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    .line 406
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    .line 407
    return-void
.end method

.method public setLeftImage(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mHtcListItemImageLeft:Lcom/htc/widget/HtcListItemImageButton;

    if-nez v0, :cond_0

    .line 618
    sget-boolean v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcListItemBuilder"

    const-string v1, "mHtcListItemImageLeft == null, please check the list item type is correct"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mHtcListItemImageLeft:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundResource(I)V

    .line 621
    return-void
.end method

.method public setLeftImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "mDrawable"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mHtcListItemImageLeft:Lcom/htc/widget/HtcListItemImageButton;

    if-nez v0, :cond_0

    .line 624
    sget-boolean v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcListItemBuilder"

    const-string v1, "mHtcListItemImageLeft == null, please check the list item type is correct"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mHtcListItemImageLeft:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 627
    return-void
.end method

.method public setListItem2Stamp(ILjava/lang/CharSequence;)V
    .locals 2
    .parameter "index"
    .parameter "text1"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineStamp:Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;

    if-nez v0, :cond_0

    .line 599
    sget-boolean v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcListItemBuilder"

    const-string v1, "mListItem2LineStamp == null, please check the list item type is correct"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_0
    if-nez p1, :cond_2

    .line 602
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineStamp:Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;

    invoke-virtual {v0, p2}, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 606
    :cond_1
    :goto_0
    return-void

    .line 603
    :cond_2
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 604
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineStamp:Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;

    invoke-virtual {v0, p2}, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setListItem2Stamp(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text1"
    .parameter "text2"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineStamp:Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;

    if-nez v0, :cond_0

    .line 610
    sget-boolean v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcListItemBuilder"

    const-string v1, "mListItem2LineStamp == null, please check the list item type is correct"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineStamp:Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;->setPrimaryText(Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineStamp:Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;

    invoke-virtual {v0, p2}, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;->setSecondaryText(Ljava/lang/CharSequence;)V

    .line 614
    return-void
.end method

.method public setListItem2Text(ILjava/lang/CharSequence;)V
    .locals 2
    .parameter "index"
    .parameter "text1"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    if-nez v0, :cond_0

    .line 579
    sget-boolean v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcListItemBuilder"

    const-string v1, "mListItem2LineText == null, please check the list item type is correct"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_0
    if-nez p1, :cond_2

    .line 582
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {v0, p2}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 586
    :cond_1
    :goto_0
    return-void

    .line 583
    :cond_2
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 584
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {v0, p2}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setListItem2Text(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text1"
    .parameter "text2"

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    if-nez v0, :cond_0

    .line 590
    sget-boolean v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcListItemBuilder"

    const-string v1, "mListItem2LineText == null, please check the list item type is correct"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {v0, p2}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/CharSequence;)V

    .line 594
    return-void
.end method

.method public setListItemSingleText(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemSingleText:Lcom/htc/widget/HtcListItemSingleText;

    if-nez v0, :cond_0

    .line 555
    sget-boolean v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcListItemBuilder"

    const-string v1, "mListItemSingleText == null, please check the list item type is correct"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemSingleText:Lcom/htc/widget/HtcListItemSingleText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemSingleText;->setText(I)V

    .line 558
    return-void
.end method

.method public setListItemSingleText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemSingleText:Lcom/htc/widget/HtcListItemSingleText;

    if-nez v0, :cond_0

    .line 563
    sget-boolean v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcListItemBuilder"

    const-string v1, "mListItemSingleText == null, please check the list item type is correct"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemSingleText:Lcom/htc/widget/HtcListItemSingleText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemSingleText;->setText(Ljava/lang/CharSequence;)V

    .line 566
    return-void
.end method

.method public setListItemSingleTextStype(I)V
    .locals 2
    .parameter "style"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemSingleText:Lcom/htc/widget/HtcListItemSingleText;

    if-nez v0, :cond_0

    .line 571
    sget-boolean v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcListItemBuilder"

    const-string v1, "mListItemSingleText == null, please check the list item type is correct"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemSingleText:Lcom/htc/widget/HtcListItemSingleText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemSingleText;->setTextStyle(I)V

    .line 574
    return-void
.end method

.method protected setPhoto2Text2StampHtcListItem(I)V
    .locals 2
    .parameter "listItemType"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemQuickContactBage:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    .line 470
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    .line 471
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineStamp:Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    .line 473
    packed-switch p1, :pswitch_data_0

    .line 491
    :goto_0
    return-void

    .line 475
    :pswitch_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 478
    :pswitch_1
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemRadioButton:Lcom/htc/widget/HtcListItemRadioButton;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 481
    :pswitch_2
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 484
    :pswitch_3
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    .line 485
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    .line 486
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemCheckBox;->setVisibility(I)V

    goto :goto_0

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected setPhoto2TextHtcListItem(I)V
    .locals 1
    .parameter "listItemType"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemQuickContactBage:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    .line 449
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    .line 451
    packed-switch p1, :pswitch_data_0

    .line 466
    :goto_0
    :pswitch_0
    return-void

    .line 455
    :pswitch_1
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 458
    :pswitch_2
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemRadioButton:Lcom/htc/widget/HtcListItemRadioButton;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 461
    :pswitch_3
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 451
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setPhotoBubbleCount(Ljava/lang/String;)V
    .locals 2
    .parameter "mCount"

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemQuickContactBage:Lcom/htc/widget/HtcListItemQuickContactBadge;

    if-nez v0, :cond_0

    .line 682
    sget-boolean v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcListItemBuilder"

    const-string v1, "mListItemQuickContactBage == null, please check the list item type is correct"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemQuickContactBage:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setBubbleCount(Ljava/lang/String;)V

    .line 685
    return-void
.end method

.method public setPhotoImage(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemQuickContactBage:Lcom/htc/widget/HtcListItemQuickContactBadge;

    if-nez v0, :cond_0

    .line 653
    sget-boolean v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcListItemBuilder"

    const-string v1, "mListItemQuickContactBage == null, please check the list item type is correct"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemQuickContactBage:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/QuickContactBadge;->setImageResource(I)V

    .line 656
    return-void
.end method

.method public setPhotoImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "mDrawable"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemQuickContactBage:Lcom/htc/widget/HtcListItemQuickContactBadge;

    if-nez v0, :cond_0

    .line 660
    sget-boolean v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcListItemBuilder"

    const-string v1, "mListItemQuickContactBage == null, please check the list item type is correct"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemQuickContactBage:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 664
    return-void
.end method

.method public setPhotoIndicatorImage(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemQuickContactBage:Lcom/htc/widget/HtcListItemQuickContactBadge;

    if-nez v0, :cond_0

    .line 668
    sget-boolean v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcListItemBuilder"

    const-string v1, "mListItemQuickContactBage == null, please check the list item type is correct"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemQuickContactBage:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setIndicatorResource(I)V

    .line 671
    return-void
.end method

.method public setPhotoIndicatorImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "mDrawable"

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemQuickContactBage:Lcom/htc/widget/HtcListItemQuickContactBadge;

    if-nez v0, :cond_0

    .line 675
    sget-boolean v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcListItemBuilder"

    const-string v1, "mListItemQuickContactBage == null, please check the list item type is correct"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItemBuilder;->mListItemQuickContactBage:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 678
    return-void
.end method
