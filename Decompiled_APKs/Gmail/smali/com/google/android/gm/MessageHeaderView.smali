.class public Lcom/google/android/gm/MessageHeaderView;
.super Landroid/widget/LinearLayout;
.source "MessageHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/google/android/gm/HeaderBlock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/MessageHeaderView$RecipientListsBuilder;,
        Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;
    }
.end annotation


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/Gmail$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private mAttachmentsView:Landroid/view/ViewGroup;

.field private mBcc:[Ljava/lang/String;

.field private mBottomBorderView:Landroid/view/View;

.field private mCallbacks:Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;

.field private mCc:[Ljava/lang/String;

.field private mCollapsedDetailsView:Landroid/view/ViewGroup;

.field private mCollapsedStarVis:I

.field private mContactInfoSource:Lcom/google/android/gm/ContactInfoSource;

.field private mConversationId:J

.field private mConversationView:Lcom/google/android/gm/ConversationViewable;

.field private mDateBuilder:Lcom/google/android/gm/FormattedDateBuilder;

.field private mDefaultReplyAll:Z

.field private mDetailsExpanded:Z

.field private mDrawTranslateY:I

.field private mExpandedDetailsView:Landroid/view/ViewGroup;

.field private mImagePromptState:I

.field private mImagePromptView:Landroid/view/ViewGroup;

.field private mIsDraft:Z

.field private mIsExpanded:Z

.field private mIsSending:Z

.field private mIsSnappy:Z

.field private mLocalMessageId:J

.field private mPhotoView:Landroid/widget/QuickContactBadge;

.field private mPreMeasuring:Z

.field private mPresenceView:Landroid/widget/ImageView;

.field private mReplyTo:[Ljava/lang/String;

.field private mSender:Lcom/google/android/gm/EmailAddress;

.field private mSenderEmailView:Landroid/widget/TextView;

.field private mSenderNameView:Landroid/widget/TextView;

.field private mServerMessageId:J

.field private mSizeChanged:Z

.field private mSnippet:Ljava/lang/String;

.field private mStarView:Landroid/widget/ImageView;

.field private mTimestampMs:J

.field private mTimestampShort:Ljava/lang/CharSequence;

.field private mTitleContainerCollapsedMarginRight:I

.field private mTitleContainerView:Landroid/view/ViewGroup;

.field private mTo:[Ljava/lang/String;

.field private mUpperHeaderView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/MessageHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 174
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gm/MessageHeaderView;->mLocalMessageId:J

    .line 118
    iput-boolean v2, p0, Lcom/google/android/gm/MessageHeaderView;->mIsDraft:Z

    .line 142
    iput v2, p0, Lcom/google/android/gm/MessageHeaderView;->mImagePromptState:I

    .line 175
    return-void
.end method

.method public static attach(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/google/android/gm/ConversationViewable;Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;Lcom/google/android/gm/ContactInfoSource;Ljava/lang/Integer;)Lcom/google/android/gm/MessageHeaderView;
    .locals 4
    .parameter "inflater"
    .parameter "parent"
    .parameter "conversationView"
    .parameter "callbacks"
    .parameter "contactInfoSource"
    .parameter "index"

    .prologue
    .line 222
    invoke-interface {p3}, Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;->getLoadTimer()Lcom/google/android/gm/perf/Timer;

    move-result-object v1

    .line 223
    .local v1, t:Lcom/google/android/gm/perf/Timer;
    const-string v2, "message header inflate"

    invoke-virtual {v1, v2}, Lcom/google/android/gm/perf/Timer;->start(Ljava/lang/String;)V

    .line 224
    const v2, 0x7f04001e

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/MessageHeaderView;

    .line 226
    .local v0, headerView:Lcom/google/android/gm/MessageHeaderView;
    const-string v2, "message header inflate"

    invoke-virtual {v1, v2}, Lcom/google/android/gm/perf/Timer;->pause(Ljava/lang/String;)V

    .line 227
    const-string v2, "message header addView"

    invoke-virtual {v1, v2}, Lcom/google/android/gm/perf/Timer;->start(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, p2}, Lcom/google/android/gm/MessageHeaderView;->setConversationViewable(Lcom/google/android/gm/ConversationViewable;)V

    .line 229
    invoke-virtual {v0, p3}, Lcom/google/android/gm/MessageHeaderView;->setCallbacks(Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;)V

    .line 230
    invoke-virtual {v0, p4}, Lcom/google/android/gm/MessageHeaderView;->setContactInfoSource(Lcom/google/android/gm/ContactInfoSource;)V

    .line 232
    if-eqz p5, :cond_0

    .line 233
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 237
    :goto_0
    const-string v2, "message header addView"

    invoke-virtual {v1, v2}, Lcom/google/android/gm/perf/Timer;->pause(Ljava/lang/String;)V

    .line 238
    return-object v0

    .line 235
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static find(Landroid/view/ViewGroup;J)Lcom/google/android/gm/MessageHeaderView;
    .locals 1
    .parameter "parent"
    .parameter "localMessageId"

    .prologue
    .line 264
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/MessageHeaderView;

    return-object v0
.end method

.method private forceMeasuredHeight()I
    .locals 3

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 415
    .local v1, parent:Landroid/view/ViewGroup;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gm/MessageHeaderView;->mPreMeasuring:Z

    .line 416
    invoke-static {p0, v1}, Lcom/google/android/gm/Utils;->measureViewHeight(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result v0

    .line 417
    .local v0, h:I
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gm/MessageHeaderView;->mPreMeasuring:Z

    .line 418
    return v0
.end method

.method private static getBccAddresses(Lcom/google/android/gm/provider/Gmail$MessageCursor;)[Ljava/lang/String;
    .locals 2
    .parameter "messageCursor"

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getLabels()Ljava/util/Map;

    move-result-object v0

    .line 712
    .local v0, allLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    const-string v1, "^f"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 713
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getBccAddresses()[Ljava/lang/String;

    move-result-object v1

    .line 715
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method private getHeaderSubtitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 437
    iget-boolean v1, p0, Lcom/google/android/gm/MessageHeaderView;->mIsSending:Z

    if-eqz v1, :cond_0

    .line 438
    const/4 v0, 0x0

    .line 442
    .local v0, sub:Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 440
    .end local v0           #sub:Ljava/lang/CharSequence;
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gm/MessageHeaderView;->mIsExpanded:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gm/MessageHeaderView;->mSender:Lcom/google/android/gm/EmailAddress;

    invoke-static {v1}, Lcom/google/android/gm/MessageHeaderView;->getSenderAddress(Lcom/google/android/gm/EmailAddress;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #sub:Ljava/lang/CharSequence;
    :goto_1
    goto :goto_0

    .end local v0           #sub:Ljava/lang/CharSequence;
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mSnippet:Ljava/lang/String;

    goto :goto_1
.end method

.method private getHeaderTitle()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 424
    iget-boolean v1, p0, Lcom/google/android/gm/MessageHeaderView;->mIsDraft:Z

    if-eqz v1, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100003

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 432
    .local v0, title:Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 426
    .end local v0           #title:Ljava/lang/CharSequence;
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gm/MessageHeaderView;->mIsSending:Z

    if-eqz v1, :cond_1

    .line 427
    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #title:Ljava/lang/CharSequence;
    goto :goto_0

    .line 429
    .end local v0           #title:Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/MessageHeaderView;->mSender:Lcom/google/android/gm/EmailAddress;

    invoke-static {v1}, Lcom/google/android/gm/MessageHeaderView;->getSenderName(Lcom/google/android/gm/EmailAddress;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #title:Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method static getRecipientSummaryText(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "context"
    .parameter "me"
    .parameter "to"
    .parameter "cc"
    .parameter "bcc"

    .prologue
    .line 694
    new-instance v0, Lcom/google/android/gm/MessageHeaderView$RecipientListsBuilder;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gm/MessageHeaderView$RecipientListsBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 696
    .local v0, builder:Lcom/google/android/gm/MessageHeaderView$RecipientListsBuilder;
    const v1, 0x7f0c009d

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gm/MessageHeaderView$RecipientListsBuilder;->append([Ljava/lang/String;I)V

    .line 697
    const v1, 0x7f0c009e

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gm/MessageHeaderView$RecipientListsBuilder;->append([Ljava/lang/String;I)V

    .line 698
    const v1, 0x7f0c009f

    invoke-virtual {v0, p4, v1}, Lcom/google/android/gm/MessageHeaderView$RecipientListsBuilder;->append([Ljava/lang/String;I)V

    .line 700
    invoke-virtual {v0}, Lcom/google/android/gm/MessageHeaderView$RecipientListsBuilder;->build()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private static getSenderAddress(Lcom/google/android/gm/EmailAddress;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "sender"

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/google/android/gm/EmailAddress;->getName()Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, displayName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getSenderName(Lcom/google/android/gm/EmailAddress;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "sender"

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/google/android/gm/EmailAddress;->getName()Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, displayName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gm/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .end local v0           #displayName:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private handleShowImagePromptClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 960
    iget v0, p0, Lcom/google/android/gm/MessageHeaderView;->mImagePromptState:I

    packed-switch v0, :pswitch_data_0

    .line 978
    :goto_0
    return-void

    .line 962
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mCallbacks:Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;

    iget-wide v1, p0, Lcom/google/android/gm/MessageHeaderView;->mLocalMessageId:J

    iget-wide v3, p0, Lcom/google/android/gm/MessageHeaderView;->mServerMessageId:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;->showExternalResources(JJ)V

    .line 963
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gm/MessageHeaderView;->mImagePromptState:I

    .line 964
    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderView;->renderImagePrompt()V

    .line 967
    iput-boolean v5, p0, Lcom/google/android/gm/MessageHeaderView;->mSizeChanged:Z

    goto :goto_0

    .line 970
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mCallbacks:Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;

    iget-object v1, p0, Lcom/google/android/gm/MessageHeaderView;->mSender:Lcom/google/android/gm/EmailAddress;

    invoke-virtual {v1}, Lcom/google/android/gm/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;->setDisplayImagesFromSender(Ljava/lang/String;)V

    .line 971
    iput v2, p0, Lcom/google/android/gm/MessageHeaderView;->mImagePromptState:I

    .line 972
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 973
    iput-boolean v5, p0, Lcom/google/android/gm/MessageHeaderView;->mSizeChanged:Z

    .line 974
    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0090

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 960
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hideAttachments()V
    .locals 2

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mAttachmentsView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mAttachmentsView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1012
    :cond_0
    return-void
.end method

.method private hideCollapsedDetails()V
    .locals 2

    .prologue
    .line 906
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mCollapsedDetailsView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mCollapsedDetailsView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 909
    :cond_0
    return-void
.end method

.method private hideExpandedDetails()V
    .locals 2

    .prologue
    .line 912
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mExpandedDetailsView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mExpandedDetailsView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 915
    :cond_0
    return-void
.end method

.method private hideShowImagePrompt()V
    .locals 2

    .prologue
    .line 918
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mImagePromptView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mImagePromptView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 921
    :cond_0
    return-void
.end method

.method static makeSnippet(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x3c

    const/16 v7, 0x3b

    const/16 v6, 0x26

    const/4 v5, -0x1

    .line 1111
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1113
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 1116
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/StringReader;->read()I

    move-result v0

    if-eq v0, v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_2

    .line 1118
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1119
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1121
    :cond_1
    invoke-virtual {v2}, Ljava/io/StringReader;->read()I

    move-result v0

    .line 1122
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    .line 1123
    if-ne v0, v5, :cond_3

    .line 1187
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1128
    :cond_3
    if-ne v0, v8, :cond_6

    .line 1130
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Ljava/io/StringReader;->read()I

    move-result v0

    if-eq v0, v5, :cond_5

    .line 1131
    const/16 v3, 0x3e

    if-ne v0, v3, :cond_4

    .line 1137
    :cond_5
    if-ne v0, v5, :cond_0

    goto :goto_1

    .line 1140
    :cond_6
    if-ne v0, v6, :cond_11

    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1144
    :goto_2
    invoke-virtual {v2}, Ljava/io/StringReader;->read()I

    move-result v3

    if-eq v3, v5, :cond_7

    .line 1145
    if-ne v3, v7, :cond_9

    .line 1151
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1152
    const-string v4, "nbsp"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1153
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1173
    :cond_8
    :goto_3
    if-ne v3, v5, :cond_0

    goto :goto_1

    .line 1148
    :cond_9
    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1182
    :catch_0
    move-exception v0

    .line 1183
    const-string v2, "Gmail"

    const-string v3, "Really? IOException while reading a freaking string?!? "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 1154
    :cond_a
    :try_start_2
    const-string v4, "lt"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1155
    const/16 v0, 0x3c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1156
    :cond_b
    const-string v4, "gt"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1157
    const/16 v0, 0x3e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1158
    :cond_c
    const-string v4, "amp"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1159
    const/16 v0, 0x26

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1160
    :cond_d
    const-string v4, "quot"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1161
    const/16 v0, 0x22

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1162
    :cond_e
    const-string v4, "apos"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "#39"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1163
    :cond_f
    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1166
    :cond_10
    const/16 v4, 0x26

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    if-ne v3, v7, :cond_8

    .line 1168
    const/16 v0, 0x3b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1179
    :cond_11
    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method private onClick(ILandroid/view/View;)Z
    .locals 8
    .parameter "res"
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 783
    iget-object v1, p0, Lcom/google/android/gm/MessageHeaderView;->mConversationView:Lcom/google/android/gm/ConversationViewable;

    if-nez v1, :cond_0

    .line 836
    :goto_0
    return v0

    .line 787
    :cond_0
    const/4 v6, 0x1

    .line 789
    .local v6, handled:Z
    sparse-switch p1, :sswitch_data_0

    .line 831
    const-string v1, "Gmail"

    const-string v2, "unrecognized header tap: %d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 832
    const/4 v6, 0x0

    :goto_1
    move v0, v6

    .line 836
    goto :goto_0

    .line 791
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mConversationView:Lcom/google/android/gm/ConversationViewable;

    iget-wide v1, p0, Lcom/google/android/gm/MessageHeaderView;->mLocalMessageId:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/gm/ConversationViewable;->reply(J)V

    goto :goto_1

    .line 794
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mConversationView:Lcom/google/android/gm/ConversationViewable;

    iget-wide v1, p0, Lcom/google/android/gm/MessageHeaderView;->mLocalMessageId:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/gm/ConversationViewable;->replyAll(J)V

    goto :goto_1

    .line 797
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mConversationView:Lcom/google/android/gm/ConversationViewable;

    iget-wide v1, p0, Lcom/google/android/gm/MessageHeaderView;->mLocalMessageId:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/gm/ConversationViewable;->forward(J)V

    goto :goto_1

    .line 800
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 801
    .local v5, newValue:Z
    :goto_2
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mConversationView:Lcom/google/android/gm/ConversationViewable;

    iget-wide v1, p0, Lcom/google/android/gm/MessageHeaderView;->mLocalMessageId:J

    iget-wide v3, p0, Lcom/google/android/gm/MessageHeaderView;->mServerMessageId:J

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gm/ConversationViewable;->setStarOnMessage(JJZ)V

    .line 802
    invoke-virtual {p2, v5}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .end local v5           #newValue:Z
    :cond_1
    move v5, v0

    .line 800
    goto :goto_2

    .line 806
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mConversationView:Lcom/google/android/gm/ConversationViewable;

    iget-wide v1, p0, Lcom/google/android/gm/MessageHeaderView;->mLocalMessageId:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/gm/ConversationViewable;->editDraft(J)V

    goto :goto_1

    .line 809
    :sswitch_5
    new-instance v7, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v7, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 810
    .local v7, popup:Landroid/widget/PopupMenu;
    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f120007

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 813
    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0f0072

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gm/MessageHeaderView;->mDefaultReplyAll:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 814
    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0f0073

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gm/MessageHeaderView;->mDefaultReplyAll:Z

    if-nez v2, :cond_2

    :goto_3
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 816
    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 817
    invoke-virtual {v7}, Landroid/widget/PopupMenu;->show()V

    goto :goto_1

    :cond_2
    move v5, v0

    .line 814
    goto :goto_3

    .line 822
    .end local v7           #popup:Landroid/widget/PopupMenu;
    :sswitch_6
    invoke-direct {p0, p2}, Lcom/google/android/gm/MessageHeaderView;->toggleMessageDetails(Landroid/view/View;)V

    goto :goto_1

    .line 825
    :sswitch_7
    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderView;->toggleExpanded()V

    goto :goto_1

    .line 828
    :sswitch_8
    invoke-direct {p0, p2}, Lcom/google/android/gm/MessageHeaderView;->handleShowImagePromptClick(Landroid/view/View;)V

    goto/16 :goto_1

    .line 789
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f0042 -> :sswitch_3
        0x7f0f0057 -> :sswitch_6
        0x7f0f005b -> :sswitch_6
        0x7f0f006a -> :sswitch_7
        0x7f0f006b -> :sswitch_8
        0x7f0f0072 -> :sswitch_0
        0x7f0f0073 -> :sswitch_1
        0x7f0f0074 -> :sswitch_4
        0x7f0f0075 -> :sswitch_5
        0x7f0f0076 -> :sswitch_2
    .end sparse-switch
.end method

.method private varargs registerMessageClickTargets([I)V
    .locals 5
    .parameter "ids"

    .prologue
    .line 760
    move-object v0, p1

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget v2, v0, v1

    .line 761
    .local v2, id:I
    invoke-virtual {p0, v2}, Lcom/google/android/gm/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 762
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 763
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 760
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 766
    .end local v2           #id:I
    .end local v4           #v:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private renderEmailList(II[Ljava/lang/String;)V
    .locals 10
    .parameter "rowRes"
    .parameter "valueRes"
    .parameter "emails"

    .prologue
    const/4 v9, 0x0

    .line 575
    if-eqz p3, :cond_0

    array-length v5, p3

    if-nez v5, :cond_1

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    array-length v5, p3

    new-array v2, v5, [Ljava/lang/String;

    .line 579
    .local v2, formattedEmails:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, p3

    if-ge v3, v5, :cond_4

    .line 580
    aget-object v5, p3, v3

    invoke-static {v5}, Lcom/google/android/gm/EmailAddress;->getEmailAddress(Ljava/lang/String;)Lcom/google/android/gm/EmailAddress;

    move-result-object v1

    .line 581
    .local v1, e:Lcom/google/android/gm/EmailAddress;
    invoke-virtual {v1}, Lcom/google/android/gm/EmailAddress;->getName()Ljava/lang/String;

    move-result-object v4

    .line 582
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/android/gm/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, addr:Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 584
    :cond_2
    aput-object v0, v2, v3

    .line 579
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 586
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c00a3

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v9

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    goto :goto_2

    .line 590
    .end local v0           #addr:Ljava/lang/String;
    .end local v1           #e:Lcom/google/android/gm/EmailAddress;
    .end local v4           #name:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, p2}, Lcom/google/android/gm/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "\n"

    invoke-static {v6, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    invoke-virtual {p0, p1}, Lcom/google/android/gm/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private renderImagePrompt()V
    .locals 6

    .prologue
    const v5, 0x7f0c008f

    const v4, 0x7f0c008e

    .line 937
    iget-object v2, p0, Lcom/google/android/gm/MessageHeaderView;->mImagePromptView:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    .line 957
    :goto_0
    return-void

    .line 941
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/MessageHeaderView;->mImagePromptView:Landroid/view/ViewGroup;

    const v3, 0x7f0f006c

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 943
    .local v1, descriptionViewIcon:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/google/android/gm/MessageHeaderView;->mImagePromptView:Landroid/view/ViewGroup;

    const v3, 0x7f0f006d

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 945
    .local v0, descriptionView:Landroid/widget/TextView;
    iget v2, p0, Lcom/google/android/gm/MessageHeaderView;->mImagePromptState:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 947
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 949
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 952
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 954
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 945
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static setChildMarginRight(Landroid/view/View;I)V
    .locals 1
    .parameter "childView"
    .parameter "marginRight"

    .prologue
    .line 569
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 570
    .local v0, mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 571
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    return-void
.end method

.method private varargs setChildVisibility(I[I)V
    .locals 5
    .parameter "visibility"
    .parameter "resources"

    .prologue
    .line 462
    move-object v0, p2

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 463
    .local v3, res:I
    invoke-virtual {p0, v3}, Lcom/google/android/gm/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 464
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 465
    invoke-virtual {v4, p1}, Landroid/view/View;->setVisibility(I)V

    .line 462
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 468
    .end local v3           #res:I
    .end local v4           #v:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private setExpanded(Z)V
    .locals 4
    .parameter "expanded"

    .prologue
    .line 476
    if-eqz p1, :cond_0

    .line 477
    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 484
    .local v0, background:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v2, p0, Lcom/google/android/gm/MessageHeaderView;->mUpperHeaderView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 486
    invoke-virtual {p0, p1}, Lcom/google/android/gm/MessageHeaderView;->setActivated(Z)V

    .line 487
    iput-boolean p1, p0, Lcom/google/android/gm/MessageHeaderView;->mIsExpanded:Z

    .line 488
    return-void

    .line 479
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 481
    .local v1, tile:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 482
    move-object v0, v1

    .restart local v0       #background:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private setMessageDetailsExpanded(Z)V
    .locals 0
    .parameter "expand"

    .prologue
    .line 864
    if-eqz p1, :cond_0

    .line 865
    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderView;->showExpandedDetails()V

    .line 866
    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderView;->hideCollapsedDetails()V

    .line 871
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gm/MessageHeaderView;->mDetailsExpanded:Z

    .line 872
    return-void

    .line 868
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderView;->hideExpandedDetails()V

    .line 869
    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderView;->showCollapsedDetails()V

    goto :goto_0
.end method

.method private setReplyOrReplyAllVisible()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 556
    iget-boolean v0, p0, Lcom/google/android/gm/MessageHeaderView;->mIsDraft:Z

    if-eqz v0, :cond_0

    .line 557
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gm/MessageHeaderView;->setChildVisibility(I[I)V

    .line 566
    :goto_0
    return-void

    .line 559
    :cond_0
    const v0, 0x7f0f0075

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 560
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    invoke-direct {p0, v2, v0}, Lcom/google/android/gm/MessageHeaderView;->setChildVisibility(I[I)V

    goto :goto_0

    .line 564
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gm/MessageHeaderView;->mDefaultReplyAll:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    new-array v3, v5, [I

    const v4, 0x7f0f0072

    aput v4, v3, v2

    invoke-direct {p0, v0, v3}, Lcom/google/android/gm/MessageHeaderView;->setChildVisibility(I[I)V

    .line 565
    iget-boolean v0, p0, Lcom/google/android/gm/MessageHeaderView;->mDefaultReplyAll:Z

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    new-array v0, v5, [I

    const v3, 0x7f0f0073

    aput v3, v0, v2

    invoke-direct {p0, v1, v0}, Lcom/google/android/gm/MessageHeaderView;->setChildVisibility(I[I)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 564
    goto :goto_1

    .line 557
    nop

    :array_0
    .array-data 0x4
        0x72t 0x0t 0xft 0x7ft
        0x73t 0x0t 0xft 0x7ft
    .end array-data

    .line 560
    :array_1
    .array-data 0x4
        0x72t 0x0t 0xft 0x7ft
        0x73t 0x0t 0xft 0x7ft
    .end array-data
.end method

.method private showAttachments()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 981
    iget-object v2, p0, Lcom/google/android/gm/MessageHeaderView;->mAttachmentsView:Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    .line 982
    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 983
    .local v11, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04001b

    invoke-virtual {v11, v2, p0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 986
    .local v9, container:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/google/android/gm/MessageHeaderView;->mAttachments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/Gmail$Attachment;

    .line 987
    .local v1, attachment:Lcom/google/android/gm/provider/Gmail$Attachment;
    invoke-static {v11, p0}, Lcom/google/android/gm/MessageHeaderAttachment;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/google/android/gm/MessageHeaderAttachment;

    move-result-object v0

    .line 989
    .local v0, attachView:Lcom/google/android/gm/MessageHeaderAttachment;
    iget-object v2, p0, Lcom/google/android/gm/MessageHeaderView;->mAccount:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gm/MessageHeaderView;->mConversationId:J

    iget-wide v5, p0, Lcom/google/android/gm/MessageHeaderView;->mLocalMessageId:J

    iget-wide v7, p0, Lcom/google/android/gm/MessageHeaderView;->mServerMessageId:J

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gm/MessageHeaderAttachment;->render(Lcom/google/android/gm/provider/Gmail$Attachment;Ljava/lang/String;JJJ)V

    .line 993
    iget-object v2, p0, Lcom/google/android/gm/MessageHeaderView;->mCallbacks:Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;

    iget-wide v3, p0, Lcom/google/android/gm/MessageHeaderView;->mServerMessageId:J

    iget-object v5, v1, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;->getAttachmentStatus(JLjava/lang/String;)Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;

    move-result-object v12

    .line 995
    .local v12, result:Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;
    if-eqz v12, :cond_0

    .line 996
    invoke-virtual {v0, v12}, Lcom/google/android/gm/MessageHeaderAttachment;->updateStatus(Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;)V

    .line 999
    :cond_0
    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1002
    .end local v0           #attachView:Lcom/google/android/gm/MessageHeaderAttachment;
    .end local v1           #attachment:Lcom/google/android/gm/provider/Gmail$Attachment;
    .end local v12           #result:Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;
    :cond_1
    invoke-virtual {p0, v9}, Lcom/google/android/gm/MessageHeaderView;->addView(Landroid/view/View;)V

    .line 1003
    iput-object v9, p0, Lcom/google/android/gm/MessageHeaderView;->mAttachmentsView:Landroid/view/ViewGroup;

    .line 1005
    .end local v9           #container:Landroid/view/ViewGroup;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #inflater:Landroid/view/LayoutInflater;
    :cond_2
    iget-object v2, p0, Lcom/google/android/gm/MessageHeaderView;->mAttachmentsView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1006
    return-void
.end method

.method private showCollapsedDetails()V
    .locals 6

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mCollapsedDetailsView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 1042
    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04001c

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1045
    const v0, 0x7f0f005a

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mBottomBorderView:Landroid/view/View;

    .line 1046
    const v0, 0x7f0f0057

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mCollapsedDetailsView:Landroid/view/ViewGroup;

    .line 1048
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mCollapsedDetailsView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1050
    const v0, 0x7f0f0058

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/MessageHeaderView;->mAccount:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/MessageHeaderView;->mTo:[Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mCc:[Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gm/MessageHeaderView;->mBcc:[Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gm/MessageHeaderView;->getRecipientSummaryText(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1053
    const v0, 0x7f0f0059

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/gm/MessageHeaderView;->mTimestampShort:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1055
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mCollapsedDetailsView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1056
    return-void
.end method

.method private showExpandedDetails()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1064
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mExpandedDetailsView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 1065
    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04001d

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1072
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mCollapsedDetailsView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gm/MessageHeaderView;->addView(Landroid/view/View;I)V

    .line 1073
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1075
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mDateBuilder:Lcom/google/android/gm/FormattedDateBuilder;

    iget-wide v2, p0, Lcom/google/android/gm/MessageHeaderView;->mTimestampMs:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gm/FormattedDateBuilder;->formatLongDateTime(J)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1076
    const v0, 0x7f0f005d

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1077
    const v0, 0x7f0f005e

    const v2, 0x7f0f0060

    iget-object v3, p0, Lcom/google/android/gm/MessageHeaderView;->mReplyTo:[Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/gm/MessageHeaderView;->renderEmailList(II[Ljava/lang/String;)V

    .line 1078
    const v0, 0x7f0f0061

    const v2, 0x7f0f0063

    iget-object v3, p0, Lcom/google/android/gm/MessageHeaderView;->mTo:[Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/gm/MessageHeaderView;->renderEmailList(II[Ljava/lang/String;)V

    .line 1079
    const v0, 0x7f0f0064

    const v2, 0x7f0f0066

    iget-object v3, p0, Lcom/google/android/gm/MessageHeaderView;->mCc:[Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/gm/MessageHeaderView;->renderEmailList(II[Ljava/lang/String;)V

    .line 1080
    const v0, 0x7f0f0067

    const v2, 0x7f0f0069

    iget-object v3, p0, Lcom/google/android/gm/MessageHeaderView;->mBcc:[Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/gm/MessageHeaderView;->renderEmailList(II[Ljava/lang/String;)V

    .line 1082
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mBcc:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mCc:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mTo:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mReplyTo:[Ljava/lang/String;

    move-object v0, v1

    .line 1084
    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mExpandedDetailsView:Landroid/view/ViewGroup;

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mExpandedDetailsView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1087
    return-void
.end method

.method private showImagePrompt()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 924
    iget-object v1, p0, Lcom/google/android/gm/MessageHeaderView;->mImagePromptView:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 925
    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04001f

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 927
    .local v0, v:Landroid/view/ViewGroup;
    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderView;->addView(Landroid/view/View;)V

    .line 928
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 930
    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mImagePromptView:Landroid/view/ViewGroup;

    .line 932
    .end local v0           #v:Landroid/view/ViewGroup;
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderView;->renderImagePrompt()V

    .line 933
    iget-object v1, p0, Lcom/google/android/gm/MessageHeaderView;->mImagePromptView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 934
    return-void
.end method

.method private toggleMessageDetails(Landroid/view/View;)V
    .locals 2
    .parameter "visibleDetailsView"

    .prologue
    const/4 v1, 0x1

    .line 859
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mCollapsedDetailsView:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gm/MessageHeaderView;->setMessageDetailsExpanded(Z)V

    .line 860
    iput-boolean v1, p0, Lcom/google/android/gm/MessageHeaderView;->mSizeChanged:Z

    .line 861
    return-void

    .line 859
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateChildVisibility()V
    .locals 10

    .prologue
    const v9, 0x7f0f0042

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 498
    iget-boolean v2, p0, Lcom/google/android/gm/MessageHeaderView;->mIsExpanded:Z

    if-eqz v2, :cond_2

    .line 501
    iget-boolean v2, p0, Lcom/google/android/gm/MessageHeaderView;->mIsSnappy:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/gm/MessageHeaderView;->setMessageDetailsVisibility(I)V

    .line 503
    iget-boolean v2, p0, Lcom/google/android/gm/MessageHeaderView;->mIsDraft:Z

    if-eqz v2, :cond_1

    .line 504
    const/16 v1, 0x8

    .line 505
    .local v1, normalVis:I
    const/4 v0, 0x0

    .line 511
    .local v0, draftVis:I
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderView;->setReplyOrReplyAllVisible()V

    .line 512
    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {p0, v1, v2}, Lcom/google/android/gm/MessageHeaderView;->setChildVisibility(I[I)V

    .line 514
    new-array v2, v8, [I

    fill-array-data v2, :array_1

    invoke-direct {p0, v0, v2}, Lcom/google/android/gm/MessageHeaderView;->setChildVisibility(I[I)V

    .line 515
    new-array v2, v8, [I

    fill-array-data v2, :array_2

    invoke-direct {p0, v3, v2}, Lcom/google/android/gm/MessageHeaderView;->setChildVisibility(I[I)V

    .line 516
    new-array v2, v7, [I

    aput v9, v2, v4

    invoke-direct {p0, v4, v2}, Lcom/google/android/gm/MessageHeaderView;->setChildVisibility(I[I)V

    .line 518
    iget-object v2, p0, Lcom/google/android/gm/MessageHeaderView;->mTitleContainerView:Landroid/view/ViewGroup;

    invoke-static {v2, v4}, Lcom/google/android/gm/MessageHeaderView;->setChildMarginRight(Landroid/view/View;I)V

    .line 547
    .end local v0           #draftVis:I
    .end local v1           #normalVis:I
    :goto_2
    return-void

    :cond_0
    move v2, v4

    .line 501
    goto :goto_0

    .line 507
    :cond_1
    const/4 v1, 0x0

    .line 508
    .restart local v1       #normalVis:I
    const/16 v0, 0x8

    .restart local v0       #draftVis:I
    goto :goto_1

    .line 522
    .end local v0           #draftVis:I
    .end local v1           #normalVis:I
    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/android/gm/MessageHeaderView;->setMessageDetailsVisibility(I)V

    .line 523
    new-array v2, v8, [I

    fill-array-data v2, :array_3

    invoke-direct {p0, v4, v2}, Lcom/google/android/gm/MessageHeaderView;->setChildVisibility(I[I)V

    .line 525
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_4

    invoke-direct {p0, v3, v2}, Lcom/google/android/gm/MessageHeaderView;->setChildVisibility(I[I)V

    .line 526
    new-array v2, v7, [I

    const v5, 0x7f0f0075

    aput v5, v2, v4

    invoke-direct {p0, v3, v2}, Lcom/google/android/gm/MessageHeaderView;->setChildVisibility(I[I)V

    .line 528
    iget-object v2, p0, Lcom/google/android/gm/MessageHeaderView;->mAttachments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_3
    new-array v5, v7, [I

    const v6, 0x7f0f0079

    aput v6, v5, v4

    invoke-direct {p0, v2, v5}, Lcom/google/android/gm/MessageHeaderView;->setChildVisibility(I[I)V

    .line 530
    iget v2, p0, Lcom/google/android/gm/MessageHeaderView;->mCollapsedStarVis:I

    new-array v5, v7, [I

    aput v9, v5, v4

    invoke-direct {p0, v2, v5}, Lcom/google/android/gm/MessageHeaderView;->setChildVisibility(I[I)V

    .line 532
    iget-object v2, p0, Lcom/google/android/gm/MessageHeaderView;->mTitleContainerView:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/google/android/gm/MessageHeaderView;->mTitleContainerCollapsedMarginRight:I

    invoke-static {v2, v5}, Lcom/google/android/gm/MessageHeaderView;->setChildMarginRight(Landroid/view/View;I)V

    .line 534
    iget-boolean v2, p0, Lcom/google/android/gm/MessageHeaderView;->mIsDraft:Z

    if-eqz v2, :cond_4

    .line 536
    new-array v2, v7, [I

    const v5, 0x7f0f0071

    aput v5, v2, v4

    invoke-direct {p0, v4, v2}, Lcom/google/android/gm/MessageHeaderView;->setChildVisibility(I[I)V

    .line 537
    new-array v2, v8, [I

    fill-array-data v2, :array_5

    invoke-direct {p0, v3, v2}, Lcom/google/android/gm/MessageHeaderView;->setChildVisibility(I[I)V

    goto :goto_2

    :cond_3
    move v2, v4

    .line 528
    goto :goto_3

    .line 541
    :cond_4
    new-array v2, v7, [I

    const v5, 0x7f0f0071

    aput v5, v2, v4

    invoke-direct {p0, v3, v2}, Lcom/google/android/gm/MessageHeaderView;->setChildVisibility(I[I)V

    .line 542
    new-array v2, v8, [I

    fill-array-data v2, :array_6

    invoke-direct {p0, v4, v2}, Lcom/google/android/gm/MessageHeaderView;->setChildVisibility(I[I)V

    goto :goto_2

    .line 512
    nop

    :array_0
    .array-data 0x4
        0x6ft 0x0t 0xft 0x7ft
        0x70t 0x0t 0xft 0x7ft
        0x76t 0x0t 0xft 0x7ft
        0x7ct 0x0t 0xft 0x7ft
        0x75t 0x0t 0xft 0x7ft
    .end array-data

    .line 514
    :array_1
    .array-data 0x4
        0x71t 0x0t 0xft 0x7ft
        0x74t 0x0t 0xft 0x7ft
    .end array-data

    .line 515
    :array_2
    .array-data 0x4
        0x79t 0x0t 0xft 0x7ft
        0x78t 0x0t 0xft 0x7ft
    .end array-data

    .line 523
    :array_3
    .array-data 0x4
        0x7ct 0x0t 0xft 0x7ft
        0x78t 0x0t 0xft 0x7ft
    .end array-data

    .line 525
    :array_4
    .array-data 0x4
        0x74t 0x0t 0xft 0x7ft
        0x72t 0x0t 0xft 0x7ft
        0x73t 0x0t 0xft 0x7ft
        0x76t 0x0t 0xft 0x7ft
    .end array-data

    .line 537
    :array_5
    .array-data 0x4
        0x6ft 0x0t 0xft 0x7ft
        0x70t 0x0t 0xft 0x7ft
    .end array-data

    .line 542
    :array_6
    .array-data 0x4
        0x6ft 0x0t 0xft 0x7ft
        0x70t 0x0t 0xft 0x7ft
    .end array-data
.end method


# virtual methods
.method public canSnap()Z
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderView;->isExpanded()Z

    move-result v0

    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 1192
    iget-boolean v2, p0, Lcom/google/android/gm/MessageHeaderView;->mIsSnappy:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/gm/MessageHeaderView;->mDrawTranslateY:I

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 1193
    .local v1, transform:Z
    :goto_0
    const/4 v0, -0x1

    .line 1194
    .local v0, saved:I
    if-eqz v1, :cond_0

    .line 1195
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1196
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gm/MessageHeaderView;->mDrawTranslateY:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1198
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1199
    if-eqz v1, :cond_1

    .line 1200
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1202
    :cond_1
    iget-object v2, p0, Lcom/google/android/gm/MessageHeaderView;->mCallbacks:Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;

    iget-wide v3, p0, Lcom/google/android/gm/MessageHeaderView;->mLocalMessageId:J

    invoke-interface {v2, v3, v4}, Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;->onHeaderDrawn(J)V

    .line 1203
    return-void

    .line 1192
    .end local v0           #saved:I
    .end local v1           #transform:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocalMessageId()J
    .locals 2

    .prologue
    .line 268
    iget-wide v0, p0, Lcom/google/android/gm/MessageHeaderView;->mLocalMessageId:J

    return-wide v0
.end method

.method public getSnapView()Lcom/google/android/gm/MessageHeaderView;
    .locals 0

    .prologue
    .line 282
    return-object p0
.end method

.method public hideMessageDetails()V
    .locals 1

    .prologue
    .line 895
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderView;->setMessageDetailsVisibility(I)V

    .line 896
    return-void
.end method

.method public initialize(Lcom/google/android/gm/FormattedDateBuilder;Ljava/lang/String;ZIZ)V
    .locals 0
    .parameter "dateBuilder"
    .parameter "account"
    .parameter "expanded"
    .parameter "imagePromptState"
    .parameter "defaultReplyAll"

    .prologue
    .line 333
    iput-object p1, p0, Lcom/google/android/gm/MessageHeaderView;->mDateBuilder:Lcom/google/android/gm/FormattedDateBuilder;

    .line 334
    iput-object p2, p0, Lcom/google/android/gm/MessageHeaderView;->mAccount:Ljava/lang/String;

    .line 335
    invoke-direct {p0, p3}, Lcom/google/android/gm/MessageHeaderView;->setExpanded(Z)V

    .line 336
    iput p4, p0, Lcom/google/android/gm/MessageHeaderView;->mImagePromptState:I

    .line 337
    iput-boolean p5, p0, Lcom/google/android/gm/MessageHeaderView;->mDefaultReplyAll:Z

    .line 338
    return-void
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/google/android/gm/MessageHeaderView;->mIsExpanded:Z

    return v0
.end method

.method public matches(Lcom/google/android/gm/MessageHeaderView;)Z
    .locals 4
    .parameter "other"

    .prologue
    .line 302
    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/google/android/gm/MessageHeaderView;->mLocalMessageId:J

    iget-wide v2, p1, Lcom/google/android/gm/MessageHeaderView;->mLocalMessageId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 775
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gm/MessageHeaderView;->onClick(ILandroid/view/View;)Z

    .line 776
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 181
    const v0, 0x7f0f007a

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mSenderNameView:Landroid/widget/TextView;

    .line 182
    const v0, 0x7f0f007c

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mSenderEmailView:Landroid/widget/TextView;

    .line 183
    const v0, 0x7f0f006f

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mPhotoView:Landroid/widget/QuickContactBadge;

    .line 184
    const v0, 0x7f0f0042

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mStarView:Landroid/widget/ImageView;

    .line 185
    const v0, 0x7f0f007b

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mPresenceView:Landroid/widget/ImageView;

    .line 186
    const v0, 0x7f0f0077

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mTitleContainerView:Landroid/view/ViewGroup;

    .line 187
    const v0, 0x7f0f006a

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mUpperHeaderView:Landroid/view/ViewGroup;

    .line 189
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mStarView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/MessageHeaderView;->mCollapsedStarVis:I

    .line 190
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mTitleContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Lcom/google/android/gm/MessageHeaderView;->mTitleContainerCollapsedMarginRight:I

    .line 193
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gm/MessageHeaderView;->setExpanded(Z)V

    .line 195
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/google/android/gm/MessageHeaderView;->registerMessageClickTargets([I)V

    .line 203
    return-void

    .line 195
    :array_0
    .array-data 0x4
        0x72t 0x0t 0xft 0x7ft
        0x73t 0x0t 0xft 0x7ft
        0x76t 0x0t 0xft 0x7ft
        0x42t 0x0t 0xft 0x7ft
        0x74t 0x0t 0xft 0x7ft
        0x75t 0x0t 0xft 0x7ft
        0x6at 0x0t 0xft 0x7ft
    .end array-data
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mCallbacks:Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;

    invoke-interface {v0}, Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;->getLoadTimer()Lcom/google/android/gm/perf/Timer;

    move-result-object v0

    .line 1208
    const-string v1, "message header layout"

    invoke-virtual {v0, v1}, Lcom/google/android/gm/perf/Timer;->start(Ljava/lang/String;)V

    .line 1209
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1210
    const-string v1, "message header layout"

    invoke-virtual {v0, v1}, Lcom/google/android/gm/perf/Timer;->pause(Ljava/lang/String;)V

    .line 1211
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mCallbacks:Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;

    invoke-interface {v0}, Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;->getLoadTimer()Lcom/google/android/gm/perf/Timer;

    move-result-object v0

    .line 1220
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1221
    iget-boolean v1, p0, Lcom/google/android/gm/MessageHeaderView;->mPreMeasuring:Z

    if-nez v1, :cond_0

    .line 1222
    const-string v1, "message header measure"

    invoke-virtual {v0, v1}, Lcom/google/android/gm/perf/Timer;->pause(Ljava/lang/String;)V

    .line 1224
    :cond_0
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 770
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/MessageHeaderView;->onClick(ILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1091
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 1093
    iget-boolean v0, p0, Lcom/google/android/gm/MessageHeaderView;->mSizeChanged:Z

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mCallbacks:Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;

    iget-wide v1, p0, Lcom/google/android/gm/MessageHeaderView;->mLocalMessageId:J

    invoke-interface {v0, v1, v2, p2}, Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;->setMessageSpacerHeight(JI)V

    .line 1098
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/MessageHeaderView;->mSizeChanged:Z

    .line 1100
    :cond_0
    return-void
.end method

.method public render(Lcom/google/android/gm/provider/Gmail$MessageCursor;)I
    .locals 7
    .parameter "cursor"

    .prologue
    .line 341
    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mCallbacks:Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;

    invoke-interface {v4}, Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;->getLoadTimer()Lcom/google/android/gm/perf/Timer;

    move-result-object v2

    .line 342
    .local v2, t:Lcom/google/android/gm/perf/Timer;
    const-string v4, "message header render"

    invoke-virtual {v2, v4}, Lcom/google/android/gm/perf/Timer;->start(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getLocalId()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gm/MessageHeaderView;->mLocalMessageId:J

    .line 345
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getMessageId()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gm/MessageHeaderView;->mServerMessageId:J

    .line 346
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getConversationId()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gm/MessageHeaderView;->mConversationId:J

    .line 347
    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mCallbacks:Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;

    iget-wide v5, p0, Lcom/google/android/gm/MessageHeaderView;->mLocalMessageId:J

    invoke-interface {v4, v5, v6}, Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;->onHeaderCreated(J)V

    .line 349
    iget-wide v4, p0, Lcom/google/android/gm/MessageHeaderView;->mLocalMessageId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/gm/MessageHeaderView;->setTag(Ljava/lang/Object;)V

    .line 351
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getDateReceivedMs()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gm/MessageHeaderView;->mTimestampMs:J

    .line 352
    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mDateBuilder:Lcom/google/android/gm/FormattedDateBuilder;

    iget-wide v5, p0, Lcom/google/android/gm/MessageHeaderView;->mTimestampMs:J

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gm/FormattedDateBuilder;->formatShortDate(J)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mTimestampShort:Ljava/lang/CharSequence;

    .line 354
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getToAddresses()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mTo:[Ljava/lang/String;

    .line 355
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getCcAddresses()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mCc:[Ljava/lang/String;

    .line 356
    invoke-static {p1}, Lcom/google/android/gm/MessageHeaderView;->getBccAddresses(Lcom/google/android/gm/provider/Gmail$MessageCursor;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mBcc:[Ljava/lang/String;

    .line 357
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getReplyToAddress()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mReplyTo:[Ljava/lang/String;

    .line 359
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getAttachmentInfos()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mAttachments:Ljava/util/List;

    .line 366
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsDraft()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/gm/MessageHeaderView;->mIsDraft:Z

    .line 367
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsInOutbox()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/gm/MessageHeaderView;->mIsSending:Z

    .line 369
    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderView;->updateChildVisibility()V

    .line 371
    iget-boolean v4, p0, Lcom/google/android/gm/MessageHeaderView;->mIsDraft:Z

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsInOutbox()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 372
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gm/MessageHeaderView;->makeSnippet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mSnippet:Ljava/lang/String;

    .line 382
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, from:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 384
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mAccount:Ljava/lang/String;

    .line 386
    :cond_1
    invoke-static {v0}, Lcom/google/android/gm/EmailAddress;->getEmailAddress(Ljava/lang/String;)Lcom/google/android/gm/EmailAddress;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mSender:Lcom/google/android/gm/EmailAddress;

    .line 388
    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mSenderNameView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderView;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mSenderEmailView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderView;->getHeaderSubtitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    const v4, 0x7f0f0078

    invoke-virtual {p0, v4}, Lcom/google/android/gm/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 392
    .local v3, upperDateView:Landroid/widget/TextView;
    if-eqz v3, :cond_2

    .line 393
    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mTimestampShort:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    :cond_2
    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mStarView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsStarred()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 398
    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderView;->updateContactInfo()V

    .line 400
    const-string v4, "message header render"

    invoke-virtual {v2, v4}, Lcom/google/android/gm/perf/Timer;->pause(Ljava/lang/String;)V

    .line 401
    const-string v4, "message header pre-measure"

    invoke-virtual {v2, v4}, Lcom/google/android/gm/perf/Timer;->start(Ljava/lang/String;)V

    .line 408
    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderView;->forceMeasuredHeight()I

    move-result v1

    .line 409
    .local v1, h:I
    const-string v4, "message header pre-measure"

    invoke-virtual {v2, v4}, Lcom/google/android/gm/perf/Timer;->pause(Ljava/lang/String;)V

    .line 410
    return v1

    .line 374
    .end local v0           #from:Ljava/lang/String;
    .end local v1           #h:I
    .end local v3           #upperDateView:Landroid/widget/TextView;
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getSnippet()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mSnippet:Ljava/lang/String;

    goto :goto_0
.end method

.method public renderUpperHeaderFrom(Lcom/google/android/gm/MessageHeaderView;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 316
    iget-wide v0, p1, Lcom/google/android/gm/MessageHeaderView;->mLocalMessageId:J

    iput-wide v0, p0, Lcom/google/android/gm/MessageHeaderView;->mLocalMessageId:J

    .line 317
    iget-wide v0, p1, Lcom/google/android/gm/MessageHeaderView;->mServerMessageId:J

    iput-wide v0, p0, Lcom/google/android/gm/MessageHeaderView;->mServerMessageId:J

    .line 318
    iget-object v0, p1, Lcom/google/android/gm/MessageHeaderView;->mSender:Lcom/google/android/gm/EmailAddress;

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mSender:Lcom/google/android/gm/EmailAddress;

    .line 319
    iget-boolean v0, p1, Lcom/google/android/gm/MessageHeaderView;->mDefaultReplyAll:Z

    iput-boolean v0, p0, Lcom/google/android/gm/MessageHeaderView;->mDefaultReplyAll:Z

    .line 321
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mSenderNameView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/android/gm/MessageHeaderView;->mSenderNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mSenderEmailView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/android/gm/MessageHeaderView;->mSenderEmailView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mStarView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/google/android/gm/MessageHeaderView;->mStarView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 325
    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderView;->updateContactInfo()V

    .line 327
    iget-boolean v0, p1, Lcom/google/android/gm/MessageHeaderView;->mIsDraft:Z

    iput-boolean v0, p0, Lcom/google/android/gm/MessageHeaderView;->mIsDraft:Z

    .line 328
    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderView;->updateChildVisibility()V

    .line 329
    return-void
.end method

.method public setCallbacks(Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;)V
    .locals 0
    .parameter "callbacks"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/google/android/gm/MessageHeaderView;->mCallbacks:Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;

    .line 254
    return-void
.end method

.method public setContactInfoSource(Lcom/google/android/gm/ContactInfoSource;)V
    .locals 0
    .parameter "contactInfoSource"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/google/android/gm/MessageHeaderView;->mContactInfoSource:Lcom/google/android/gm/ContactInfoSource;

    .line 246
    return-void
.end method

.method public setConversationViewable(Lcom/google/android/gm/ConversationViewable;)V
    .locals 0
    .parameter "conversationView"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/android/gm/MessageHeaderView;->mConversationView:Lcom/google/android/gm/ConversationViewable;

    .line 250
    return-void
.end method

.method public setMarginBottom(I)V
    .locals 2
    .parameter "bottomMargin"

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 597
    .local v0, p:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v1, p1, :cond_0

    .line 598
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 599
    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 601
    :cond_0
    return-void
.end method

.method public setMessageDetailsVisibility(I)V
    .locals 1
    .parameter "vis"

    .prologue
    .line 875
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 876
    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderView;->hideCollapsedDetails()V

    .line 877
    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderView;->hideExpandedDetails()V

    .line 878
    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderView;->hideShowImagePrompt()V

    .line 879
    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderView;->hideAttachments()V

    .line 889
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mBottomBorderView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mBottomBorderView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 892
    :cond_1
    return-void

    .line 881
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gm/MessageHeaderView;->mDetailsExpanded:Z

    invoke-direct {p0, v0}, Lcom/google/android/gm/MessageHeaderView;->setMessageDetailsExpanded(Z)V

    .line 882
    iget v0, p0, Lcom/google/android/gm/MessageHeaderView;->mImagePromptState:I

    if-eqz v0, :cond_3

    .line 883
    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderView;->showImagePrompt()V

    .line 885
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mAttachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 886
    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderView;->showAttachments()V

    goto :goto_0
.end method

.method public setSnappy(Z)V
    .locals 1
    .parameter "snappy"

    .prologue
    .line 286
    iput-boolean p1, p0, Lcom/google/android/gm/MessageHeaderView;->mIsSnappy:Z

    .line 287
    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderView;->hideMessageDetails()V

    .line 288
    if-eqz p1, :cond_0

    .line 289
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    const v0, 0x106000b

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setStarDisplay(Z)V
    .locals 1
    .parameter "starred"

    .prologue
    .line 900
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mStarView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 901
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mStarView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 903
    :cond_0
    return-void
.end method

.method public setTranslateY(I)V
    .locals 1
    .parameter "offsetY"

    .prologue
    .line 612
    iget v0, p0, Lcom/google/android/gm/MessageHeaderView;->mDrawTranslateY:I

    if-eq v0, p1, :cond_0

    .line 613
    iput p1, p0, Lcom/google/android/gm/MessageHeaderView;->mDrawTranslateY:I

    .line 614
    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderView;->invalidate()V

    .line 616
    :cond_0
    return-void
.end method

.method public toggleExpanded()V
    .locals 7

    .prologue
    .line 840
    iget-boolean v0, p0, Lcom/google/android/gm/MessageHeaderView;->mIsSnappy:Z

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mCallbacks:Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;

    invoke-interface {v0, p0}, Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;->collapseSnappyHeader(Lcom/google/android/gm/MessageHeaderView;)V

    .line 856
    :goto_0
    return-void

    .line 845
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gm/MessageHeaderView;->mIsExpanded:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/gm/MessageHeaderView;->setExpanded(Z)V

    .line 847
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mSenderNameView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderView;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 848
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mSenderEmailView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderView;->getHeaderSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 850
    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderView;->updateChildVisibility()V

    .line 854
    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderView;->forceMeasuredHeight()I

    move-result v6

    .line 855
    .local v6, h:I
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mCallbacks:Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;

    iget-wide v1, p0, Lcom/google/android/gm/MessageHeaderView;->mLocalMessageId:J

    iget-wide v3, p0, Lcom/google/android/gm/MessageHeaderView;->mServerMessageId:J

    iget-boolean v5, p0, Lcom/google/android/gm/MessageHeaderView;->mIsExpanded:Z

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;->setMessageExpanded(JJZI)V

    goto :goto_0

    .line 845
    .end local v6           #h:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public unbind()V
    .locals 2

    .prologue
    .line 312
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gm/MessageHeaderView;->mLocalMessageId:J

    .line 313
    return-void
.end method

.method public updateAttachment(Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;)V
    .locals 5
    .parameter

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mAttachmentsView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 1029
    :goto_0
    return-void

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView;->mAttachmentsView:Landroid/view/ViewGroup;

    iget-object v1, p1, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->partId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/MessageHeaderAttachment;

    .line 1022
    if-nez v0, :cond_1

    .line 1023
    const-string v0, "Gmail"

    const-string v1, "unable to find attachment view for partId=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->partId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1028
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/gm/MessageHeaderAttachment;->updateStatus(Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;)V

    goto :goto_0
.end method

.method public updateContactInfo()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 721
    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mPresenceView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 722
    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mPresenceView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 723
    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mContactInfoSource:Lcom/google/android/gm/ContactInfoSource;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mSender:Lcom/google/android/gm/EmailAddress;

    if-nez v4, :cond_2

    .line 724
    :cond_0
    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mPhotoView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4}, Landroid/widget/QuickContactBadge;->setImageToDefault()V

    .line 725
    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mPhotoView:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0097

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 757
    :cond_1
    :goto_0
    return-void

    .line 732
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0096

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mSender:Lcom/google/android/gm/EmailAddress;

    invoke-virtual {v4}, Lcom/google/android/gm/EmailAddress;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mSender:Lcom/google/android/gm/EmailAddress;

    invoke-virtual {v4}, Lcom/google/android/gm/EmailAddress;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_1
    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 734
    .local v0, contentDesc:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mPhotoView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v0}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 735
    const/4 v3, 0x0

    .line 736
    .local v3, photoSet:Z
    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mSender:Lcom/google/android/gm/EmailAddress;

    invoke-virtual {v4}, Lcom/google/android/gm/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 737
    .local v1, email:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mContactInfoSource:Lcom/google/android/gm/ContactInfoSource;

    invoke-interface {v4, v1}, Lcom/google/android/gm/ContactInfoSource;->getContactInfo(Ljava/lang/String;)Lcom/google/android/gm/SenderInfoLoader$ContactInfo;

    move-result-object v2

    .line 738
    .local v2, info:Lcom/google/android/gm/SenderInfoLoader$ContactInfo;
    if-eqz v2, :cond_6

    .line 739
    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mPhotoView:Landroid/widget/QuickContactBadge;

    iget-object v5, v2, Lcom/google/android/gm/SenderInfoLoader$ContactInfo;->contactUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 740
    iget-object v4, v2, Lcom/google/android/gm/SenderInfoLoader$ContactInfo;->photo:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    .line 741
    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mPhotoView:Landroid/widget/QuickContactBadge;

    iget-object v5, v2, Lcom/google/android/gm/SenderInfoLoader$ContactInfo;->photo:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 742
    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gm/MessageHeaderView;->mSender:Lcom/google/android/gm/EmailAddress;

    invoke-virtual {v5}, Lcom/google/android/gm/EmailAddress;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 743
    const/4 v3, 0x1

    .line 745
    :cond_3
    iget-boolean v4, p0, Lcom/google/android/gm/MessageHeaderView;->mIsDraft:Z

    if-nez v4, :cond_4

    iget-object v4, v2, Lcom/google/android/gm/SenderInfoLoader$ContactInfo;->status:Ljava/lang/Integer;

    if-eqz v4, :cond_4

    .line 746
    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mPresenceView:Landroid/widget/ImageView;

    iget-object v5, v2, Lcom/google/android/gm/SenderInfoLoader$ContactInfo;->status:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 748
    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mPresenceView:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 754
    :cond_4
    :goto_2
    if-nez v3, :cond_1

    .line 755
    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mPhotoView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4}, Landroid/widget/QuickContactBadge;->setImageToDefault()V

    goto :goto_0

    .line 732
    .end local v0           #contentDesc:Ljava/lang/String;
    .end local v1           #email:Ljava/lang/String;
    .end local v2           #info:Lcom/google/android/gm/SenderInfoLoader$ContactInfo;
    .end local v3           #photoSet:Z
    :cond_5
    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mSender:Lcom/google/android/gm/EmailAddress;

    invoke-virtual {v4}, Lcom/google/android/gm/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 751
    .restart local v0       #contentDesc:Ljava/lang/String;
    .restart local v1       #email:Ljava/lang/String;
    .restart local v2       #info:Lcom/google/android/gm/SenderInfoLoader$ContactInfo;
    .restart local v3       #photoSet:Z
    :cond_6
    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderView;->mPhotoView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v1, v9}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_2
.end method
