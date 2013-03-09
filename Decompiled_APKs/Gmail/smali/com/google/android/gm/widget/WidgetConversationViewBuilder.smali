.class public Lcom/google/android/gm/widget/WidgetConversationViewBuilder;
.super Ljava/lang/Object;
.source "WidgetConversationViewBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/widget/WidgetConversationViewBuilder$WidgetLabelDisplayer;
    }
.end annotation


# static fields
.field private static ATTACHMENT:Landroid/graphics/Bitmap;

.field private static DATE_FONT_SIZE:I

.field private static DATE_TEXT_COLOR_READ:I

.field private static DATE_TEXT_COLOR_UNREAD:I

.field private static DRAFT_TEXT_COLOR:I

.field private static SENDERS_FONT_SIZE:I

.field private static SENDERS_TEXT_COLOR_READ:I

.field private static SENDERS_TEXT_COLOR_UNREAD:I

.field private static SUBJECT_FONT_SIZE:I

.field private static SUBJECT_TEXT_COLOR_READ:I

.field private static SUBJECT_TEXT_COLOR_UNREAD:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLabelDisplayer:Lcom/google/android/gm/widget/WidgetConversationViewBuilder$WidgetLabelDisplayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "account"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->mContext:Landroid/content/Context;

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 108
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Lcom/google/android/gm/widget/WidgetConversationViewBuilder$WidgetLabelDisplayer;

    invoke-direct {v1}, Lcom/google/android/gm/widget/WidgetConversationViewBuilder$WidgetLabelDisplayer;-><init>()V

    iput-object v1, p0, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->mLabelDisplayer:Lcom/google/android/gm/widget/WidgetConversationViewBuilder$WidgetLabelDisplayer;

    .line 111
    const v1, 0x7f0e0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->SENDERS_FONT_SIZE:I

    .line 112
    const v1, 0x7f0e0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->DATE_FONT_SIZE:I

    .line 113
    const v1, 0x7f0e0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->SUBJECT_FONT_SIZE:I

    .line 116
    const v1, 0x7f0b001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->SUBJECT_TEXT_COLOR_READ:I

    .line 117
    const v1, 0x7f0b0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->SUBJECT_TEXT_COLOR_UNREAD:I

    .line 118
    const v1, 0x7f0b001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->SENDERS_TEXT_COLOR_READ:I

    .line 119
    const v1, 0x7f0b001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->SENDERS_TEXT_COLOR_UNREAD:I

    .line 120
    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->DATE_TEXT_COLOR_READ:I

    .line 121
    const v1, 0x7f0b001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->DATE_TEXT_COLOR_UNREAD:I

    .line 122
    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->DRAFT_TEXT_COLOR:I

    .line 125
    const v1, 0x7f020021

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->ATTACHMENT:Landroid/graphics/Bitmap;

    .line 126
    return-void
.end method

