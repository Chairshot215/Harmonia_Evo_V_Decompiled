.class Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$2;
.super Ljava/lang/Object;
.source "WebSuggestSourceWithLocalHistory.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->fetchZeroQuerySuggestions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/googlequicksearchbox/util/Consumer",
        "<",
        "Lcom/google/android/googlequicksearchbox/SuggestionList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$2;->this$0:Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/googlequicksearchbox/SuggestionList;)Z
    .locals 1
    .parameter "suggestions"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$2;->this$0:Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;

    #calls: Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->setZeroQuerySuggestions(Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    invoke-static {v0, p1}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;->access$100(Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory;Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    check-cast p1, Lcom/google/android/googlequicksearchbox/SuggestionList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSourceWithLocalHistory$2;->consume(Lcom/google/android/googlequicksearchbox/SuggestionList;)Z

    move-result v0

    return v0
.end method
