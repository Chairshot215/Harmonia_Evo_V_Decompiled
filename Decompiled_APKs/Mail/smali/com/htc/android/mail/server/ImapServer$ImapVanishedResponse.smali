.class public Lcom/htc/android/mail/server/ImapServer$ImapVanishedResponse;
.super Ljava/lang/Object;
.source "ImapServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/server/ImapServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ImapVanishedResponse"
.end annotation


# instance fields
.field private uidSet:Lcom/htc/android/mail/server/ImapServer$UidSet;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 6258
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6259
    new-instance v0, Lcom/htc/android/mail/server/ImapServer$UidSet;

    invoke-direct {v0}, Lcom/htc/android/mail/server/ImapServer$UidSet;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/server/ImapServer$ImapVanishedResponse;->uidSet:Lcom/htc/android/mail/server/ImapServer$UidSet;

    return-void
.end method


# virtual methods
.method public convertToSql(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "column"

    .prologue
    .line 6267
    iget-object v0, p0, Lcom/htc/android/mail/server/ImapServer$ImapVanishedResponse;->uidSet:Lcom/htc/android/mail/server/ImapServer$UidSet;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/server/ImapServer$UidSet;->convertToSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 6262
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6264
    :cond_0
    :goto_0
    return-void

    .line 6263
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/server/ImapServer$ImapVanishedResponse;->uidSet:Lcom/htc/android/mail/server/ImapServer$UidSet;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/server/ImapServer$UidSet;->parse(Ljava/lang/String;)V

    goto :goto_0
.end method
