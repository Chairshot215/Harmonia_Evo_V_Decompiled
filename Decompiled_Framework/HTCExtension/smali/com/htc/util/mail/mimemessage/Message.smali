.class public abstract Lcom/htc/util/mail/mimemessage/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Lcom/htc/util/mail/mimemessage/Part;
.implements Lcom/htc/util/mail/mimemessage/Body;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/mail/mimemessage/Message$RecipientType;
    }
.end annotation


# instance fields
.field protected mFlags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/htc/util/mail/mimemessage/Flag;",
            ">;"
        }
    .end annotation
.end field

.field protected mInternalDate:Ljava/util/Date;

.field protected mUid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/mimemessage/Message;->mFlags:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public abstract addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation
.end method

.method public abstract getBody()Lcom/htc/util/mail/mimemessage/Body;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation
.end method

.method public abstract getContentType()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation
.end method

.method public getFlags()[Lcom/htc/util/mail/mimemessage/Flag;
    .locals 2

    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/Message;->mFlags:Ljava/util/HashSet;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/htc/util/mail/mimemessage/Flag;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/util/mail/mimemessage/Flag;

    return-object v0
.end method

.method public abstract getFrom()[Lcom/htc/util/mail/mimemessage/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation
.end method

.method public abstract getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation
.end method

.method public getInternalDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/Message;->mInternalDate:Ljava/util/Date;

    return-object v0
.end method

.method public abstract getReceivedDate()Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation
.end method

.method public abstract getRecipients(Lcom/htc/util/mail/mimemessage/Message$RecipientType;)[Lcom/htc/util/mail/mimemessage/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation
.end method

.method public abstract getReplyTo()[Lcom/htc/util/mail/mimemessage/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation
.end method

.method public abstract getSentDate()Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation
.end method

.method public abstract getSubject()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/Message;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/util/mail/mimemessage/Message;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSet(Lcom/htc/util/mail/mimemessage/Flag;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/Message;->mFlags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract removeHeader(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation
.end method

.method public abstract saveChanges()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation
.end method

.method public abstract setBody(Lcom/htc/util/mail/mimemessage/Body;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation
.end method

.method public setFlag(Lcom/htc/util/mail/mimemessage/Flag;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/Message;->mFlags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/Message;->mFlags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setFlags([Lcom/htc/util/mail/mimemessage/Flag;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {p0, v1, p2}, Lcom/htc/util/mail/mimemessage/Message;->setFlag(Lcom/htc/util/mail/mimemessage/Flag;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract setFrom(Lcom/htc/util/mail/mimemessage/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation
.end method

.method public setInternalDate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/util/mail/mimemessage/Message;->mInternalDate:Ljava/util/Date;

    return-void
.end method

.method public setRecipient(Lcom/htc/util/mail/mimemessage/Message$RecipientType;Lcom/htc/util/mail/mimemessage/Address;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/htc/util/mail/mimemessage/Address;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/htc/util/mail/mimemessage/Message;->setRecipients(Lcom/htc/util/mail/mimemessage/Message$RecipientType;[Lcom/htc/util/mail/mimemessage/Address;)V

    return-void
.end method

.method public abstract setRecipients(Lcom/htc/util/mail/mimemessage/Message$RecipientType;[Lcom/htc/util/mail/mimemessage/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation
.end method

.method public abstract setReplyTo([Lcom/htc/util/mail/mimemessage/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation
.end method

.method public abstract setSentDate(Ljava/util/Date;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation
.end method

.method public abstract setSubject(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/util/mail/mimemessage/Message;->mUid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/util/mail/mimemessage/Message;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
