.class public Lcom/google/android/googlequicksearchbox/SummonsFilter;
.super Ljava/lang/Object;
.source "SummonsFilter.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/SuggestionFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public accept(Lcom/google/android/googlequicksearchbox/Suggestion;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 27
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->isWebSearchSuggestion()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
