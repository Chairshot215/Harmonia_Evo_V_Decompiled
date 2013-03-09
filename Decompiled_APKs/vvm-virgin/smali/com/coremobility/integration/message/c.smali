.class public final Lcom/coremobility/integration/message/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field private static d:Lcom/coremobility/integration/message/b;

.field private static e:Landroid/telephony/SmsManager;

.field private static f:Lcom/coremobility/integration/message/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/message/c;->d:Lcom/coremobility/integration/message/b;

    sput-object v0, Lcom/coremobility/integration/message/c;->e:Landroid/telephony/SmsManager;

    sput-object v0, Lcom/coremobility/integration/message/c;->f:Lcom/coremobility/integration/message/c;

    const-string v0, "content://mms-sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/message/c;->a:Landroid/net/Uri;

    const-string v1, "conversations"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/message/c;->b:Landroid/net/Uri;

    sget-object v0, Lcom/coremobility/integration/message/c;->a:Landroid/net/Uri;

    const-string v1, "threadID"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/message/c;->c:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/coremobility/integration/message/c;
    .locals 1

    sget-object v0, Lcom/coremobility/integration/message/c;->f:Lcom/coremobility/integration/message/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coremobility/integration/message/c;

    invoke-direct {v0}, Lcom/coremobility/integration/message/c;-><init>()V

    sput-object v0, Lcom/coremobility/integration/message/c;->f:Lcom/coremobility/integration/message/c;

    :cond_0
    sget-object v0, Lcom/coremobility/integration/message/c;->f:Lcom/coremobility/integration/message/c;

    return-object v0
.end method

.method public static a(Lcom/coremobility/integration/message/b;)V
    .locals 0

    sput-object p0, Lcom/coremobility/integration/message/c;->d:Lcom/coremobility/integration/message/b;

    return-void
.end method

.method public static a(Lcom/coremobility/integration/message/d;)V
    .locals 6

    const/16 v4, 0x17

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/coremobility/integration/message/d;->a()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "CM_SMSManager: msg does not have exactly 1 to recipient"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/coremobility/integration/message/c;->e:Landroid/telephony/SmsManager;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/message/c;->e:Landroid/telephony/SmsManager;

    :cond_1
    invoke-virtual {p0}, Lcom/coremobility/integration/message/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/coremobility/integration/message/d;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/coremobility/integration/message/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/coremobility/integration/message/c;->e:Landroid/telephony/SmsManager;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android SMSManager.sendTextMessage does not support destination address as email: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremobility/integration/message/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static b(Lcom/coremobility/integration/message/d;)Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/coremobility/integration/message/c;->d:Lcom/coremobility/integration/message/b;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/coremobility/integration/message/c;->d:Lcom/coremobility/integration/message/b;

    invoke-interface {v0, p0}, Lcom/coremobility/integration/message/b;->a(Lcom/coremobility/integration/message/d;)Z

    move-result v0

    :cond_0
    return v0
.end method
