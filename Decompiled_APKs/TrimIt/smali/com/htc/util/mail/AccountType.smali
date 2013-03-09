.class public Lcom/htc/util/mail/AccountType;
.super Ljava/lang/Object;
.source "AccountType.java"


# static fields
.field public static final MAIL_ACCOUNT_SECURITY_NONE:I = 0x0

.field public static final MAIL_ACCOUNT_SECURITY_SSL:I = 0x1

.field public static final MAIL_ACCOUNT_SECURITY_TLS:I = 0x2

.field public static final MAIL_TYPE_ALL:I = 0x5

.field public static final MAIL_TYPE_APOP:I = 0x1

.field public static final MAIL_TYPE_EXCHANGE:I = 0x4

.field public static final MAIL_TYPE_IMAP:I = 0x2

.field public static final MAIL_TYPE_POP3:I = 0x0

.field public static final MAIL_TYPE_SMTP:I = 0x3

.field public static final MAIL_TYPE_UNKNOWN:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isAPOP(I)Z
    .locals 1
    .parameter "protocol"

    .prologue
    const/4 v0, 0x1

    .line 185
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isExchange(I)Z
    .locals 1
    .parameter "protocol"

    .prologue
    .line 155
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isIMAP4(I)Z
    .locals 1
    .parameter "protocol"

    .prologue
    .line 145
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isPOP3(I)Z
    .locals 1
    .parameter "protocol"

    .prologue
    .line 165
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isSMTP(I)Z
    .locals 1
    .parameter "protocol"

    .prologue
    .line 175
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
