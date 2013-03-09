.class public Lcom/htc/android/mail/server/ImapServer$UidRange;
.super Ljava/lang/Object;
.source "ImapServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/server/ImapServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UidRange"
.end annotation


# instance fields
.field private mMaxUid:J

.field private mMinUid:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .parameter "firstUid"
    .parameter "secondUid"

    .prologue
    .line 6324
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6325
    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    .line 6326
    iput-wide p1, p0, Lcom/htc/android/mail/server/ImapServer$UidRange;->mMinUid:J

    .line 6327
    iput-wide p3, p0, Lcom/htc/android/mail/server/ImapServer$UidRange;->mMaxUid:J

    .line 6332
    :goto_0
    return-void

    .line 6329
    :cond_0
    iput-wide p3, p0, Lcom/htc/android/mail/server/ImapServer$UidRange;->mMinUid:J

    .line 6330
    iput-wide p1, p0, Lcom/htc/android/mail/server/ImapServer$UidRange;->mMaxUid:J

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "firstUid"
    .parameter "secondUid"

    .prologue
    .line 6335
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/android/mail/server/ImapServer$UidRange;-><init>(JJ)V

    .line 6336
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/htc/android/mail/server/ImapServer$UidRange;
    .locals 5
    .parameter "uidStr"

    .prologue
    .line 6316
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 6317
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 6318
    new-instance v1, Lcom/htc/android/mail/server/ImapServer$UidRange;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/htc/android/mail/server/ImapServer$UidRange;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6320
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public convertToSql(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "column"

    .prologue
    .line 6339
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 6340
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/android/mail/server/ImapServer$UidRange;->mMaxUid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/android/mail/server/ImapServer$UidRange;->mMinUid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 6341
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
