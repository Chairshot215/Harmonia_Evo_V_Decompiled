.class public Lcom/htc/text/util/HtcLinkify;
.super Ljava/lang/Object;
.source "HtcLinkify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/text/util/HtcLinkify$LinkSpec;,
        Lcom/htc/text/util/HtcLinkify$TransformFilter;,
        Lcom/htc/text/util/HtcLinkify$MatchFilter;
    }
.end annotation


# static fields
.field public static final ALL:I = 0xf

.field public static final EMAIL_ADDRESSES:I = 0x2

.field public static final LOCATION_URI:I = 0x8

.field public static final MAP_ADDRESSES:I = 0x8

.field public static final PHONE_NUMBERS:I = 0x4

.field private static final PHONE_NUMBER_MINIMUM_DIGITS:I = 0x5

.field public static final WEB_URLS:I = 0x1

.field public static final sPhoneNumberMatchFilter:Lcom/htc/text/util/HtcLinkify$MatchFilter;

.field public static final sPhoneNumberTransformFilter:Lcom/htc/text/util/HtcLinkify$TransformFilter;

.field public static final sUrlMatchFilter:Lcom/htc/text/util/HtcLinkify$MatchFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/htc/text/util/HtcLinkify$1;

    invoke-direct {v0}, Lcom/htc/text/util/HtcLinkify$1;-><init>()V

    sput-object v0, Lcom/htc/text/util/HtcLinkify;->sUrlMatchFilter:Lcom/htc/text/util/HtcLinkify$MatchFilter;

    .line 122
    new-instance v0, Lcom/htc/text/util/HtcLinkify$2;

    invoke-direct {v0}, Lcom/htc/text/util/HtcLinkify$2;-><init>()V

    sput-object v0, Lcom/htc/text/util/HtcLinkify;->sPhoneNumberMatchFilter:Lcom/htc/text/util/HtcLinkify$MatchFilter;

    .line 145
    new-instance v0, Lcom/htc/text/util/HtcLinkify$3;

    invoke-direct {v0}, Lcom/htc/text/util/HtcLinkify$3;-><init>()V

    sput-object v0, Lcom/htc/text/util/HtcLinkify;->sPhoneNumberTransformFilter:Lcom/htc/text/util/HtcLinkify$TransformFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    return-void
.end method

.method private static final addLinkMovementMethod(Landroid/widget/TextView;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 222
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 224
    .local v0, m:Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v1, :cond_1

    .line 225
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 229
    :cond_1
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .parameter "pattern"
    .parameter "scheme"

    .prologue
    const/4 v0, 0x0

    .line 244
    invoke-static {p0, p1, p2, v0, v0}, Lcom/htc/text/util/HtcLinkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Lcom/htc/text/util/HtcLinkify$MatchFilter;Lcom/htc/text/util/HtcLinkify$TransformFilter;)V

    .line 245
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Lcom/htc/text/util/HtcLinkify$MatchFilter;Lcom/htc/text/util/HtcLinkify$TransformFilter;)V
    .locals 2
    .parameter "text"
    .parameter "p"
    .parameter "scheme"
    .parameter "matchFilter"
    .parameter "transformFilter"

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 266
    .local v0, s:Landroid/text/SpannableString;
    invoke-static {v0, p1, p2, p3, p4}, Lcom/htc/text/util/HtcLinkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Lcom/htc/text/util/HtcLinkify$MatchFilter;Lcom/htc/text/util/HtcLinkify$TransformFilter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    invoke-static {p0}, Lcom/htc/text/util/HtcLinkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 270
    :cond_0
    return-void
.end method

