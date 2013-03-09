.class public interface abstract Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;
.super Ljava/lang/Object;
.source "SuggestionsPresenter.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/QueryStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/SuggestionsPresenter$SuggestionsDisplay;
    }
.end annotation


# virtual methods
.method public abstract initialize()V
.end method

.method public abstract onStart(Lcom/google/android/googlequicksearchbox/SuggestionsPresenter$SuggestionsDisplay;)V
.end method

.method public abstract onStop(Lcom/google/android/googlequicksearchbox/SuggestionsPresenter$SuggestionsDisplay;)V
.end method

.method public abstract updateSuggestionsBuffered()V
.end method

.method public abstract updateSuggestionsNow()V
.end method
