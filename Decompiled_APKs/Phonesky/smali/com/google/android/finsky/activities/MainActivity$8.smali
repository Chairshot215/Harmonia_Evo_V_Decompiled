.class Lcom/google/android/finsky/activities/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/MainActivity;->showErrorMessage(Lcom/android/volley/VolleyError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/MainActivity;

.field final synthetic val$container:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/MainActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 999
    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity$8;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    iput-object p2, p0, Lcom/google/android/finsky/activities/MainActivity$8;->val$container:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 1002
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v0

    .line 1003
    .local v0, accountName:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1004
    const-string v2, "No account, restarting activity after network error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1005
    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity$8;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/MainActivity;->restart()V

    .line 1020
    :goto_0
    return-void

    .line 1009
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity$8;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-static {v0, v2}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    .line 1010
    .local v1, current:Landroid/accounts/Account;
    const-string v2, "b/5160617: Reinitialize account %s on retry button click"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1012
    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity$8;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v2, v1, v5}, Lcom/google/android/finsky/activities/MainActivity;->reinitialize(Landroid/accounts/Account;Z)V

    .line 1015
    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity$8;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/MainActivity;->showLoadingIndicator()V

    .line 1018
    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity$8;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    const v3, 0x7f080038

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1019
    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity$8;->val$container:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
