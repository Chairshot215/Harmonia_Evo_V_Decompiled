.class public Lcom/google/android/finsky/layout/ReviewReplyLayout;
.super Landroid/widget/LinearLayout;
.source "ReviewReplyLayout.java"


# instance fields
.field private mIsExpanded:Z

.field mReplyHeader:Landroid/widget/TextView;

.field mReplyText:Landroid/widget/TextView;

.field mReplyToggle:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/ReviewReplyLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/ReviewReplyLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mIsExpanded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/finsky/layout/ReviewReplyLayout;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mIsExpanded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/ReviewReplyLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->showMoreIndicator()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/ReviewReplyLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->showLessIndicator()V

    return-void
.end method

.method private disableToggle()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mReplyToggle:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mReplyText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method private enableToggle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    iput-boolean v1, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mIsExpanded:Z

    .line 91
    iget-object v0, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mReplyToggle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mReplyText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    new-instance v0, Lcom/google/android/finsky/layout/ReviewReplyLayout$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/ReviewReplyLayout$1;-><init>(Lcom/google/android/finsky/layout/ReviewReplyLayout;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method

.method private showLessIndicator()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mReplyToggle:Landroid/widget/ImageView;

    const v1, 0x7f020094

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    return-void
.end method

.method private showMoreIndicator()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mReplyToggle:Landroid/widget/ImageView;

    const v1, 0x7f020090

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 39
    const v0, 0x7f0801f4

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mReplyHeader:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f0801f5

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mReplyText:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0801f6

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mReplyToggle:Landroid/widget/ImageView;

    .line 42
    return-void
.end method

.method public setReviewInfo(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/remoting/protos/Rev$Review;)V
    .locals 10
    .parameter "doc"
    .parameter "review"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 45
    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyText()Z

    move-result v3

    if-nez v3, :cond_0

    .line 46
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->setVisibility(I)V

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, docCreator:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyTimestampMsec()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 52
    new-instance v3, Ljava/util/Date;

    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getReplyTimestampMsec()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3}, Lcom/google/android/finsky/utils/DateUtils;->formatShortDisplayDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, formattedReplyDate:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTimestampMsec()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTimestampMsec()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getReplyTimestampMsec()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 56
    invoke-direct {p0}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->enableToggle()V

    .line 57
    invoke-direct {p0}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->showMoreIndicator()V

    .line 58
    iget-object v3, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mReplyHeader:Landroid/widget/TextView;

    const v4, 0x7f070166

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v1, v5, v7

    aput-object v2, v5, v8

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .end local v2           #formattedReplyDate:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mReplyText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getReplyText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p0, v7}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->setVisibility(I)V

    .line 73
    return-void

    .line 61
    .restart local v2       #formattedReplyDate:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->disableToggle()V

    .line 62
    iget-object v3, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mReplyHeader:Landroid/widget/TextView;

    const v4, 0x7f070164

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v1, v5, v7

    aput-object v2, v5, v8

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 66
    .end local v2           #formattedReplyDate:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->disableToggle()V

    .line 67
    iget-object v3, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mReplyHeader:Landroid/widget/TextView;

    const v4, 0x7f070165

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
