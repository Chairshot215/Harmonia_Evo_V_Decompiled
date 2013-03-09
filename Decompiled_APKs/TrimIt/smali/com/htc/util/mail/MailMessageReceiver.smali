.class public Lcom/htc/util/mail/MailMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MailMessageReceiver.java"


# static fields
.field private static final ACTION_HTC_EAS_ACCOUNT_REMOVED:Ljava/lang/String; = "android.intent.action.EAS_ACCOUNT_REMOVED"

.field private static final ACTION_HTC_MAIL_CHANGE:Ljava/lang/String; = "com.htc.android.mail.intent.change"

.field private static final ACTION_HTC_NOTIFY_NEW_MAIL:Ljava/lang/String; = "android.mail.notification.NotifyNewMail"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final EXTRA_HTC_MAIL_ACCOUNTID:Ljava/lang/String; = "accountId"

.field private static final EXTRA_HTC_MAIL_ACCOUNT_CHANGE:Ljava/lang/String; = "accountChange"

.field private static final EXTRA_HTC_MAIL_MESSAGE_CHANGE:Ljava/lang/String; = "messageChange"

.field private static final EXTRA_HTC_MAIL_MESSAGE_DELETE:Ljava/lang/String; = "messageDelete"

.field private static final EXTRA_HTC_MAIL_MESSAGE_READ:Ljava/lang/String; = "messageRead"

.field private static final EXTRA_HTC_MAIL_MESSAGE_RELOAD:Ljava/lang/String; = "messageReload"

.field private static final EXTRA_HTC_MAIL_MESSAGE_UNREAD:Ljava/lang/String; = "messageUnread"

.field private static final EXTRA_HTC_MAIL_SETTING_CHANGE:Ljava/lang/String; = "settingChange"

.field private static final EXTRA_HTC_MAIL_STAR_MARK:Ljava/lang/String; = "starMark"

.field private static final EXTRA_HTC_MAIL_STAR_UNMARK:Ljava/lang/String; = "starUnmark"

.field private static final EXTRA_HTC_MAIL_SYNC_FINISH:Ljava/lang/String; = "syncFinish"

.field private static final EXTRA_HTC_MAIL_SYNC_START:Ljava/lang/String; = "syncStart"

.field private static final TAG:Ljava/lang/String; = "MailMessageReceiver"


# instance fields
.field private mHandleMailManagerMessage:Lcom/htc/util/mail/IHandleMailManagerMessage;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLastActiveContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/htc/util/mail/MailManager;->MAIL_OBJ_DEBUG:Z

    sput-boolean v0, Lcom/htc/util/mail/MailMessageReceiver;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/htc/util/mail/IHandleMailManagerMessage;)V
    .locals 2
    .parameter "m"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/MailMessageReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 57
    iput-object v1, p0, Lcom/htc/util/mail/MailMessageReceiver;->mLastActiveContext:Landroid/content/Context;

    .line 58
    iput-object v1, p0, Lcom/htc/util/mail/MailMessageReceiver;->mHandleMailManagerMessage:Lcom/htc/util/mail/IHandleMailManagerMessage;

    .line 63
    iget-object v0, p0, Lcom/htc/util/mail/MailMessageReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/htc/util/mail/MailMessageReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.android.mail.intent.change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/htc/util/mail/MailMessageReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.EAS_ACCOUNT_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/htc/util/mail/MailMessageReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.mail.notification.NotifyNewMail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lcom/htc/util/mail/MailMessageReceiver;->mHandleMailManagerMessage:Lcom/htc/util/mail/IHandleMailManagerMessage;

    .line 69
    return-void
.end method


