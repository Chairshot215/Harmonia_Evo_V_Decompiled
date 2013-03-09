.class Lcom/android/htccontacts/link/DisplaySuggestionActivity$5;
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
    .line 961
    iput-object p1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$5;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$5;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    iget-object v0, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->calculateContactHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$5;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    #getter for: Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$000(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 968
    :cond_0
    return-void
.end method
