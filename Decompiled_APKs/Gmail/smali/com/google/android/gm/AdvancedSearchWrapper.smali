.class public Lcom/google/android/gm/AdvancedSearchWrapper;
.super Ljava/lang/Object;
.source "AdvancedSearchWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lcom/google/android/gm/FilterPopup$SearchWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/AdvancedSearchWrapper$Callback;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDismissed:Z

.field private mFilterButton:Landroid/widget/Button;

.field public mLabel:Ljava/lang/String;

.field private mPopup:Lcom/google/android/gm/FilterPopup;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSuggestionsAdapter:Landroid/widget/CursorAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/RestrictedActivity;Lcom/google/android/gm/AdvancedSearchWrapper$Callback;Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "callback"
    .parameter "fullView"
    .parameter "context"
    .parameter "label"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p4, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mContext:Landroid/content/Context;

    .line 41
    const v0, 0x7f0f008f

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mFilterButton:Landroid/widget/Button;

    .line 42
    const v0, 0x7f0f008d

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mSearchView:Landroid/widget/SearchView;

    .line 44
    iget-object v0, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mFilterButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mDismissed:Z

    .line 46
    invoke-virtual {p0, p5}, Lcom/google/android/gm/AdvancedSearchWrapper;->setLabel(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method private createFilterPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 61
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/persistence/Persistence;->getActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, account:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getSuggestionsAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    .line 64
    iget-object v0, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v7}, Landroid/widget/SearchView;->setSuggestionsAdapter(Landroid/widget/CursorAdapter;)V

    .line 65
    new-instance v0, Lcom/google/android/gm/FilterPopup;

    iget-object v1, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mFilterButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mLabel:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v4, v3, v7, v6}, Lcom/google/android/gm/provider/LabelManager;->getLabelList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)Lcom/google/android/gm/provider/LabelList;

    move-result-object v6

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/FilterPopup;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Lcom/google/android/gm/FilterPopup$SearchWrapper;Ljava/lang/String;Lcom/google/android/gm/provider/LabelList;)V

    iput-object v0, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mPopup:Lcom/google/android/gm/FilterPopup;

    .line 68
    iget-object v0, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mPopup:Lcom/google/android/gm/FilterPopup;

    invoke-virtual {v0}, Lcom/google/android/gm/FilterPopup;->show()V

    .line 69
    return-void
.end method


# virtual methods
.method public addToQuery(Ljava/lang/String;)V
    .locals 5
    .parameter "addition"

    .prologue
    const/4 v4, 0x0

    .line 73
    iget-object v0, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mSearchView:Landroid/widget/SearchView;

    const-string v1, "%s %s "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 74
    return-void
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mDismissed:Z

    if-nez v0, :cond_1

    .line 52
    invoke-direct {p0}, Lcom/google/android/gm/AdvancedSearchWrapper;->createFilterPopup()V

    .line 56
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mDismissed:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mDismissed:Z

    .line 57
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mPopup:Lcom/google/android/gm/FilterPopup;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mPopup:Lcom/google/android/gm/FilterPopup;

    invoke-virtual {v0}, Lcom/google/android/gm/FilterPopup;->dismiss()V

    goto :goto_0

    .line 56
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setSuggestionsAdapter(Landroid/widget/CursorAdapter;)V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mPopup:Lcom/google/android/gm/FilterPopup;

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mDismissed:Z

    .line 91
    return-void
.end method

.method public removeFromQuery(Ljava/lang/String;)V
    .locals 3
    .parameter "removal"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, query:Ljava/lang/String;
    const-string v1, " "

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mSearchView:Landroid/widget/SearchView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 81
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 5
    .parameter "label"

    .prologue
    .line 99
    if-eqz p1, :cond_1

    .line 100
    const-string v3, "(label|in):\\s*\\w*\\b"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 101
    .local v0, labelPattern:Ljava/util/regex/Pattern;
    iget-object v3, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, query:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 104
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 105
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 107
    iget-object v3, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 110
    .end local v1           #matcher:Ljava/util/regex/Matcher;
    :cond_0
    iput-object p1, p0, Lcom/google/android/gm/AdvancedSearchWrapper;->mLabel:Ljava/lang/String;

    .line 112
    .end local v0           #labelPattern:Ljava/util/regex/Pattern;
    .end local v2           #query:Ljava/lang/String;
    :cond_1
    return-void
.end method
