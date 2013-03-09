.class Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener$1;
.super Ljava/lang/Object;
.source "AccountSelectionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;->connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;

.field final synthetic val$accountId:J

.field final synthetic val$error:Lcom/google/android/gtalkservice/ConnectionError;

.field final synthetic val$state:Lcom/google/android/gtalkservice/ConnectionState;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener$1;->this$0:Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;

    iput-object p2, p0, Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener$1;->val$state:Lcom/google/android/gtalkservice/ConnectionState;

    iput-object p3, p0, Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener$1;->val$error:Lcom/google/android/gtalkservice/ConnectionError;

    iput-wide p4, p0, Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener$1;->val$accountId:J

    iput-object p6, p0, Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener$1;->val$username:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener$1;->this$0:Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;

    iget-object v7, v0, Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;->mActivity:Lcom/google/android/talk/AccountSelectionActivity;

    .line 203
    .local v7, activity:Lcom/google/android/talk/AccountSelectionActivity;
    if-nez v7, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    #getter for: Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v7}, Lcom/google/android/talk/AccountSelectionActivity;->access$300(Lcom/google/android/talk/AccountSelectionActivity;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener$1;->val$state:Lcom/google/android/gtalkservice/ConnectionState;

    iget-object v2, p0, Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener$1;->val$error:Lcom/google/android/gtalkservice/ConnectionError;

    iget-wide v3, p0, Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener$1;->val$accountId:J

    iget-object v5, p0, Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener$1;->val$username:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/TalkApp;->connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)Z

    move-result v8

    .line 210
    .local v8, changed:Z
    #getter for: Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v7}, Lcom/google/android/talk/AccountSelectionActivity;->access$200(Lcom/google/android/talk/AccountSelectionActivity;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    #getter for: Lcom/google/android/talk/AccountSelectionActivity;->mStopped:Z
    invoke-static {v7}, Lcom/google/android/talk/AccountSelectionActivity;->access$400(Lcom/google/android/talk/AccountSelectionActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v7}, Lcom/google/android/talk/AccountSelectionActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    if-eqz v8, :cond_3

    .line 223
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectionStateChanged: changed is true, old mAccountInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    #getter for: Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v7}, Lcom/google/android/talk/AccountSelectionActivity;->access$200(Lcom/google/android/talk/AccountSelectionActivity;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 227
    :cond_2
    #getter for: Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v7}, Lcom/google/android/talk/AccountSelectionActivity;->access$300(Lcom/google/android/talk/AccountSelectionActivity;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    #getter for: Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v7}, Lcom/google/android/talk/AccountSelectionActivity;->access$200(Lcom/google/android/talk/AccountSelectionActivity;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/TalkApp;->getAccountInfo(Ljava/lang/String;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    #setter for: Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v7, v0}, Lcom/google/android/talk/AccountSelectionActivity;->access$202(Lcom/google/android/talk/AccountSelectionActivity;Lcom/google/android/talk/TalkApp$AccountInfo;)Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 229
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectionStateChanged: changed is true, new mAccountInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    #getter for: Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v7}, Lcom/google/android/talk/AccountSelectionActivity;->access$200(Lcom/google/android/talk/AccountSelectionActivity;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 234
    :cond_3
    iget-wide v0, p0, Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener$1;->val$accountId:J

    #getter for: Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v7}, Lcom/google/android/talk/AccountSelectionActivity;->access$200(Lcom/google/android/talk/AccountSelectionActivity;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    .line 239
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener$1;->val$error:Lcom/google/android/gtalkservice/ConnectionError;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener$1;->val$error:Lcom/google/android/gtalkservice/ConnectionError;

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/ConnectionError;->getError()I

    move-result v9

    .line 240
    .local v9, errorType:I
    :goto_1
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener$1;->val$state:Lcom/google/android/gtalkservice/ConnectionState;

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/ConnectionState;->isOnline()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    if-eq v9, v0, :cond_7

    const/4 v0, 0x4

    if-eq v9, v0, :cond_7

    .line 243
    :cond_4
    #getter for: Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v7}, Lcom/google/android/talk/AccountSelectionActivity;->access$300(Lcom/google/android/talk/AccountSelectionActivity;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    #getter for: Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v7}, Lcom/google/android/talk/AccountSelectionActivity;->access$200(Lcom/google/android/talk/AccountSelectionActivity;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/TalkApp;->setCurrentAccount(Ljava/lang/String;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v6

    .line 245
    .local v6, activeAccount:Lcom/google/android/talk/TalkApp$AccountInfo;
    if-nez v6, :cond_5

    .line 246
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectionStateChanged activeAccount for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v7}, Lcom/google/android/talk/AccountSelectionActivity;->access$200(Lcom/google/android/talk/AccountSelectionActivity;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_5
    const/4 v0, 0x1

    #setter for: Lcom/google/android/talk/AccountSelectionActivity;->mStopped:Z
    invoke-static {v7, v0}, Lcom/google/android/talk/AccountSelectionActivity;->access$402(Lcom/google/android/talk/AccountSelectionActivity;Z)Z

    .line 252
    #getter for: Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v7}, Lcom/google/android/talk/AccountSelectionActivity;->access$200(Lcom/google/android/talk/AccountSelectionActivity;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/google/android/talk/AccountSelectionActivity;->startBuddyListComboActivity(Lcom/google/android/talk/TalkApp$AccountInfo;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 239
    .end local v6           #activeAccount:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v9           #errorType:I
    :cond_6
    const/4 v9, 0x0

    goto :goto_1

    .line 255
    .restart local v9       #errorType:I
    :cond_7
    #getter for: Lcom/google/android/talk/AccountSelectionActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/google/android/talk/AccountSelectionActivity;->access$500(Lcom/google/android/talk/AccountSelectionActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener$1;->val$error:Lcom/google/android/gtalkservice/ConnectionError;

    invoke-direct {v1, v7, v2}, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;-><init>(Lcom/google/android/talk/AccountSelectionActivity;Lcom/google/android/gtalkservice/ConnectionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 259
    .end local v9           #errorType:I
    :cond_8
    #getter for: Lcom/google/android/talk/AccountSelectionActivity;->mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;
    invoke-static {v7}, Lcom/google/android/talk/AccountSelectionActivity;->access$600(Lcom/google/android/talk/AccountSelectionActivity;)Lcom/google/android/talk/AccountListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/AccountListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method
