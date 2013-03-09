.class public Lcom/google/android/finsky/layout/RecommendationsBucketEntry;
.super Lcom/google/android/finsky/layout/OverviewBucketEntry;
.source "RecommendationsBucketEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/RecommendationsBucketEntry$OnDismissalListener;
    }
.end annotation


# instance fields
.field private mDismissalButton:Landroid/view/View;

.field private mDismissedOverlay:Landroid/view/View;

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mReason:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 32
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/OverviewBucketEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/RecommendationsBucketEntry;)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDocument:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method private clearState()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDismissedOverlay:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDismissalButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iput-object v1, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 97
    iget-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mReason:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDismissalButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;ZLandroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "mainDocument"
    .parameter "document"
    .parameter "bitmapLoader"
    .parameter "isLastRow"
    .parameter "clickListener"

    .prologue
    .line 55
    invoke-super/range {p0 .. p5}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;ZLandroid/view/View$OnClickListener;)V

    .line 56
    iput-object p2, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 57
    iget-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mReason:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getRecommendationReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method

.method public configureDismissal(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/layout/RecommendationsBucketEntry$OnDismissalListener;Z)V
    .locals 4
    .parameter "dfeApi"
    .parameter "listener"
    .parameter "isDismissed"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 62
    iget-object v3, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDismissedOverlay:Landroid/view/View;

    if-eqz p3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDismissalButton:Landroid/view/View;

    if-eqz p3, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDismissalButton:Landroid/view/View;

    new-instance v1, Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1;-><init>(Lcom/google/android/finsky/layout/RecommendationsBucketEntry;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/layout/RecommendationsBucketEntry$OnDismissalListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void

    :cond_0
    move v0, v2

    .line 62
    goto :goto_0

    :cond_1
    move v2, v1

    .line 63
    goto :goto_1
.end method

.method public dismissCurrentEntry()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDismissedOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDismissalButton:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    return-void
.end method

.method public getCurrentDocId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDocument:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->onFinishInflate()V

    .line 47
    const v0, 0x7f0801e1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDismissalButton:Landroid/view/View;

    .line 48
    const v0, 0x7f080163

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mReason:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0801e2

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDismissedOverlay:Landroid/view/View;

    .line 50
    return-void
.end method

.method public setMockDocument(I)V
    .locals 0
    .parameter "backend"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setMockDocument(I)V

    .line 84
    invoke-direct {p0}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->clearState()V

    .line 85
    return-void
.end method

.method public setNoDocument()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setNoDocument()V

    .line 90
    invoke-direct {p0}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->clearState()V

    .line 91
    return-void
.end method
