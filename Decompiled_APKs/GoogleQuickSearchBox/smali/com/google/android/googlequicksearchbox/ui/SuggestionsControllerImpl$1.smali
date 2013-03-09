.class Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$1;
.super Ljava/lang/Object;
.source "SuggestionsControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$1;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$1;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mShowRemoveFromHistoryButtons:Z

    .line 69
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$1;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->updateViews()V

    .line 70
    return-void
.end method
