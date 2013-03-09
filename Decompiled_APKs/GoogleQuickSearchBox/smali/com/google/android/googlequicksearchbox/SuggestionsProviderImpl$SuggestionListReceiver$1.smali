.class Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver$1;
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
    .line 280
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver$1;->this$1:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver$1;->this$1:Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;

    #calls: Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->publishPendingResults()V
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;->access$100(Lcom/google/android/googlequicksearchbox/SuggestionsProviderImpl$SuggestionListReceiver;)V

    .line 284
    return-void
.end method
