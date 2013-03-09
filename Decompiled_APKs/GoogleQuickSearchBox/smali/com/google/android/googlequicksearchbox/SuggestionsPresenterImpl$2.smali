.class Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl$2;
.super Ljava/lang/Object;
.source "SuggestionsPresenterImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl$2;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl$2;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;

    #getter for: Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->access$100(Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;)Lcom/google/android/googlequicksearchbox/Suggestions;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl$2;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;

    #getter for: Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->access$100(Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;)Lcom/google/android/googlequicksearchbox/Suggestions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl$2;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;

    #getter for: Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->access$200(Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;)Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSuggestionsProvider()Lcom/google/android/googlequicksearchbox/SuggestionsProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsProvider;->cancelOngoingQuery()V

    .line 62
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl$2;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;

    #getter for: Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->access$100(Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;)Lcom/google/android/googlequicksearchbox/Suggestions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->timedOut()V

    .line 64
    :cond_0
    return-void
.end method
