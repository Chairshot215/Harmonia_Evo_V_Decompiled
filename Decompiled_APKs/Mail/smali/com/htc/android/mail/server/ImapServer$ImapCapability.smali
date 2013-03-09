.class public Lcom/htc/android/mail/server/ImapServer$ImapCapability;
.super Ljava/lang/Object;
.source "ImapServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/server/ImapServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ImapCapability"
.end annotation


# instance fields
.field private mCondstore:Z

.field private mQrsync:Z

.field private mXIDACLID:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 6197
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/mail/server/ImapServer$ImapCapability;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 6197
    iget-boolean v0, p0, Lcom/htc/android/mail/server/ImapServer$ImapCapability;->mXIDACLID:Z

    return v0
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 2
    .parameter "capa"

    .prologue
    const/4 v1, 0x1

    .line 6203
    const-string v0, "CONDSTORE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/htc/android/mail/server/ImapServer$ImapCapability;->mCondstore:Z

    .line 6204
    :cond_0
    const-string v0, "QRESYNC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/htc/android/mail/server/ImapServer$ImapCapability;->mQrsync:Z

    .line 6205
    :cond_1
    const-string v0, "X-ID-ACLID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/htc/android/mail/server/ImapServer$ImapCapability;->mXIDACLID:Z

    .line 6206
    :cond_2
    return-void
.end method

.method public supportCondstore()Z
    .locals 1

    .prologue
    .line 6209
    iget-boolean v0, p0, Lcom/htc/android/mail/server/ImapServer$ImapCapability;->mCondstore:Z

    return v0
.end method

.method public supportQrsync()Z
    .locals 1

    .prologue
    .line 6213
    iget-boolean v0, p0, Lcom/htc/android/mail/server/ImapServer$ImapCapability;->mQrsync:Z

    return v0
.end method

.method public supportXIDACLID()Z
    .locals 1

    .prologue
    .line 6217
    iget-boolean v0, p0, Lcom/htc/android/mail/server/ImapServer$ImapCapability;->mXIDACLID:Z

    return v0
.end method
