.class public Lcom/google/android/finsky/activities/DetailsTextViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "DetailsTextViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/DetailsTextViewBinder$SelfishUrlSpan;
    }
.end annotation


# instance fields
.field private mContentLayout:Lcom/google/android/finsky/layout/DetailsTextLayout;

.field private mContentView:Landroid/widget/TextView;

.field private mDefaultMaxLines:I

.field private mExpansionState:I

.field private mFooterIcon:Landroid/widget/ImageView;

.field private mFullHeight:I

.field private mShouldScrollWhenCollapsing:Z

.field private mTruncatedHeight:I

.field private mUrlSpanClicked:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mExpansionState:I

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mFullHeight:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/finsky/activities/DetailsTextViewBinder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mFullHeight:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mTruncatedHeight:I

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/finsky/activities/DetailsTextViewBinder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mTruncatedHeight:I

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mFooterIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->configureContent()V

    return-void
.end method

.method static synthetic access$402(Lcom/google/android/finsky/activities/DetailsTextViewBinder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mUrlSpanClicked:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->handleClick()V

    return-void
.end method

.method private collapseContent(Z)V
    .locals 8
    .parameter "isUserOperation"

    .prologue
    .line 229
    if-eqz p1, :cond_1

    iget-boolean v6, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mShouldScrollWhenCollapsing:Z

    if-eqz v6, :cond_1

    .line 234
    const/4 v5, 0x0

    .line 235
    .local v5, scrollParent:Lcom/google/android/finsky/layout/ObservableScrollView;
    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    .line 236
    .local v0, contentTopOffset:I
    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 238
    .local v3, parent:Landroid/view/View;
    :goto_0
    instance-of v6, v3, Lcom/google/android/finsky/layout/ObservableScrollView;

    if-eqz v6, :cond_2

    move-object v5, v3

    .line 239
    check-cast v5, Lcom/google/android/finsky/layout/ObservableScrollView;

    .line 250
    :cond_0
    if-eqz v5, :cond_1

    .line 251
    invoke-virtual {v5}, Lcom/google/android/finsky/layout/ObservableScrollView;->getScrollY()I

    move-result v1

    .line 254
    .local v1, currentViewportTop:I
    if-ge v0, v1, :cond_1

    .line 256
    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/ObservableScrollView;->getHeight()I

    move-result v7

    add-int/2addr v7, v1

    if-ge v6, v7, :cond_3

    .line 261
    iget v6, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mTruncatedHeight:I

    iget v7, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mFullHeight:I

    sub-int v4, v6, v7

    .line 267
    .local v4, scrollDelta:I
    :goto_1
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Lcom/google/android/finsky/layout/ObservableScrollView;->scrollBy(II)V

    .line 273
    .end local v0           #contentTopOffset:I
    .end local v1           #currentViewportTop:I
    .end local v3           #parent:Landroid/view/View;
    .end local v4           #scrollDelta:I
    .end local v5           #scrollParent:Lcom/google/android/finsky/layout/ObservableScrollView;
    :cond_1
    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentLayout:Lcom/google/android/finsky/layout/DetailsTextLayout;

    iget v7, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mDefaultMaxLines:I

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/layout/DetailsTextLayout;->setCurrentMaxLines(I)V

    .line 274
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->showMoreIndicator()V

    .line 276
    const/4 v6, 0x1

    iput v6, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mExpansionState:I

    .line 277
    return-void

    .line 242
    .restart local v0       #contentTopOffset:I
    .restart local v3       #parent:Landroid/view/View;
    .restart local v5       #scrollParent:Lcom/google/android/finsky/layout/ObservableScrollView;
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v0, v6

    .line 243
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 244
    .local v2, nextParent:Landroid/view/ViewParent;
    instance-of v6, v2, Landroid/view/View;

    if-eqz v6, :cond_0

    move-object v3, v2

    .line 247
    check-cast v3, Landroid/view/View;

    .line 248
    goto :goto_0

    .line 265
    .end local v2           #nextParent:Landroid/view/ViewParent;
    .restart local v1       #currentViewportTop:I
    :cond_3
    sub-int v4, v0, v1

    .restart local v4       #scrollDelta:I
    goto :goto_1
.end method

.method private configureContent()V
    .locals 2

    .prologue
    .line 181
    iget v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mExpansionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->expandContent()V

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentLayout:Lcom/google/android/finsky/layout/DetailsTextLayout;

    new-instance v1, Lcom/google/android/finsky/activities/DetailsTextViewBinder$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder$2;-><init>(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DetailsTextLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentView:Landroid/widget/TextView;

    new-instance v1, Lcom/google/android/finsky/activities/DetailsTextViewBinder$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder$3;-><init>(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->collapseContent(Z)V

    goto :goto_0
.end method

.method private expandContent()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentLayout:Lcom/google/android/finsky/layout/DetailsTextLayout;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DetailsTextLayout;->setCurrentMaxLines(I)V

    .line 224
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->showLessIndicator()V

    .line 225
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mExpansionState:I

    .line 226
    return-void
.end method

.method private handleClick()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 206
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->scrollTo(II)V

    .line 208
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mUrlSpanClicked:Z

    if-eqz v0, :cond_0

    .line 210
    iput-boolean v1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mUrlSpanClicked:Z

    .line 219
    :goto_0
    return-void

    .line 214
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mExpansionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 215
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->collapseContent(Z)V

    goto :goto_0

    .line 217
    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->expandContent()V

    goto :goto_0
.end method

.method private selfishifyUrlSpans(Ljava/lang/CharSequence;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 126
    instance-of v0, p1, Landroid/text/Spannable;

    if-nez v0, :cond_1

    .line 137
    :cond_0
    return-void

    .line 129
    :cond_1
    check-cast p1, Landroid/text/Spannable;

    .line 130
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/style/URLSpan;

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 131
    array-length v3, v0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 132
    invoke-interface {p1, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 133
    invoke-interface {p1, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 134
    invoke-interface {p1, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 135
    new-instance v7, Lcom/google/android/finsky/activities/DetailsTextViewBinder$SelfishUrlSpan;

    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, p0, v4}, Lcom/google/android/finsky/activities/DetailsTextViewBinder$SelfishUrlSpan;-><init>(Lcom/google/android/finsky/activities/DetailsTextViewBinder;Ljava/lang/String;)V

    invoke-interface {p1, v7, v5, v6, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private showLessIndicator()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mFooterIcon:Landroid/widget/ImageView;

    const v1, 0x7f020094

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 178
    return-void
.end method

.method private showMoreIndicator()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mFooterIcon:Landroid/widget/ImageView;

    const v1, 0x7f020090

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ILjava/lang/CharSequence;Landroid/os/Bundle;)V
    .locals 3
    .parameter "view"
    .parameter "doc"
    .parameter "headerStringId"
    .parameter "content"
    .parameter "savedState"

    .prologue
    const/4 v2, -0x1

    .line 72
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;I)V

    .line 74
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    const v1, 0x7f0800fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DetailsTextLayout;

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentLayout:Lcom/google/android/finsky/layout/DetailsTextLayout;

    .line 82
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    const v1, 0x7f0800fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentView:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    const v1, 0x7f0800fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mFooterIcon:Landroid/widget/ImageView;

    .line 87
    invoke-direct {p0, p4}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->selfishifyUrlSpans(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iput v2, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mFullHeight:I

    .line 92
    iput v2, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mTruncatedHeight:I

    .line 94
    iget v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mExpansionState:I

    if-gez v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p5, v0, v1}, Lcom/google/android/finsky/utils/ExpandableUtils;->getSavedExpansionState(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mExpansionState:I

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentLayout:Lcom/google/android/finsky/layout/DetailsTextLayout;

    iget v1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mDefaultMaxLines:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DetailsTextLayout;->setDefaultMaxLines(I)V

    .line 101
    iget v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mExpansionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 102
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentLayout:Lcom/google/android/finsky/layout/DetailsTextLayout;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DetailsTextLayout;->setCurrentMaxLines(I)V

    .line 103
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->showLessIndicator()V

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentLayout:Lcom/google/android/finsky/layout/DetailsTextLayout;

    new-instance v1, Lcom/google/android/finsky/activities/DetailsTextViewBinder$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder$1;-><init>(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DetailsTextLayout;->setMetricsListener(Lcom/google/android/finsky/layout/DetailsTextLayout$MetricsListener;)V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;I)V
    .locals 6
    .parameter "context"
    .parameter "api"
    .parameter "navManager"
    .parameter "defaultMaxLines"

    .prologue
    .line 61
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;IZ)V

    .line 62
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;IZ)V
    .locals 0
    .parameter "context"
    .parameter "api"
    .parameter "navManager"
    .parameter "defaultMaxLines"
    .parameter "shouldScrollWhenCollapsing"

    .prologue
    .line 65
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 66
    iput p4, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mDefaultMaxLines:I

    .line 67
    iput-boolean p5, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mShouldScrollWhenCollapsing:Z

    .line 68
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mExpansionState:I

    invoke-static {p1, v0, v1}, Lcom/google/android/finsky/utils/ExpandableUtils;->saveExpansionState(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 284
    :cond_0
    return-void
.end method

.method public setDefaultMaxLines(I)V
    .locals 1
    .parameter "defaultMaxLines"

    .prologue
    .line 287
    iput p1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mDefaultMaxLines:I

    .line 288
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentLayout:Lcom/google/android/finsky/layout/DetailsTextLayout;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentLayout:Lcom/google/android/finsky/layout/DetailsTextLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/DetailsTextLayout;->setDefaultMaxLines(I)V

    .line 291
    :cond_0
    return-void
.end method
