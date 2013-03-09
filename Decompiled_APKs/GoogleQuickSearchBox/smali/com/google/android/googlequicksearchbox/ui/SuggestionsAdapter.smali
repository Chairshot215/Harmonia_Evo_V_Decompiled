.class public interface abstract Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;
.super Ljava/lang/Object;
.source "SuggestionsAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# virtual methods
.method public abstract clear()V
.end method

.method public abstract getAbsoluteClickPosition(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)I
.end method

.method public abstract getListEntry(J)Lcom/google/android/googlequicksearchbox/ui/ListEntry;
.end method

.method public abstract getSuggestionFormatter()Lcom/google/android/googlequicksearchbox/SuggestionFormatter;
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract onSuggestionClicked(J)V
.end method

.method public abstract onSuggestionQueryRefineClicked(J)V
.end method

.method public abstract onSuggestionRemoveFromHistoryClicked(J)V
.end method

.method public abstract setOnKeyListener(Landroid/view/View$OnKeyListener;)V
.end method

.method public abstract setRelativeDistanceFromFirstSuggestion(I)V
.end method

.method public abstract setSeparatorFirst(Z)V
.end method

.method public abstract setSuggestionClickListener(Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;)V
.end method

.method public abstract showSuggestions(Lcom/google/android/googlequicksearchbox/SuggestionList;IIZ)V
.end method

.method public abstract showSuggestionsDisabled(Lcom/google/android/googlequicksearchbox/SuggestionList;IIZ)V
.end method
