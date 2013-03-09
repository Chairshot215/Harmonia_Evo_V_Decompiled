.class Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver$5;
.super Ljava/lang/Object;
.source "SuggestionsProviderImpl.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->getShortcutsConsumer()Lcom/google/android/googlequicksearchbox/util/Consumer;
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
        "Lcom/google/android/googlequicksearchbox/ShortcutList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver$5;->this$1:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/googlequicksearchbox/ShortcutList;)Z
    .locals 1
    .parameter "shortcuts"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver$5;->this$1:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;

    #setter for: Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->mPendingShortcuts:Lcom/google/android/googlequicksearchbox/ShortcutList;
    invoke-static {v0, p1}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->access$902(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;Lcom/google/android/googlequicksearchbox/ShortcutList;)Lcom/google/android/googlequicksearchbox/ShortcutList;

    .line 428
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver$5;->this$1:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;

    #calls: Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->handleNewResultAdded()V
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->access$800(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;)V

    .line 429
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver$5;->this$1:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    #getter for: Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mLogger:Lcom/google/android/googlequicksearchbox/Logger;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->access$600(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;)Lcom/google/android/googlequicksearchbox/Logger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver$5;->this$1:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;

    #getter for: Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->mLogger:Lcom/google/android/googlequicksearchbox/Logger;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;->access$600(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl;)Lcom/google/android/googlequicksearchbox/Logger;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/Logger;->logLatency(Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    .line 432
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 424
    check-cast p1, Lcom/google/android/googlequicksearchbox/ShortcutList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver$5;->consume(Lcom/google/android/googlequicksearchbox/ShortcutList;)Z

    move-result v0

    return v0
.end method
