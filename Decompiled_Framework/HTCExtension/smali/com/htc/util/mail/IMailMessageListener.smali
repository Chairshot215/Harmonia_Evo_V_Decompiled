.class public interface abstract Lcom/htc/util/mail/IMailMessageListener;
.super Ljava/lang/Object;
.source "IMailMessageListener.java"


# static fields
.field public static final MESSAGE_NOT_FOUND:I = 0x1

.field public static final MESSAGE_NO_ERROR:I


# virtual methods
.method public abstract onAttachmentDownloaded(Lcom/htc/util/mail/MailMessage;IJ)V
.end method

.method public abstract onMessageRetrieveResult(JI)V
.end method

.method public abstract onMessageRetrieved(Lcom/htc/util/mail/MailMessage;)V
.end method
