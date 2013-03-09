.class public Lcom/htc/util/mail/mimemessage/MimeHeader;
.super Ljava/lang/Object;
.source "MimeHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/mail/mimemessage/MimeHeader$Field;
    }
.end annotation


# static fields
.field public static final HEADER_ANDROID_ATTACHMENT_STORE_DATA:Ljava/lang/String; = "X-Android-Attachment-StoreData"

.field public static final HEADER_ANDROID_BODY_QUOTED_PART:Ljava/lang/String; = "X-Android-Body-Quoted-Part"

.field public static final HEADER_CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field public static final HEADER_CONTENT_ID:Ljava/lang/String; = "Content-ID"

.field public static final HEADER_CONTENT_TRANSFER_ENCODING:Ljava/lang/String; = "Content-Transfer-Encoding"

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final writeOmitFields:[Ljava/lang/String;


# instance fields
.field protected mFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/mimemessage/MimeHeader$Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "X-Android-Attachment-StoreData"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/mail/mimemessage/MimeHeader;->writeOmitFields:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeHeader;->mFields:Ljava/util/ArrayList;

    .line 131
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeHeader;->mFields:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/util/mail/mimemessage/MimeHeader$Field;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/util/mail/mimemessage/MimeHeader$Field;-><init>(Lcom/htc/util/mail/mimemessage/MimeHeader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 57
    return-void
.end method

.method public getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/htc/util/mail/mimemessage/MimeHeader;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, header:[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 62
    const/4 v1, 0x0

    .line 64
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v2, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/htc/util/mail/mimemessage/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/mimemessage/MimeHeader$Field;

    .line 82
    .local v0, field:Lcom/htc/util/mail/mimemessage/MimeHeader$Field;
    iget-object v3, v0, Lcom/htc/util/mail/mimemessage/MimeHeader$Field;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    iget-object v3, v0, Lcom/htc/util/mail/mimemessage/MimeHeader$Field;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    .end local v0           #field:Lcom/htc/util/mail/mimemessage/MimeHeader$Field;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 87
    const/4 v3, 0x0

    .line 89
    :goto_1
    return-object v3

    :cond_2
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    goto :goto_1
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v2, removeFields:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/mimemessage/MimeHeader$Field;>;"
    iget-object v3, p0, Lcom/htc/util/mail/mimemessage/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/mimemessage/MimeHeader$Field;

    .line 95
    .local v0, field:Lcom/htc/util/mail/mimemessage/MimeHeader$Field;
    iget-object v3, v0, Lcom/htc/util/mail/mimemessage/MimeHeader$Field;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    .end local v0           #field:Lcom/htc/util/mail/mimemessage/MimeHeader$Field;
    :cond_1
    iget-object v3, p0, Lcom/htc/util/mail/mimemessage/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 100
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 72
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/util/mail/mimemessage/MimeHeader;->removeHeader(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/htc/util/mail/mimemessage/MimeHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeHeader;->mFields:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 123
    .local v2, writer:Ljava/io/BufferedWriter;
    iget-object v3, p0, Lcom/htc/util/mail/mimemessage/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/mimemessage/MimeHeader$Field;

    .line 124
    .local v0, field:Lcom/htc/util/mail/mimemessage/MimeHeader$Field;
    sget-object v3, Lcom/htc/util/mail/mimemessage/MimeHeader;->writeOmitFields:[Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/util/mail/mimemessage/MimeHeader$Field;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/util/mail/mimemessage/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/htc/util/mail/mimemessage/MimeHeader$Field;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/htc/util/mail/mimemessage/MimeHeader$Field;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    .end local v0           #field:Lcom/htc/util/mail/mimemessage/MimeHeader$Field;
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 129
    return-void
.end method

.method public writeToString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 109
    iget-object v3, p0, Lcom/htc/util/mail/mimemessage/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 110
    const/4 v3, 0x0

    .line 118
    :goto_0
    return-object v3

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/htc/util/mail/mimemessage/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/util/mail/mimemessage/MimeHeader$Field;

    .line 114
    .local v1, field:Lcom/htc/util/mail/mimemessage/MimeHeader$Field;
    sget-object v3, Lcom/htc/util/mail/mimemessage/MimeHeader;->writeOmitFields:[Ljava/lang/String;

    iget-object v4, v1, Lcom/htc/util/mail/mimemessage/MimeHeader$Field;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/util/mail/mimemessage/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/htc/util/mail/mimemessage/MimeHeader$Field;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/htc/util/mail/mimemessage/MimeHeader$Field;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 118
    .end local v1           #field:Lcom/htc/util/mail/mimemessage/MimeHeader$Field;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
