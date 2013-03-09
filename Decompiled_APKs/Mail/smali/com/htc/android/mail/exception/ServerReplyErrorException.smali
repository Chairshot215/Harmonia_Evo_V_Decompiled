.class public Lcom/htc/android/mail/exception/ServerReplyErrorException;
.super Lcom/htc/android/mail/exception/MailException;
.source "ServerReplyErrorException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/htc/android/mail/exception/MailException;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/htc/android/mail/exception/MailException;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method
