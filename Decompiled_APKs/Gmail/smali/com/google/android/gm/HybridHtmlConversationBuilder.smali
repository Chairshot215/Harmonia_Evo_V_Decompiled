.class public Lcom/google/android/gm/HybridHtmlConversationBuilder;
.super Ljava/lang/Object;
.source "HybridHtmlConversationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;,
        Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderResult;
    }
.end annotation


# static fields
.field private static INLINE_IMAGE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mConversationView:Lcom/google/android/gm/HybridHtmlConversationView;

.field private final mEmailCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/EmailAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final mHasImages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mHtmlTemplates:Lcom/google/android/gm/HtmlConversationTemplates;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "<img\\s+[^>]*src="

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->INLINE_IMAGE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/HybridHtmlConversationView;)V
    .locals 1
    .parameter "context"
    .parameter "account"
    .parameter "conversationView"

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mEmailCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 87
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mHasImages:Ljava/util/HashMap;

    .line 226
    iput-object p1, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mContext:Landroid/content/Context;

    .line 227
    iput-object p2, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mAccount:Ljava/lang/String;

    .line 228
    iput-object p3, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mConversationView:Lcom/google/android/gm/HybridHtmlConversationView;

    .line 229
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mInflater:Landroid/view/LayoutInflater;

    .line 231
    new-instance v0, Lcom/google/android/gm/HtmlConversationTemplates;

    invoke-direct {v0, p1}, Lcom/google/android/gm/HtmlConversationTemplates;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mHtmlTemplates:Lcom/google/android/gm/HtmlConversationTemplates;

    .line 232
    return-void
.end method

.method private static bodyContainsSearchQueryTerm(Ljava/lang/String;Ljava/util/List;)Z
    .locals 8
    .parameter "body"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, queryTerms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 596
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v4, :cond_1

    :cond_0
    move v4, v5

    .line 610
    :goto_0
    return v4

    .line 600
    :cond_1
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, bodyText:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 604
    .local v3, queryTerm:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(?<!\\w)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(?!\\w)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 606
    .local v2, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .end local v2           #matcher:Ljava/util/regex/Matcher;
    .end local v3           #queryTerm:Ljava/lang/String;
    :cond_3
    move v4, v5

    .line 610
    goto :goto_0
.end method

.method public static domIdForMessageId(J)Ljava/lang/String;
    .locals 2
    .parameter "messageId"

    .prologue
    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getZoomValue(Landroid/content/Context;)F
    .locals 3
    .parameter "context"

    .prologue
    .line 630
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/gm/persistence/Persistence;->getMessageTextSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 632
    .local v1, rawZoomSetting:F
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 633
    .local v0, density:F
    mul-float v2, v1, v0

    return v2
.end method

.method private messageContainsImages(Lcom/google/android/gm/provider/Gmail$MessageCursor;Ljava/lang/String;)Z
    .locals 5
    .parameter "messageCursor"
    .parameter "messageBody"

    .prologue
    .line 476
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getBodyEmbedsExternalResources()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 477
    const/4 v1, 0x1

    .line 487
    .local v1, showPrompt:Z
    :goto_0
    return v1

    .line 479
    .end local v1           #showPrompt:Z
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getConversationId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getLocalId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, hashKey:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mHasImages:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 482
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mHasImages:Ljava/util/HashMap;

    sget-object v3, Lcom/google/android/gm/HybridHtmlConversationBuilder;->INLINE_IMAGE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    :cond_1
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mHasImages:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .restart local v1       #showPrompt:Z
    goto :goto_0
.end method

.method public static messageIdForDomId(Ljava/lang/String;)J
    .locals 2
    .parameter "messageId"

    .prologue
    .line 647
    sget v0, Lcom/google/android/gm/HtmlConversationTemplates;->MESSAGE_PREFIX_LENGTH:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 648
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private renderConversationHeader(Lcom/google/android/gm/ConversationInfo;Lcom/google/android/gm/provider/Gmail$MessageCursor;)I
    .locals 5
    .parameter "convInfo"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 236
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mConversationView:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-virtual {v1}, Lcom/google/android/gm/HybridHtmlConversationView;->getConversationHeader()Lcom/google/android/gm/ConversationViewHeader;

    move-result-object v0

    .line 237
    .local v0, header:Lcom/google/android/gm/ConversationViewHeader;
    invoke-virtual {p2, v4}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveTo(I)Z

    .line 238
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gm/ConversationViewHeader;->setSubject(Ljava/lang/String;Z)V

    .line 239
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mAccount:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gm/ConversationInfo;->isImportant()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gm/ConversationViewHeader;->setLabels(Ljava/lang/String;Ljava/util/Map;ZZ)V

    .line 241
    invoke-virtual {v0}, Lcom/google/android/gm/ConversationViewHeader;->getPremeasuredHeight()I

    move-result v1

    return v1
