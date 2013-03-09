.class public abstract Lcom/google/android/talk/GtalkServiceActivity;
.super Landroid/app/Activity;
.source "GtalkServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;
    }
.end annotation


# static fields
.field private static sInterceptingOnSessionCreatedListener:Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;


# instance fields
.field private mApp:Lcom/google/android/talk/TalkApp;

.field protected final mHandler:Landroid/os/Handler;

.field private mImSession:Lcom/google/android/gtalkservice/IImSession;

.field private mInForeground:Z

.field private mOnSessionCreatedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/google/android/gtalkservice/IGTalkService;

.field private mSessionDispatchWindowOpen:Z

.field private mTellGSFAppInForegroundRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    new-instance v0, Lcom/google/android/talk/GtalkServiceActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/GtalkServiceActivity$1;-><init>(Lcom/google/android/talk/GtalkServiceActivity;)V

    iput-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mTellGSFAppInForegroundRunnable:Ljava/lang/Runnable;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mHandler:Landroid/os/Handler;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/GtalkServiceActivity;)Lcom/google/android/gtalkservice/IGTalkService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/talk/GtalkServiceActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mInForeground:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/talk/GtalkServiceActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mTellGSFAppInForegroundRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private createListeners()V
    .locals 2

    .prologue
    .line 156
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 161
    const-string v0, "talk"

    const-string v1, "GtalkServiceActivity.createListeners called on non-main thread"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mOnSessionCreatedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mOnSessionCreatedListeners:Ljava/util/ArrayList;

    .line 168
    sget-object v0, Lcom/google/android/talk/GtalkServiceActivity;->sInterceptingOnSessionCreatedListener:Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mOnSessionCreatedListeners:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/talk/GtalkServiceActivity;->sInterceptingOnSessionCreatedListener:Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_1
    return-void
.end method

.method private dispatchSessionCreated(Lcom/google/android/gtalkservice/IImSession;)V
    .locals 3
    .parameter "session"

    .prologue
    .line 111
    iget-object v2, p0, Lcom/google/android/talk/GtalkServiceActivity;->mOnSessionCreatedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;

    .line 112
    .local v1, listener:Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;
    invoke-interface {v1, p1}, Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;->onSessionCreated(Lcom/google/android/gtalkservice/IImSession;)V

    goto :goto_0

    .line 114
    .end local v1           #listener:Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 222
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GtalkServiceActivity] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnSessionCreatedListener(Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 127
    sget-object v0, Lcom/google/android/talk/GtalkServiceActivity;->sInterceptingOnSessionCreatedListener:Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mOnSessionCreatedListeners:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/talk/GtalkServiceActivity;->sInterceptingOnSessionCreatedListener:Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {p1, v0}, Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;->onSessionCreated(Lcom/google/android/gtalkservice/IImSession;)V

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mOnSessionCreatedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected abstract getAccountId()J
.end method

.method public getApp()Lcom/google/android/talk/TalkApp;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mApp:Lcom/google/android/talk/TalkApp;

    if-nez v0, :cond_0

    .line 73
    invoke-static {p0}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mApp:Lcom/google/android/talk/TalkApp;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mApp:Lcom/google/android/talk/TalkApp;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedStates"

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    invoke-direct {p0}, Lcom/google/android/talk/GtalkServiceActivity;->createListeners()V

    .line 153
    return-void
.end method

.method public onRestart()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 205
    iput-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    .line 206
    iput-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    .line 207
    iget-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->ensureServiceBound()V

    .line 208
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 180
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/talk/GtalkServiceActivity;->mInForeground:Z

    .line 183
    invoke-static {}, Lcom/google/android/talk/TalkApp;->refreshTalkLogLevel()I

    .line 186
    invoke-virtual {p0}, Lcom/google/android/talk/GtalkServiceActivity;->getAccountId()J

    move-result-wide v0

    .line 187
    .local v0, accountId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/google/android/talk/GtalkServiceActivity;->getApp()Lcom/google/android/talk/TalkApp;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/talk/TalkApp;->isAccountIdValid(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 189
    const-string v2, "Active account no longer in account list"

    invoke-direct {p0, v2}, Lcom/google/android/talk/GtalkServiceActivity;->log(Ljava/lang/String;)V

    .line 190
    invoke-static {p0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V

    .line 196
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/GtalkServiceActivity;->registerForSessionAvailable()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 216
    invoke-virtual {p0}, Lcom/google/android/talk/GtalkServiceActivity;->unregisterForSessionAvailable()V

    .line 217
    iget-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/GtalkServiceActivity;->mTellGSFAppInForegroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mInForeground:Z

    .line 219
    return-void
.end method

.method protected registerForSessionAvailable()V
    .locals 5

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mSessionDispatchWindowOpen:Z

    .line 56
    invoke-virtual {p0}, Lcom/google/android/talk/GtalkServiceActivity;->getApp()Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/GtalkServiceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/talk/GtalkServiceActivity;->getAccountId()J

    move-result-wide v2

    new-instance v4, Lcom/google/android/talk/GtalkServiceActivity$2;

    invoke-direct {v4, p0}, Lcom/google/android/talk/GtalkServiceActivity$2;-><init>(Lcom/google/android/talk/GtalkServiceActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/talk/TalkApp;->addImSessionAvailableCallback(Landroid/os/Handler;JLcom/google/android/talk/SessionAvailableRunnable;)V

    .line 64
    return-void
.end method

.method public removeOnSessionCreatedListener(Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 140
    if-eqz p1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mOnSessionCreatedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    return-void
.end method

.method protected sessionAvailable(Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/gtalkservice/IImSession;)V
    .locals 2
    .parameter "service"
    .parameter "session"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mSessionDispatchWindowOpen:Z

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 89
    :cond_0
    if-eqz p1, :cond_3

    .line 90
    const-string v0, "service connected"

    invoke-direct {p0, v0}, Lcom/google/android/talk/GtalkServiceActivity;->log(Ljava/lang/String;)V

    .line 91
    iput-object p1, p0, Lcom/google/android/talk/GtalkServiceActivity;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    .line 92
    iput-object p2, p0, Lcom/google/android/talk/GtalkServiceActivity;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    .line 93
    iget-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-nez v0, :cond_1

    .line 94
    const-string v0, "talk"

    const-string v1, "serviceStateChanged gave us null session"

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->Logwtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mInForeground:Z

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/GtalkServiceActivity;->mTellGSFAppInForegroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-direct {p0, v0}, Lcom/google/android/talk/GtalkServiceActivity;->dispatchSessionCreated(Lcom/google/android/gtalkservice/IImSession;)V

    goto :goto_0

    .line 102
    :cond_3
    const-string v0, "service disconnected"

    invoke-direct {p0, v0}, Lcom/google/android/talk/GtalkServiceActivity;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected unregisterForSessionAvailable()V
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mSessionDispatchWindowOpen:Z

    .line 68
    invoke-virtual {p0}, Lcom/google/android/talk/GtalkServiceActivity;->getApp()Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/GtalkServiceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/TalkApp;->removeImSessionAvailableCallback(Landroid/os/Handler;)V

    .line 69
    return-void
.end method
