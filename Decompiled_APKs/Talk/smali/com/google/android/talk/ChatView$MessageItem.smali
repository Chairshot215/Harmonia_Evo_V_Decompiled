.class Lcom/google/android/talk/ChatView$MessageItem;
.super Landroid/widget/RelativeLayout;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageItem"
.end annotation


# instance fields
.field private mAvatar:Lcom/google/android/talk/Divot;

.field private mBarColorNormal:I

.field private mBarColorTop:I

.field private mBody:Ljava/lang/String;

.field public mBold:Landroid/text/style/StyleSpan;

.field public mDateFormat:Ljava/text/DateFormat;

.field public mDateFormatStr:Ljava/lang/String;

.field private mIsFirstItemInList:Z

.field private mIsLastItemInList:Z

.field private mMarkup:Lcom/google/android/talk/util/Markup;

.field private mMeString:Ljava/lang/CharSequence;

.field public mMessageBlock:Landroid/view/View;

.field public mMessageView:Landroid/widget/TextView;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field public mSB:Landroid/text/SpannableStringBuilder;

.field public mSentAt:Landroid/widget/TextView;

.field private mSpan:Landroid/text/style/LineHeightSpan;

.field public mStringBuilder:Ljava/lang/StringBuilder;

.field private mViewType:I

