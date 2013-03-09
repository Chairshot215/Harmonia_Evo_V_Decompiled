.class public Lcom/htc/htcmailwidgets/MailIntent;
.super Ljava/lang/Object;
.source "MailIntent.java"


# static fields
.field public static final ACTION_CONTACT_STATUS_COMPLETED:Ljava/lang/String; = "com.htc.htcmailwidgets.contactstatus_completed"

.field public static final ACTION_DO_NOTHING_COMPLETED:Ljava/lang/String; = "com.htc.htcmailwidgets.donothing_completed"

.field public static final ACTION_FIRST_RUN_COMPLETED:Ljava/lang/String; = "com.htc.htcmailwidgets.firstrun_completed"

.field public static final ACTION_HTC_EAS_ACNT_REMOVED:Ljava/lang/String; = "android.intent.action.EAS_ACCOUNT_REMOVED"

.field public static final ACTION_HTC_MAIL_CHANGE:Ljava/lang/String; = "com.htc.android.mail.intent.change"

.field public static final ACTION_MAIL_STATUS_COMPLETED:Ljava/lang/String; = "com.htc.htcmailwidgets.mailstatus_completed"

.field public static final ACTION_NEWMAIL_RECEIVED:Ljava/lang/String; = "android.mail.notification.NotifyNewMail"

.field public static final ACTION_REQUERY_RUN_COMPLETED:Ljava/lang/String; = "com.htc.htcmailwidgets.requeryrun_completed"

.field public static final ACTION_SECOND_RUN_COMPLETED:Ljava/lang/String; = "com.htc.htcmailwidgets.secondrun_completed"

.field public static final ACTION_TIME_CHANGED_COMPLETED:Ljava/lang/String; = "com.htc.htcmailwidgets.timechanged_completed"

.field public static final EXTRA_HTC_MAIL_ACCOUNTID:Ljava/lang/String; = "accountId"

.field public static final EXTRA_HTC_MAIL_ACCOUNT_CHANGE:Ljava/lang/String; = "accountChange"

.field public static final EXTRA_HTC_MAIL_FLAG_CHANGE:Ljava/lang/String; = "flagChange"

.field public static final EXTRA_HTC_MAIL_MESSAGE_CHANGE:Ljava/lang/String; = "messageChange"

.field public static final EXTRA_HTC_MAIL_MESSAGE_DELETE:Ljava/lang/String; = "messageDelete"

.field public static final EXTRA_HTC_MAIL_MESSAGE_FORWARD:Ljava/lang/String; = "messageForward"

.field public static final EXTRA_HTC_MAIL_MESSAGE_READ:Ljava/lang/String; = "messageRead"

.field public static final EXTRA_HTC_MAIL_MESSAGE_RELOAD:Ljava/lang/String; = "messageReload"

.field public static final EXTRA_HTC_MAIL_MESSAGE_REPLY:Ljava/lang/String; = "messageReply"

.field public static final EXTRA_HTC_MAIL_MESSAGE_UNREAD:Ljava/lang/String; = "messageUnread"

.field public static final EXTRA_HTC_MAIL_SETTING_CHANGE:Ljava/lang/String; = "settingChange"

.field public static final EXTRA_HTC_MAIL_STAR_MARK:Ljava/lang/String; = "starMark"

.field public static final EXTRA_HTC_MAIL_STAR_UNMARK:Ljava/lang/String; = "starUnmark"

.field public static final EXTRA_HTC_MAIL_SYNC_FINISH:Ljava/lang/String; = "syncFinish"

.field public static final EXTRA_HTC_MAIL_SYNC_START:Ljava/lang/String; = "syncStart"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static sendContactStatusCompletedIntent(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.htcmailwidgets.contactstatus_completed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 62
    return-void
.end method

.method public static sendExtractDataCompletedIntent(Landroid/content/Context;JLcom/htc/htcmailwidgets/MailDataManager$QueryState;)V
    .locals 4
    .parameter "context"
    .parameter "acc_id"
    .parameter "state"

    .prologue
    .line 39
    const/4 v2, 0x0

    .line 40
    .local v2, intent:Landroid/content/Intent;
    move-wide v0, p1

    .line 42
    .local v0, account_id:J
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_FIRST_RUN:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    if-ne p3, v3, :cond_0

    .line 43
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v3, "com.htc.htcmailwidgets.firstrun_completed"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .restart local v2       #intent:Landroid/content/Intent;
    :goto_0
    const-string v3, "accountId"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 52
    return-void

    .line 44
    :cond_0
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_SECOND_RUN:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    if-ne p3, v3, :cond_1

    .line 45
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v3, "com.htc.htcmailwidgets.secondrun_completed"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 46
    :cond_1
    sget-object v3, Lcom/htc/htcmailwidgets/MailDataManager$QueryState;->EN_REQUERY_RUN:Lcom/htc/htcmailwidgets/MailDataManager$QueryState;

    if-ne p3, v3, :cond_2

    .line 47
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v3, "com.htc.htcmailwidgets.requeryrun_completed"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 49
    :cond_2
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v3, "com.htc.htcmailwidgets.donothing_completed"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_0
.end method

.method public static sendMailStatusCompletedIntent(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.htcmailwidgets.mailstatus_completed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 57
    return-void
.end method

.method public static sendTimeChangedCompletedIntent(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.htcmailwidgets.timechanged_completed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 66
    return-void
.end method
