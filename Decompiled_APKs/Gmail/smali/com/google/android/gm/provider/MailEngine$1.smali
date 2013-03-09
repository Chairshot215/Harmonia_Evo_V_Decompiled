.class Lcom/google/android/gm/provider/MailEngine$1;
.super Ljava/lang/Object;
.source "MailEngine.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLabelMapInitialized:Z

.field private mPreviousLabelSynced:Z

.field final synthetic this$0:Lcom/google/android/gm/provider/MailEngine;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 440
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine$1;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine$1;->mLabelMapInitialized:Z

    .line 442
    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine$1;->mPreviousLabelSynced:Z

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5
    .parameter "observable"
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 445
    iget-boolean v2, p0, Lcom/google/android/gm/provider/MailEngine$1;->mLabelMapInitialized:Z

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine$1;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #getter for: Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;
    invoke-static {v3}, Lcom/google/android/gm/provider/MailEngine;->access$000(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$LabelMap;->labelsSynchronizationStateInitialized()Z

    move-result v3

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/google/android/gm/provider/MailEngine$1;->mPreviousLabelSynced:Z

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine$1;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #getter for: Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;
    invoke-static {v3}, Lcom/google/android/gm/provider/MailEngine;->access$000(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$LabelMap;->labelsSynced()Z

    move-result v3

    if-eq v2, v3, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 448
    .local v0, sendNotifications:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 449
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$1;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #getter for: Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;
    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->access$000(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$LabelMap;->labelsSynced()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gm/provider/MailEngine$1;->mPreviousLabelSynced:Z

    .line 450
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$1;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #getter for: Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;
    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->access$000(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$LabelMap;->labelsSynchronizationStateInitialized()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gm/provider/MailEngine$1;->mLabelMapInitialized:Z

    .line 452
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$1;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #getter for: Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->access$200(Lcom/google/android/gm/provider/MailEngine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine$1;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #getter for: Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;
    invoke-static {v3}, Lcom/google/android/gm/provider/MailEngine;->access$100(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gm/provider/Gmail;->getStatusUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 455
    :cond_1
    return-void

    .end local v0           #sendNotifications:Z
    :cond_2
    move v0, v1

    .line 445
    goto :goto_0
.end method
