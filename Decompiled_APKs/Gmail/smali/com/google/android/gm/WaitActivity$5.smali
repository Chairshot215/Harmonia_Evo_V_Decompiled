.class Lcom/google/android/gm/WaitActivity$5;
.super Ljava/lang/Object;
.source "WaitActivity.java"

# interfaces
.implements Lcom/google/android/gm/AccountHelper$AccountResultsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/WaitActivity;->waitForLabels(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/WaitActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gm/WaitActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/google/android/gm/WaitActivity$5;->this$0:Lcom/google/android/gm/WaitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec([Landroid/accounts/Account;)V
    .locals 6
    .parameter "accounts"

    .prologue
    .line 448
    invoke-static {}, Lcom/google/android/gm/WaitActivity;->access$400()Landroid/accounts/Account;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 449
    invoke-static {}, Lcom/google/android/gm/WaitActivity;->access$400()Landroid/accounts/Account;

    move-result-object v1

    .line 450
    .local v1, currentAccount:Landroid/accounts/Account;
    const/4 v2, 0x0

    .line 452
    .local v2, currentAccountValidated:Z
    array-length v4, p1

    new-array v0, v4, [Ljava/lang/String;

    .line 453
    .local v0, accountNames:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 454
    aget-object v4, p1, v3

    invoke-virtual {v1, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 455
    const/4 v2, 0x1

    .line 457
    :cond_0
    aget-object v4, p1, v3

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v0, v3

    .line 453
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 459
    :cond_1
    iget-object v4, p0, Lcom/google/android/gm/WaitActivity$5;->this$0:Lcom/google/android/gm/WaitActivity;

    #getter for: Lcom/google/android/gm/WaitActivity;->mActionBarView:Lcom/google/android/gm/ActionBarView;
    invoke-static {v4}, Lcom/google/android/gm/WaitActivity;->access$500(Lcom/google/android/gm/WaitActivity;)Lcom/google/android/gm/ActionBarView;

    move-result-object v4

    iget-object v5, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v4, v0, v5}, Lcom/google/android/gm/ActionBarView;->updateActionBar([Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    if-nez v2, :cond_2

    .line 464
    iget-object v4, p0, Lcom/google/android/gm/WaitActivity$5;->this$0:Lcom/google/android/gm/WaitActivity;

    #calls: Lcom/google/android/gm/WaitActivity;->waitForGmailAccount()V
    invoke-static {v4}, Lcom/google/android/gm/WaitActivity;->access$200(Lcom/google/android/gm/WaitActivity;)V

    .line 467
    .end local v0           #accountNames:[Ljava/lang/String;
    .end local v1           #currentAccount:Landroid/accounts/Account;
    .end local v2           #currentAccountValidated:Z
    .end local v3           #i:I
    :cond_2
    return-void
.end method
