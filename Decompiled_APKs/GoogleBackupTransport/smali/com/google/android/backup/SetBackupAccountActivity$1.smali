.class Lcom/google/android/backup/SetBackupAccountActivity$1;
.super Ljava/lang/Object;
.source "SetBackupAccountActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/backup/SetBackupAccountActivity;
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
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/backup/SetBackupAccountActivity;


# direct methods
.method constructor <init>(Lcom/google/android/backup/SetBackupAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/android/backup/SetBackupAccountActivity$1;->this$0:Lcom/google/android/backup/SetBackupAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 69
    .local v2, bundle:Landroid/os/Bundle;
    const-string v5, "authAccount"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    .line 71
    .local v4, needToCancelNotification:Z
    if-eqz v4, :cond_0

    .line 73
    const-string v5, "authAccount"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    .local v0, accountName:Ljava/lang/String;
    const-string v5, "accountType"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    .local v1, accountType:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/backup/SetBackupAccountActivity$1;->this$0:Lcom/google/android/backup/SetBackupAccountActivity;

    new-instance v6, Landroid/accounts/Account;

    invoke-direct {v6, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #calls: Lcom/google/android/backup/SetBackupAccountActivity;->saveAccountInPreferences(Landroid/accounts/Account;)V
    invoke-static {v5, v6}, Lcom/google/android/backup/SetBackupAccountActivity;->access$000(Lcom/google/android/backup/SetBackupAccountActivity;Landroid/accounts/Account;)V

    .line 77
    iget-object v5, p0, Lcom/google/android/backup/SetBackupAccountActivity$1;->this$0:Lcom/google/android/backup/SetBackupAccountActivity;

    #calls: Lcom/google/android/backup/SetBackupAccountActivity;->cancelSetBackupAccountNotification()V
    invoke-static {v5}, Lcom/google/android/backup/SetBackupAccountActivity;->access$100(Lcom/google/android/backup/SetBackupAccountActivity;)V

    .line 79
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/google/android/backup/SetBackupAccountActivity$1;->this$0:Lcom/google/android/backup/SetBackupAccountActivity;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/google/android/backup/SetBackupAccountActivity;->setResult(I)V

    .line 80
    const-string v5, "BackupTransportService"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "BackupTransportService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account added: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 88
    :cond_1
    iget-object v5, p0, Lcom/google/android/backup/SetBackupAccountActivity$1;->this$0:Lcom/google/android/backup/SetBackupAccountActivity;

    invoke-virtual {v5}, Lcom/google/android/backup/SetBackupAccountActivity;->finish()V

    .line 90
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v4           #needToCancelNotification:Z
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v3

    .line 82
    .local v3, e:Landroid/accounts/OperationCanceledException;
    :try_start_1
    const-string v5, "BackupTransportService"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "BackupTransportService"

    const-string v6, "addAccount was canceled"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :cond_2
    iget-object v5, p0, Lcom/google/android/backup/SetBackupAccountActivity$1;->this$0:Lcom/google/android/backup/SetBackupAccountActivity;

    invoke-virtual {v5}, Lcom/google/android/backup/SetBackupAccountActivity;->finish()V

    goto :goto_0

    .line 83
    .end local v3           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v3

    .line 84
    .local v3, e:Ljava/io/IOException;
    :try_start_2
    const-string v5, "BackupTransportService"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "BackupTransportService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addAccount failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    :cond_3
    iget-object v5, p0, Lcom/google/android/backup/SetBackupAccountActivity$1;->this$0:Lcom/google/android/backup/SetBackupAccountActivity;

    invoke-virtual {v5}, Lcom/google/android/backup/SetBackupAccountActivity;->finish()V

    goto :goto_0

    .line 85
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 86
    .local v3, e:Landroid/accounts/AuthenticatorException;
    :try_start_3
    const-string v5, "BackupTransportService"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "BackupTransportService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addAccount failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    :cond_4
    iget-object v5, p0, Lcom/google/android/backup/SetBackupAccountActivity$1;->this$0:Lcom/google/android/backup/SetBackupAccountActivity;

    invoke-virtual {v5}, Lcom/google/android/backup/SetBackupAccountActivity;->finish()V

    goto :goto_0

    .end local v3           #e:Landroid/accounts/AuthenticatorException;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/google/android/backup/SetBackupAccountActivity$1;->this$0:Lcom/google/android/backup/SetBackupAccountActivity;

    invoke-virtual {v6}, Lcom/google/android/backup/SetBackupAccountActivity;->finish()V

    throw v5
.end method
