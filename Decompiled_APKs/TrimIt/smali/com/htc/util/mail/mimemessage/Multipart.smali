.class public abstract Lcom/htc/util/mail/mimemessage/Multipart;
.super Ljava/lang/Object;
.source "Multipart.java"

# interfaces
.implements Lcom/htc/util/mail/mimemessage/Body;


# instance fields
.field protected mContentType:Ljava/lang/String;

.field protected mParent:Lcom/htc/util/mail/mimemessage/Part;

.field protected mParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/mimemessage/BodyPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/mimemessage/Multipart;->mParts:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addBodyPart(Lcom/htc/util/mail/mimemessage/BodyPart;)V
    .locals 1
    .parameter "part"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method public addBodyPart(Lcom/htc/util/mail/mimemessage/BodyPart;I)V
    .locals 1
    .parameter "part"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 34
    return-void
.end method

.method public getBodyPart(I)Lcom/htc/util/mail/mimemessage/BodyPart;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/mimemessage/BodyPart;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/Multipart;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getParent()Lcom/htc/util/mail/mimemessage/Part;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/Multipart;->mParent:Lcom/htc/util/mail/mimemessage/Part;

    return-object v0
.end method

.method public removeBodyPart(I)V
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public removeBodyPart(Lcom/htc/util/mail/mimemessage/BodyPart;)Z
    .locals 1
    .parameter "part"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setParent(Lcom/htc/util/mail/mimemessage/Part;)V
    .locals 0
    .parameter "parent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/util/mail/mimemessage/Multipart;->mParent:Lcom/htc/util/mail/mimemessage/Part;

    .line 62
    return-void
.end method
