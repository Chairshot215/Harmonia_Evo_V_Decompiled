.class Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory$ReturnOngoingNotificationTask;
.super Landroid/os/AsyncTask;
.source "TalkOngoingNotificationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReturnOngoingNotificationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/google/android/videochat/OngoingNotificationFactory$OngoingNotificationReadyCallback;

.field private mRemoteBareJid:Ljava/lang/String;

.field private mVideo:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;Lcom/google/android/videochat/OngoingNotificationFactory$OngoingNotificationReadyCallback;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter "callback"
    .parameter "remoteBareJid"
    .parameter "video"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory$ReturnOngoingNotificationTask;->this$0:Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory$ReturnOngoingNotificationTask;->mCallback:Lcom/google/android/videochat/OngoingNotificationFactory$OngoingNotificationReadyCallback;

    .line 57
    iput-object p3, p0, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory$ReturnOngoingNotificationTask;->mRemoteBareJid:Ljava/lang/String;

    .line 58
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory$ReturnOngoingNotificationTask;->mVideo:Ljava/lang/Boolean;

    .line 59
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .parameter "params"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory$ReturnOngoingNotificationTask;->this$0:Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;

    #getter for: Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;->access$000(Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/google/android/talk/DatabaseUtils;->getAccountIdForUsername(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory$ReturnOngoingNotificationTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 7
    .parameter

    .prologue
    const/high16 v6, 0x1400

    const/4 v5, 0x0

    .line 68
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory$ReturnOngoingNotificationTask;->this$0:Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;

    #getter for: Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;->access$000(Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    iget-object v0, p0, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory$ReturnOngoingNotificationTask;->this$0:Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;

    #getter for: Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;->access$000(Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 73
    iget-object v0, p0, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory$ReturnOngoingNotificationTask;->mVideo:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0200ba

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 77
    iget-object v0, p0, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory$ReturnOngoingNotificationTask;->mVideo:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    const v0, 0x7f0c00d1

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 79
    const v0, 0x7f0c00d2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 80
    iget-object v0, p0, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory$ReturnOngoingNotificationTask;->this$0:Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;

    #getter for: Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;->access$000(Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;)Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory$ReturnOngoingNotificationTask;->this$0:Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;

    #getter for: Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;->access$000(Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "from"

    iget-object v4, p0, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory$ReturnOngoingNotificationTask;->mRemoteBareJid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "accountId"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v0, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 105
    :goto_1
    iget-object v0, p0, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory$ReturnOngoingNotificationTask;->mCallback:Lcom/google/android/videochat/OngoingNotificationFactory$OngoingNotificationReadyCallback;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/videochat/OngoingNotificationFactory$OngoingNotificationReadyCallback;->onOngoingNotificationReady(Landroid/app/Notification;)V

    .line 106
    return-void

    .line 73
    :cond_0
    const v0, 0x7f0200b9

    goto :goto_0

    .line 91
    :cond_1
    const v0, 0x7f0c00d3

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 92
    const v0, 0x7f0c00d4

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 93
    iget-object v0, p0, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory$ReturnOngoingNotificationTask;->this$0:Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;

    #getter for: Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;->access$000(Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;)Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory$ReturnOngoingNotificationTask;->this$0:Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;

    #getter for: Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;->access$000(Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/google/android/talk/BuddyListCombo;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "from"

    iget-object v4, p0, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory$ReturnOngoingNotificationTask;->mRemoteBareJid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "accountId"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v0, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory$ReturnOngoingNotificationTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
