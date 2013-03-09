.class public abstract Lcom/google/android/googlequicksearchbox/SuggestionFormatter;
.super Ljava/lang/Object;
.source "SuggestionFormatter.java"


# instance fields
.field private final mSpanFactory:Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;


# direct methods
.method protected constructor <init>(Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;)V
    .locals 0
    .parameter "spanFactory"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionFormatter;->mSpanFactory:Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;

    .line 31
    return-void
.end method

.method private setSpans(Landroid/text/Spannable;II[Ljava/lang/Object;)V
    .locals 5
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "spans"

    .prologue
    .line 53
    move-object v0, p4

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 54
    .local v3, span:Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-interface {p1, v3, p2, p3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v3           #span:Ljava/lang/Object;
    :cond_0
    return-void
.end method


# virtual methods
.method protected applyQueryTextStyle(Landroid/text/Spannable;II)V
    .locals 1
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 43
    if-ne p2, p3, :cond_0

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionFormatter;->mSpanFactory:Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;->createSuggestionQueryTextAppearance()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/googlequicksearchbox/SuggestionFormatter;->setSpans(Landroid/text/Spannable;II[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected applySuggestedTextStyle(Landroid/text/Spannable;II)V
    .locals 1
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 48
    if-ne p2, p3, :cond_0

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionFormatter;->mSpanFactory:Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;->createSuggestionSuggestedTextAppearance()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/googlequicksearchbox/SuggestionFormatter;->setSpans(Landroid/text/Spannable;II[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public abstract formatSuggestion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
.end method
