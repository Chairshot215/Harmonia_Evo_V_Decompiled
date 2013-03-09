.class Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$MySuggestionsObserver;
.super Landroid/database/DataSetObserver;
.source "SuggestionsControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySuggestionsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;


# direct methods
.method private constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$MySuggestionsObserver;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$MySuggestionsObserver;-><init>(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 308
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 309
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$MySuggestionsObserver;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;

    #getter for: Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mDelayingNewSuggestions:Z
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->access$100(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$MySuggestionsObserver;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$MySuggestionsObserver;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mDelayingNewSuggestions:Z
    invoke-static {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->access$102(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;Z)Z

    .line 311
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$MySuggestionsObserver;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->updateViews()V

    .line 313
    :cond_1
    return-void
.end method
