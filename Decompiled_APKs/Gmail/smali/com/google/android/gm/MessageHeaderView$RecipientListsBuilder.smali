.class Lcom/google/android/gm/MessageHeaderView$RecipientListsBuilder;
.super Ljava/lang/Object;
.source "MessageHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/MessageHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecipientListsBuilder"
.end annotation


# instance fields
.field private final mBuilder:Landroid/text/SpannableStringBuilder;

.field private final mComma:Ljava/lang/CharSequence;

.field private final mContext:Landroid/content/Context;

.field mFirst:Z

.field private final mMe:Ljava/lang/String;

.field mRecipientCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "me"

    .prologue
    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderView$RecipientListsBuilder;->mBuilder:Landroid/text/SpannableStringBuilder;

    .line 628
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gm/MessageHeaderView$RecipientListsBuilder;->mRecipientCount:I

    .line 629
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/MessageHeaderView$RecipientListsBuilder;->mFirst:Z

    .line 632
    iput-object p1, p0, Lcom/google/android/gm/MessageHeaderView$RecipientListsBuilder;->mContext:Landroid/content/Context;

    .line 633
    iput-object p2, p0, Lcom/google/android/gm/MessageHeaderView$RecipientListsBuilder;->mMe:Ljava/lang/String;

    .line 634
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView$RecipientListsBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0152

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderView$RecipientListsBuilder;->mComma:Ljava/lang/CharSequence;

    .line 635
    return-void
.end method

.method private getSummaryTextForHeading(I[Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 10
    .parameter "headingStrRes"
    .parameter "rawAddrs"
    .parameter "maxToCopy"

    .prologue
    .line 655
    if-eqz p2, :cond_0

    array-length v6, p2

    if-eqz v6, :cond_0

    if-nez p3, :cond_2

    .line 656
    :cond_0
    const/4 v5, 0x0

    .line 682
    :cond_1
    return-object v5

    .line 659
    :cond_2
    new-instance v5, Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/google/android/gm/MessageHeaderView$RecipientListsBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 661
    .local v5, ssb:Landroid/text/SpannableStringBuilder;
    new-instance v6, Landroid/text/style/StyleSpan;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v7, 0x0

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 663
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 665
    array-length v6, p2

    invoke-static {p3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 666
    .local v3, len:I
    const/4 v1, 0x1

    .line 667
    .local v1, first:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 668
    aget-object v6, p2, v2

    invoke-static {v6}, Lcom/google/android/gm/EmailAddress;->getEmailAddress(Ljava/lang/String;)Lcom/google/android/gm/EmailAddress;

    move-result-object v0

    .line 669
    .local v0, email:Lcom/google/android/gm/EmailAddress;
    iget-object v6, p0, Lcom/google/android/gm/MessageHeaderView$RecipientListsBuilder;->mMe:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gm/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/google/android/gm/MessageHeaderView$RecipientListsBuilder;->mContext:Landroid/content/Context;

    const v7, 0x7f0c0084

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 674
    .local v4, name:Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_4

    .line 675
    const/4 v1, 0x0

    .line 679
    :goto_2
    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 667
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 669
    .end local v4           #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gm/EmailAddress;->getSimplifiedName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 677
    .restart local v4       #name:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/google/android/gm/MessageHeaderView$RecipientListsBuilder;->mComma:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2
.end method


# virtual methods
.method public append([Ljava/lang/String;I)V
    .locals 4
    .parameter "recipients"
    .parameter "headingRes"

    .prologue
    .line 638
    iget v2, p0, Lcom/google/android/gm/MessageHeaderView$RecipientListsBuilder;->mRecipientCount:I

    rsub-int/lit8 v0, v2, 0x32

    .line 639
    .local v0, addLimit:I
    invoke-direct {p0, p2, p1, v0}, Lcom/google/android/gm/MessageHeaderView$RecipientListsBuilder;->getSummaryTextForHeading(I[Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 640
    .local v1, recipientList:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 643
    iget-boolean v2, p0, Lcom/google/android/gm/MessageHeaderView$RecipientListsBuilder;->mFirst:Z

    if-eqz v2, :cond_1

    .line 644
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gm/MessageHeaderView$RecipientListsBuilder;->mFirst:Z

    .line 648
    :goto_0
    iget-object v2, p0, Lcom/google/android/gm/MessageHeaderView$RecipientListsBuilder;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 649
    iget v2, p0, Lcom/google/android/gm/MessageHeaderView$RecipientListsBuilder;->mRecipientCount:I

    array-length v3, p1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gm/MessageHeaderView$RecipientListsBuilder;->mRecipientCount:I

    .line 651
    :cond_0
    return-void

    .line 646
    :cond_1
    iget-object v2, p0, Lcom/google/android/gm/MessageHeaderView$RecipientListsBuilder;->mBuilder:Landroid/text/SpannableStringBuilder;

    const-string v3, "   "

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method public build()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderView$RecipientListsBuilder;->mBuilder:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method
