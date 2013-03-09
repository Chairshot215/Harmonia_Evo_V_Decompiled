.class Lcom/google/android/feedback/FeedbackSession$1;
.super Ljava/lang/Object;
.source "FeedbackSession.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/feedback/FeedbackSession;->updateUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/feedback/FeedbackSession;


# direct methods
.method constructor <init>(Lcom/google/android/feedback/FeedbackSession;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/android/feedback/FeedbackSession$1;->this$0:Lcom/google/android/feedback/FeedbackSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "currentView"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, adapterParent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession$1;->this$0:Lcom/google/android/feedback/FeedbackSession;

    #getter for: Lcom/google/android/feedback/FeedbackSession;->mChooseAccount:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/google/android/feedback/FeedbackSession;->access$000(Lcom/google/android/feedback/FeedbackSession;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    .local v0, userChoice:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession$1;->this$0:Lcom/google/android/feedback/FeedbackSession;

    #getter for: Lcom/google/android/feedback/FeedbackSession;->mContext:Lcom/google/android/feedback/FeedbackActivity;
    invoke-static {v1}, Lcom/google/android/feedback/FeedbackSession;->access$100(Lcom/google/android/feedback/FeedbackSession;)Lcom/google/android/feedback/FeedbackActivity;

    move-result-object v1

    const v2, 0x7f06001e

    invoke-virtual {v1, v2}, Lcom/google/android/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession$1;->this$0:Lcom/google/android/feedback/FeedbackSession;

    #getter for: Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;
    invoke-static {v1}, Lcom/google/android/feedback/FeedbackSession;->access$200(Lcom/google/android/feedback/FeedbackSession;)Lcom/google/android/feedback/ExtendedErrorReport;

    move-result-object v1

    iput-object v0, v1, Lcom/google/android/feedback/ExtendedErrorReport;->account:Ljava/lang/String;

    .line 197
    :goto_0
    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession$1;->this$0:Lcom/google/android/feedback/FeedbackSession;

    #setter for: Lcom/google/android/feedback/FeedbackSession;->spinnerPosition:I
    invoke-static {v1, p3}, Lcom/google/android/feedback/FeedbackSession;->access$302(Lcom/google/android/feedback/FeedbackSession;I)I

    .line 198
    return-void

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/google/android/feedback/FeedbackSession$1;->this$0:Lcom/google/android/feedback/FeedbackSession;

    #getter for: Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;
    invoke-static {v1}, Lcom/google/android/feedback/FeedbackSession;->access$200(Lcom/google/android/feedback/FeedbackSession;)Lcom/google/android/feedback/ExtendedErrorReport;

    move-result-object v1

    const-string v2, ""

    iput-object v2, v1, Lcom/google/android/feedback/ExtendedErrorReport;->account:Ljava/lang/String;

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/feedback/FeedbackSession$1;->this$0:Lcom/google/android/feedback/FeedbackSession;

    #getter for: Lcom/google/android/feedback/FeedbackSession;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;
    invoke-static {v0}, Lcom/google/android/feedback/FeedbackSession;->access$200(Lcom/google/android/feedback/FeedbackSession;)Lcom/google/android/feedback/ExtendedErrorReport;

    move-result-object v0

    const-string v1, ""

    iput-object v1, v0, Lcom/google/android/feedback/ExtendedErrorReport;->account:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/google/android/feedback/FeedbackSession$1;->this$0:Lcom/google/android/feedback/FeedbackSession;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/feedback/FeedbackSession;->spinnerPosition:I
    invoke-static {v0, v1}, Lcom/google/android/feedback/FeedbackSession;->access$302(Lcom/google/android/feedback/FeedbackSession;I)I

    .line 204
    return-void
.end method