.end method

.method private renderMessageHeader(Lcom/google/android/gm/provider/Gmail$MessageCursor;Lcom/google/android/gm/FormattedDateBuilder;ZIZ)I
    .locals 7
    .parameter "messageCursor"
    .parameter "dateBuilder"
    .parameter "showExpanded"
    .parameter "imagePromptState"
    .parameter "defaultReplyAll"

    .prologue
    .line 247
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/HybridHtmlConversationBuilder;->renderMessageHeader(Lcom/google/android/gm/provider/Gmail$MessageCursor;Lcom/google/android/gm/FormattedDateBuilder;ZIZLjava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method private renderMessageHeader(Lcom/google/android/gm/provider/Gmail$MessageCursor;Lcom/google/android/gm/FormattedDateBuilder;ZIZLjava/lang/Integer;)I
    .locals 6
    .parameter "messageCursor"
    .parameter "dateBuilder"
    .parameter "showExpanded"
    .parameter "imagePromptState"
    .parameter "defaultReplyAll"
    .parameter "index"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mConversationView:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-virtual {v1}, Lcom/google/android/gm/HybridHtmlConversationView;->getMessageHeaderContainer()Lcom/google/android/gm/HybridConversationScrollContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mConversationView:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mConversationView:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mConversationView:Lcom/google/android/gm/HybridHtmlConversationView;

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/MessageHeaderView;->attach(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/google/android/gm/ConversationViewable;Lcom/google/android/gm/MessageHeaderView$MessageHeaderViewCallbacks;Lcom/google/android/gm/ContactInfoSource;Ljava/lang/Integer;)Lcom/google/android/gm/MessageHeaderView;

    move-result-object v0

    .line 265
    .local v0, headerView:Lcom/google/android/gm/MessageHeaderView;
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->isFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gm/MessageHeaderView;->setVisibility(I)V

    .line 268
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mAccount:Ljava/lang/String;

    move-object v1, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/MessageHeaderView;->initialize(Lcom/google/android/gm/FormattedDateBuilder;Ljava/lang/String;ZIZ)V

    .line 270
    invoke-virtual {v0, p1}, Lcom/google/android/gm/MessageHeaderView;->render(Lcom/google/android/gm/provider/Gmail$MessageCursor;)I

    move-result v1

    return v1
.end method

.method private renderSuperCollapsedBlock(II)I
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 274
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mConversationView:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-virtual {v2}, Lcom/google/android/gm/HybridHtmlConversationView;->getMessageHeaderContainer()Lcom/google/android/gm/HybridConversationScrollContainer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mConversationView:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-static {v2, p1, p2, v3}, Lcom/google/android/gm/SuperCollapsedBlock;->attach(Landroid/view/ViewGroup;IILcom/google/android/gm/SuperCollapsedBlock$OnClickListener;)Lcom/google/android/gm/SuperCollapsedBlock;

    move-result-object v0

    .line 276
    .local v0, block:Lcom/google/android/gm/SuperCollapsedBlock;
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gm/SuperCollapsedBlock;->getCannedHeight(Landroid/content/Context;)I

    move-result v1

    .line 277
    .local v1, h:I
    return v1
.end method

.method private static showExpanded(Lcom/google/android/gm/provider/Gmail$MessageCursor;Lcom/google/android/gm/ConversationViewState;Ljava/util/List;Ljava/lang/String;)Z
    .locals 12
    .parameter "messageCursor"
    .parameter "viewState"
    .parameter
    .parameter "body"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/provider/Gmail$MessageCursor;",
            "Lcom/google/android/gm/ConversationViewState;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 497
    .local p2, searchQueryTerms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getMessageId()J

    move-result-wide v7

    .line 499
    .local v7, serverMessageId:J
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsDraft()Z

    move-result v0

    .line 500
    .local v0, isDraft:Z
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsInOutbox()Z

    move-result v4

    .line 501
    .local v4, isSending:Z
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsStarred()Z

    move-result v5

    .line 502
    .local v5, isStarred:Z
    iget-object v10, p1, Lcom/google/android/gm/ConversationViewState;->mUnreadMessageIds:Ljava/util/Set;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 503
    .local v6, isUnread:Z
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->isLast()Z

    move-result v1

    .line 504
    .local v1, isLast:Z
    invoke-virtual {p1, v7, v8}, Lcom/google/android/gm/ConversationViewState;->isManuallyExpandedMessageId(J)Z

    move-result v3

    .line 506
    .local v3, isManuallyExpanded:Z
    invoke-virtual {p1, v7, v8}, Lcom/google/android/gm/ConversationViewState;->isManuallyCollapsedMessageId(J)Z

    move-result v2

    .line 512
    .local v2, isManuallyCollapsed:Z
    if-nez v2, :cond_2

    if-nez v0, :cond_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    if-nez v6, :cond_0

    if-nez v1, :cond_0

    if-eqz v3, :cond_2

    :cond_0
    const/4 v9, 0x1

    .line 517
    .local v9, showExpanded:Z
    :goto_0
    if-nez v9, :cond_1

    if-eqz p2, :cond_1

    .line 518
    invoke-static {p3, p2}, Lcom/google/android/gm/HybridHtmlConversationBuilder;->bodyContainsSearchQueryTerm(Ljava/lang/String;Ljava/util/List;)Z

    move-result v9

    .line 521
    :cond_1
    return v9

    .line 512
    .end local v9           #showExpanded:Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getEmailAddress(Ljava/lang/String;)Lcom/google/android/gm/EmailAddress;
    .locals 2
    .parameter "rawAddress"

    .prologue
    .line 584
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mEmailCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/EmailAddress;

    .line 585
    .local v0, emailAddress:Lcom/google/android/gm/EmailAddress;
    if-nez v0, :cond_0

    .line 586
    invoke-static {p1}, Lcom/google/android/gm/EmailAddress;->getEmailAddress(Ljava/lang/String;)Lcom/google/android/gm/EmailAddress;

    move-result-object v0

    .line 587
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mEmailCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    :cond_0
    return-object v0
.end method

.method public getZoomValue()F
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gm/HybridHtmlConversationBuilder;->getZoomValue(Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public renderCollapsedHeaders(Lcom/google/android/gm/provider/Gmail$MessageCursor;III)Ljava/lang/String;
    .locals 20
    .parameter "messageCursor"
    .parameter "first"
    .parameter "last"
    .parameter "blockIndex"

    .prologue
    .line 537
    new-instance v17, Ljava/lang/StringBuilder;

    sub-int v2, p3, p2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit16 v2, v2, 0x320

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 539
    .local v17, sb:Ljava/lang/StringBuilder;
    new-instance v4, Lcom/google/android/gm/FormattedDateBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v4, v2}, Lcom/google/android/gm/FormattedDateBuilder;-><init>(Landroid/content/Context;)V

    .line 540
    .local v4, dateBuilder:Lcom/google/android/gm/FormattedDateBuilder;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/HybridHtmlConversationBuilder;->getZoomValue()F

    move-result v12

    .line 541
    .local v12, zoomValue:F
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v16

    .line 542
    .local v16, persistence:Lcom/google/android/gm/persistence/Persistence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/android/gm/persistence/Persistence;->getActionStripActionReplyAll(Landroid/content/Context;)Z

    move-result v7

    .line 544
    .local v7, defaultReplyAll:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mConversationView:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-virtual {v2}, Lcom/google/android/gm/HybridHtmlConversationView;->getLoadTimer()Lcom/google/android/gm/perf/Timer;

    move-result-object v19

    .line 545
    .local v19, t:Lcom/google/android/gm/perf/Timer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mHtmlTemplates:Lcom/google/android/gm/HtmlConversationTemplates;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/google/android/gm/HtmlConversationTemplates;->setTimer(Lcom/google/android/gm/perf/Timer;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mHtmlTemplates:Lcom/google/android/gm/HtmlConversationTemplates;

    invoke-virtual {v2}, Lcom/google/android/gm/HtmlConversationTemplates;->reset()V

    .line 549
    move/from16 v14, p2

    .local v14, i:I
    :goto_0
    move/from16 v0, p3

    if-gt v14, v0, :cond_1

    .line 550
    sub-int v15, v14, p2

    .line 551
    .local v15, offsetWithinBlock:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveTo(I)Z

    .line 552
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gm/HybridHtmlConversationBuilder;->getEmailAddress(Ljava/lang/String;)Lcom/google/android/gm/EmailAddress;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gm/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v18

    .line 554
    .local v18, sender:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getBody()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/HybridHtmlConversationBuilder;->messageContainsImages(Lcom/google/android/gm/provider/Gmail$MessageCursor;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v6, 0x1

    .line 558
    .local v6, imagePromptState:I
    :goto_1
    const/4 v5, 0x0

    add-int v2, p4, v15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gm/HybridHtmlConversationBuilder;->renderMessageHeader(Lcom/google/android/gm/provider/Gmail$MessageCursor;Lcom/google/android/gm/FormattedDateBuilder;ZIZLjava/lang/Integer;)I

    move-result v13

    .line 563
    .local v13, headerHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gm/persistence/Persistence;->getDisplayImagesFromSender(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    .line 566
    .local v11, safeForImages:Z
    const-string v2, "collapsed message body html render"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/google/android/gm/perf/Timer;->start(Ljava/lang/String;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mHtmlTemplates:Lcom/google/android/gm/HtmlConversationTemplates;

    const/4 v10, 0x0

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/gm/HtmlConversationTemplates;->appendMessageHtml(Lcom/google/android/gm/provider/Gmail$MessageCursor;ZZFI)V

    .line 569
    const-string v2, "collapsed message body html render"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/google/android/gm/perf/Timer;->pause(Ljava/lang/String;)V

    .line 549
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 554
    .end local v6           #imagePromptState:I
    .end local v11           #safeForImages:Z
    .end local v13           #headerHeight:I
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 573
    .end local v15           #offsetWithinBlock:I
    .end local v18           #sender:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mHtmlTemplates:Lcom/google/android/gm/HtmlConversationTemplates;

    invoke-virtual {v2}, Lcom/google/android/gm/HtmlConversationTemplates;->emit()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public renderConversation(Lcom/google/android/gm/provider/Gmail$MessageCursor;Lcom/google/android/gm/ConversationInfo;Ljava/util/List;Lcom/google/android/gm/ConversationViewState;IZ)Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderResult;
    .locals 53
    .parameter "messageCursor"
    .parameter "conversationInfo"
    .parameter
    .parameter "previousState"
    .parameter "viewWidth"
    .parameter "enableContentReadySignal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/provider/Gmail$MessageCursor;",
            "Lcom/google/android/gm/ConversationInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gm/ConversationViewState;",
            "IZ)",
            "Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderResult;"
        }
    .end annotation

    .prologue
    .line 300
    .local p3, searchQueryTerms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mConversationView:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-virtual {v5}, Lcom/google/android/gm/HybridHtmlConversationView;->getLoadTimer()Lcom/google/android/gm/perf/Timer;

    move-result-object v50

    .line 301
    .local v50, t:Lcom/google/android/gm/perf/Timer;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mHtmlTemplates:Lcom/google/android/gm/HtmlConversationTemplates;

    move-object/from16 v0, v50

    invoke-virtual {v5, v0}, Lcom/google/android/gm/HtmlConversationTemplates;->setTimer(Lcom/google/android/gm/perf/Timer;)V

    .line 302
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/HybridHtmlConversationBuilder;->renderConversationHeader(Lcom/google/android/gm/ConversationInfo;Lcom/google/android/gm/provider/Gmail$MessageCursor;)I

    move-result v37

    .line 304
    .local v37, conversationHeaderHeight:I
    const-string v5, "HCB.generateConversation"

    invoke-static {v5}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 306
    new-instance v47, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderResult;

    move-object/from16 v0, v47

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderResult;-><init>(Lcom/google/android/gm/ConversationInfo;Lcom/google/android/gm/ConversationViewState;)V

    .line 307
    .local v47, result:Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderResult;
    invoke-virtual/range {v47 .. v47}, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderResult;->getViewState()Lcom/google/android/gm/ConversationViewState;

    move-result-object v51

    .line 308
    .local v51, viewState:Lcom/google/android/gm/ConversationViewState;
    invoke-virtual/range {v47 .. v47}, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderResult;->getRenderState()Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;

    move-result-object v46

    .line 310
    .local v46, renderState:Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mHtmlTemplates:Lcom/google/android/gm/HtmlConversationTemplates;

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Lcom/google/android/gm/HtmlConversationTemplates;->startConversation(I)V

    .line 312
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v44

    .line 315
    .local v44, persistence:Lcom/google/android/gm/persistence/Persistence;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->count()I

    move-result v38

    .line 316
    .local v38, count:I
    add-int/lit8 v41, v38, -0x1

    .line 317
    .local v41, lastMessage:I
    const/16 v52, -0x1

    .line 318
    .local v52, whichMessage:I
    const/16 v39, -0x1

    .line 320
    .local v39, firstCollapsed:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mConversationView:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-virtual {v5}, Lcom/google/android/gm/HybridHtmlConversationView;->getMessageHeaderContainer()Lcom/google/android/gm/HybridConversationScrollContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gm/HybridConversationScrollContainer;->removeAllHeaders()V

    .line 322
    new-instance v25, Lcom/google/android/gm/FormattedDateBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Lcom/google/android/gm/FormattedDateBuilder;-><init>(Landroid/content/Context;)V

    .line 326
    .local v25, dateBuilder:Lcom/google/android/gm/FormattedDateBuilder;
    const/16 v20, 0x0

    .line 327
    .local v20, prevSafeForImages:Z
    const/4 v15, 0x0

    .line 331
    .local v15, prevImagePromptState:I
    const-string v5, "HCB.messageIteration"

    invoke-static {v5}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 332
    const-string v5, "message iteration minus header construction"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Lcom/google/android/gm/perf/Timer;->start(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/HybridHtmlConversationBuilder;->getZoomValue()F

    move-result v21

    .line 335
    .local v21, zoomValue:F
    move-object/from16 v0, v46

    move/from16 v1, v21

    #calls: Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->setZoomValue(F)V
    invoke-static {v0, v1}, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->access$000(Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;F)V

    .line 337
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lcom/google/android/gm/persistence/Persistence;->getActionStripActionReplyAll(Landroid/content/Context;)Z

    move-result v16

    .line 338
    .local v16, defaultReplyAll:Z
    move-object/from16 v0, v46

    move/from16 v1, v16

    #calls: Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->setDefaultReplyAll(Z)V
    invoke-static {v0, v1}, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->access$100(Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;Z)V

    .line 340
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/google/android/gm/ConversationViewState;->mMessageIds:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 342
    :goto_0
    add-int/lit8 v52, v52, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveTo(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 343
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getMessageId()J

    move-result-wide v9

    .line 344
    .local v9, serverMessageId:J
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/google/android/gm/ConversationViewState;->mMessageIds:Ljava/util/Set;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getLocalId()J

    move-result-wide v7

    .line 348
    .local v7, localMessageId:J
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/gm/HybridHtmlConversationBuilder;->getEmailAddress(Ljava/lang/String;)Lcom/google/android/gm/EmailAddress;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gm/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v48

    .line 349
    .local v48, sender:Ljava/lang/String;
    move-object/from16 v0, v46

    move-object/from16 v1, v48

    #calls: Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->addSender(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->access$200(Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsUnread()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 359
    new-instance v4, Lcom/google/android/gm/ConversationInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getConversationId()J

    move-result-wide v5

    const-wide/16 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getLabels()Ljava/util/Map;

    move-result-object v13

    invoke-direct/range {v4 .. v13}, Lcom/google/android/gm/ConversationInfo;-><init>(JJJJLjava/util/Map;)V

    .line 362
    .local v4, unreadInfo:Lcom/google/android/gm/ConversationInfo;
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/google/android/gm/ConversationViewState;->mInitialUnreadMessages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/google/android/gm/ConversationViewState;->mUnreadMessageIds:Ljava/util/Set;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 367
    .end local v4           #unreadInfo:Lcom/google/android/gm/ConversationInfo;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getBody()Ljava/lang/String;

    move-result-object v35

    .line 368
    .local v35, body:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v51

    move-object/from16 v2, p3

    move-object/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gm/HybridHtmlConversationBuilder;->showExpanded(Lcom/google/android/gm/provider/Gmail$MessageCursor;Lcom/google/android/gm/ConversationViewState;Ljava/util/List;Ljava/lang/String;)Z

    move-result v26

    .line 370
    .local v26, showExpanded:Z
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v0, v48

    invoke-virtual {v5, v6, v0}, Lcom/google/android/gm/persistence/Persistence;->getDisplayImagesFromSender(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v49

    .line 372
    .local v49, senderIsWhitelisted:Z
    move-object/from16 v0, v46

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->addToSenderMap(Ljava/lang/String;Z)V

    .line 374
    move-object/from16 v0, v51

    invoke-virtual {v0, v9, v10}, Lcom/google/android/gm/ConversationViewState;->safeForImages(J)Z

    move-result v45

    .line 376
    .local v45, picsPreviouslyShown:Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/HybridHtmlConversationBuilder;->messageContainsImages(Lcom/google/android/gm/provider/Gmail$MessageCursor;Ljava/lang/String;)Z

    move-result v36

    .line 378
    .local v36, containsImages:Z
    if-eqz v36, :cond_1

    if-eqz v49, :cond_4

    .line 379
    :cond_1
    const/16 v27, 0x0

    .line 388
    .local v27, imagePromptState:I
    :goto_1
    if-nez v49, :cond_2

    if-eqz v45, :cond_6

    :cond_2
    const/16 v31, 0x1

    .line 390
    .local v31, safeForImages:Z
    :goto_2
    if-eqz v26, :cond_8

    .line 397
    const/4 v5, -0x1

    move/from16 v0, v39

    if-eq v0, v5, :cond_3

    .line 398
    sub-int v42, v52, v39

    .line 399
    .local v42, numCollapsed:I
    const/4 v5, 0x1

    move/from16 v0, v42

    if-le v0, v5, :cond_7

    .line 401
    const-string v5, "message iteration minus header construction"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Lcom/google/android/gm/perf/Timer;->pause(Ljava/lang/String;)V

    .line 402
    add-int/lit8 v5, v52, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v1, v5}, Lcom/google/android/gm/HybridHtmlConversationBuilder;->renderSuperCollapsedBlock(II)I

    move-result v34

    .line 404
    .local v34, blockHeight:I
    const-string v5, "message iteration minus header construction"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Lcom/google/android/gm/perf/Timer;->start(Ljava/lang/String;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mHtmlTemplates:Lcom/google/android/gm/HtmlConversationTemplates;

    move/from16 v0, v39

    move/from16 v1, v34

    invoke-virtual {v5, v0, v1}, Lcom/google/android/gm/HtmlConversationTemplates;->appendSuperCollapsedHtml(II)V

    .line 424
    .end local v34           #blockHeight:I
    :goto_3
    const/16 v39, -0x1

    .line 427
    .end local v42           #numCollapsed:I
    :cond_3
    move-object/from16 v0, v46

    move/from16 v1, v31

    #calls: Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->alsoShowImages(Z)V
    invoke-static {v0, v1}, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->access$300(Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;Z)V

    .line 429
    const-string v5, "message iteration minus header construction"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Lcom/google/android/gm/perf/Timer;->pause(Ljava/lang/String;)V

    move-object/from16 v23, p0

    move-object/from16 v24, p1

    move/from16 v28, v16

    .line 430
    invoke-direct/range {v23 .. v28}, Lcom/google/android/gm/HybridHtmlConversationBuilder;->renderMessageHeader(Lcom/google/android/gm/provider/Gmail$MessageCursor;Lcom/google/android/gm/FormattedDateBuilder;ZIZ)I

    move-result v22

    .line 432
    .local v22, headerHeight:I
    const-string v5, "message iteration minus header construction"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Lcom/google/android/gm/perf/Timer;->start(Ljava/lang/String;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mHtmlTemplates:Lcom/google/android/gm/HtmlConversationTemplates;

    move-object/from16 v28, v0

    move-object/from16 v29, p1

    move/from16 v30, v26

    move/from16 v32, v21

    move/from16 v33, v22

    invoke-virtual/range {v28 .. v33}, Lcom/google/android/gm/HtmlConversationTemplates;->appendMessageHtml(Lcom/google/android/gm/provider/Gmail$MessageCursor;ZZFI)V

    goto/16 :goto_0

    .line 380
    .end local v22           #headerHeight:I
    .end local v27           #imagePromptState:I
    .end local v31           #safeForImages:Z
    :cond_4
    if-eqz v45, :cond_5

    .line 381
    const/16 v27, 0x2

    .restart local v27       #imagePromptState:I
    goto :goto_1

    .line 383
    .end local v27           #imagePromptState:I
    :cond_5
    const/16 v27, 0x1

    .restart local v27       #imagePromptState:I
    goto :goto_1

    .line 388
    :cond_6
    const/16 v31, 0x0

    goto :goto_2

    .line 411
    .restart local v31       #safeForImages:Z
    .restart local v42       #numCollapsed:I
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->position()I

    move-result v40

    .line 412
    .local v40, index:I
    add-int/lit8 v5, v40, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveTo(I)Z

    .line 415
    const-string v5, "message iteration minus header construction"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Lcom/google/android/gm/perf/Timer;->pause(Ljava/lang/String;)V

    .line 416
    const/4 v14, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, v25

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gm/HybridHtmlConversationBuilder;->renderMessageHeader(Lcom/google/android/gm/provider/Gmail$MessageCursor;Lcom/google/android/gm/FormattedDateBuilder;ZIZ)I

    move-result v22

    .line 418
    .restart local v22       #headerHeight:I
    const-string v5, "message iteration minus header construction"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Lcom/google/android/gm/perf/Timer;->start(Ljava/lang/String;)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mHtmlTemplates:Lcom/google/android/gm/HtmlConversationTemplates;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    move-object/from16 v18, p1

    invoke-virtual/range {v17 .. v22}, Lcom/google/android/gm/HtmlConversationTemplates;->appendMessageHtml(Lcom/google/android/gm/provider/Gmail$MessageCursor;ZZFI)V

    .line 422
    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveTo(I)Z

    goto :goto_3

    .line 436
    .end local v22           #headerHeight:I
    .end local v40           #index:I
    .end local v42           #numCollapsed:I
    :cond_8
    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gm/ConversationViewState;->isExpandedHeaders()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 439
    const-string v5, "message iteration minus header construction"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Lcom/google/android/gm/perf/Timer;->pause(Ljava/lang/String;)V

    move-object/from16 v23, p0

    move-object/from16 v24, p1

    move/from16 v28, v16

    .line 440
    invoke-direct/range {v23 .. v28}, Lcom/google/android/gm/HybridHtmlConversationBuilder;->renderMessageHeader(Lcom/google/android/gm/provider/Gmail$MessageCursor;Lcom/google/android/gm/FormattedDateBuilder;ZIZ)I

    move-result v22

    .line 442
    .restart local v22       #headerHeight:I
    const-string v5, "message iteration minus header construction"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Lcom/google/android/gm/perf/Timer;->start(Ljava/lang/String;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mHtmlTemplates:Lcom/google/android/gm/HtmlConversationTemplates;

    move-object/from16 v28, v0

    move-object/from16 v29, p1

    move/from16 v30, v26

    move/from16 v32, v21

    move/from16 v33, v22

    invoke-virtual/range {v28 .. v33}, Lcom/google/android/gm/HtmlConversationTemplates;->appendMessageHtml(Lcom/google/android/gm/provider/Gmail$MessageCursor;ZZFI)V

    goto/16 :goto_0

    .line 452
    .end local v22           #headerHeight:I
    :cond_9
    const/4 v5, -0x1

    move/from16 v0, v39

    if-ne v0, v5, :cond_a

    .line 454
    move/from16 v39, v52

    .line 456
    :cond_a
    move/from16 v20, v31

    .line 457
    move/from16 v15, v27

    goto/16 :goto_0

    .line 460
    .end local v7           #localMessageId:J
    .end local v9           #serverMessageId:J
    .end local v26           #showExpanded:Z
    .end local v27           #imagePromptState:I
    .end local v31           #safeForImages:Z
    .end local v35           #body:Ljava/lang/String;
    .end local v36           #containsImages:Z
    .end local v45           #picsPreviouslyShown:Z
    .end local v48           #sender:Ljava/lang/String;
    .end local v49           #senderIsWhitelisted:Z
    :cond_b
    const-string v5, "message iteration minus header construction"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Lcom/google/android/gm/perf/Timer;->pause(Ljava/lang/String;)V

    .line 461
    const-string v5, "HCB.messageIteration"

    invoke-static {v5}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mHtmlTemplates:Lcom/google/android/gm/HtmlConversationTemplates;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/HybridHtmlConversationBuilder;->mAccount:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gm/provider/Urls;->getUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v5, v6, v0, v1}, Lcom/google/android/gm/HtmlConversationTemplates;->endConversation(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v43

    .line 465
    .local v43, out:Ljava/lang/String;
    move-object/from16 v0, v47

    move-object/from16 v1, v43

    #calls: Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderResult;->setHtml(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderResult;->access$400(Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderResult;Ljava/lang/String;)V

    .line 467
    const-string v5, "HCB.generateConversation"

    invoke-static {v5}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 469
    return-object v47
.end method