.field final synthetic this$0:Lcom/google/android/talk/ChatView;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/ChatView;Landroid/app/Activity;I)V
    .locals 7
    .parameter
    .parameter "activity"
    .parameter "viewType"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1112
    iput-object p1, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    .line 1113
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1085
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 1086
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mBold:Landroid/text/style/StyleSpan;

    .line 1087
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    .line 1094
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mPath:Landroid/graphics/Path;

    .line 1095
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mPaint:Landroid/graphics/Paint;

    .line 1101
    new-instance v1, Lcom/google/android/talk/ChatView$MessageItem$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/ChatView$MessageItem$1;-><init>(Lcom/google/android/talk/ChatView$MessageItem;)V

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSpan:Landroid/text/style/LineHeightSpan;

    .line 1114
    invoke-virtual {p1, v5}, Lcom/google/android/talk/ChatView;->setOrientation(I)V

    .line 1116
    #getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v0

    .line 1118
    .local v0, r:Landroid/content/res/Resources;
    packed-switch p3, :pswitch_data_0

    .line 1153
    :goto_0
    const v1, 0x7f10000a

    invoke-virtual {p0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/Divot;

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Lcom/google/android/talk/Divot;

    .line 1154
    const v1, 0x7f100047

    invoke-virtual {p0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMessageView:Landroid/widget/TextView;

    .line 1155
    const v1, 0x7f100048

    invoke-virtual {p0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSentAt:Landroid/widget/TextView;

    .line 1156
    #getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMeString:Ljava/lang/CharSequence;

    .line 1157
    iput p3, p0, Lcom/google/android/talk/ChatView$MessageItem;->mViewType:I

    .line 1159
    #getter for: Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;
    invoke-static {p1}, Lcom/google/android/talk/ChatView;->access$2400(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mDateFormat:Ljava/text/DateFormat;

    .line 1160
    #getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mDateFormatStr:Ljava/lang/String;

    .line 1162
    const v1, 0x7f09001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mBarColorTop:I

    .line 1163
    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mBarColorNormal:I

    .line 1165
    new-instance v1, Lcom/google/android/talk/util/Markup;

    invoke-direct {v1, p2, v6, v6}, Lcom/google/android/talk/util/Markup;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMarkup:Lcom/google/android/talk/util/Markup;

    .line 1166
    const v1, 0x7f100046

    invoke-virtual {p0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMessageBlock:Landroid/view/View;

    .line 1168
    invoke-static {}, Lcom/google/android/talk/ChatView;->access$4800()I

    move-result v1

    if-nez v1, :cond_0

    .line 1169
    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$4802(I)I

    .line 1171
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSentAt:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 1172
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSentAt:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 1174
    :cond_1
    invoke-virtual {p0, v6}, Lcom/google/android/talk/ChatView$MessageItem;->setWillNotDraw(Z)V

    .line 1175
    return-void

    .line 1120
    :pswitch_0
    #getter for: Lcom/google/android/talk/ChatView;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lcom/google/android/talk/ChatView;->access$4700(Lcom/google/android/talk/ChatView;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040019

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1121
    const v1, 0x7f0b0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f0b0011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f0b0012

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v4, 0x7f0b0013

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/talk/ChatView$MessageItem;->setPadding(IIII)V

    goto/16 :goto_0

    .line 1128
    :pswitch_1
    #getter for: Lcom/google/android/talk/ChatView;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lcom/google/android/talk/ChatView;->access$4700(Lcom/google/android/talk/ChatView;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04001b

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1129
    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f0b0015

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f0b0016

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v4, 0x7f0b0017

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/talk/ChatView$MessageItem;->setPadding(IIII)V

    goto/16 :goto_0

    .line 1136
    :pswitch_2
    #getter for: Lcom/google/android/talk/ChatView;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lcom/google/android/talk/ChatView;->access$4700(Lcom/google/android/talk/ChatView;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04001a

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1137
    const v1, 0x7f0b0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f0b0019

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f0b001a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v4, 0x7f0b001b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/talk/ChatView$MessageItem;->setPadding(IIII)V

    goto/16 :goto_0

    .line 1144
    :pswitch_3
    #getter for: Lcom/google/android/talk/ChatView;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lcom/google/android/talk/ChatView;->access$4700(Lcom/google/android/talk/ChatView;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04001c

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1145
    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f0b001d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f0b001e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v4, 0x7f0b001f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/talk/ChatView$MessageItem;->setPadding(IIII)V

    goto/16 :goto_0

    .line 1118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private colorForNickname(Ljava/lang/String;Z)I
    .locals 7
    .parameter "contact"
    .parameter "isGroupChat"

    .prologue
    .line 1379
    const/high16 v4, -0x100

    .line 1380
    .local v4, retval:I
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 1381
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mGroupChatColors:[I
    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$5800(Lcom/google/android/talk/ChatView;)[I

    move-result-object v5

    if-nez v5, :cond_0

    .line 1383
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    const/4 v6, 0x3

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    #setter for: Lcom/google/android/talk/ChatView;->mGroupChatColors:[I
    invoke-static {v5, v6}, Lcom/google/android/talk/ChatView;->access$5802(Lcom/google/android/talk/ChatView;[I)[I

    .line 1387
    :cond_0
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mColorMapping:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$5900(Lcom/google/android/talk/ChatView;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1388
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mColorMapping:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$5900(Lcom/google/android/talk/ChatView;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1417
    :cond_1
    :goto_0
    return v4

    .line 1395
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mGroupChatColors:[I
    invoke-static {v6}, Lcom/google/android/talk/ChatView;->access$5800(Lcom/google/android/talk/ChatView;)[I

    move-result-object v6

    array-length v6, v6

    rem-int v3, v5, v6

    .line 1396
    .local v3, pos:I
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mGroupChatColors:[I
    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$5800(Lcom/google/android/talk/ChatView;)[I

    move-result-object v5

    array-length v1, v5

    .line 1397
    .local v1, count:I
    const/high16 v0, -0x100

    .local v0, color:I
    move v2, v1

    .line 1403
    .end local v1           #count:I
    .local v2, count:I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2           #count:I
    .restart local v1       #count:I
    if-lez v2, :cond_3

    .line 1404
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mGroupChatColors:[I
    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$5800(Lcom/google/android/talk/ChatView;)[I

    move-result-object v5

    array-length v5, v5

    rem-int/2addr v3, v5

    .line 1405
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mGroupChatColors:[I
    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$5800(Lcom/google/android/talk/ChatView;)[I

    move-result-object v5

    aget v0, v5, v3

    .line 1406
    if-eqz v0, :cond_4

    .line 1407
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mGroupChatColors:[I
    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$5800(Lcom/google/android/talk/ChatView;)[I

    move-result-object v5

    const/4 v6, 0x0

    aput v6, v5, v3

    .line 1413
    :cond_3
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mColorMapping:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$5900(Lcom/google/android/talk/ChatView;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    move v4, v0

    goto :goto_0

    .line 1410
    :cond_4
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #count:I
    .restart local v2       #count:I
    goto :goto_1

    .line 1383
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
    .end array-data
.end method

.method private convertToSpannableString(Ljava/lang/CharSequence;Z)Landroid/text/SpannableString;
    .locals 2
    .parameter "text"
    .parameter "markup"

    .prologue
    .line 1660
    if-eqz p2, :cond_0

    .line 1661
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMarkup:Lcom/google/android/talk/util/Markup;

    invoke-virtual {v1, p1}, Lcom/google/android/talk/util/Markup;->markup(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 1670
    .local v0, spanText:Landroid/text/SpannableString;
    :goto_0
    return-object v0

    .line 1663
    .end local v0           #spanText:Landroid/text/SpannableString;
    :cond_0
    instance-of v1, p1, Landroid/text/SpannableString;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 1664
    check-cast v0, Landroid/text/SpannableString;

    .restart local v0       #spanText:Landroid/text/SpannableString;
    goto :goto_0

    .line 1666
    .end local v0           #spanText:Landroid/text/SpannableString;
    :cond_1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .restart local v0       #spanText:Landroid/text/SpannableString;
    goto :goto_0
.end method

.method private inflatePictureView(I)Landroid/view/View;
    .locals 11
    .parameter

    .prologue
    const v10, 0x7f100046

    const/4 v7, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1682
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1683
    invoke-virtual {p0, v6}, Lcom/google/android/talk/ChatView$MessageItem;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 1684
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1685
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inflatePictureView looking for tag: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " this: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/talk/ChatView;->logv(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->access$4200(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 1687
    :cond_0
    if-eqz v4, :cond_2

    .line 1688
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1689
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inflatePictureView found view with tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getTag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pictureView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/talk/ChatView;->logv(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->access$4200(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 1692
    :cond_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1748
    :goto_0
    return-object v4

    .line 1700
    :cond_2
    invoke-virtual {p0, v10}, Lcom/google/android/talk/ChatView$MessageItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1701
    if-nez v0, :cond_3

    .line 1702
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linearLayoutRoot is NULL, can\'t find message_block, tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    invoke-virtual {p0, v3}, Lcom/google/android/talk/ChatView$MessageItem;->debug(I)V

    .line 1705
    const/4 v4, 0x0

    goto :goto_0

    .line 1707
    :cond_3
    const-string v1, "wrapperView"

    invoke-virtual {p0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1708
    if-nez v1, :cond_5

    .line 1709
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/google/android/talk/ChatView$MessageItem;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1710
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1711
    const-string v5, "wrapperView"

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 1712
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1715
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1716
    iget-object v7, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inflatePictureView linearLayoutRoot: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " wrapperView: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " params: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/google/android/talk/ChatView;->logv(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/google/android/talk/ChatView;->access$4200(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 1719
    :cond_4
    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1720
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setId(I)V

    .line 1723
    :cond_5
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$4700(Lcom/google/android/talk/ChatView;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v5, 0x7f04002a

    invoke-virtual {v0, v5, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1726
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    move v5, v3

    .line 1728
    :goto_1
    if-ge v5, v7, :cond_8

    .line 1729
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1730
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f10006d

    if-ne v8, v9, :cond_7

    .line 1731
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_7

    .line 1734
    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    move v0, v2

    .line 1740
    :goto_2
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1741
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inflatePictureView had to inflate view. found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " CREATED tag: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " getTag: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " pictureView: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " parent: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " dump: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/google/android/talk/ChatView;->logv(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/google/android/talk/ChatView;->access$4200(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 1746
    :cond_6
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    move-object v4, v1

    .line 1748
    goto/16 :goto_0

    .line 1728
    :cond_7
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_8
    move v0, v3

    move-object v1, v4

    goto :goto_2
.end method

.method private removeAllPictureViews()V
    .locals 4

    .prologue
    .line 1757
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 1758
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/talk/ChatView$MessageItem;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1759
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f10006d

    if-ne v2, v3, :cond_0

    .line 1760
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1762
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1764
    :cond_1
    return-void
.end method

.method private setPicture(Lcom/google/android/talk/PictureCache$PictureData;Landroid/widget/ImageView;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1793
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1794
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPicture pictureData: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " desc: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/talk/PictureCache$PictureData;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/talk/ChatView;->logv(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->access$4200(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 1799
    :cond_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1800
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1802
    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1803
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1805
    const v1, 0x7f10006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1806
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1808
    invoke-virtual {p1}, Lcom/google/android/talk/PictureCache$PictureData;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1811
    invoke-virtual {p1}, Lcom/google/android/talk/PictureCache$PictureData;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 1812
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    .line 1813
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/talk/PictureCache$PictureData;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 1814
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1815
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1817
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1818
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1819
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v6, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1823
    if-eqz v1, :cond_1

    .line 1824
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1827
    :cond_1
    if-eqz v1, :cond_2

    .line 1828
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1831
    :cond_2
    const v1, 0x7f100071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1832
    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1836
    invoke-virtual {p1}, Lcom/google/android/talk/PictureCache$PictureData;->getType()I

    move-result v1

    .line 1837
    const/4 v3, 0x4

    if-ne v1, v3, :cond_5

    .line 1838
    const v2, 0x7f02003b

    .line 1844
    :cond_3
    :goto_1
    const v1, 0x7f100070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1845
    if-eqz v2, :cond_7

    .line 1846
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1850
    :goto_2
    return-void

    :cond_4
    move v1, v2

    .line 1812
    goto :goto_0

    .line 1839
    :cond_5
    const/4 v3, 0x3

    if-ne v1, v3, :cond_6

    .line 1840
    const v2, 0x7f0200b2

    goto :goto_1

    .line 1841
    :cond_6
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 1842
    const v2, 0x7f0200cb

    goto :goto_1

    .line 1848
    :cond_7
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private showPictures(Ljava/lang/CharSequence;)V
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1767
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView$MessageItem;->getMessageLinks()[Landroid/text/style/URLSpan;

    move-result-object v7

    .line 1769
    array-length v8, v7

    move v6, v2

    .line 1770
    :goto_0
    if-ge v6, v8, :cond_1

    .line 1771
    aget-object v0, v7, v6

    .line 1772
    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v1

    .line 1774
    invoke-static {v1}, Lcom/google/android/talk/PictureCache;->allowScraping(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1775
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mPictureCache:Lcom/google/android/talk/PictureCache;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$6100(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/PictureCache;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$6000(Lcom/google/android/talk/ChatView;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/PictureCache;->getPictureDataIfInCache(Ljava/lang/String;IILandroid/os/Handler;Lcom/google/android/talk/PictureCache$PictureData;)Lcom/google/android/talk/PictureCache$PictureData;

    move-result-object v1

    .line 1782
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showPictures pictureData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/google/android/talk/ChatView;->logv(Ljava/lang/String;)V
    invoke-static {v0, v3}, Lcom/google/android/talk/ChatView;->access$4200(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 1784
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/talk/PictureCache$PictureData;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1785
    invoke-direct {p0, v6}, Lcom/google/android/talk/ChatView$MessageItem;->inflatePictureView(I)Landroid/view/View;

    move-result-object v0

    .line 1786
    const v3, 0x7f10006f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/google/android/talk/ChatView$MessageItem;->setPicture(Lcom/google/android/talk/PictureCache$PictureData;Landroid/widget/ImageView;)V

    .line 1770
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 1790
    :cond_1
    return-void
.end method


# virtual methods
.method appendAnnotation(Landroid/text/SpannableStringBuilder;JZ)V
    .locals 3
    .parameter "text"
    .parameter "timeStamp"
    .parameter "linkify"

    .prologue
    .line 1645
    if-eqz p4, :cond_0

    .line 1646
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMessageView:Landroid/widget/TextView;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 1649
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/google/android/talk/ChatView$MessageItem;->convertToSpannableString(Ljava/lang/CharSequence;Z)Landroid/text/SpannableString;

    move-result-object v0

    .line 1650
    .local v0, spanText:Landroid/text/SpannableString;
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMessageView:Landroid/widget/TextView;

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1652
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-eqz v1, :cond_1

    .line 1653
    invoke-virtual {p0, p2, p3}, Lcom/google/android/talk/ChatView$MessageItem;->setTimeStamp(J)V

    .line 1655
    :cond_1
    return-void
.end method

.method public appendGroupChatConversionMessage(J)V
    .locals 7
    .parameter "date"

    .prologue
    const/4 v6, 0x0

    .line 1482
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1484
    .local v0, body:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1485
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1486
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1488
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1490
    .local v1, len:I
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v6, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1493
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/google/android/talk/ChatView$MessageItem;->appendAnnotation(Landroid/text/SpannableStringBuilder;JZ)V

    .line 1494
    return-void
.end method

.method appendInboxMessage(Ljava/lang/String;Ljava/lang/String;JZLandroid/database/Cursor;)V
    .locals 12
    .parameter "nickname"
    .parameter "text"
    .parameter "date"
    .parameter "showTimeStamp"
    .parameter "c"

    .prologue
    .line 1422
    iget-object v10, p0, Lcom/google/android/talk/ChatView$MessageItem;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 1423
    .local v10, buf:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1424
    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1426
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1427
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1428
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1430
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->isGroupChat()Z

    move-result v11

    .line 1431
    .local v11, isGroupChat:Z
    const/4 v5, 0x0

    .line 1432
    .local v5, nick:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0036

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1435
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, p1, v11}, Lcom/google/android/talk/ChatView$MessageItem;->colorForNickname(Ljava/lang/String;Z)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v2, p3

    move/from16 v4, p5

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/talk/ChatView$MessageItem;->appendMessage(Landroid/text/SpannableStringBuilder;JZLjava/lang/String;IZZZ)V

    .line 1438
    return-void
.end method

.method appendMessage(Landroid/text/SpannableStringBuilder;JZLjava/lang/String;IZZZ)V
    .locals 5
    .parameter "text"
    .parameter "timeStamp"
    .parameter "showTimeStamp"
    .parameter "contact"
    .parameter "textColor"
    .parameter "linkify"
    .parameter "markup"
    .parameter "isSending"

    .prologue
    const/4 v4, 0x0

    .line 1623
    if-eqz p7, :cond_0

    .line 1624
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMessageView:Landroid/widget/TextView;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 1627
    :cond_0
    if-eqz p5, :cond_1

    .line 1628
    invoke-virtual {p1, v4, p5}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1629
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v2, -0x7f7f80

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1630
    .local v0, mTextColor:Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v4, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1633
    .end local v0           #mTextColor:Landroid/text/style/ForegroundColorSpan;
    :cond_1
    if-eqz p9, :cond_3

    .line 1634
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSentAt:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0048

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1638
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p8}, Lcom/google/android/talk/ChatView$MessageItem;->convertToSpannableString(Ljava/lang/CharSequence;Z)Landroid/text/SpannableString;

    move-result-object v1

    .line 1640
    .local v1, spanText:Landroid/text/SpannableString;
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMessageView:Landroid/widget/TextView;

    sget-object v3, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1641
    invoke-direct {p0, p1}, Lcom/google/android/talk/ChatView$MessageItem;->showPictures(Ljava/lang/CharSequence;)V

    .line 1642
    return-void

    .line 1635
    .end local v1           #spanText:Landroid/text/SpannableString;
    :cond_3
    if-eqz p4, :cond_2

    .line 1636
    invoke-virtual {p0, p2, p3}, Lcom/google/android/talk/ChatView$MessageItem;->setTimeStamp(J)V

    goto :goto_0
.end method

.method public appendOffTheRecordStatus(Ljava/lang/String;)V
    .locals 7
    .parameter "body"

    .prologue
    const/16 v6, 0x21

    const/4 v5, 0x0

    .line 1577
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1578
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1579
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1581
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1583
    .local v0, len:I
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v2, v5, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1586
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v2, v5, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1589
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f4ccccd

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1, v2, v5, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1593
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3, v5}, Lcom/google/android/talk/ChatView$MessageItem;->appendAnnotation(Landroid/text/SpannableStringBuilder;JZ)V

    .line 1594
    return-void
.end method

.method public appendPresenceUpdates(Ljava/lang/String;IJ)V
    .locals 10
    .parameter "nickname"
    .parameter "type"
    .parameter "date"

    .prologue
    const/16 v9, 0x21

    const/4 v8, 0x0

    .line 1499
    packed-switch p2, :pswitch_data_0

    .line 1513
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v5

    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mGroupChat:Z
    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$4900(Lcom/google/android/talk/ChatView;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f0c003d

    :goto_0
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1517
    .local v0, body:Ljava/lang/CharSequence;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1519
    .local v3, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 1520
    .local v1, formatter:Ljava/util/Formatter;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-virtual {v1, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1522
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1524
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1525
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1526
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1528
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1530
    .local v2, len:I
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4, v5, v8, v2, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1533
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v4, v5, v8, v2, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1536
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    const v6, 0x3f4ccccd

    invoke-direct {v5, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v4, v5, v8, v2, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1540
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v4, p3, p4, v8}, Lcom/google/android/talk/ChatView$MessageItem;->appendAnnotation(Landroid/text/SpannableStringBuilder;JZ)V

    .line 1541
    return-void

    .line 1501
    .end local v0           #body:Ljava/lang/CharSequence;
    .end local v1           #formatter:Ljava/util/Formatter;
    .end local v2           #len:I
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :pswitch_0
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v5

    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mGroupChat:Z
    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$4900(Lcom/google/android/talk/ChatView;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0c003c

    :goto_2
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1502
    .restart local v0       #body:Ljava/lang/CharSequence;
    goto :goto_1

    .line 1501
    .end local v0           #body:Ljava/lang/CharSequence;
    :cond_0
    const v4, 0x7f0c003e

    goto :goto_2

    .line 1505
    :pswitch_1
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1506
    .restart local v0       #body:Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1509
    .end local v0           #body:Ljava/lang/CharSequence;
    :pswitch_2
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0040

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1510
    .restart local v0       #body:Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1513
    .end local v0           #body:Ljava/lang/CharSequence;
    :cond_1
    const v4, 0x7f0c0041

    goto/16 :goto_0

    .line 1499
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method appendSentMessage(Ljava/lang/String;JZIZ)V
    .locals 14
    .parameter "text"
    .parameter "date"
    .parameter "showTimeStamp"
    .parameter "errorCode"
    .parameter "isSending"

    .prologue
    .line 1442
    iget-object v10, p0, Lcom/google/android/talk/ChatView$MessageItem;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 1443
    .local v10, buf:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1444
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    .line 1445
    .local v13, namePortionLength:I
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1447
    const/4 v11, 0x0

    .line 1450
    .local v11, errorOffset:I
    if-lez p5, :cond_0

    .line 1451
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    .line 1452
    const-string v0, "\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1453
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1457
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1458
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1460
    if-lez p5, :cond_1

    .line 1461
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    .line 1463
    .local v12, length:I
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v12, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1466
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v12, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1470
    if-lez v11, :cond_1

    .line 1471
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const v2, 0x3f4ccccd

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v11, v12, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1477
    .end local v12           #length:I
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    const/4 v5, 0x0

    const/high16 v6, -0x100

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/talk/ChatView$MessageItem;->appendMessage(Landroid/text/SpannableStringBuilder;JZLjava/lang/String;IZZZ)V

    .line 1479
    return-void
.end method

.method public appendStatusMessage(Ljava/lang/String;J)V
    .locals 7
    .parameter "status"
    .parameter "date"

    .prologue
    const/16 v6, 0x21

    const/4 v5, 0x0

    .line 1544
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1545
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1546
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1548
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1550
    .local v0, len:I
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v2, v5, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1553
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v2, v5, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1556
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f4ccccd

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1, v2, v5, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1560
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3, v5}, Lcom/google/android/talk/ChatView$MessageItem;->appendAnnotation(Landroid/text/SpannableStringBuilder;JZ)V

    .line 1561
    return-void
.end method

.method public appendUserStatusMessage(Ljava/lang/String;JZ)V
    .locals 7
    .parameter "statusMessage"
    .parameter "date"
    .parameter "showTimeStamp"

    .prologue
    const/4 v6, 0x1

    .line 1566
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1567
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1569
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0108

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mNickName:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$800(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object p1, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1572
    .local v0, formattedMessage:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1573
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    if-eqz p4, :cond_0

    .end local p2
    :goto_0
    invoke-virtual {p0, v1, p2, p3, v6}, Lcom/google/android/talk/ChatView$MessageItem;->appendAnnotation(Landroid/text/SpannableStringBuilder;JZ)V

    .line 1574
    return-void

    .line 1573
    .restart local p2
    :cond_0
    const-wide/16 p2, 0x0

    goto :goto_0
.end method

.method public bind(Landroid/database/Cursor;)V
    .locals 21
    .parameter "c"

    .prologue
    .line 1254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mDateColumn:I
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$2700(Lcom/google/android/talk/ChatView;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1255
    .local v5, date:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mTypeColumn:I
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$2800(Lcom/google/android/talk/ChatView;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 1256
    .local v20, type:I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->mIsFirstItemInList:Z

    .line 1257
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v2, v8, :cond_5

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->mIsLastItemInList:Z

    .line 1259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->mSentAt:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->mMessageView:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mBodyColumn:I
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$2600(Lcom/google/android/talk/ChatView;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/talk/ChatView$MessageItem;->mBody:Ljava/lang/String;

    .line 1265
    .local v4, body:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mGroupChat:Z
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$4900(Lcom/google/android/talk/ChatView;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mNicknameColumn:I
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$2500(Lcom/google/android/talk/ChatView;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1267
    .local v19, nickname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object/from16 v0, v19

    #calls: Lcom/google/android/talk/ChatView;->getGroupchatShortname(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/google/android/talk/ChatView;->access$5000(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1272
    .local v3, displayNickname:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mDisplaySentTimeColumn:I
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$2900(Lcom/google/android/talk/ChatView;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1273
    .local v15, alwaysDisplayTs:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mDeltaColumn:I
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$3100(Lcom/google/android/talk/ChatView;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1274
    .local v16, delta:J
    const/4 v2, 0x1

    if-eq v15, v2, :cond_0

    const-wide/32 v8, 0xea60

    cmp-long v2, v16, v8

    if-lez v2, :cond_7

    :cond_0
    const/4 v7, 0x1

    .line 1275
    .local v7, showTimeStamp:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mSendStatusColumn:I
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$3200(Lcom/google/android/talk/ChatView;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_8

    const/4 v14, 0x1

    .line 1280
    .local v14, isSending:Z
    :goto_4
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v2, v8, :cond_2

    .line 1281
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delta = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", showTs="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/google/android/talk/ChatView;->logv(Ljava/lang/String;)V
    invoke-static {v2, v8}, Lcom/google/android/talk/ChatView;->access$4200(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 1284
    :cond_1
    if-nez v7, :cond_9

    .line 1285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    const-wide/32 v8, 0xea60

    #calls: Lcom/google/android/talk/ChatView;->scheduleRequery(J)V
    invoke-static {v2, v8, v9}, Lcom/google/android/talk/ChatView;->access$5100(Lcom/google/android/talk/ChatView;J)V

    .line 1294
    :cond_2
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/talk/ChatView$MessageItem;->removeAllPictureViews()V

    .line 1296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Lcom/google/android/talk/Divot;

    if-eqz v2, :cond_3

    .line 1297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Lcom/google/android/talk/Divot;

    invoke-interface {v2}, Lcom/google/android/talk/Divot;->asImageView()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1299
    :cond_3
    packed-switch v20, :pswitch_data_0

    .line 1360
    :pswitch_0
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1, v5, v6}, Lcom/google/android/talk/ChatView$MessageItem;->appendPresenceUpdates(Ljava/lang/String;IJ)V

    .line 1364
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->mIsLastItemInList:Z

    if-eqz v2, :cond_d

    .line 1367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->mSentAt:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1372
    :goto_7
    return-void

    .line 1256
    .end local v3           #displayNickname:Ljava/lang/String;
    .end local v4           #body:Ljava/lang/String;
    .end local v7           #showTimeStamp:Z
    .end local v14           #isSending:Z
    .end local v15           #alwaysDisplayTs:I
    .end local v16           #delta:J
    .end local v19           #nickname:Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1257
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1269
    .restart local v4       #body:Ljava/lang/String;
    :cond_6
    const/16 v19, 0x0

    .line 1270
    .restart local v19       #nickname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {v2}, Lcom/google/android/talk/ChatView;->getNickname()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #displayNickname:Ljava/lang/String;
    goto/16 :goto_2

    .line 1274
    .restart local v15       #alwaysDisplayTs:I
    .restart local v16       #delta:J
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 1275
    .restart local v7       #showTimeStamp:Z
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 1287
    .restart local v14       #isSending:Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #calls: Lcom/google/android/talk/ChatView;->cancelRequery()V
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$5200(Lcom/google/android/talk/ChatView;)V

    goto :goto_5

    :pswitch_1
    move-object/from16 v2, p0

    move-object/from16 v8, p1

    .line 1301
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/talk/ChatView$MessageItem;->appendInboxMessage(Ljava/lang/String;Ljava/lang/String;JZLandroid/database/Cursor;)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mGroupChat:Z
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$4900(Lcom/google/android/talk/ChatView;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object/from16 v0, v19

    #calls: Lcom/google/android/talk/ChatView;->fixGroupchatNickname(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/google/android/talk/ChatView;->access$5300(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1305
    .local v18, emailAddress:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mGroupChatAvatarCache:Lcom/google/android/talk/ChatView$AvatarCache;
    invoke-static {v8}, Lcom/google/android/talk/ChatView;->access$5400(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$AvatarCache;

    move-result-object v8

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v8, v0, v1}, Lcom/google/android/talk/ChatView$AvatarCache;->getAvatar(Ljava/lang/String;Lcom/google/android/talk/ChatView$MessageItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    #setter for: Lcom/google/android/talk/ChatView;->mSingleAvatar:Landroid/graphics/drawable/Drawable;
    invoke-static {v2, v8}, Lcom/google/android/talk/ChatView;->access$2002(Lcom/google/android/talk/ChatView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 1311
    .end local v18           #emailAddress:Ljava/lang/String;
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mSingleAvatar:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$2000(Lcom/google/android/talk/ChatView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Lcom/google/android/talk/Divot;

    invoke-interface {v2}, Lcom/google/android/talk/Divot;->asImageView()Landroid/widget/ImageView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mSingleAvatar:Landroid/graphics/drawable/Drawable;
    invoke-static {v8}, Lcom/google/android/talk/ChatView;->access$2000(Lcom/google/android/talk/ChatView;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1316
    :goto_9
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Lcom/google/android/talk/Divot;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mGroupChat:Z
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$4900(Lcom/google/android/talk/ChatView;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    :goto_a
    invoke-interface {v8, v2}, Lcom/google/android/talk/Divot;->assignContactFromEmail(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1307
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mSingleAvatar:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$2000(Lcom/google/android/talk/ChatView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    goto :goto_8

    .line 1314
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Lcom/google/android/talk/Divot;

    invoke-interface {v2}, Lcom/google/android/talk/Divot;->asImageView()Landroid/widget/ImageView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v8}, Lcom/google/android/talk/ChatView;->access$5500(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/TalkApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/talk/TalkApp;->getGenericAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    .line 1316
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$1700(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    .line 1320
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mErrorCodeColumn:I
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$3000(Lcom/google/android/talk/ChatView;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .local v13, errorCode:I
    move-object/from16 v8, p0

    move-object v9, v4

    move-wide v10, v5

    move v12, v7

    .line 1321
    invoke-virtual/range {v8 .. v14}, Lcom/google/android/talk/ChatView$MessageItem;->appendSentMessage(Ljava/lang/String;JZIZ)V

    .line 1324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Lcom/google/android/talk/Divot;

    invoke-interface {v2}, Lcom/google/android/talk/Divot;->asImageView()Landroid/widget/ImageView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mSelfAvatar:Landroid/graphics/drawable/Drawable;
    invoke-static {v8}, Lcom/google/android/talk/ChatView;->access$5600(Lcom/google/android/talk/ChatView;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Lcom/google/android/talk/Divot;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mSelfUsername:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/talk/ChatView;->access$5700(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lcom/google/android/talk/Divot;->assignContactFromEmail(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1328
    .end local v13           #errorCode:I
    :pswitch_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/google/android/talk/ChatView$MessageItem;->appendGroupChatConversionMessage(J)V

    goto/16 :goto_6

    .line 1331
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f0c0049

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/talk/ChatView$MessageItem;->appendOffTheRecordStatus(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1334
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f0c004a

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/talk/ChatView$MessageItem;->appendOffTheRecordStatus(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1337
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f0c004b

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/talk/ChatView$MessageItem;->appendOffTheRecordStatus(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1341
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f0c004c

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-virtual {v2, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/talk/ChatView$MessageItem;->appendOffTheRecordStatus(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1345
    :pswitch_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/google/android/talk/ChatView$MessageItem;->appendStatusMessage(Ljava/lang/String;J)V

    goto/16 :goto_6

    .line 1348
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f0c0043

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-virtual {v2, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5, v6, v8}, Lcom/google/android/talk/ChatView$MessageItem;->appendUserStatusMessage(Ljava/lang/String;JZ)V

    goto/16 :goto_6

    .line 1352
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f0c0042

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-virtual {v2, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5, v6, v8}, Lcom/google/android/talk/ChatView$MessageItem;->appendUserStatusMessage(Ljava/lang/String;JZ)V

    goto/16 :goto_6

    .line 1357
    :pswitch_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/google/android/talk/ChatView$MessageItem;->appendStatusMessage(Ljava/lang/String;J)V

    goto/16 :goto_6

    .line 1370
    :cond_d
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/talk/ChatView$MessageItem;->mSentAt:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->mSentAt:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_e

    const/16 v2, 0x8

    :goto_b
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_e
    const/4 v2, 0x0

    goto :goto_b

    .line 1299
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_8
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "c"

    .prologue
    const/high16 v9, 0x3f80

    .line 1183
    iget-object v6, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMessageBlock:Landroid/view/View;

    .line 1184
    .local v6, v:Landroid/view/View;
    if-eqz v6, :cond_3

    .line 1185
    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v1

    .line 1186
    .local v1, l:F
    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v5

    .line 1187
    .local v5, t:F
    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float v4, v7, v8

    .line 1188
    .local v4, r:F
    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    add-float v0, v7, v8

    .line 1190
    .local v0, b:F
    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageItem;->mPath:Landroid/graphics/Path;

    .line 1191
    .local v3, path:Landroid/graphics/Path;
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 1195
    add-float v7, v5, v9

    invoke-virtual {v3, v1, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1196
    add-float v7, v5, v9

    invoke-virtual {v3, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1197
    invoke-virtual {v3, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1198
    invoke-virtual {v3, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1199
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 1201
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->mPaint:Landroid/graphics/Paint;

    .line 1202
    .local v2, paint:Landroid/graphics/Paint;
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1203
    const/4 v7, -0x1

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1204
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1206
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1208
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 1210
    sub-float/2addr v4, v9

    .line 1221
    iget-boolean v7, p0, Lcom/google/android/talk/ChatView$MessageItem;->mIsLastItemInList:Z

    if-eqz v7, :cond_0

    .line 1222
    sub-float/2addr v0, v9

    .line 1224
    :cond_0
    iget-object v7, p0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Lcom/google/android/talk/Divot;

    invoke-interface {v7}, Lcom/google/android/talk/Divot;->getPosition()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    .line 1225
    iget-object v7, p0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Lcom/google/android/talk/Divot;

    invoke-interface {v7}, Lcom/google/android/talk/Divot;->getCloseOffset()F

    move-result v7

    add-float/2addr v7, v5

    invoke-virtual {v3, v1, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1226
    invoke-virtual {v3, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1227
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1228
    invoke-virtual {v3, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1229
    invoke-virtual {v3, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1230
    iget-object v7, p0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Lcom/google/android/talk/Divot;

    invoke-interface {v7}, Lcom/google/android/talk/Divot;->getFarOffset()F

    move-result v7

    add-float/2addr v7, v5

    invoke-virtual {v3, v1, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1241
    :cond_1
    :goto_0
    const v7, -0x333334

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1242
    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1243
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1244
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1248
    .end local v0           #b:F
    .end local v1           #l:F
    .end local v2           #paint:Landroid/graphics/Paint;
    .end local v3           #path:Landroid/graphics/Path;
    .end local v4           #r:F
    .end local v5           #t:F
    :goto_1
    return-void

    .line 1231
    .restart local v0       #b:F
    .restart local v1       #l:F
    .restart local v2       #paint:Landroid/graphics/Paint;
    .restart local v3       #path:Landroid/graphics/Path;
    .restart local v4       #r:F
    .restart local v5       #t:F
    :cond_2
    iget-object v7, p0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Lcom/google/android/talk/Divot;

    invoke-interface {v7}, Lcom/google/android/talk/Divot;->getPosition()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 1232
    iget-object v7, p0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Lcom/google/android/talk/Divot;

    invoke-interface {v7}, Lcom/google/android/talk/Divot;->getCloseOffset()F

    move-result v7

    add-float/2addr v7, v5

    invoke-virtual {v3, v4, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1233
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1234
    invoke-virtual {v3, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1235
    invoke-virtual {v3, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1236
    invoke-virtual {v3, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1237
    iget-object v7, p0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Lcom/google/android/talk/Divot;

    invoke-interface {v7}, Lcom/google/android/talk/Divot;->getFarOffset()F

    move-result v7

    add-float/2addr v7, v5

    invoke-virtual {v3, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 1246
    .end local v0           #b:F
    .end local v1           #l:F
    .end local v2           #paint:Landroid/graphics/Paint;
    .end local v3           #path:Landroid/graphics/Path;
    .end local v4           #r:F
    .end local v5           #t:F
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method final getMessageLinks()[Landroid/text/style/URLSpan;
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object v0

    return-object v0
.end method

.method setTimeStamp(J)V
    .locals 11
    .parameter "timeStamp"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1597
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 1598
    .local v0, date:Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v3, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 1600
    .local v3, now:Ljava/util/Date;
    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageItem;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v9, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 1601
    .local v6, timeStr:Ljava/lang/String;
    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageItem;->mDateFormatStr:Ljava/lang/String;

    invoke-static {v9, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1603
    .local v1, dateStr:Ljava/lang/CharSequence;
    invoke-virtual {v3}, Ljava/util/Date;->getDate()I

    move-result v9

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v10

    if-ne v9, v10, :cond_0

    invoke-virtual {v3}, Ljava/util/Date;->getMonth()I

    move-result v9

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v10

    if-ne v9, v10, :cond_0

    invoke-virtual {v3}, Ljava/util/Date;->getYear()I

    move-result v9

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v10

    if-ne v9, v10, :cond_0

    move v4, v7

    .line 1608
    .local v4, sameDay:Z
    :goto_0
    if-eqz v4, :cond_1

    const v2, 0x7f0c0046

    .line 1611
    .local v2, format:I
    :goto_1
    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v9}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v8

    aput-object v1, v10, v7

    invoke-virtual {v9, v2, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1612
    .local v5, timeStampStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSentAt:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1613
    return-void

    .end local v2           #format:I
    .end local v4           #sameDay:Z
    .end local v5           #timeStampStr:Ljava/lang/String;
    :cond_0
    move v4, v8

    .line 1603
    goto :goto_0

    .line 1608
    .restart local v4       #sameDay:Z
    :cond_1
    const v2, 0x7f0c0045

    goto :goto_1
.end method
