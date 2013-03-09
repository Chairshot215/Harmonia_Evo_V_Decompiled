.class public Lcom/htc/android/mail/mailservice/NotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationReceiver.java"


# static fields
.field private static final DEBUG:Z

.field public static final EMNattrStartTable:[Ljava/lang/String;

.field public static final EMNattrValueTable:[Ljava/lang/String;

.field public static final EMNtagTable:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "emn"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/android/mail/mailservice/NotificationReceiver;->EMNtagTable:[Ljava/lang/String;

    .line 54
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "timestamp"

    aput-object v1, v0, v3

    const-string v1, "mailbox"

    aput-object v1, v0, v4

    const-string v1, "mailbox=mailat:"

    aput-object v1, v0, v5

    const-string v1, "mailbox=pop://"

    aput-object v1, v0, v6

    const-string v1, "mailbox=imap://"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "mailbox=http://"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mailbox=http://www."

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mailbox=https://"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mailbox=https://www."

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/mailservice/NotificationReceiver;->EMNattrStartTable:[Ljava/lang/String;

    .line 66
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, ".com"

    aput-object v1, v0, v3

    const-string v1, ".edu"

    aput-object v1, v0, v4

    const-string v1, ".net"

    aput-object v1, v0, v5

    const-string v1, ".org"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/android/mail/mailservice/NotificationReceiver;->EMNattrValueTable:[Ljava/lang/String;

    .line 73
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/mailservice/NotificationReceiver;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getAccountId(Landroid/content/ContentValues;)Landroid/os/Bundle;
    .locals 10
    .parameter "values"

    .prologue
    const/4 v0, 0x0

    .line 115
    const-string v7, "mailbox"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-object v0

    .line 118
    :cond_1
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->getAccounts()Landroid/database/Cursor;

    move-result-object v1

    .line 120
    .local v1, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_5

    .line 121
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 122
    const-string v7, "mailbox"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mailat:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "mailbox"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mailat:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_emailaddress"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 124
    const-string v7, "_id"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 125
    .local v2, id:J
    const-string v7, "_provider"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, provider:Ljava/lang/String;
    const-string v7, "_protocol"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 127
    .local v5, mProtocol:I
    invoke-static {v5}, Lcom/htc/android/mail/Mail;->isIMAP4(I)Z

    move-result v4

    .line 129
    .local v4, isIMAP4:Z
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 130
    .local v0, bundle:Landroid/os/Bundle;
    const-string v7, "provider"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v7, "id"

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 132
    const-string v7, "isIMAP4"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_0

    .line 144
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #id:J
    .end local v4           #isIMAP4:Z
    .end local v5           #mProtocol:I
    .end local v6           #provider:Ljava/lang/String;
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 143
    :catchall_0
    move-exception v7

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_3

    .line 144
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_3
    throw v7

    :cond_4
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1
.end method

.method private parseNotification(Lorg/kxml2/wap/WbxmlParser;Landroid/content/Intent;)Landroid/content/ContentValues;
    .locals 1
    .parameter "parser"
    .parameter "intent"

    .prologue
    .line 228
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 77
    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 78
    new-instance v3, Lorg/kxml2/wap/WbxmlParser;

    invoke-direct {v3}, Lorg/kxml2/wap/WbxmlParser;-><init>()V

    invoke-direct {p0, v3, p2}, Lcom/htc/android/mail/mailservice/NotificationReceiver;->parseNotification(Lorg/kxml2/wap/WbxmlParser;Landroid/content/Intent;)Landroid/content/ContentValues;

    move-result-object v2

    .line 81
    .local v2, values:Landroid/content/ContentValues;
    if-nez v2, :cond_1

    .line 111
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-void

    .line 83
    .restart local v2       #values:Landroid/content/ContentValues;
    :cond_1
    invoke-direct {p0, v2}, Lcom/htc/android/mail/mailservice/NotificationReceiver;->getAccountId(Landroid/content/ContentValues;)Landroid/os/Bundle;

    move-result-object v0

    .line 84
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 86
    sget-boolean v3, Lcom/htc/android/mail/mailservice/NotificationReceiver;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "NotificationReceiver"

    const-string v4, "No account match."

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_2
    const-string v3, "NotificationReceiver"

    const-string v4, "Unused code"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_3
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 102
    sget-boolean v3, Lcom/htc/android/mail/mailservice/NotificationReceiver;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "NotificationReceiver"

    const-string v4, "test"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_4
    const-string v3, "android.net.wifi.SMART_WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    sget-boolean v3, Lcom/htc/android/mail/mailservice/NotificationReceiver;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "NotificationReceiver"

    const-string v4, "smartWifi recieved"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 106
    .local v1, smartWifi:Landroid/content/Intent;
    const-string v3, "com.htc.android.mail"

    const-string v4, "com.htc.android.mail.mailservice.MailService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v3, "android.net.wifi.SMART_WIFI_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
