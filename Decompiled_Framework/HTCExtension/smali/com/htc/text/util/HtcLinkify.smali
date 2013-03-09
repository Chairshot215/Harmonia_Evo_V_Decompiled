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

.field private static SUPPORT_PRIME:Z = false

.field public static final WEB_URLS:I = 0x1

.field public static final sPhoneNumberMatchFilter:Lcom/htc/text/util/HtcLinkify$MatchFilter;

.field public static final sPhoneNumberTransformFilter:Lcom/htc/text/util/HtcLinkify$TransformFilter;

.field public static final sUrlMatchFilter:Lcom/htc/text/util/HtcLinkify$MatchFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/htc/text/util/HtcLinkify;->SUPPORT_PRIME:Z

    const-string v0, "ro.da1.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/htc/text/util/HtcLinkify;->SUPPORT_PRIME:Z

    new-instance v0, Lcom/htc/text/util/HtcLinkify$1;

    invoke-direct {v0}, Lcom/htc/text/util/HtcLinkify$1;-><init>()V

    sput-object v0, Lcom/htc/text/util/HtcLinkify;->sUrlMatchFilter:Lcom/htc/text/util/HtcLinkify$MatchFilter;

    new-instance v0, Lcom/htc/text/util/HtcLinkify$2;

    invoke-direct {v0}, Lcom/htc/text/util/HtcLinkify$2;-><init>()V

    sput-object v0, Lcom/htc/text/util/HtcLinkify;->sPhoneNumberMatchFilter:Lcom/htc/text/util/HtcLinkify$MatchFilter;

    new-instance v0, Lcom/htc/text/util/HtcLinkify$3;

    invoke-direct {v0}, Lcom/htc/text/util/HtcLinkify$3;-><init>()V

    sput-object v0, Lcom/htc/text/util/HtcLinkify;->sPhoneNumberTransformFilter:Lcom/htc/text/util/HtcLinkify$TransformFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final addLinkMovementMethod(Landroid/widget/TextView;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_1
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/htc/text/util/HtcLinkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Lcom/htc/text/util/HtcLinkify$MatchFilter;Lcom/htc/text/util/HtcLinkify$TransformFilter;)V

    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Lcom/htc/text/util/HtcLinkify$MatchFilter;Lcom/htc/text/util/HtcLinkify$TransformFilter;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/htc/text/util/HtcLinkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Lcom/htc/text/util/HtcLinkify$MatchFilter;Lcom/htc/text/util/HtcLinkify$TransformFilter;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/htc/text/util/HtcLinkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method public static final addLinks(Landroid/text/Spannable;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/htc/text/util/HtcLinkify;->addLinks(Landroid/text/Spannable;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static final addLinks(Landroid/text/Spannable;ILjava/lang/String;)Z
    .locals 10

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {p0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/URLSpan;

    array-length v1, v9

    add-int/lit8 v6, v1, -0x1

    :goto_1
    if-ltz v6, :cond_1

    aget-object v1, v9, v6

    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

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

    :cond_2
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

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

    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

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

    :cond_4
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    invoke-static {v0, p0}, Lcom/htc/text/util/HtcLinkify;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    :cond_5
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_6

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

    :cond_6
    invoke-static {v0}, Lcom/htc/text/util/HtcLinkify;->pruneOverlaps(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/text/util/HtcLinkify$LinkSpec;

    iget-object v1, v8, Lcom/htc/text/util/HtcLinkify$LinkSpec;->url:Ljava/lang/String;

    iget v2, v8, Lcom/htc/text/util/HtcLinkify$LinkSpec;->start:I

    iget v3, v8, Lcom/htc/text/util/HtcLinkify$LinkSpec;->end:I

    invoke-static {v1, v2, v3, p0, p2}, Lcom/htc/text/util/HtcLinkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/htc/text/util/HtcLinkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Lcom/htc/text/util/HtcLinkify$MatchFilter;Lcom/htc/text/util/HtcLinkify$TransformFilter;)Z

    move-result v0

    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Lcom/htc/text/util/HtcLinkify$MatchFilter;Lcom/htc/text/util/HtcLinkify$TransformFilter;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_2

    const-string v4, ""

    :goto_0
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    invoke-interface {p3, p0, v5, v1}, Lcom/htc/text/util/HtcLinkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    aput-object v4, v8, v9

    invoke-static {v7, v8, v3, p4}, Lcom/htc/text/util/HtcLinkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/htc/text/util/HtcLinkify$TransformFilter;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5, v1, p0}, Lcom/htc/text/util/HtcLinkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    return v2
.end method

.method public static final addLinks(Landroid/widget/TextView;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/htc/text/util/HtcLinkify;->addLinks(Landroid/widget/TextView;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static final addLinks(Landroid/widget/TextView;ILjava/lang/String;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v4, v1, Landroid/text/Spannable;

    if-eqz v4, :cond_2

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, p1, p2}, Lcom/htc/text/util/HtcLinkify;->addLinks(Landroid/text/Spannable;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0}, Lcom/htc/text/util/HtcLinkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    move v2, v3

    goto :goto_0

    :cond_2
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/htc/text/util/HtcLinkify;->addLinks(Landroid/text/Spannable;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0}, Lcom/htc/text/util/HtcLinkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v3

    goto :goto_0
.end method

.method public static final addLinksWithEvent(Landroid/widget/TextView;ILjava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/htc/text/util/HtcLinkify;->addLinks(Landroid/widget/TextView;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static final applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/text/util/HtcLinkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;Ljava/lang/String;)V

    return-void
.end method

.method private static final applyLink(Ljava/lang/String;IILandroid/text/Spannable;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/htc/text/style/HtcURLSpan;

    sget-boolean v1, Lcom/htc/text/util/HtcLinkify;->SUPPORT_PRIME:Z

    invoke-direct {v0, p0, p4, v1}, Lcom/htc/text/style/HtcURLSpan;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0x21

    invoke-interface {p3, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static final gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcom/htc/text/util/HtcLinkify$MatchFilter;Lcom/htc/text/util/HtcLinkify$TransformFilter;)V
    .locals 6
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

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    if-eqz p4, :cond_1

    invoke-interface {p4, p1, v3, v0}, Lcom/htc/text/util/HtcLinkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    new-instance v2, Lcom/htc/text/util/HtcLinkify$LinkSpec;

    invoke-direct {v2}, Lcom/htc/text/util/HtcLinkify$LinkSpec;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3, v1, p5}, Lcom/htc/text/util/HtcLinkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/htc/text/util/HtcLinkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/text/util/HtcLinkify$LinkSpec;->url:Ljava/lang/String;

    iput v3, v2, Lcom/htc/text/util/HtcLinkify$LinkSpec;->start:I

    iput v0, v2, Lcom/htc/text/util/HtcLinkify$LinkSpec;->end:I

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static final gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 11
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

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    :goto_0
    invoke-static {v8}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v6, Lcom/htc/text/util/HtcLinkify$LinkSpec;

    invoke-direct {v6}, Lcom/htc/text/util/HtcLinkify$LinkSpec;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int v4, v7, v5

    add-int v9, v1, v7

    iput v9, v6, Lcom/htc/text/util/HtcLinkify$LinkSpec;->start:I

    add-int v9, v1, v4

    iput v9, v6, Lcom/htc/text/util/HtcLinkify$LinkSpec;->end:I

    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v1, v4

    const/4 v3, 0x0

    :try_start_0
    const-string v9, "UTF-8"

    invoke-static {v0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

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

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static final makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/htc/text/util/HtcLinkify$TransformFilter;)Ljava/lang/String;
    .locals 9

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p3, p2, p0}, Lcom/htc/text/util/HtcLinkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    array-length v0, p1

    if-ge v8, v0, :cond_1

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

    const/4 v7, 0x1

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

    :cond_1
    if-nez v7, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private static final pruneOverlaps(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/text/util/HtcLinkify$LinkSpec;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Lcom/htc/text/util/HtcLinkify$4;

    invoke-direct {v2}, Lcom/htc/text/util/HtcLinkify$4;-><init>()V

    invoke-static {p0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v6, v4, -0x1

    if-ge v3, v6, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/text/util/HtcLinkify$LinkSpec;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/text/util/HtcLinkify$LinkSpec;

    const/4 v5, -0x1

    iget v6, v0, Lcom/htc/text/util/HtcLinkify$LinkSpec;->start:I

    iget v7, v1, Lcom/htc/text/util/HtcLinkify$LinkSpec;->start:I

    if-gt v6, v7, :cond_3

    iget v6, v0, Lcom/htc/text/util/HtcLinkify$LinkSpec;->end:I

    iget v7, v1, Lcom/htc/text/util/HtcLinkify$LinkSpec;->start:I

    if-le v6, v7, :cond_3

    iget v6, v1, Lcom/htc/text/util/HtcLinkify$LinkSpec;->end:I

    iget v7, v0, Lcom/htc/text/util/HtcLinkify$LinkSpec;->end:I

    if-gt v6, v7, :cond_1

    add-int/lit8 v5, v3, 0x1

    :cond_0
    :goto_1
    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    iget v6, v0, Lcom/htc/text/util/HtcLinkify$LinkSpec;->end:I

    iget v7, v0, Lcom/htc/text/util/HtcLinkify$LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Lcom/htc/text/util/HtcLinkify$LinkSpec;->end:I

    iget v8, v1, Lcom/htc/text/util/HtcLinkify$LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_2

    add-int/lit8 v5, v3, 0x1

    goto :goto_1

    :cond_2
    iget v6, v0, Lcom/htc/text/util/HtcLinkify$LinkSpec;->end:I

    iget v7, v0, Lcom/htc/text/util/HtcLinkify$LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Lcom/htc/text/util/HtcLinkify$LinkSpec;->end:I

    iget v8, v1, Lcom/htc/text/util/HtcLinkify$LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_0

    move v5, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