.method public static final addLinks(Landroid/text/Spannable;I)Z
    .locals 1
    .parameter "text"
    .parameter "mask"

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/htc/text/util/HtcLinkify;->addLinks(Landroid/text/Spannable;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static final addLinks(Landroid/text/Spannable;ILjava/lang/String;)Z
    .locals 10
    .parameter "text"
    .parameter "mask"
    .parameter "eventUri"

    .prologue
    .line 567
    if-nez p1, :cond_0

    .line 568
    const/4 v1, 0x0

    .line 616
    :goto_0
    return v1

    .line 571
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {p0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/URLSpan;

    .line 573
    .local v9, old:[Landroid/text/style/URLSpan;
    array-length v1, v9

    add-int/lit8 v6, v1, -0x1

    .local v6, i:I
    :goto_1
    if-ltz v6, :cond_1

    .line 574
    aget-object v1, v9, v6

    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 573
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 577
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .local v0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/text/util/HtcLinkify$LinkSpec;>;"
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    .line 580
    sget-object v2, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "http://"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "https://"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "rtsp://"

    aput-object v4, v3, v1

    sget-object v4, Lcom/htc/text/util/HtcLinkify;->sUrlMatchFilter:Lcom/htc/text/util/HtcLinkify$MatchFilter;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/text/util/HtcLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcom/htc/text/util/HtcLinkify$MatchFilter;Lcom/htc/text/util/HtcLinkify$TransformFilter;)V

    .line 585
    :cond_2
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    .line 586
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "mailto:"

    aput-object v4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/text/util/HtcLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcom/htc/text/util/HtcLinkify$MatchFilter;Lcom/htc/text/util/HtcLinkify$TransformFilter;)V

    .line 591
    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 592
    sget-object v2, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "tel:"

    aput-object v4, v3, v1

    sget-object v4, Lcom/htc/text/util/HtcLinkify;->sPhoneNumberMatchFilter:Lcom/htc/text/util/HtcLinkify$MatchFilter;

    sget-object v5, Lcom/htc/text/util/HtcLinkify;->sPhoneNumberTransformFilter:Lcom/htc/text/util/HtcLinkify$TransformFilter;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/text/util/HtcLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcom/htc/text/util/HtcLinkify$MatchFilter;Lcom/htc/text/util/HtcLinkify$TransformFilter;)V

    .line 597
    :cond_4
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    .line 598
    invoke-static {v0, p0}, Lcom/htc/text/util/HtcLinkify;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 601
    :cond_5
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_6

    .line 602
    sget-object v2, Landroid/util/Patterns;->LOCATION_PATTERN:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, ""

    aput-object v4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/text/util/HtcLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcom/htc/text/util/HtcLinkify$MatchFilter;Lcom/htc/text/util/HtcLinkify$TransformFilter;)V

    .line 606
    :cond_6
    invoke-static {v0}, Lcom/htc/text/util/HtcLinkify;->pruneOverlaps(Ljava/util/ArrayList;)V

    .line 608
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    .line 609
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 612
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/text/util/HtcLinkify$LinkSpec;

    .line 613
    .local v8, link:Lcom/htc/text/util/HtcLinkify$LinkSpec;
    iget-object v1, v8, Lcom/htc/text/util/HtcLinkify$LinkSpec;->url:Ljava/lang/String;

    iget v2, v8, Lcom/htc/text/util/HtcLinkify$LinkSpec;->start:I

    iget v3, v8, Lcom/htc/text/util/HtcLinkify$LinkSpec;->end:I

    invoke-static {v1, v2, v3, p0, p2}, Lcom/htc/text/util/HtcLinkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;Ljava/lang/String;)V

    goto :goto_2

    .line 616
    .end local v8           #link:Lcom/htc/text/util/HtcLinkify$LinkSpec;
    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .locals 1
    .parameter "text"
    .parameter "pattern"
    .parameter "scheme"

    .prologue
    const/4 v0, 0x0

    .line 284
    invoke-static {p0, p1, p2, v0, v0}, Lcom/htc/text/util/HtcLinkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Lcom/htc/text/util/HtcLinkify$MatchFilter;Lcom/htc/text/util/HtcLinkify$TransformFilter;)Z

    move-result v0

    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Lcom/htc/text/util/HtcLinkify$MatchFilter;Lcom/htc/text/util/HtcLinkify$TransformFilter;)Z
    .locals 10
    .parameter "s"
    .parameter "p"
    .parameter "scheme"
    .parameter "matchFilter"
    .parameter "transformFilter"

    .prologue
    const/4 v9, 0x0

    .line 304
    const/4 v2, 0x0

    .line 305
    .local v2, hasMatches:Z
    if-nez p2, :cond_2

    const-string v4, ""

    .line 306
    .local v4, prefix:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 308
    .local v3, m:Ljava/util/regex/Matcher;
    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 309
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    .line 310
    .local v5, start:I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 311
    .local v1, end:I
    const/4 v0, 0x1

    .line 313
    .local v0, allowed:Z
    if-eqz p3, :cond_1

    .line 314
    invoke-interface {p3, p0, v5, v1}, Lcom/htc/text/util/HtcLinkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 317
    :cond_1
    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    aput-object v4, v8, v9

    invoke-static {v7, v8, v3, p4}, Lcom/htc/text/util/HtcLinkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/htc/text/util/HtcLinkify$TransformFilter;)Ljava/lang/String;

    move-result-object v6

    .line 321
    .local v6, url:Ljava/lang/String;
    invoke-static {v6, v5, v1, p0}, Lcom/htc/text/util/HtcLinkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    .line 322
    const/4 v2, 0x1

    goto :goto_1

    .line 305
    .end local v0           #allowed:Z
    .end local v1           #end:I
    .end local v3           #m:Ljava/util/regex/Matcher;
    .end local v4           #prefix:Ljava/lang/String;
    .end local v5           #start:I
    .end local v6           #url:Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 326
    .restart local v3       #m:Ljava/util/regex/Matcher;
    .restart local v4       #prefix:Ljava/lang/String;
    :cond_3
    return v2
