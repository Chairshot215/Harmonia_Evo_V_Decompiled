.class public final Lcom/google/android/googlequicksearchbox/WebSuggestions;
.super Ljava/lang/Object;
.source "WebSuggestions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNavSuggestion(Ljava/lang/String;Ljava/lang/CharSequence;ZLandroid/content/Context;)Lcom/google/android/googlequicksearchbox/Suggestion;
    .locals 2
    .parameter "url"
    .parameter "title"
    .parameter "history"
    .parameter "context"

    .prologue
    .line 62
    invoke-static {}, Lcom/google/android/googlequicksearchbox/Suggestion;->builder()Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->text1(Ljava/lang/CharSequence;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->text2Url(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    const v1, 0x7f020022

    invoke-static {p3, v1}, Lcom/google/android/googlequicksearchbox/util/Util;->getResourceUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/util/Util;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->icon1(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    const-string v1, "_-1"

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->shortcutId(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentAction(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-static {p0}, Landroid/webkit/URLUtil;->guessUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentData(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->suggestionQuery(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->isHistory(Z)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->build()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v0

    return-object v0
.end method

.method public static createWebSuggestion(Ljava/lang/CharSequence;Z)Lcom/google/android/googlequicksearchbox/Suggestion;
    .locals 1
    .parameter "query"
    .parameter "history"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/googlequicksearchbox/WebSuggestions;->createWebSuggestion(Ljava/lang/CharSequence;ZLcom/google/android/googlequicksearchbox/SuggestionExtras;)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v0

    return-object v0
.end method

.method public static createWebSuggestion(Ljava/lang/CharSequence;ZLcom/google/android/googlequicksearchbox/SuggestionExtras;)Lcom/google/android/googlequicksearchbox/Suggestion;
    .locals 2
    .parameter "query"
    .parameter "history"
    .parameter "extras"

    .prologue
    .line 47
    invoke-static {}, Lcom/google/android/googlequicksearchbox/Suggestion;->builder()Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->text1(Ljava/lang/CharSequence;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    const-string v1, "_-1"

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->shortcutId(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    const-string v1, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentAction(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->suggestionQuery(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->isHistory(Z)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->extras(Lcom/google/android/googlequicksearchbox/SuggestionExtras;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->build()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v0

    return-object v0
.end method
