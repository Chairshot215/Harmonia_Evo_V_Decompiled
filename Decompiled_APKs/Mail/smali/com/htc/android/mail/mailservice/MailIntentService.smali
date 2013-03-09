.class public Lcom/htc/android/mail/mailservice/MailIntentService;
.super Landroid/app/IntentService;
.source "MailIntentService.java"


# static fields
.field public static final ACTION_CLEAR_IDLE_SERVER:Ljava/lang/String; = "com.htc.android.mail.mailservice.MailIntentService.CLEAR_IDLE_SERVER"

.field public static final ACTION_INIT_ACCOUNT_POOL:Ljava/lang/String; = "com.htc.android.mail.mailservice.MailIntentService.INIT_ACCOUNT_POOL"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MailIntentService"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/mailservice/MailIntentService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "MailIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/mailservice/MailIntentService;->setIntentRedelivery(Z)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 31
    const-string v1, "com.htc.android.mail.mailservice.MailIntentService.CLEAR_IDLE_SERVER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    invoke-static {p0}, Lcom/htc/android/mail/server/ServerPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/server/ServerPool;

    move-result-object v0

    .line 33
    .local v0, serverPool:Lcom/htc/android/mail/server/ServerPool;
    invoke-virtual {v0}, Lcom/htc/android/mail/server/ServerPool;->clearIdleServer()V

    .line 56
    .end local v0           #serverPool:Lcom/htc/android/mail/server/ServerPool;
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 36
    :cond_2
    invoke-static {p0}, Lcom/htc/android/mail/Account;->updateNextFetchTimes(Landroid/content/Context;)V

    .line 37
    invoke-static {p0}, Lcom/htc/android/mail/Mail;->setServicesEnabled(Landroid/content/Context;)V

    .line 38
    sget-boolean v1, Lcom/htc/android/mail/mailservice/MailIntentService;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "MailIntentService"

    const-string v2, " try reschedule peak!"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_3
    invoke-static {p0}, Lcom/htc/android/mail/mailservice/MailService;->actionReschedulePeak(Landroid/content/Context;)V

    .line 40
    sget-boolean v1, Lcom/htc/android/mail/mailservice/MailIntentService;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "MailIntentService"

    const-string v2, "Mail Receiver get ACTION_BOOT_COMPLETED"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_4
    invoke-static {p0}, Lcom/htc/android/mail/NewMailNotification;->showAllNewMailNotificaitionInBlockingMode(Landroid/content/Context;)V

    .line 42
    invoke-static {p0}, Lcom/htc/android/mail/SMTPAccountErrorNotification;->showAllSMTPAccountErrorNotificaitionInBlockingMode(Landroid/content/Context;)V

    .line 43
    invoke-static {p0}, Lcom/htc/android/mail/SendErrorNotification;->showAllSendErrorNotificaitionInBlockingMode(Landroid/content/Context;)V

    goto :goto_0

    .line 44
    :cond_5
    const-string v1, "android.htc.intent.action.CUSTOMIZATION_FORCE_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 45
    invoke-static {p0}, Lcom/htc/android/mail/HtcMailCustomization;->reload(Landroid/content/Context;)V

    goto :goto_0

    .line 46
    :cond_6
    const-string v1, "com.htc.android.mail.mailservice.MailIntentService.INIT_ACCOUNT_POOL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 47
    invoke-static {p0}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    goto :goto_0

    .line 48
    :cond_7
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    sget-boolean v1, Lcom/htc/android/mail/mailservice/MailIntentService;->DEBUG:Z

    if-eqz v1, :cond_8

    const-string v1, "MailIntentService"

    const-string v2, "enter locale changed"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_8
    invoke-static {p0}, Lcom/htc/android/mail/Util;->getAccountCountPref(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_0

    .line 51
    invoke-static {p0}, Lcom/htc/android/mail/NewMailNotification;->reShowAllNewMailNotificaitionInBlockingMode(Landroid/content/Context;)V

    .line 52
    invoke-static {p0}, Lcom/htc/android/mail/SMTPAccountErrorNotification;->reShowAllSMTPAccountErrorNotificaitionInBlockingMode(Landroid/content/Context;)V

    .line 53
    invoke-static {p0}, Lcom/htc/android/mail/SendErrorNotification;->reShowAllSendErrorNotificaitionInBlockingMode(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
