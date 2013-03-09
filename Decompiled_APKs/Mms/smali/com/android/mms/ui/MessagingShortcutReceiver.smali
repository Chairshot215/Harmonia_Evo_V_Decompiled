.class public Lcom/android/mms/ui/MessagingShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MessagingShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessagingShortcutReceiver$1;,
        Lcom/android/mms/ui/MessagingShortcutReceiver$ReceiveShortCutTask;,
        Lcom/android/mms/ui/MessagingShortcutReceiver$ShortCutTask;
    }
.end annotation


# static fields
.field private static final MMS_STATUS_PROJECTION:[Ljava/lang/String; = null

.field private static final NEW_INCOMING_MM_CONSTRAINT:Ljava/lang/String; = "(msg_box=1 AND read=0 AND (m_type=130 OR m_type=132))"

.field private static final NEW_INCOMING_SM_CONSTRAINT:Ljava/lang/String; = "(type = 1 AND read = 0)"

.field private static final SMS_STATUS_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MessagingShortcutReceiver"

.field private static bUpdateing:Z


# instance fields
.field private bgTask:Lcom/android/mms/ui/MessagingShortcutReceiver$ShortCutTask;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v2

    const-string v1, "date"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/ui/MessagingShortcutReceiver;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 51
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v2

    const-string v1, "date"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/ui/MessagingShortcutReceiver;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 65
    sput-boolean v2, Lcom/android/mms/ui/MessagingShortcutReceiver;->bUpdateing:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 89
    new-instance v0, Lcom/android/mms/ui/MessagingShortcutReceiver$ShortCutTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessagingShortcutReceiver$ShortCutTask;-><init>(Lcom/android/mms/ui/MessagingShortcutReceiver$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingShortcutReceiver;->bgTask:Lcom/android/mms/ui/MessagingShortcutReceiver$ShortCutTask;

    .line 222
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-boolean p0, Lcom/android/mms/ui/MessagingShortcutReceiver;->bUpdateing:Z

    return p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 94
    const-string v4, "com.htc.launcher.action.ACTION_ITEM_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.htc.launcher.intent.LOADING_COMPLETE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 112
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgShortcutRule()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 115
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 117
    const/4 v3, -0x1

    .line 118
    .local v3, vvm_count:I
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->getReceivedNotificationShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    const-string v4, "MessagingShortcutReceiver"

    const-string v5, "update unread count"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v0, -0x1

    .line 125
    .local v0, count:I
    :goto_0
    invoke-static {p1}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v4

    invoke-virtual {v4, p1, v0, v6}, Lcom/android/mms/ui/MessagingController;->updateMsgShortcut(Landroid/content/Context;IZ)V

    .line 126
    invoke-static {p1}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v4

    invoke-virtual {v4, p1, v3, v6}, Lcom/android/mms/ui/MessagingController;->updateVvmShortcut(Landroid/content/Context;IZ)V

    .line 219
    .end local v0           #count:I
    .end local v3           #vvm_count:I
    :cond_1
    :goto_1
    return-void

    .line 122
    .restart local v3       #vvm_count:I
    :cond_2
    const-string v4, "MessagingShortcutReceiver"

    const-string v5, "keep hiding shortcut bubble"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v0, 0x0

    .restart local v0       #count:I
    goto :goto_0

    .line 128
    .end local v0           #count:I
    .end local v3           #vvm_count:I
    :cond_3
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->getReceivedNotificationShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 129
    const-string v4, "MessagingShortcutReceiver"

    const-string v5, "update unread count"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-boolean v4, Lcom/android/mms/ui/MessagingShortcutReceiver;->bUpdateing:Z

    if-nez v4, :cond_1

    .line 131
    iget-object v4, p0, Lcom/android/mms/ui/MessagingShortcutReceiver;->bgTask:Lcom/android/mms/ui/MessagingShortcutReceiver$ShortCutTask;

    iput-object p1, v4, Lcom/android/mms/ui/MessagingShortcutReceiver$ShortCutTask;->mContext:Landroid/content/Context;

    .line 132
    iget-object v4, p0, Lcom/android/mms/ui/MessagingShortcutReceiver;->bgTask:Lcom/android/mms/ui/MessagingShortcutReceiver$ShortCutTask;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingShortcutReceiver;->getResultCode()I

    move-result v5

    iput v5, v4, Lcom/android/mms/ui/MessagingShortcutReceiver$ShortCutTask;->mResultCode:I

    .line 133
    iget-object v4, p0, Lcom/android/mms/ui/MessagingShortcutReceiver;->bgTask:Lcom/android/mms/ui/MessagingShortcutReceiver$ShortCutTask;

    new-array v5, v6, [Landroid/content/Intent;

    aput-object p2, v5, v8

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/MessagingShortcutReceiver$ShortCutTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 135
    :cond_4
    const-string v4, "MessagingShortcutReceiver"

    const-string v5, "keep hiding shortcut bubble"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v4, p0, Lcom/android/mms/ui/MessagingShortcutReceiver;->bgTask:Lcom/android/mms/ui/MessagingShortcutReceiver$ShortCutTask;

    invoke-virtual {v4, v6}, Lcom/android/mms/ui/MessagingShortcutReceiver$ShortCutTask;->cancel(Z)Z

    .line 137
    invoke-static {p1}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v4

    invoke-virtual {v4, p1, v7, v6}, Lcom/android/mms/ui/MessagingController;->updateMsgShortcut(Landroid/content/Context;IZ)V

    goto :goto_1

    .line 143
    :cond_5
    const-string v4, "MessagingShortcutReceiver"

    const-string v5, "update all shortcuts"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {p1}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v4

    invoke-virtual {v4, p1, v7, v6}, Lcom/android/mms/ui/MessagingController;->updateAllShhortcuts(Landroid/content/Context;IZ)V

    goto :goto_1

    .line 152
    :cond_6
    const-string v4, "com.android.mms.updateShortcut"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 154
    const-string v4, "from_tab"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 155
    .local v1, from_tab:Z
    const-string v4, "from_htcmsg"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 158
    .local v2, from_vvm:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v2, :cond_7

    .line 159
    const-string v4, "MessagingShortcutReceiver"

    const-string v5, "update vvm shortcut"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {p1}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v4

    invoke-virtual {v4, p1, v7, v6}, Lcom/android/mms/ui/MessagingController;->updateVvmShortcut(Landroid/content/Context;IZ)V

    goto/16 :goto_1

    .line 164
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgShortcutRule()Z

    move-result v4

    if-nez v4, :cond_1

    .line 168
    if-eqz v1, :cond_1

    .line 171
    invoke-static {p1}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v4

    invoke-virtual {v4, p1, v7, v6}, Lcom/android/mms/ui/MessagingController;->updateMsgShortcut(Landroid/content/Context;IZ)V

    goto/16 :goto_1
.end method
