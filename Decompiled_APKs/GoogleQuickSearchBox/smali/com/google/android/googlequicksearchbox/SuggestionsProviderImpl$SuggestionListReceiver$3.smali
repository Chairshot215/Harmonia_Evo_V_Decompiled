.class Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver$3;
.super Ljava/lang/Object;
.source "SuggestionsProviderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver$3;->this$1:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver$3;->this$1:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;

    const/4 v1, 0x1

    #calls: Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->executeNextBatch(I)V
    invoke-static {v0, v1}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->access$300(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;I)V

    .line 299
    return-void
.end method
