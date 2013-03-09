.class Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;
.super Landroid/os/AsyncTask;
.source "HelpDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/HelpDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HintsCreationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/google/android/voicesearch/Hints$HintData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/HelpDialog;


# direct methods
.method private constructor <init>(Lcom/google/android/voicesearch/HelpDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/voicesearch/HelpDialog;Lcom/google/android/voicesearch/HelpDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 577
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;-><init>(Lcom/google/android/voicesearch/HelpDialog;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 577
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 4
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/Hints$HintData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 580
    iget-object v2, p0, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/voicesearch/HelpDialog;->access$2300(Lcom/google/android/voicesearch/HelpDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLanguagePrefManager()Lcom/google/android/voicesearch/LanguagePrefManager;

    move-result-object v1

    .line 582
    .local v1, languagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;
    invoke-virtual {v1}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageSetting()Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, language:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/voicesearch/HelpDialog;->access$2300(Lcom/google/android/voicesearch/HelpDialog;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/google/android/voicesearch/Hints;->getHints(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 577
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/Hints$HintData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, hints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/Hints$HintData;>;"
    const/4 v5, 0x1

    .line 588
    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mActionGallery:Landroid/widget/Gallery;
    invoke-static {v1}, Lcom/google/android/voicesearch/HelpDialog;->access$100(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/Gallery;

    move-result-object v1

    new-instance v2, Lcom/google/android/voicesearch/HelpDialog$HintAdapter;

    iget-object v3, p0, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    iget-object v4, p0, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-virtual {v4}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4, p1}, Lcom/google/android/voicesearch/HelpDialog$HintAdapter;-><init>(Lcom/google/android/voicesearch/HelpDialog;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 589
    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #calls: Lcom/google/android/voicesearch/HelpDialog;->hideSpinner()V
    invoke-static {v1}, Lcom/google/android/voicesearch/HelpDialog;->access$2400(Lcom/google/android/voicesearch/HelpDialog;)V

    .line 590
    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mActionGallery:Landroid/widget/Gallery;
    invoke-static {v1}, Lcom/google/android/voicesearch/HelpDialog;->access$100(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/Gallery;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/widget/Gallery;->setSelection(IZ)V

    .line 592
    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/voicesearch/HelpDialog;->access$300(Lcom/google/android/voicesearch/HelpDialog;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mScrollToNextAction:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/google/android/voicesearch/HelpDialog;->access$200(Lcom/google/android/voicesearch/HelpDialog;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 597
    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/voicesearch/HelpDialog;->access$2300(Lcom/google/android/voicesearch/HelpDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->shouldShowFirstRunMessage(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    const/16 v0, 0x2ee0

    .line 602
    .local v0, autoScrollDelay:I
    :goto_0
    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #setter for: Lcom/google/android/voicesearch/HelpDialog;->mScrollActive:Z
    invoke-static {v1, v5}, Lcom/google/android/voicesearch/HelpDialog;->access$002(Lcom/google/android/voicesearch/HelpDialog;Z)Z

    .line 603
    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/voicesearch/HelpDialog;->access$300(Lcom/google/android/voicesearch/HelpDialog;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mScrollToNextAction:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/google/android/voicesearch/HelpDialog;->access$200(Lcom/google/android/voicesearch/HelpDialog;)Ljava/lang/Runnable;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 604
    return-void

    .line 600
    .end local v0           #autoScrollDelay:I
    :cond_0
    const/16 v0, 0x1770

    .restart local v0       #autoScrollDelay:I
    goto :goto_0
.end method
