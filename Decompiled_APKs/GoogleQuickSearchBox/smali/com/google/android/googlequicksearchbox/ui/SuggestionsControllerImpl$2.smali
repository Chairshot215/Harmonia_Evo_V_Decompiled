.class Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$2;
.super Ljava/lang/Object;
.source "SuggestionsControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->startDelayTimer(Lcom/google/android/googlequicksearchbox/Suggestions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;

.field final synthetic val$suggestions:Lcom/google/android/googlequicksearchbox/Suggestions;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$2;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$2;->val$suggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$2;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$2;->val$suggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->delayTimerExpired(Lcom/google/android/googlequicksearchbox/Suggestions;)V

    .line 196
    return-void
.end method