.end method

.method public static final addLinks(Landroid/widget/TextView;I)Z
    .locals 1
    .parameter "text"
    .parameter "mask"

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/htc/text/util/HtcLinkify;->addLinks(Landroid/widget/TextView;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static final addLinks(Landroid/widget/TextView;ILjava/lang/String;)Z
    .locals 5
    .parameter "text"
    .parameter "mask"
    .parameter "eventUri"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 539
    if-nez p1, :cond_1

    .line 562
    :cond_0
    :goto_0
    return v2

    .line 543
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 545
    .local v1, t:Ljava/lang/CharSequence;
    instance-of v4, v1, Landroid/text/Spannable;

    if-eqz v4, :cond_2

    .line 546
    check-cast v1, Landroid/text/Spannable;

    .end local v1           #t:Ljava/lang/CharSequence;
    invoke-static {v1, p1, p2}, Lcom/htc/text/util/HtcLinkify;->addLinks(Landroid/text/Spannable;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 547
    invoke-static {p0}, Lcom/htc/text/util/HtcLinkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    move v2, v3

    .line 548
    goto :goto_0

    .line 553
    .restart local v1       #t:Ljava/lang/CharSequence;
    :cond_2
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 555
    .local v0, s:Landroid/text/SpannableString;
    invoke-static {v0, p1, p2}, Lcom/htc/text/util/HtcLinkify;->addLinks(Landroid/text/Spannable;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 556
    invoke-static {p0}, Lcom/htc/text/util/HtcLinkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 557
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 559
    goto :goto_0
.end method

.method public static final addLinksWithEvent(Landroid/widget/TextView;ILjava/lang/String;)Z
    .locals 1
    .parameter "text"
    .parameter "mask"
    .parameter "eventUri"

    .prologue
    .line 535
    invoke-static {p0, p1, p2}, Lcom/htc/text/util/HtcLinkify;->addLinks(Landroid/widget/TextView;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static final applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .locals 1
    .parameter "url"
    .parameter "start"
    .parameter "end"
    .parameter "text"

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/text/util/HtcLinkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method private static final applyLink(Ljava/lang/String;IILandroid/text/Spannable;Ljava/lang/String;)V
    .locals 2
    .parameter "url"
    .parameter "start"
    .parameter "end"
    .parameter "text"
    .parameter "uriString"

    .prologue
    .line 621
    new-instance v0, Lcom/htc/text/style/HtcURLSpan;

    invoke-direct {v0, p0, p4}, Lcom/htc/text/style/HtcURLSpan;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    .local v0, span:Landroid/text/style/URLSpan;
    const/16 v1, 0x21

    invoke-interface {p3, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 624
    return-void
.end method

.method public static final gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcom/htc/text/util/HtcLinkify$MatchFilter;Lcom/htc/text/util/HtcLinkify$TransformFilter;)V
    .locals 6
    .parameter
    .parameter "s"
    .parameter "pattern"
    .parameter "schemes"
    .parameter "matchFilter"
    .parameter "transformFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/text/util/HtcLinkify$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Lcom/htc/text/util/HtcLinkify$MatchFilter;",
            "Lcom/htc/text/util/HtcLinkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/text/util/HtcLinkify$LinkSpec;>;"
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 368
    .local v1, m:Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 369
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 370
    .local v3, start:I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 372
    .local v0, end:I
    if-eqz p4, :cond_1

    invoke-interface {p4, p1, v3, v0}, Lcom/htc/text/util/HtcLinkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 373
    :cond_1
    new-instance v2, Lcom/htc/text/util/HtcLinkify$LinkSpec;

    invoke-direct {v2}, Lcom/htc/text/util/HtcLinkify$LinkSpec;-><init>()V

    .line 374
    .local v2, spec:Lcom/htc/text/util/HtcLinkify$LinkSpec;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3, v1, p5}, Lcom/htc/text/util/HtcLinkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/htc/text/util/HtcLinkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    .line 376
    .local v4, url:Ljava/lang/String;
    iput-object v4, v2, Lcom/htc/text/util/HtcLinkify$LinkSpec;->url:Ljava/lang/String;

    .line 377
    iput v3, v2, Lcom/htc/text/util/HtcLinkify$LinkSpec;->start:I

    .line 378
    iput v0, v2, Lcom/htc/text/util/HtcLinkify$LinkSpec;->end:I

    .line 380
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 383
    .end local v0           #end:I
    .end local v2           #spec:Lcom/htc/text/util/HtcLinkify$LinkSpec;
    .end local v3           #start:I
    .end local v4           #url:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static final gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 11
    .parameter
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/text/util/HtcLinkify$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 386
    .local p0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/text/util/HtcLinkify$LinkSpec;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 388
    .local v8, string:Ljava/lang/String;
    const/4 v1, 0x0

    .line 390
    .local v1, base:I
    :goto_0
    invoke-static {v8}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 393
    .local v7, start:I
    if-gez v7, :cond_1

    .line 417
    .end local v7           #start:I
    :cond_0
    return-void

    .line 397
    .restart local v7       #start:I
    :cond_1
    new-instance v6, Lcom/htc/text/util/HtcLinkify$LinkSpec;

    invoke-direct {v6}, Lcom/htc/text/util/HtcLinkify$LinkSpec;-><init>()V

    .line 398
    .local v6, spec:Lcom/htc/text/util/HtcLinkify$LinkSpec;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 399
    .local v5, length:I
    add-int v4, v7, v5

    .line 401
    .local v4, end:I
    add-int v9, v1, v7

    iput v9, v6, Lcom/htc/text/util/HtcLinkify$LinkSpec;->start:I

    .line 402
    add-int v9, v1, v4

    iput v9, v6, Lcom/htc/text/util/HtcLinkify$LinkSpec;->end:I

    .line 403
    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 404
    add-int/2addr v1, v4

    .line 406
    const/4 v3, 0x0

    .line 409
    .local v3, encodedAddress:Ljava/lang/String;
    :try_start_0
    const-string v9, "UTF-8"

    invoke-static {v0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 414
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "geo:0,0?q="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/htc/text/util/HtcLinkify$LinkSpec;->url:Ljava/lang/String;

    .line 415
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 410
    :catch_0
    move-exception v2

    .line 411
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private static final makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/htc/text/util/HtcLinkify$TransformFilter;)Ljava/lang/String;
    .locals 9
    .parameter "url"
    .parameter "prefixes"
    .parameter "m"
    .parameter "filter"

    .prologue
    const/4 v2, 0x0

    .line 335
    if-eqz p3, :cond_0

    .line 336
    invoke-interface {p3, p2, p0}, Lcom/htc/text/util/HtcLinkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 339
    :cond_0
    const/4 v7, 0x0

    .line 341
    .local v7, hasPrefix:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, p1

    if-ge v8, v0, :cond_1

    .line 342
    const/4 v1, 0x1

    aget-object v3, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 344
    const/4 v7, 0x1

    .line 347
    aget-object v4, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 356
    :cond_1
    if-nez v7, :cond_2

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 360
    :cond_2
    return-object p0

    .line 341
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private static final pruneOverlaps(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/text/util/HtcLinkify$LinkSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/text/util/HtcLinkify$LinkSpec;>;"
    new-instance v2, Lcom/htc/text/util/HtcLinkify$4;

    invoke-direct {v2}, Lcom/htc/text/util/HtcLinkify$4;-><init>()V

    .line 446
    .local v2, c:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/htc/text/util/HtcLinkify$LinkSpec;>;"
    invoke-static {p0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 448
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 449
    .local v4, len:I
    const/4 v3, 0x0

    .line 451
    .local v3, i:I
    :goto_0
    add-int/lit8 v6, v4, -0x1

    if-ge v3, v6, :cond_4

    .line 452
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/text/util/HtcLinkify$LinkSpec;

    .line 453
    .local v0, a:Lcom/htc/text/util/HtcLinkify$LinkSpec;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/text/util/HtcLinkify$LinkSpec;

    .line 454
    .local v1, b:Lcom/htc/text/util/HtcLinkify$LinkSpec;
    const/4 v5, -0x1

    .line 456
    .local v5, remove:I
    iget v6, v0, Lcom/htc/text/util/HtcLinkify$LinkSpec;->start:I

    iget v7, v1, Lcom/htc/text/util/HtcLinkify$LinkSpec;->start:I

    if-gt v6, v7, :cond_3

    iget v6, v0, Lcom/htc/text/util/HtcLinkify$LinkSpec;->end:I

    iget v7, v1, Lcom/htc/text/util/HtcLinkify$LinkSpec;->start:I

    if-le v6, v7, :cond_3

    .line 457
    iget v6, v1, Lcom/htc/text/util/HtcLinkify$LinkSpec;->end:I

    iget v7, v0, Lcom/htc/text/util/HtcLinkify$LinkSpec;->end:I

    if-gt v6, v7, :cond_1

    .line 458
    add-int/lit8 v5, v3, 0x1

    .line 465
    :cond_0
    :goto_1
    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 466
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 467
    add-int/lit8 v4, v4, -0x1

    .line 468
    goto :goto_0

    .line 459
    :cond_1
    iget v6, v0, Lcom/htc/text/util/HtcLinkify$LinkSpec;->end:I

    iget v7, v0, Lcom/htc/text/util/HtcLinkify$LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Lcom/htc/text/util/HtcLinkify$LinkSpec;->end:I

    iget v8, v1, Lcom/htc/text/util/HtcLinkify$LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_2

    .line 460
    add-int/lit8 v5, v3, 0x1

    goto :goto_1

    .line 461
    :cond_2
    iget v6, v0, Lcom/htc/text/util/HtcLinkify$LinkSpec;->end:I

    iget v7, v0, Lcom/htc/text/util/HtcLinkify$LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Lcom/htc/text/util/HtcLinkify$LinkSpec;->end:I

    iget v8, v1, Lcom/htc/text/util/HtcLinkify$LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_0

    .line 462
    move v5, v3

    goto :goto_1

    .line 473
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 474
    goto :goto_0

    .line 475
    .end local v0           #a:Lcom/htc/text/util/HtcLinkify$LinkSpec;
    .end local v1           #b:Lcom/htc/text/util/HtcLinkify$LinkSpec;
    .end local v5           #remove:I
    :cond_4
    return-void
.end method