.method private addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "text"
    .parameter "size"
    .parameter "color"

    .prologue
    const/16 v4, 0x21

    const/4 v3, 0x0

    .line 132
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 133
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 135
    if-eqz p3, :cond_0

    .line 136
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 139
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getStyledView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/Map;Z)Landroid/widget/RemoteViews;
    .locals 15
    .parameter "senders"
    .parameter "status"
    .parameter "date"
    .parameter "subject"
    .parameter "snippet"
    .parameter
    .parameter "hasAttachments"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;Z)",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    .prologue
    .line 149
    .local p6, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    iget-object v11, p0, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->mLabelDisplayer:Lcom/google/android/gm/widget/WidgetConversationViewBuilder$WidgetLabelDisplayer;

    const-string v12, "^i"

    move-object/from16 v0, p6

    invoke-virtual {v11, v0, v12}, Lcom/google/android/gm/widget/WidgetConversationViewBuilder$WidgetLabelDisplayer;->loadConversationLabels(Ljava/util/Map;Ljava/lang/CharSequence;)V

    .line 151
    const-string v11, "^u"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 154
    .local v2, isUnread:Z
    sget v12, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->SENDERS_FONT_SIZE:I

    if-eqz v2, :cond_4

    sget v11, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->SENDERS_TEXT_COLOR_UNREAD:I

    :goto_0
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v12, v11}, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 158
    .local v6, styledSenders:Ljava/lang/CharSequence;
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 159
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 161
    .local v1, builder:Landroid/text/SpannableStringBuilder;
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 163
    const-string v12, ", "

    sget v13, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->SENDERS_FONT_SIZE:I

    if-eqz v2, :cond_5

    sget v11, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->SENDERS_TEXT_COLOR_UNREAD:I

    :goto_1
    invoke-direct {p0, v12, v13, v11}, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 167
    :cond_0
    sget v11, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->SENDERS_FONT_SIZE:I

    sget v12, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->DRAFT_TEXT_COLOR:I

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v11, v12}, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 168
    .local v7, styledStatus:Ljava/lang/CharSequence;
    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .line 172
    .end local v1           #builder:Landroid/text/SpannableStringBuilder;
    .end local v7           #styledStatus:Ljava/lang/CharSequence;
    :cond_1
    sget v12, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->DATE_FONT_SIZE:I

    if-eqz v2, :cond_6

    sget v11, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->DATE_TEXT_COLOR_UNREAD:I

    :goto_2
    move-object/from16 v0, p3

    invoke-direct {p0, v0, v12, v11}, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 176
    .local v5, styledDate:Ljava/lang/CharSequence;
    if-eqz v2, :cond_7

    sget v10, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->SUBJECT_TEXT_COLOR_UNREAD:I

    .line 177
    .local v10, subjectColor:I
    :goto_3
    new-instance v9, Landroid/text/SpannableStringBuilder;

    iget-object v11, p0, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->mContext:Landroid/content/Context;

    const v12, 0x7f0c014b

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p4, v13, v14

    const/4 v14, 0x1

    aput-object p5, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 179
    .local v9, subjectAndSnippet:Landroid/text/SpannableStringBuilder;
    if-eqz v2, :cond_2

    .line 180
    new-instance v11, Landroid/text/style/StyleSpan;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v12, 0x0

    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    move-result v13

    const/16 v14, 0x21

    invoke-virtual {v9, v11, v12, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 183
    :cond_2
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v11, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v12, 0x0

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    const/16 v14, 0x21

    invoke-virtual {v9, v11, v12, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 185
    sget v11, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->SUBJECT_FONT_SIZE:I

    const/4 v12, 0x0

    invoke-direct {p0, v9, v11, v12}, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 188
    .local v8, styledSubject:Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 189
    .local v3, paperclipBitmap:Landroid/graphics/Bitmap;
    if-eqz p7, :cond_3

    .line 190
    sget-object v3, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->ATTACHMENT:Landroid/graphics/Bitmap;

    .line 194
    :cond_3
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v11, p0, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f04005a

    invoke-direct {v4, v11, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 196
    .local v4, remoteViews:Landroid/widget/RemoteViews;
    const v11, 0x7f0f00e1

    invoke-virtual {v4, v11, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 197
    const v11, 0x7f0f00e0

    invoke-virtual {v4, v11, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 198
    const v11, 0x7f0f00e2

    invoke-virtual {v4, v11, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 199
    if-eqz v3, :cond_8

    .line 200
    const v11, 0x7f0f00df

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 201
    const v11, 0x7f0f00df

    invoke-virtual {v4, v11, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 205
    :goto_4
    if-eqz v2, :cond_9

    .line 206
    const v11, 0x7f0f00d9

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 207
    const v11, 0x7f0f00da

    const/16 v12, 0x8

    invoke-virtual {v4, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 212
    :goto_5
    iget-object v11, p0, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->mLabelDisplayer:Lcom/google/android/gm/widget/WidgetConversationViewBuilder$WidgetLabelDisplayer;

    invoke-virtual {v11, v4}, Lcom/google/android/gm/widget/WidgetConversationViewBuilder$WidgetLabelDisplayer;->displayLabels(Landroid/widget/RemoteViews;)V

    .line 214
    return-object v4

    .line 154
    .end local v3           #paperclipBitmap:Landroid/graphics/Bitmap;
    .end local v4           #remoteViews:Landroid/widget/RemoteViews;
    .end local v5           #styledDate:Ljava/lang/CharSequence;
    .end local v6           #styledSenders:Ljava/lang/CharSequence;
    .end local v8           #styledSubject:Ljava/lang/CharSequence;
    .end local v9           #subjectAndSnippet:Landroid/text/SpannableStringBuilder;
    .end local v10           #subjectColor:I
    :cond_4
    sget v11, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->SENDERS_TEXT_COLOR_READ:I

    goto/16 :goto_0

    .line 163
    .restart local v1       #builder:Landroid/text/SpannableStringBuilder;
    .restart local v6       #styledSenders:Ljava/lang/CharSequence;
    :cond_5
    sget v11, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->SENDERS_TEXT_COLOR_READ:I

    goto/16 :goto_1

    .line 172
    .end local v1           #builder:Landroid/text/SpannableStringBuilder;
    :cond_6
    sget v11, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->DATE_TEXT_COLOR_READ:I

    goto/16 :goto_2

    .line 176
    .restart local v5       #styledDate:Ljava/lang/CharSequence;
    :cond_7
    sget v10, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->SUBJECT_TEXT_COLOR_READ:I

    goto/16 :goto_3

    .line 203
    .restart local v3       #paperclipBitmap:Landroid/graphics/Bitmap;
    .restart local v4       #remoteViews:Landroid/widget/RemoteViews;
    .restart local v8       #styledSubject:Ljava/lang/CharSequence;
    .restart local v9       #subjectAndSnippet:Landroid/text/SpannableStringBuilder;
    .restart local v10       #subjectColor:I
    :cond_8
    const v11, 0x7f0f00df

    const/16 v12, 0x8

    invoke-virtual {v4, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_4

    .line 209
    :cond_9
    const v11, 0x7f0f00d9

    const/16 v12, 0x8

    invoke-virtual {v4, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 210
    const v11, 0x7f0f00da

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_5
.end method
