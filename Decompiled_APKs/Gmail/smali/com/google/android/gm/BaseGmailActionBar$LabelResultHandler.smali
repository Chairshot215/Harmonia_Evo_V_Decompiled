.class Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;
.super Ljava/lang/Object;
.source "BaseGmailActionBar.java"

# interfaces
.implements Lcom/google/android/gm/provider/LabelManager$LabelResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/BaseGmailActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelResultHandler"
.end annotation


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mDelayedStatusLoader:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/google/android/gm/BaseGmailActionBar;


# direct methods
.method constructor <init>(Lcom/google/android/gm/BaseGmailActionBar;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "account"

    .prologue
    .line 387
    iput-object p1, p0, Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;->this$0:Lcom/google/android/gm/BaseGmailActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    new-instance v0, Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler$1;-><init>(Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;)V

    iput-object v0, p0, Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;->mDelayedStatusLoader:Ljava/lang/Runnable;

    .line 388
    iput-object p2, p0, Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;->mAccount:Ljava/lang/String;

    .line 389
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;->mAccount:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onLabelResult(Lcom/google/android/gm/provider/Label;)V
    .locals 5
    .parameter "label"

    .prologue
    .line 393
    if-eqz p1, :cond_2

    .line 396
    iget-object v1, p0, Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;->this$0:Lcom/google/android/gm/BaseGmailActionBar;

    #getter for: Lcom/google/android/gm/BaseGmailActionBar;->mAccountInboxMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/google/android/gm/BaseGmailActionBar;->access$100(Lcom/google/android/gm/BaseGmailActionBar;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/Label;

    .line 397
    .local v0, oldLabel:Lcom/google/android/gm/provider/Label;
    if-eqz v0, :cond_0

    .line 398
    iget-object v1, p0, Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;->this$0:Lcom/google/android/gm/BaseGmailActionBar;

    iget-object v1, v1, Lcom/google/android/gm/BaseGmailActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Label;->disableSelfUpdate(Landroid/content/Context;)V

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;->this$0:Lcom/google/android/gm/BaseGmailActionBar;

    #getter for: Lcom/google/android/gm/BaseGmailActionBar;->mAccountInboxMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/google/android/gm/BaseGmailActionBar;->access$100(Lcom/google/android/gm/BaseGmailActionBar;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v1, p0, Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;->this$0:Lcom/google/android/gm/BaseGmailActionBar;

    iget-boolean v1, v1, Lcom/google/android/gm/BaseGmailActionBar;->mActive:Z

    if-eqz v1, :cond_1

    .line 408
    iget-object v1, p0, Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;->this$0:Lcom/google/android/gm/BaseGmailActionBar;

    iget-object v1, v1, Lcom/google/android/gm/BaseGmailActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/google/android/gm/provider/Label;->enableSelfUpdate(Landroid/content/Context;)V

    .line 410
    iget-object v1, p0, Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;->this$0:Lcom/google/android/gm/BaseGmailActionBar;

    #getter for: Lcom/google/android/gm/BaseGmailActionBar;->mDataSetChangedCallback:Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerDataSetChangeCallback;
    invoke-static {v1}, Lcom/google/android/gm/BaseGmailActionBar;->access$200(Lcom/google/android/gm/BaseGmailActionBar;)Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerDataSetChangeCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 411
    iget-object v1, p0, Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;->this$0:Lcom/google/android/gm/BaseGmailActionBar;

    #getter for: Lcom/google/android/gm/BaseGmailActionBar;->mDataSetChangedCallback:Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerDataSetChangeCallback;
    invoke-static {v1}, Lcom/google/android/gm/BaseGmailActionBar;->access$200(Lcom/google/android/gm/BaseGmailActionBar;)Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerDataSetChangeCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerDataSetChangeCallback;->onDataSetChanged()V

    .line 425
    .end local v0           #oldLabel:Lcom/google/android/gm/provider/Label;
    :cond_1
    :goto_0
    return-void

    .line 414
    :cond_2
    iget-object v1, p0, Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;->this$0:Lcom/google/android/gm/BaseGmailActionBar;

    iget-boolean v1, v1, Lcom/google/android/gm/BaseGmailActionBar;->mActive:Z

    if-eqz v1, :cond_1

    .line 422
    iget-object v1, p0, Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;->this$0:Lcom/google/android/gm/BaseGmailActionBar;

    #getter for: Lcom/google/android/gm/BaseGmailActionBar;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/gm/BaseGmailActionBar;->access$300(Lcom/google/android/gm/BaseGmailActionBar;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;->mDelayedStatusLoader:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 423
    iget-object v1, p0, Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;->this$0:Lcom/google/android/gm/BaseGmailActionBar;

    #getter for: Lcom/google/android/gm/BaseGmailActionBar;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/gm/BaseGmailActionBar;->access$300(Lcom/google/android/gm/BaseGmailActionBar;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;->mDelayedStatusLoader:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/android/gm/BaseGmailActionBar;->access$400()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
