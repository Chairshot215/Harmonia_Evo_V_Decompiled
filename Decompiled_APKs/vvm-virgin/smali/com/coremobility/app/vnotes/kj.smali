.class public final Lcom/coremobility/app/vnotes/kj;
.super Landroid/text/style/ClickableSpan;


# instance fields
.field private a:Lcom/coremobility/app/vnotes/kl;

.field private b:[Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/coremobility/app/vnotes/kl;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p1, p0, Lcom/coremobility/app/vnotes/kj;->a:Lcom/coremobility/app/vnotes/kl;

    iput-object p2, p0, Lcom/coremobility/app/vnotes/kj;->b:[Ljava/lang/String;

    iput-object p3, p0, Lcom/coremobility/app/vnotes/kj;->c:Ljava/lang/String;

    return-void
.end method

.method private static final a(Landroid/widget/TextView;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_1
    return-void
.end method

.method private static final a(Ljava/util/ArrayList;)V
    .locals 8

    const/4 v3, -0x1

    new-instance v0, Lcom/coremobility/app/vnotes/kk;

    invoke-direct {v0}, Lcom/coremobility/app/vnotes/kk;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v4, v0

    :goto_0
    add-int/lit8 v0, v4, -0x1

    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/km;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremobility/app/vnotes/km;

    iget v5, v0, Lcom/coremobility/app/vnotes/km;->c:I

    iget v6, v1, Lcom/coremobility/app/vnotes/km;->c:I

    if-gt v5, v6, :cond_2

    iget v5, v0, Lcom/coremobility/app/vnotes/km;->d:I

    iget v6, v1, Lcom/coremobility/app/vnotes/km;->c:I

    if-le v5, v6, :cond_2

    iget v5, v1, Lcom/coremobility/app/vnotes/km;->d:I

    iget v6, v0, Lcom/coremobility/app/vnotes/km;->d:I

    if-gt v5, v6, :cond_0

    add-int/lit8 v0, v2, 0x1

    :goto_1
    if-eq v0, v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    :cond_0
    iget v5, v0, Lcom/coremobility/app/vnotes/km;->d:I

    iget v6, v0, Lcom/coremobility/app/vnotes/km;->c:I

    sub-int/2addr v5, v6

    iget v6, v1, Lcom/coremobility/app/vnotes/km;->d:I

    iget v7, v1, Lcom/coremobility/app/vnotes/km;->c:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_1

    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    :cond_1
    iget v5, v0, Lcom/coremobility/app/vnotes/km;->d:I

    iget v0, v0, Lcom/coremobility/app/vnotes/km;->c:I

    sub-int v0, v5, v0

    iget v5, v1, Lcom/coremobility/app/vnotes/km;->d:I

    iget v1, v1, Lcom/coremobility/app/vnotes/km;->c:I

    sub-int v1, v5, v1

    if-ge v0, v1, :cond_4

    move v0, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method private static final a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 5

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    if-eqz p4, :cond_1

    invoke-interface {p4, p1, v1, v2}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    new-instance v3, Lcom/coremobility/app/vnotes/km;

    invoke-direct {v3}, Lcom/coremobility/app/vnotes/km;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p5, v0, v4}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/coremobility/app/vnotes/km;->a:Ljava/lang/String;

    iput-object p3, v3, Lcom/coremobility/app/vnotes/km;->b:[Ljava/lang/String;

    iput v1, v3, Lcom/coremobility/app/vnotes/km;->c:I

    iput v2, v3, Lcom/coremobility/app/vnotes/km;->d:I

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static a(Landroid/text/Spannable;Lcom/coremobility/app/vnotes/kl;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/style/URLSpan;

    invoke-interface {p0, v6, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    aget-object v2, v0, v1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/coremobility/app/vnotes/kn;->f:Ljava/util/regex/Pattern;

    new-array v3, v7, [Ljava/lang/String;

    const-string v1, "tel:"

    aput-object v1, v3, v6

    sget-object v4, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    sget-object v5, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/coremobility/app/vnotes/kj;->a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    invoke-static {v0}, Lcom/coremobility/app/vnotes/kj;->a(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    move v0, v6

    :goto_1
    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/km;

    new-instance v2, Lcom/coremobility/app/vnotes/kj;

    iget-object v3, v0, Lcom/coremobility/app/vnotes/km;->b:[Ljava/lang/String;

    iget-object v4, v0, Lcom/coremobility/app/vnotes/km;->a:Ljava/lang/String;

    invoke-direct {v2, p1, v3, v4}, Lcom/coremobility/app/vnotes/kj;-><init>(Lcom/coremobility/app/vnotes/kl;[Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v0, Lcom/coremobility/app/vnotes/km;->c:I

    iget v0, v0, Lcom/coremobility/app/vnotes/km;->d:I

    const/16 v4, 0x21

    invoke-interface {p0, v2, v3, v0, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_2
    move v0, v7

    goto :goto_1
.end method

.method public static final a(Landroid/widget/TextView;Lcom/coremobility/app/vnotes/kl;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v3, v0, Landroid/text/Spannable;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1}, Lcom/coremobility/app/vnotes/kj;->a(Landroid/text/Spannable;Lcom/coremobility/app/vnotes/kl;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/coremobility/app/vnotes/kj;->a(Landroid/widget/TextView;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coremobility/app/vnotes/kj;->a(Landroid/text/Spannable;Lcom/coremobility/app/vnotes/kl;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Lcom/coremobility/app/vnotes/kj;->a(Landroid/widget/TextView;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/kj;->a:Lcom/coremobility/app/vnotes/kl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/kj;->a:Lcom/coremobility/app/vnotes/kl;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/kj;->b:[Ljava/lang/String;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/kj;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/coremobility/app/vnotes/kl;->a([Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
