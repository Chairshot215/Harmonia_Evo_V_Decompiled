.class Lcom/android/htccontacts/link/DisplaySuggestionActivity$1;
.super Ljava/lang/Object;
.source "DisplaySuggestionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/link/DisplaySuggestionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$1;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$1;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    invoke-static {v1}, Lcom/android/htccontacts/util/LinkUtils;->returnSuggestList(Landroid/content/Context;)Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;

    move-result-object v0

    .line 229
    .local v0, obj:Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;->mContactsHasSuggest:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$1;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    #getter for: Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$000(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 235
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$1;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    iget-object v2, v0, Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;->mContactsHasSuggest:Ljava/util/ArrayList;

    #setter for: Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mIntentIds:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$102(Lcom/android/htccontacts/link/DisplaySuggestionActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 233
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$1;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    #getter for: Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$000(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
