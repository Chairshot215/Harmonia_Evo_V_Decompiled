.class public Lcom/htc/android/mail/server/Server$PendingRequestList;
.super Ljava/lang/Object;
.source "Server.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/server/Server;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingRequestList"
.end annotation


# instance fields
.field private idSeq:Ljava/lang/StringBuilder;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/server/Server$PendingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private uidSeq:Ljava/lang/StringBuilder;

.field private uidSeqEscape:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 242
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/server/Server$PendingRequestList;->list:Ljava/util/ArrayList;

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/server/Server$PendingRequestList;->idSeq:Ljava/lang/StringBuilder;

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/server/Server$PendingRequestList;->uidSeq:Ljava/lang/StringBuilder;

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/server/Server$PendingRequestList;->uidSeqEscape:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public add(Lcom/htc/android/mail/server/Server$PendingRequest;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 249
    iget-object v1, p0, Lcom/htc/android/mail/server/Server$PendingRequestList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/htc/android/mail/server/Server$PendingRequestList;->uidSeq:Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/android/mail/server/Server$PendingRequest;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget-object v1, p0, Lcom/htc/android/mail/server/Server$PendingRequestList;->uidSeqEscape:Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/android/mail/server/Server$PendingRequest;->uid:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :goto_0
    invoke-virtual {p1}, Lcom/htc/android/mail/server/Server$PendingRequest;->getIdSeq()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, seq:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/mail/server/Server$PendingRequestList;->idSeq:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 259
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/htc/android/mail/server/Server$PendingRequestList;->idSeq:Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/htc/android/mail/server/Server$PendingRequestList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    return-void

    .line 253
    .end local v0           #seq:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/server/Server$PendingRequestList;->uidSeq:Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/htc/android/mail/server/Server$PendingRequest;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    iget-object v1, p0, Lcom/htc/android/mail/server/Server$PendingRequestList;->uidSeqEscape:Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/htc/android/mail/server/Server$PendingRequest;->uid:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 263
    .restart local v0       #seq:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/server/Server$PendingRequestList;->idSeq:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public delete()I
    .locals 8

    .prologue
    .line 290
    const/4 v1, 0x0

    .line 292
    .local v1, result:I
    :try_start_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "_id in (%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/htc/android/mail/server/Server$PendingRequestList;->getIdSeq()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, where:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v3

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sPendingRequestURI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v5}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 297
    .end local v2           #where:Ljava/lang/String;
    :goto_0
    return v1

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, re:Landroid/os/RemoteException;
    invoke-static {}, Lcom/htc/android/mail/server/Server;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "delete request fail"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public get(I)Lcom/htc/android/mail/server/Server$PendingRequest;
    .locals 1
    .parameter "index"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/htc/android/mail/server/Server$PendingRequestList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/server/Server$PendingRequest;

    return-object v0
.end method

.method public getIdSeq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/android/mail/server/Server$PendingRequestList;->idSeq:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUidSeq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/htc/android/mail/server/Server$PendingRequestList;->uidSeq:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUidSeqEscape()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/htc/android/mail/server/Server$PendingRequestList;->uidSeqEscape:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/htc/android/mail/server/Server$PendingRequestList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
