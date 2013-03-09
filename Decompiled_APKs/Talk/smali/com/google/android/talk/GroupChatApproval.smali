.class public Lcom/google/android/talk/GroupChatApproval;
.super Landroid/app/Activity;
.source "GroupChatApproval.java"


# instance fields
.field private mApp:Lcom/google/android/talk/TalkApp;

.field private mDialog:Landroid/app/Dialog;

.field private mImSession:Lcom/google/android/gtalkservice/IImSession;

.field mInviter:Ljava/lang/String;

.field mPassword:Ljava/lang/String;

.field mRoomAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/GroupChatApproval;)Lcom/google/android/gtalkservice/IImSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/talk/GroupChatApproval;->getImSession()Lcom/google/android/gtalkservice/IImSession;

    move-result-object v0

    return-object v0
.end method

.method private getImSession()Lcom/google/android/gtalkservice/IImSession;
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/talk/GroupChatApproval;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/android/talk/GroupChatApproval;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {p0}, Lcom/google/android/talk/GroupChatApproval;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/TalkApp;->getImSessionFromActivityIntent(Landroid/content/Intent;)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/GroupChatApproval;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/GroupChatApproval;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    return-object v0
.end method

.method private makeDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 72
    new-instance v0, Lcom/google/android/talk/GroupChatApproval$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/GroupChatApproval$1;-><init>(Lcom/google/android/talk/GroupChatApproval;)V

    .line 88
    .local v0, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0c0050

    invoke-virtual {p0, v2}, Lcom/google/android/talk/GroupChatApproval;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/talk/GroupChatApproval;->mInviter:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c004f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c006c

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c002b

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/talk/GroupChatApproval$2;

    invoke-direct {v2, p0}, Lcom/google/android/talk/GroupChatApproval$2;-><init>(Lcom/google/android/talk/GroupChatApproval;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private updateServiceForGroupChat(Z)V
    .locals 6
    .parameter "accept"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/google/android/talk/GroupChatApproval;->getImSession()Lcom/google/android/gtalkservice/IImSession;

    move-result-object v2

    .line 133
    .local v2, session:Lcom/google/android/gtalkservice/IImSession;
    if-eqz p1, :cond_1

    .line 134
    :try_start_0
    iget-object v3, p0, Lcom/google/android/talk/GroupChatApproval;->mRoomAddress:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/talk/GroupChatApproval;->mPassword:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/gtalkservice/IImSession;->joinGroupChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v3, p0, Lcom/google/android/talk/GroupChatApproval;->mInviter:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/gtalkservice/IImSession;->getChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v0

    .line 136
    .local v0, chatSession:Lcom/google/android/gtalkservice/IChatSession;
    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0}, Lcom/google/android/gtalkservice/IChatSession;->leave()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v0           #chatSession:Lcom/google/android/gtalkservice/IChatSession;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/google/android/talk/GroupChatApproval;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v3, v3, Lcom/google/android/talk/TalkApp;->mGroupChatInvitations:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/google/android/talk/GroupChatApproval;->mRoomAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-void

    .line 140
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/google/android/talk/GroupChatApproval;->mRoomAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/talk/GroupChatApproval;->mInviter:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/google/android/gtalkservice/IImSession;->declineGroupChatInvitation(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 144
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/google/android/talk/GroupChatApproval;->finish()V

    goto :goto_0
.end method


# virtual methods
.method acceptGroupChat()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 150
    invoke-direct {p0, v2}, Lcom/google/android/talk/GroupChatApproval;->updateServiceForGroupChat(Z)V

    .line 151
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/google/android/talk/GroupChatApproval;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 152
    .local v0, ret:Landroid/os/Bundle;
    const-string v1, "approval"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 153
    const-string v1, "room"

    iget-object v2, p0, Lcom/google/android/talk/GroupChatApproval;->mRoomAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "password"

    iget-object v2, p0, Lcom/google/android/talk/GroupChatApproval;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/talk/GroupChatApproval;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/talk/GroupChatApproval;->setResult(ILandroid/content/Intent;)V

    .line 157
    invoke-virtual {p0}, Lcom/google/android/talk/GroupChatApproval;->finish()V

    .line 158
    return-void
.end method

.method declineGroupChat()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-direct {p0, v2}, Lcom/google/android/talk/GroupChatApproval;->updateServiceForGroupChat(Z)V

    .line 162
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 163
    .local v0, ret:Landroid/os/Bundle;
    const-string v1, "approval"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 164
    const-string v1, "room"

    iget-object v2, p0, Lcom/google/android/talk/GroupChatApproval;->mRoomAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v1, "password"

    iget-object v2, p0, Lcom/google/android/talk/GroupChatApproval;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/talk/GroupChatApproval;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/talk/GroupChatApproval;->setResult(ILandroid/content/Intent;)V

    .line 168
    invoke-virtual {p0}, Lcom/google/android/talk/GroupChatApproval;->finish()V

    .line 169
    return-void
.end method

.method log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 172
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GroupChatApproval] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-static {p0}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/GroupChatApproval;->mApp:Lcom/google/android/talk/TalkApp;

    .line 58
    invoke-virtual {p0}, Lcom/google/android/talk/GroupChatApproval;->resolveIntent()V

    .line 60
    invoke-direct {p0}, Lcom/google/android/talk/GroupChatApproval;->makeDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/GroupChatApproval;->mDialog:Landroid/app/Dialog;

    .line 61
    iget-object v0, p0, Lcom/google/android/talk/GroupChatApproval;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 62
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 107
    iget-object v0, p0, Lcom/google/android/talk/GroupChatApproval;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 108
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 67
    iget-object v0, p0, Lcom/google/android/talk/GroupChatApproval;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 68
    invoke-virtual {p0}, Lcom/google/android/talk/GroupChatApproval;->finish()V

    .line 69
    return-void
.end method

.method resolveIntent()V
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/android/talk/GroupChatApproval;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 113
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "muc_inviter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/GroupChatApproval;->mInviter:Ljava/lang/String;

    .line 114
    const-string v1, "room"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/GroupChatApproval;->mRoomAddress:Ljava/lang/String;

    .line 115
    const-string v1, "password"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/GroupChatApproval;->mPassword:Ljava/lang/String;

    .line 117
    const-string v1, "talk"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveIntent inviter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/GroupChatApproval;->mInviter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", room="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/GroupChatApproval;->mRoomAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", password="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/GroupChatApproval;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/talk/GroupChatApproval;->log(Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void
.end method