# virtual methods
.method public Active(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/util/mail/MailMessageReceiver;->mLastActiveContext:Landroid/content/Context;

    if-ne p1, v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailMessageReceiver;->mLastActiveContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 76
    const-string v0, "MailMessageReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unreg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/mail/MailMessageReceiver;->mLastActiveContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/htc/util/mail/MailMessageReceiver;->mLastActiveContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 79
    :cond_1
    iput-object p1, p0, Lcom/htc/util/mail/MailMessageReceiver;->mLastActiveContext:Landroid/content/Context;

    .line 80
    const-string v0, "MailMessageReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/mail/MailMessageReceiver;->mLastActiveContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/htc/util/mail/MailMessageReceiver;->mLastActiveContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/util/mail/MailMessageReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public Deactive()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/util/mail/MailMessageReceiver;->mLastActiveContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "MailMessageReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unreg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/mail/MailMessageReceiver;->mLastActiveContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/htc/util/mail/MailMessageReceiver;->mLastActiveContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/mail/MailMessageReceiver;->mLastActiveContext:Landroid/content/Context;

    .line 90
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, action:Ljava/lang/String;
    const-string v24, "com.htc.android.mail.intent.change"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 98
    const-string v24, "accountId"

    const-wide/16 v25, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-wide/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 99
    .local v4, accountId:J
    const-string v24, "starMark"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v17

    .line 100
    .local v17, markStar:[J
    const-string v24, "starUnmark"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v23

    .line 101
    .local v23, unMarkStar:[J
    const-string v24, "messageRead"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v19

    .line 102
    .local v19, msgRead:[J
    const-string v24, "messageUnread"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v21

    .line 103
    .local v21, msgUnRead:[J
    const-string v24, "messageDelete"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v18

    .line 104
    .local v18, msgDeleted:[J
    const-string v24, "messageReload"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v20

    .line 105
    .local v20, msgReload:[J
    const-string v24, "settingChange"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 107
    .local v11, isMailSettingChange:Z
    const-string v24, "accountChange"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 108
    .local v9, isAccountChange:Z
    const-string v24, "messageChange"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 109
    .local v10, isMailMessageChange:Z
    const-string v24, "syncStart"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 110
    .local v13, isMailSyncStart:Z
    const-string v24, "syncFinish"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 112
    .local v12, isMailSyncFinished:Z
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    .line 113
    .local v22, sb:Ljava/lang/StringBuffer;
    if-eqz v9, :cond_0

    .line 114
    const-string v24, "[Account Change]"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/MailMessageReceiver;->mHandleMailManagerMessage:Lcom/htc/util/mail/IHandleMailManagerMessage;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/MailMessageReceiver;->mHandleMailManagerMessage:Lcom/htc/util/mail/IHandleMailManagerMessage;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/util/mail/IHandleMailManagerMessage;->onHandleAccountRefresh()V

    .line 117
    :cond_0
    if-eqz v10, :cond_1

    .line 118
    const-string v24, "[Mail Message Change]"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/MailMessageReceiver;->mHandleMailManagerMessage:Lcom/htc/util/mail/IHandleMailManagerMessage;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/MailMessageReceiver;->mHandleMailManagerMessage:Lcom/htc/util/mail/IHandleMailManagerMessage;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/util/mail/IHandleMailManagerMessage;->onHandleFoldersChange()V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/MailMessageReceiver;->mHandleMailManagerMessage:Lcom/htc/util/mail/IHandleMailManagerMessage;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/util/mail/IHandleMailManagerMessage;->onHandleMessageChange()V

    .line 124
    :cond_1
    if-eqz v13, :cond_2

    .line 125
    const-string v24, "[Mail Sync Start]"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/MailMessageReceiver;->mHandleMailManagerMessage:Lcom/htc/util/mail/IHandleMailManagerMessage;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/MailMessageReceiver;->mHandleMailManagerMessage:Lcom/htc/util/mail/IHandleMailManagerMessage;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Lcom/htc/util/mail/IHandleMailManagerMessage;->onHandleAccountSyncStart(J)V

    .line 128
    :cond_2
    if-eqz v12, :cond_3

    .line 129
    const-string v24, "[Mail Sync Finished]"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/MailMessageReceiver;->mHandleMailManagerMessage:Lcom/htc/util/mail/IHandleMailManagerMessage;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/MailMessageReceiver;->mHandleMailManagerMessage:Lcom/htc/util/mail/IHandleMailManagerMessage;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Lcom/htc/util/mail/IHandleMailManagerMessage;->onHandleAccountSyncFinish(J)V

    .line 133
    :cond_3
    const-wide/16 v24, -0x1

    cmp-long v24, v24, v4

    if-eqz v24, :cond_4

    const-string v24, "Account: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 135
    :cond_4
    if-eqz v11, :cond_7

    .line 137
    const-string v24, " Setting Change"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    :cond_5
    sget-boolean v24, Lcom/htc/util/mail/MailMessageReceiver;->DEBUG:Z

    if-eqz v24, :cond_6

    .line 176
    const-string v24, "MailMessageReceiver"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "RECEIVE2:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v4           #accountId:J
    .end local v9           #isAccountChange:Z
    .end local v10           #isMailMessageChange:Z
    .end local v11           #isMailSettingChange:Z
    .end local v12           #isMailSyncFinished:Z
    .end local v13           #isMailSyncStart:Z
    .end local v17           #markStar:[J
    .end local v18           #msgDeleted:[J
    .end local v19           #msgRead:[J
    .end local v20           #msgReload:[J
    .end local v21           #msgUnRead:[J
    .end local v22           #sb:Ljava/lang/StringBuffer;
    .end local v23           #unMarkStar:[J
    :cond_6
    :goto_0
    return-void

    .line 138
    .restart local v4       #accountId:J
    .restart local v9       #isAccountChange:Z
    .restart local v10       #isMailMessageChange:Z
    .restart local v11       #isMailSettingChange:Z
    .restart local v12       #isMailSyncFinished:Z
    .restart local v13       #isMailSyncStart:Z
    .restart local v17       #markStar:[J
    .restart local v18       #msgDeleted:[J
    .restart local v19       #msgRead:[J
    .restart local v20       #msgReload:[J
    .restart local v21       #msgUnRead:[J
    .restart local v22       #sb:Ljava/lang/StringBuffer;
    .restart local v23       #unMarkStar:[J
    :cond_7
    if-eqz v17, :cond_8

    .line 140
    const-string v24, " Message Mark Star:"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    move-object/from16 v7, v17

    .local v7, arr$:[J
    array-length v0, v7

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    move/from16 v0, v16

    if-ge v8, v0, :cond_5

    aget-wide v14, v7, v8

    .line 142
    .local v14, l:J
    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 144
    .end local v7           #arr$:[J
    .end local v8           #i$:I
    .end local v14           #l:J
    .end local v16           #len$:I
    :cond_8
    if-eqz v23, :cond_9

    .line 146
    const-string v24, " Message Unmark Star:"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    move-object/from16 v7, v23

    .restart local v7       #arr$:[J
    array-length v0, v7

    move/from16 v16, v0

    .restart local v16       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_2
    move/from16 v0, v16

    if-ge v8, v0, :cond_5

    aget-wide v14, v7, v8

    .line 148
    .restart local v14       #l:J
    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 150
    .end local v7           #arr$:[J
    .end local v8           #i$:I
    .end local v14           #l:J
    .end local v16           #len$:I
    :cond_9
    if-eqz v19, :cond_a

    .line 152
    const-string v24, " Message Read:"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    move-object/from16 v7, v19

    .restart local v7       #arr$:[J
    array-length v0, v7

    move/from16 v16, v0

    .restart local v16       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_3
    move/from16 v0, v16

    if-ge v8, v0, :cond_5

    aget-wide v14, v7, v8

    .line 154
    .restart local v14       #l:J
    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 156
    .end local v7           #arr$:[J
    .end local v8           #i$:I
    .end local v14           #l:J
    .end local v16           #len$:I
    :cond_a
    if-eqz v21, :cond_b

    .line 158
    const-string v24, " Message Unread:"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    move-object/from16 v7, v21

    .restart local v7       #arr$:[J
    array-length v0, v7

    move/from16 v16, v0

    .restart local v16       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_4
    move/from16 v0, v16

    if-ge v8, v0, :cond_5

    aget-wide v14, v7, v8

    .line 160
    .restart local v14       #l:J
    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 162
    .end local v7           #arr$:[J
    .end local v8           #i$:I
    .end local v14           #l:J
    .end local v16           #len$:I
    :cond_b
    if-eqz v18, :cond_c

    .line 164
    const-string v24, " Message Deleted:"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    move-object/from16 v7, v18

    .restart local v7       #arr$:[J
    array-length v0, v7

    move/from16 v16, v0

    .restart local v16       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_5
    move/from16 v0, v16

    if-ge v8, v0, :cond_5

    aget-wide v14, v7, v8

    .line 166
    .restart local v14       #l:J
    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 167
    .end local v7           #arr$:[J
    .end local v8           #i$:I
    .end local v14           #l:J
    .end local v16           #len$:I
    :cond_c
    if-eqz v20, :cond_5

    .line 169
    const-string v24, " Message Reload:"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    move-object/from16 v7, v20

    .restart local v7       #arr$:[J
    array-length v0, v7

    move/from16 v16, v0

    .restart local v16       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_6
    move/from16 v0, v16

    if-ge v8, v0, :cond_5

    aget-wide v14, v7, v8

    .line 171
    .restart local v14       #l:J
    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 181
    .end local v4           #accountId:J
    .end local v7           #arr$:[J
    .end local v8           #i$:I
    .end local v9           #isAccountChange:Z
    .end local v10           #isMailMessageChange:Z
    .end local v11           #isMailSettingChange:Z
    .end local v12           #isMailSyncFinished:Z
    .end local v13           #isMailSyncStart:Z
    .end local v14           #l:J
    .end local v16           #len$:I
    .end local v17           #markStar:[J
    .end local v18           #msgDeleted:[J
    .end local v19           #msgRead:[J
    .end local v20           #msgReload:[J
    .end local v21           #msgUnRead:[J
    .end local v22           #sb:Ljava/lang/StringBuffer;
    .end local v23           #unMarkStar:[J
    :cond_d
    sget-boolean v24, Lcom/htc/util/mail/MailMessageReceiver;->DEBUG:Z

    if-eqz v24, :cond_6

    .line 183
    const-string v24, "MailMessageReceiver"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "NPR:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
