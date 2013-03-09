.class Lcom/htc/android/mail/huxservice/HuxSyncSettings$1$1;
.super Ljava/lang/Object;
.source "HuxSyncSettings.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/huxservice/HuxSyncSettings$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/huxservice/HuxSyncSettings$1;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/huxservice/HuxSyncSettings$1;)V
    .locals 0
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings$1$1;->this$1:Lcom/htc/android/mail/huxservice/HuxSyncSettings$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    const/4 v4, 0x2

    .line 600
    const/4 v1, 0x1

    .line 602
    .local v1, failed:Z
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 603
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings$1$1;->this$1:Lcom/htc/android/mail/huxservice/HuxSyncSettings$1;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSyncSettings$1;->this$0:Lcom/htc/android/mail/huxservice/HuxSyncSettings;

    invoke-virtual {v2}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->finish()V

    .line 613
    :goto_0
    return-void

    .line 605
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings$1$1;->this$1:Lcom/htc/android/mail/huxservice/HuxSyncSettings$1;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSyncSettings$1;->this$0:Lcom/htc/android/mail/huxservice/HuxSyncSettings;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HuxSyncSettings"

    const-string v3, "Remove account Failed: OperationCanceledException"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 611
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings$1$1;->this$1:Lcom/htc/android/mail/huxservice/HuxSyncSettings$1;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSyncSettings$1;->this$0:Lcom/htc/android/mail/huxservice/HuxSyncSettings;

    invoke-virtual {v2, v4}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->showDialog(I)V

    goto :goto_0
.end method
