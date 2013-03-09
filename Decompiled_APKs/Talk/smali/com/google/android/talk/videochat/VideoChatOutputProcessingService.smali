.class public Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;
.super Landroid/app/Service;
.source "VideoChatOutputProcessingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/VideoChatOutputProcessingService$BackgroundHandler;
    }
.end annotation


# instance fields
.field private volatile mBackgroundHandler:Lcom/google/android/talk/videochat/VideoChatOutputProcessingService$BackgroundHandler;

.field private volatile mBackgroundLooper:Landroid/os/Looper;

.field protected mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

.field private mServiceBindingRequested:Z

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceTaskBuffer:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->mServiceTaskBuffer:Ljava/util/Queue;

    .line 216
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService$1;-><init>(Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->handleMissedCallIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->handleEndCauseIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->handleCallInProgressIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;)Ljava/util/Queue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->mServiceTaskBuffer:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;)Lcom/google/android/talk/videochat/VideoChatOutputProcessingService$BackgroundHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->mBackgroundHandler:Lcom/google/android/talk/videochat/VideoChatOutputProcessingService$BackgroundHandler;

    return-object v0
.end method

.method private handleCallInProgressIntent(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    .line 195
    const-string v8, "remote_bare_jid"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 197
    .local v7, remoteBareJid:Ljava/lang/String;
    const-string v8, "local_bare_jid"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 199
    .local v6, localBareJid:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 200
    .local v3, cr:Landroid/content/ContentResolver;
    invoke-static {v3, v6}, Lcom/google/android/talk/DatabaseUtils;->getAccountIdForUsername(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    .line 203
    .local v0, accountId:J
    :try_start_0
    iget-object v8, p0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    invoke-interface {v8, v0, v1}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v5

    .line 204
    .local v5, imSession:Lcom/google/android/gtalkservice/IImSession;
    if-eqz v5, :cond_1

    .line 205
    invoke-interface {v5, v7}, Lcom/google/android/gtalkservice/IImSession;->getChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v2

    .line 206
    .local v2, chatSession:Lcom/google/android/gtalkservice/IChatSession;
    if-nez v2, :cond_0

    .line 207
    invoke-interface {v5, v7}, Lcom/google/android/gtalkservice/IImSession;->createChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v2

    .line 209
    :cond_0
    invoke-interface {v2}, Lcom/google/android/gtalkservice/IChatSession;->ensureNonZeroLastMessageDate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v2           #chatSession:Lcom/google/android/gtalkservice/IChatSession;
    .end local v5           #imSession:Lcom/google/android/gtalkservice/IImSession;
    :cond_1
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v4

    .line 212
    .local v4, e:Landroid/os/RemoteException;
    const-string v8, "Talk:VideoChatOutputProcessingService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Caught remote exception trying to ensureNonZeroLastMessageDate: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleEndCauseIntent(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    .line 158
    const-string v11, "local_bare_jid"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 159
    .local v8, localBareJid:Ljava/lang/String;
    const-string v11, "remote_bare_jid"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 161
    .local v10, remoteBareJid:Ljava/lang/String;
    const-string v11, "is_video"

    const/4 v12, 0x1

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 163
    .local v7, isVideo:Z
    const-string v11, "end_cause"

    const/4 v12, -0x1

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 165
    .local v5, endCause:I
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 166
    .local v3, cr:Landroid/content/ContentResolver;
    invoke-static {v3, v8}, Lcom/google/android/talk/DatabaseUtils;->getAccountIdForUsername(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    .line 169
    .local v0, accountId:J
    :try_start_0
    iget-object v11, p0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    invoke-interface {v11, v0, v1}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v6

    .line 170
    .local v6, imSession:Lcom/google/android/gtalkservice/IImSession;
    if-eqz v6, :cond_2

    .line 171
    invoke-interface {v6, v10}, Lcom/google/android/gtalkservice/IImSession;->getChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v2

    .line 173
    .local v2, chatSession:Lcom/google/android/gtalkservice/IChatSession;
    if-nez v2, :cond_0

    .line 181
    :cond_0
    if-eqz v2, :cond_1

    .line 182
    invoke-static {v3, v10, v0, v1}, Lcom/google/android/talk/DatabaseUtils;->getNicknameForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v9

    .line 184
    .local v9, nickname:Ljava/lang/String;
    invoke-interface {v2, v9, v7, v5}, Lcom/google/android/gtalkservice/IChatSession;->reportEndCause(Ljava/lang/String;ZI)V

    .line 192
    .end local v2           #chatSession:Lcom/google/android/gtalkservice/IChatSession;
    .end local v6           #imSession:Lcom/google/android/gtalkservice/IImSession;
    .end local v9           #nickname:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 187
    .restart local v6       #imSession:Lcom/google/android/gtalkservice/IImSession;
    :cond_2
    const-string v11, "Talk:VideoChatOutputProcessingService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "no ImSession for account id: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/google/android/talk/TalkApp;->Logwtf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    .end local v6           #imSession:Lcom/google/android/gtalkservice/IImSession;
    :catch_0
    move-exception v4

    .line 190
    .local v4, e:Landroid/os/RemoteException;
    const-string v11, "Talk:VideoChatOutputProcessingService"

    const-string v12, "Problem inserting end cause message into chat history"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleMissedCallIntent(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    .line 125
    const-string v11, "local_bare_jid"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 126
    .local v7, localBareJid:Ljava/lang/String;
    const-string v11, "remote_bare_jid"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 128
    .local v10, remoteBareJid:Ljava/lang/String;
    const-string v11, "is_video"

    const/4 v12, 0x1

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 130
    .local v6, isVideo:Z
    const-string v11, "no_wifi"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 132
    .local v9, noWifi:Z
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 133
    .local v3, cr:Landroid/content/ContentResolver;
    invoke-static {v3, v7}, Lcom/google/android/talk/DatabaseUtils;->getAccountIdForUsername(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    .line 136
    .local v0, accountId:J
    :try_start_0
    iget-object v11, p0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    invoke-interface {v11, v0, v1}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v5

    .line 137
    .local v5, imSession:Lcom/google/android/gtalkservice/IImSession;
    if-eqz v5, :cond_1

    .line 138
    invoke-interface {v5, v10}, Lcom/google/android/gtalkservice/IImSession;->getChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v2

    .line 140
    .local v2, chatSession:Lcom/google/android/gtalkservice/IChatSession;
    if-nez v2, :cond_0

    .line 141
    invoke-interface {v5, v10}, Lcom/google/android/gtalkservice/IImSession;->createChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v2

    .line 144
    :cond_0
    invoke-static {v3, v10, v0, v1}, Lcom/google/android/talk/DatabaseUtils;->getNicknameForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    .line 146
    .local v8, nickname:Ljava/lang/String;
    invoke-interface {v2, v10, v8, v6, v9}, Lcom/google/android/gtalkservice/IChatSession;->reportMissedCall(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 155
    .end local v2           #chatSession:Lcom/google/android/gtalkservice/IChatSession;
    .end local v5           #imSession:Lcom/google/android/gtalkservice/IImSession;
    .end local v8           #nickname:Ljava/lang/String;
    :goto_0
    return-void

    .line 149
    .restart local v5       #imSession:Lcom/google/android/gtalkservice/IImSession;
    :cond_1
    const-string v11, "Talk:VideoChatOutputProcessingService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "no ImSession for account id: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/google/android/talk/TalkApp;->Logwtf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    .end local v5           #imSession:Lcom/google/android/gtalkservice/IImSession;
    :catch_0
    move-exception v4

    .line 152
    .local v4, e:Landroid/os/RemoteException;
    const-string v11, "Talk:VideoChatOutputProcessingService"

    const-string v12, "Problem inserting missed call message into chat history"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private postGTalkServiceTask(Landroid/content/Intent;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->mBackgroundHandler:Lcom/google/android/talk/videochat/VideoChatOutputProcessingService$BackgroundHandler;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService$BackgroundHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 107
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 108
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 110
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->mBackgroundHandler:Lcom/google/android/talk/videochat/VideoChatOutputProcessingService$BackgroundHandler;

    invoke-virtual {v1, v0}, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService$BackgroundHandler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->mServiceBindingRequested:Z

    if-nez v1, :cond_1

    .line 114
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gtalkservice/IGTalkService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    const-string v2, "com.google.android.gsf"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 118
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->mServiceBindingRequested:Z

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->mServiceTaskBuffer:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 66
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 69
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->mBackgroundLooper:Landroid/os/Looper;

    .line 70
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService$BackgroundHandler;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->mBackgroundLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService$BackgroundHandler;-><init>(Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->mBackgroundHandler:Lcom/google/android/talk/videochat/VideoChatOutputProcessingService$BackgroundHandler;

    .line 71
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->mServiceBindingRequested:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 100
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 77
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.google.android.videochat.ACTION_MISSED_CALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    invoke-direct {p0, p1, p3}, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->postGTalkServiceTask(Landroid/content/Intent;I)V

    .line 87
    :cond_0
    :goto_0
    const/4 v1, 0x3

    return v1

    .line 81
    :cond_1
    const-string v1, "com.google.android.videochat.ACTION_END_CAUSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    invoke-direct {p0, p1, p3}, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->postGTalkServiceTask(Landroid/content/Intent;I)V

    goto :goto_0

    .line 83
    :cond_2
    const-string v1, "com.google.android.videochat.ACTION_CALL_IN_PROGRESS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-direct {p0, p1, p3}, Lcom/google/android/talk/videochat/VideoChatOutputProcessingService;->postGTalkServiceTask(Landroid/content/Intent;I)V

    goto :goto_0
.end method
