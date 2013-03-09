.class Lcom/google/android/gm/provider/MailEngine$DatasetChangedNotifier;
.super Lcom/google/android/gm/provider/DelayedTaskHandler;
.source "MailEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatasetChangedNotifier"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/google/android/gm/provider/MailEngine;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/MailEngine;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "refreshDelay"

    .prologue
    .line 6080
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine$DatasetChangedNotifier;->this$0:Lcom/google/android/gm/provider/MailEngine;

    .line 6081
    #calls: Lcom/google/android/gm/provider/MailEngine;->getNotifyDatasetChangedLooper()Landroid/os/Looper;
    invoke-static {p1}, Lcom/google/android/gm/provider/MailEngine;->access$4800(Lcom/google/android/gm/provider/MailEngine;)Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/google/android/gm/provider/DelayedTaskHandler;-><init>(Landroid/os/Looper;I)V

    .line 6083
    iput-object p2, p0, Lcom/google/android/gm/provider/MailEngine$DatasetChangedNotifier;->mContext:Landroid/content/Context;

    .line 6084
    return-void
.end method


# virtual methods
.method protected performTask()V
    .locals 3

    .prologue
    .line 6088
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gm.intent.ACTION_NOTIFY_DATASET_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6089
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$DatasetChangedNotifier;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #getter for: Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;
    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->access$100(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6090
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$DatasetChangedNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6091
    return-void
.end method
