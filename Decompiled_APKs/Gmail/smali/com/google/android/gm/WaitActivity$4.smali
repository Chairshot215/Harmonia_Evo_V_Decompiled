.class Lcom/google/android/gm/WaitActivity$4;
.super Ljava/lang/Object;
.source "WaitActivity.java"

# interfaces
.implements Lcom/google/android/gm/AccountHelper$AccountResultsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/WaitActivity;->waitForGmailAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/WaitActivity;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/google/android/gm/WaitActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/google/android/gm/WaitActivity$4;->this$0:Lcom/google/android/gm/WaitActivity;

    iput-object p2, p0, Lcom/google/android/gm/WaitActivity$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec([Landroid/accounts/Account;)V
    .locals 3
    .parameter "accounts"

    .prologue
    .line 291
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/WaitActivity$4;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/gm/WaitActivity$4$1;

    invoke-direct {v2, p0}, Lcom/google/android/gm/WaitActivity$4$1;-><init>(Lcom/google/android/gm/WaitActivity$4;)V

    invoke-static {v1, v2}, Lcom/google/android/gm/AccountHelper;->showAddAccount(Landroid/app/Activity;Lcom/google/android/gm/AccountHelper$AddAccountCallback;)V

    .line 311
    :goto_0
    return-void

    .line 308
    :cond_1
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 309
    .local v0, account:Landroid/accounts/Account;
    iget-object v1, p0, Lcom/google/android/gm/WaitActivity$4;->this$0:Lcom/google/android/gm/WaitActivity;

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #calls: Lcom/google/android/gm/WaitActivity;->onAccountsLoaded(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/google/android/gm/WaitActivity;->access$300(Lcom/google/android/gm/WaitActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
