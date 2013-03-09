.class Lcom/google/android/googlequicksearchbox/SuggestionLauncher$RemoveFromWebHistoryTask;
.super Landroid/os/AsyncTask;
.source "SuggestionLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/SuggestionLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveFromWebHistoryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mQuery:Ljava/lang/String;

.field private final mSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/SuggestionLauncher;Lcom/google/android/googlequicksearchbox/google/GoogleSource;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "source"
    .parameter "query"

    .prologue
    .line 330
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher$RemoveFromWebHistoryTask;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 331
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher$RemoveFromWebHistoryTask;->mSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    .line 332
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher$RemoveFromWebHistoryTask;->mQuery:Ljava/lang/String;

    .line 333
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .parameter "args"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher$RemoveFromWebHistoryTask;->mSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher$RemoveFromWebHistoryTask;->mQuery:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/google/GoogleSource;->removeFromHistory(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 325
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher$RemoveFromWebHistoryTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher$RemoveFromWebHistoryTask;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    #calls: Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->removeFromHistoryDone(Z)V
    invoke-static {v0, v1}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->access$100(Lcom/google/android/googlequicksearchbox/SuggestionLauncher;Z)V

    .line 343
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 325
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher$RemoveFromWebHistoryTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
