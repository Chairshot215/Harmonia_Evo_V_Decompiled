.class Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority$1;
.super Ljava/lang/Object;
.source "RecentSuggestionsProvider.java"

# interfaces
.implements Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->gatherSuggestions()Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;

.field final synthetic val$sem:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority$1;->this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;

    iput-object p2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority$1;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority$1;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 128
    return-void
.end method
