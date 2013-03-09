.class public Lcom/htc/android/mail/server/ImapServer$ImapResponses;
.super Ljava/lang/Object;
.source "ImapServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/server/ImapServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ImapResponses"
.end annotation


# instance fields
.field private mFetchResponses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/android/mail/ByteString;",
            ">;>;"
        }
    .end annotation
.end field

.field private mImapCapability:Lcom/htc/android/mail/server/ImapServer$ImapCapability;

.field private mImapMailboxInfo:Lcom/htc/android/mail/server/ImapServer$ImapMailboxInfo;

.field private mImapVanishedResponse:Lcom/htc/android/mail/server/ImapServer$ImapVanishedResponse;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6228
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/server/ImapServer$ImapResponses;->mFetchResponses:Ljava/util/ArrayList;

    .line 6230
    iput-object v1, p0, Lcom/htc/android/mail/server/ImapServer$ImapResponses;->mImapMailboxInfo:Lcom/htc/android/mail/server/ImapServer$ImapMailboxInfo;

    .line 6231
    iput-object v1, p0, Lcom/htc/android/mail/server/ImapServer$ImapResponses;->mImapCapability:Lcom/htc/android/mail/server/ImapServer$ImapCapability;

    .line 6232
    iput-object v1, p0, Lcom/htc/android/mail/server/ImapServer$ImapResponses;->mImapVanishedResponse:Lcom/htc/android/mail/server/ImapServer$ImapVanishedResponse;

    return-void
.end method


# virtual methods
.method public addFetchResponse(Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/android/mail/ByteString;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6239
    .local p1, response:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/android/mail/ByteString;>;"
    iget-object v0, p0, Lcom/htc/android/mail/server/ImapServer$ImapResponses;->mFetchResponses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6240
    return-void
.end method

.method public getFetchResponses()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/android/mail/ByteString;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 6235
    iget-object v0, p0, Lcom/htc/android/mail/server/ImapServer$ImapResponses;->mFetchResponses:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getImapCapability()Lcom/htc/android/mail/server/ImapServer$ImapCapability;
    .locals 1

    .prologue
    .line 6248
    iget-object v0, p0, Lcom/htc/android/mail/server/ImapServer$ImapResponses;->mImapCapability:Lcom/htc/android/mail/server/ImapServer$ImapCapability;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/android/mail/server/ImapServer$ImapCapability;

    invoke-direct {v0}, Lcom/htc/android/mail/server/ImapServer$ImapCapability;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/server/ImapServer$ImapResponses;->mImapCapability:Lcom/htc/android/mail/server/ImapServer$ImapCapability;

    .line 6249
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/server/ImapServer$ImapResponses;->mImapCapability:Lcom/htc/android/mail/server/ImapServer$ImapCapability;

    return-object v0
.end method

.method public getImapMailboxInfo()Lcom/htc/android/mail/server/ImapServer$ImapMailboxInfo;
    .locals 1

    .prologue
    .line 6243
    iget-object v0, p0, Lcom/htc/android/mail/server/ImapServer$ImapResponses;->mImapMailboxInfo:Lcom/htc/android/mail/server/ImapServer$ImapMailboxInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/android/mail/server/ImapServer$ImapMailboxInfo;

    invoke-direct {v0}, Lcom/htc/android/mail/server/ImapServer$ImapMailboxInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/server/ImapServer$ImapResponses;->mImapMailboxInfo:Lcom/htc/android/mail/server/ImapServer$ImapMailboxInfo;

    .line 6244
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/server/ImapServer$ImapResponses;->mImapMailboxInfo:Lcom/htc/android/mail/server/ImapServer$ImapMailboxInfo;

    return-object v0
.end method

.method public getImapVanishedResponse()Lcom/htc/android/mail/server/ImapServer$ImapVanishedResponse;
    .locals 1

    .prologue
    .line 6253
    iget-object v0, p0, Lcom/htc/android/mail/server/ImapServer$ImapResponses;->mImapVanishedResponse:Lcom/htc/android/mail/server/ImapServer$ImapVanishedResponse;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/android/mail/server/ImapServer$ImapVanishedResponse;

    invoke-direct {v0}, Lcom/htc/android/mail/server/ImapServer$ImapVanishedResponse;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/server/ImapServer$ImapResponses;->mImapVanishedResponse:Lcom/htc/android/mail/server/ImapServer$ImapVanishedResponse;

    .line 6254
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/server/ImapServer$ImapResponses;->mImapVanishedResponse:Lcom/htc/android/mail/server/ImapServer$ImapVanishedResponse;

    return-object v0
.end method
