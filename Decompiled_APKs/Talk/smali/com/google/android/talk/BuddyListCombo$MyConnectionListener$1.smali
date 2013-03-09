.class Lcom/google/android/talk/BuddyListCombo$MyConnectionListener$1;
.super Ljava/lang/Object;
.source "BuddyListCombo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;->connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;

.field final synthetic val$accountId:J

.field final synthetic val$error:Lcom/google/android/gtalkservice/ConnectionError;

.field final synthetic val$state:Lcom/google/android/gtalkservice/ConnectionState;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener$1;->this$1:Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;

    iput-object p2, p0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener$1;->val$state:Lcom/google/android/gtalkservice/ConnectionState;

    iput-object p3, p0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener$1;->val$error:Lcom/google/android/gtalkservice/ConnectionError;

    iput-wide p4, p0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener$1;->val$accountId:J

    iput-object p6, p0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener$1;->val$username:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener$1;->this$1:Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #getter for: Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$500(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener$1;->val$state:Lcom/google/android/gtalkservice/ConnectionState;

    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener$1;->val$error:Lcom/google/android/gtalkservice/ConnectionError;

    iget-wide v3, p0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener$1;->val$accountId:J

    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener$1;->val$username:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/TalkApp;->connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)Z

    move-result v6

    .line 1057
    .local v6, changed:Z
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener$1;->this$1:Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-virtual {v0}, Lcom/google/android/talk/BuddyListCombo;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1087
    :cond_0
    :goto_0
    return-void

    .line 1060
    :cond_1
    if-eqz v6, :cond_2

    .line 1062
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener$1;->this$1:Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-virtual {v0}, Lcom/google/android/talk/BuddyListCombo;->refreshAccountInfo()V

    .line 1063
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener$1;->this$1:Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #getter for: Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$600(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener$1;->this$1:Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-virtual {v0}, Lcom/google/android/talk/BuddyListCombo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountId"

    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener$1;->this$1:Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;

    iget-object v2, v2, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #getter for: Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v2}, Lcom/google/android/talk/BuddyListCombo;->access$600(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1070
    :cond_2
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener$1;->this$1:Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #getter for: Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$600(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    iget-wide v2, p0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener$1;->val$accountId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener$1;->val$state:Lcom/google/android/gtalkservice/ConnectionState;

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/ConnectionState;->isDisconnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1072
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener$1;->this$1:Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #getter for: Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$600(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener$1;->this$1:Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;

    iget-object v1, v1, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v0, v1}, Lcom/google/android/talk/AccountLoginUtils;->setActiveAccount(Lcom/google/android/talk/TalkApp$AccountInfo;Landroid/app/Activity;)V

    .line 1074
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener$1;->this$1:Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-virtual {v0}, Lcom/google/android/talk/BuddyListCombo;->switchAccounts()V

    goto :goto_0

    .line 1075
    :cond_3
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener$1;->val$error:Lcom/google/android/gtalkservice/ConnectionError;

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/ConnectionError;->getError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1078
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BuddyListCombo switching to AccountSelectionActivity handleConnectionEvent error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener$1;->val$error:Lcom/google/android/gtalkservice/ConnectionError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->log(Ljava/lang/String;)V

    .line 1082
    :cond_4
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener$1;->this$1:Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method
