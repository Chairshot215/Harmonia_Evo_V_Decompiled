.class public Lcom/htc/android/mail/server/ImapServer$ImapMailboxInfo;
.super Ljava/lang/Object;
.source "ImapServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/server/ImapServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ImapMailboxInfo"
.end annotation


# instance fields
.field public exists:I

.field public highestModSeq:J

.field public uidNext:J

.field public uidValidity:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 6221
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6222
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/server/ImapServer$ImapMailboxInfo;->exists:I

    .line 6223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/server/ImapServer$ImapMailboxInfo;->uidValidity:Ljava/lang/String;

    .line 6224
    iput-wide v1, p0, Lcom/htc/android/mail/server/ImapServer$ImapMailboxInfo;->uidNext:J

    .line 6225
    iput-wide v1, p0, Lcom/htc/android/mail/server/ImapServer$ImapMailboxInfo;->highestModSeq:J

    return-void
.end method
