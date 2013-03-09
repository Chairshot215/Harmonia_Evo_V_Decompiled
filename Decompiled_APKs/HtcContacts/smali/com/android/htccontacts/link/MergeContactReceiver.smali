.class public Lcom/android/htccontacts/link/MergeContactReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MergeContactReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/link/MergeContactReceiver$MergeCompleteTaskHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_MERGE_COMPLETE:I = 0x1

.field private static final MSG_MERGE_COMPLETE_UI_REACTION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MergeContactReceiver"

.field private static sHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private isManullyLinked:Z

.field private mHandler:Landroid/os/Handler;

.field private mMergeCompleteTaskHandler:Lcom/android/htccontacts/link/MergeContactReceiver$MergeCompleteTaskHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/link/MergeContactReceiver;->isManullyLinked:Z

    .line 78
    new-instance v0, Lcom/android/htccontacts/link/MergeContactReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/link/MergeContactReceiver$1;-><init>(Lcom/android/htccontacts/link/MergeContactReceiver;)V

    iput-object v0, p0, Lcom/android/htccontacts/link/MergeContactReceiver;->mHandler:Landroid/os/Handler;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/link/MergeContactReceiver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/htccontacts/link/MergeContactReceiver;->isManullyLinked:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/htccontacts/link/MergeContactReceiver;Landroid/content/Context;Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/link/MergeContactReceiver;->nofityFoundSuggest(Landroid/content/Context;Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;)V

    return-void
.end method

.method private createShowSuggestIntent(Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, mContactsHasSuggest:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.htccontacts"

    const-string v2, "com.android.htccontacts.link.DisplaySuggestionActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v1, "contacts_has_suggest"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 135
    return-object v0
.end method

.method private nofityFoundSuggest(Landroid/content/Context;Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;)V
    .locals 11
    .parameter "context"
    .parameter "result"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 99
    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 104
    .local v1, nm:Landroid/app/NotificationManager;
    iget v5, p2, Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;->mCount:I

    if-lez v5, :cond_0

    iget-object v5, p2, Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;->mContactsHasSuggest:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 105
    const-string v5, "MergeContactReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-----------nofityFoundSuggest!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;->mCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0281

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, title:Ljava/lang/CharSequence;
    const-string v0, ""

    .line 108
    .local v0, description:Ljava/lang/CharSequence;
    iget v5, p2, Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;->mCount:I

    if-ne v5, v9, :cond_1

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0283

    new-array v7, v9, [Ljava/lang/Object;

    iget v8, p2, Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;->mCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 112
    :goto_0
    new-instance v2, Landroid/app/Notification;

    const v5, 0x7f020054

    const-string v6, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v2, v5, v6, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 116
    .local v2, notification:Landroid/app/Notification;
    iget-object v5, p2, Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;->mContactsHasSuggest:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/android/htccontacts/link/MergeContactReceiver;->createShowSuggestIntent(Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x1000

    invoke-static {p1, v10, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 119
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v2, p1, v4, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 122
    invoke-virtual {v1, v9, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 124
    .end local v0           #description:Ljava/lang/CharSequence;
    .end local v2           #notification:Landroid/app/Notification;
    .end local v3           #pendingIntent:Landroid/app/PendingIntent;
    .end local v4           #title:Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 111
    .restart local v0       #description:Ljava/lang/CharSequence;
    .restart local v4       #title:Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0282

    new-array v7, v9, [Ljava/lang/Object;

    iget v8, p2, Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;->mCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 63
    sget-object v3, Lcom/android/htccontacts/link/MergeContactReceiver;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v3, :cond_0

    .line 64
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "MergeCompleteThread"

    const/16 v5, 0xa

    invoke-direct {v3, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/htccontacts/link/MergeContactReceiver;->sHandlerThread:Landroid/os/HandlerThread;

    .line 65
    sget-object v3, Lcom/android/htccontacts/link/MergeContactReceiver;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    .local v0, applicationContext:Landroid/content/Context;
    sget-object v3, Lcom/android/htccontacts/link/MergeContactReceiver;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 69
    .local v1, looper:Landroid/os/Looper;
    new-instance v3, Lcom/android/htccontacts/link/MergeContactReceiver$MergeCompleteTaskHandler;

    iget-object v4, p0, Lcom/android/htccontacts/link/MergeContactReceiver;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, v0, v4, v1}, Lcom/android/htccontacts/link/MergeContactReceiver$MergeCompleteTaskHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/htccontacts/link/MergeContactReceiver;->mMergeCompleteTaskHandler:Lcom/android/htccontacts/link/MergeContactReceiver$MergeCompleteTaskHandler;

    .line 71
    iget-object v3, p0, Lcom/android/htccontacts/link/MergeContactReceiver;->mMergeCompleteTaskHandler:Lcom/android/htccontacts/link/MergeContactReceiver$MergeCompleteTaskHandler;

    invoke-virtual {v3, v6}, Lcom/android/htccontacts/link/MergeContactReceiver$MergeCompleteTaskHandler;->removeMessages(I)V

    .line 72
    iget-object v3, p0, Lcom/android/htccontacts/link/MergeContactReceiver;->mMergeCompleteTaskHandler:Lcom/android/htccontacts/link/MergeContactReceiver$MergeCompleteTaskHandler;

    invoke-virtual {v3, v6, p2}, Lcom/android/htccontacts/link/MergeContactReceiver$MergeCompleteTaskHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 73
    .local v2, message:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/htccontacts/link/MergeContactReceiver;->mMergeCompleteTaskHandler:Lcom/android/htccontacts/link/MergeContactReceiver$MergeCompleteTaskHandler;

    invoke-virtual {v3, v2}, Lcom/android/htccontacts/link/MergeContactReceiver$MergeCompleteTaskHandler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    return-void
.end method
