.class Lcom/google/android/googlequicksearchbox/ui/LocalSuggestionView;
.super Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;
.source "LocalSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/ui/LocalSuggestionView$ViewType;
    }
.end annotation


# instance fields
.field private mRatingBar:Landroid/widget/RatingBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method


# virtual methods
.method public bindAsSuggestion(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;Z)Z
    .locals 4
    .parameter "context"
    .parameter "suggestion"
    .parameter "userQuery"
    .parameter "showRemoveFromHistory"

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->bindAsSuggestion(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    :goto_0
    return v1

    .line 65
    :cond_0
    invoke-static {p2}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->isBusinessListing(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    invoke-static {p2}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->getBusinessRating(Lcom/google/android/googlequicksearchbox/Suggestion;)F

    move-result v0

    .line 67
    .local v0, rating:F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/LocalSuggestionView;->mRatingBar:Landroid/widget/RatingBar;

    const/high16 v3, 0x3f00

    div-float v3, v0, v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setProgress(I)V

    .line 69
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/LocalSuggestionView;->mRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v2, v1}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 76
    .end local v0           #rating:F
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 71
    .restart local v0       #rating:F
    :cond_1
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/LocalSuggestionView;->mRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v1, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_1

    .line 74
    .end local v0           #rating:F
    :cond_2
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/LocalSuggestionView;->mRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v1, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->onFinishInflate()V

    .line 55
    const v0, 0x7f100009

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/LocalSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/LocalSuggestionView;->mRatingBar:Landroid/widget/RatingBar;

    .line 56
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/LocalSuggestionView;->mRatingBar:Landroid/widget/RatingBar;

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setStepSize(F)V

    .line 57
    return-void
.end method
