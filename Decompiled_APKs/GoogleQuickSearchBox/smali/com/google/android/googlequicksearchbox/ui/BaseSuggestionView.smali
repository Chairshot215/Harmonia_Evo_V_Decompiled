.class public abstract Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;
.super Landroid/widget/RelativeLayout;
.source "BaseSuggestionView.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/ui/SuggestionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView$1;,
        Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView$ClickListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

.field private mBoundSuggestion:Lcom/google/android/googlequicksearchbox/Suggestion;

.field private mDebugText:Landroid/widget/TextView;

.field private mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

.field protected mIcon1:Landroid/widget/ImageView;

.field protected mIcon2:Landroid/widget/ImageView;

.field private mIndex:I

.field private mQsbContext:Lcom/google/android/googlequicksearchbox/QsbContext;

.field protected mText1:Landroid/widget/TextView;

.field protected mText2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method private setDebugString(Ljava/lang/String;)V
    .locals 3
    .parameter "debugString"

    .prologue
    .line 113
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mDebugText:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 116
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040012

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mDebugText:Landroid/widget/TextView;

    .line 117
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mDebugText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->addView(Landroid/view/View;)V

    .line 119
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mDebugText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method


# virtual methods
.method public bindAdapter(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;I)V
    .locals 0
    .parameter "adapter"
    .parameter "index"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    .line 104
    iput p2, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mIndex:I

    .line 105
    return-void
.end method

.method public bindAsSuggestion(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;Z)Z
    .locals 3
    .parameter "qsbContext"
    .parameter "suggestion"
    .parameter "userQuery"
    .parameter "showRemoveFromHistory"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mQsbContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, newlyBound:Z
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mBoundSuggestion:Lcom/google/android/googlequicksearchbox/Suggestion;

    if-eq v1, p2, :cond_0

    .line 90
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    invoke-interface {v1, p2}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->boundSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;)V

    .line 91
    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView$ClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView$ClickListener;-><init>(Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView$1;)V

    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mBoundSuggestion:Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 93
    const/4 v0, 0x1

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->showSuggestionDebugInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    invoke-interface {v1, p2}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->getSuggestionDebugInfo(Lcom/google/android/googlequicksearchbox/Suggestion;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->setDebugString(Ljava/lang/String;)V

    .line 98
    :cond_1
    return v0
.end method

.method protected getGrouping()Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mIndex:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->getListEntry(J)Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->getGrouping()Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mIndex:I

    return v0
.end method

.method public getListItem()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mIndex:I

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getQsbContext()Lcom/google/android/googlequicksearchbox/QsbContext;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mQsbContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    return-object v0
.end method

.method protected getSuggestionFormatter()Lcom/google/android/googlequicksearchbox/SuggestionFormatter;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->getSuggestionFormatter()Lcom/google/android/googlequicksearchbox/SuggestionFormatter;

    move-result-object v0

    return-object v0
.end method

.method public getText1()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mText1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 69
    const v0, 0x7f10000a

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mText1:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f100008

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mText2:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f100006

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mIcon1:Landroid/widget/ImageView;

    .line 72
    const v0, 0x7f100007

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mIcon2:Landroid/widget/ImageView;

    .line 73
    return-void
.end method

.method protected onRemoveFromHistoryClicked()V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mIndex:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->onSuggestionRemoveFromHistoryClicked(J)V

    .line 181
    :cond_0
    return-void
.end method

.method protected onSuggestionClicked()V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mIndex:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->onSuggestionClicked(J)V

    .line 175
    :cond_0
    return-void
.end method

.method protected onSuggestionQueryRefineClicked()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mIndex:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->onSuggestionQueryRefineClicked(J)V

    .line 187
    :cond_0
    return-void
.end method

.method public setDebugging(Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;)V
    .locals 0
    .parameter "debugging"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    .line 110
    return-void
.end method

.method public setFadedOut(Z)V
    .locals 1
    .parameter "fadedOut"

    .prologue
    .line 81
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->setEnabled(Z)V

    .line 82
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setText1(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mText1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    return-void
.end method

.method protected setText2(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mText2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mText2:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mText2:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
