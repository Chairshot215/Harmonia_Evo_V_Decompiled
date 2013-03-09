.class Lcom/google/android/gm/AccountRecentLabelSpinner$LabelListObserver;
.super Landroid/database/DataSetObserver;
.source "AccountRecentLabelSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/AccountRecentLabelSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelListObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/AccountRecentLabelSpinner;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$LabelListObserver;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/AccountRecentLabelSpinner;Lcom/google/android/gm/AccountRecentLabelSpinner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/google/android/gm/AccountRecentLabelSpinner$LabelListObserver;-><init>(Lcom/google/android/gm/AccountRecentLabelSpinner;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 280
    iget-object v1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$LabelListObserver;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    #getter for: Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelList:Lcom/google/android/gm/provider/LabelList;
    invoke-static {v1}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$400(Lcom/google/android/gm/AccountRecentLabelSpinner;)Lcom/google/android/gm/provider/LabelList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 283
    iget-object v1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$LabelListObserver;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    #getter for: Lcom/google/android/gm/AccountRecentLabelSpinner;->mRecentLabelAdapter:Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;
    invoke-static {v1}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$700(Lcom/google/android/gm/AccountRecentLabelSpinner;)Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$LabelListObserver;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    iget-object v3, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$LabelListObserver;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    #getter for: Lcom/google/android/gm/AccountRecentLabelSpinner;->mController:Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;
    invoke-static {v3}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$500(Lcom/google/android/gm/AccountRecentLabelSpinner;)Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;->getCurrentLabel()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/google/android/gm/AccountRecentLabelSpinner;->buildRecentLabels(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    invoke-static {v2, v3}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$600(Lcom/google/android/gm/AccountRecentLabelSpinner;Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gm/AccountRecentLabelSpinner$RecentLabelAdapter;->setLabels(Lcom/google/common/collect/ImmutableList;)V

    .line 286
    iget-object v1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$LabelListObserver;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    #getter for: Lcom/google/android/gm/AccountRecentLabelSpinner;->mCurrentLabelCanonicalName:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$800(Lcom/google/android/gm/AccountRecentLabelSpinner;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 287
    iget-object v1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$LabelListObserver;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    #getter for: Lcom/google/android/gm/AccountRecentLabelSpinner;->mLabelList:Lcom/google/android/gm/provider/LabelList;
    invoke-static {v1}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$400(Lcom/google/android/gm/AccountRecentLabelSpinner;)Lcom/google/android/gm/provider/LabelList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$LabelListObserver;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    #getter for: Lcom/google/android/gm/AccountRecentLabelSpinner;->mCurrentLabelCanonicalName:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$800(Lcom/google/android/gm/AccountRecentLabelSpinner;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gm/provider/LabelList;->get(Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v0

    .line 288
    .local v0, currentLabel:Lcom/google/android/gm/provider/Label;
    if-eqz v0, :cond_0

    .line 289
    iget-object v1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$LabelListObserver;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    invoke-virtual {v1, v0}, Lcom/google/android/gm/AccountRecentLabelSpinner;->setCurrentLabel(Lcom/google/android/gm/provider/Label;)V

    .line 302
    .end local v0           #currentLabel:Lcom/google/android/gm/provider/Label;
    :goto_0
    return-void

    .line 291
    .restart local v0       #currentLabel:Lcom/google/android/gm/provider/Label;
    :cond_0
    const-string v1, "Gmail"

    const-string v2, "ignoring label list change: did not find mCurrentLabelCanonical name on mLabelList"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 296
    .end local v0           #currentLabel:Lcom/google/android/gm/provider/Label;
    :cond_1
    const-string v1, "Gmail"

    const-string v2, "ignoring label list change: mCurrentLabelCanonicalName is null"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 300
    :cond_2
    const-string v1, "Gmail"

    const-string v2, "ignoring label list change: mLabelList is null"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
