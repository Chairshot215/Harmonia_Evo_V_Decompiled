.class Lcom/htc/android/mail/huxservice/HuxSyncSettings$6;
.super Ljava/lang/Object;
.source "HuxSyncSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxSyncSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/huxservice/HuxSyncSettings;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/huxservice/HuxSyncSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 784
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings$6;->this$0:Lcom/htc/android/mail/huxservice/HuxSyncSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 2
    .parameter "accounts"

    .prologue
    .line 786
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings$6;->this$0:Lcom/htc/android/mail/huxservice/HuxSyncSettings;

    #setter for: Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mAvailableSyncAccounts:[Landroid/accounts/Account;
    invoke-static {v0, p1}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->access$402(Lcom/htc/android/mail/huxservice/HuxSyncSettings;[Landroid/accounts/Account;)[Landroid/accounts/Account;

    .line 787
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings$6;->this$0:Lcom/htc/android/mail/huxservice/HuxSyncSettings;

    #calls: Lcom/htc/android/mail/huxservice/HuxSyncSettings;->updateAccountCheckboxes([Landroid/accounts/Account;)V
    invoke-static {v0, p1}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->access$500(Lcom/htc/android/mail/huxservice/HuxSyncSettings;[Landroid/accounts/Account;)V

    .line 788
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings$6;->this$0:Lcom/htc/android/mail/huxservice/HuxSyncSettings;

    #getter for: Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->access$200(Lcom/htc/android/mail/huxservice/HuxSyncSettings;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/android/mail/huxservice/HuxSyncSettings$6$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings$6$1;-><init>(Lcom/htc/android/mail/huxservice/HuxSyncSettings$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 793
    return-void
.end method
