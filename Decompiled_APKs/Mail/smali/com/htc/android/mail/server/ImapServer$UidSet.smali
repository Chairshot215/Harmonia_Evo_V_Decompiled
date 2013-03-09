.class public Lcom/htc/android/mail/server/ImapServer$UidSet;
.super Ljava/lang/Object;
.source "ImapServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/server/ImapServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UidSet"
.end annotation


# instance fields
.field mUidNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUidRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/server/ImapServer$UidRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 6271
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/server/ImapServer$UidSet;->mUidRanges:Ljava/util/ArrayList;

    .line 6273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/server/ImapServer$UidSet;->mUidNumbers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public convertToSql(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "column"

    .prologue
    const/4 v6, 0x0

    .line 6287
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 6288
    .local v1, sb:Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/htc/android/mail/server/ImapServer$UidSet;->mUidRanges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6289
    .local v2, size:I
    if-lez v2, :cond_0

    .line 6290
    iget-object v4, p0, Lcom/htc/android/mail/server/ImapServer$UidSet;->mUidRanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/server/ImapServer$UidRange;

    invoke-virtual {v4, p1}, Lcom/htc/android/mail/server/ImapServer$UidRange;->convertToSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6292
    :cond_0
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 6293
    const-string v4, " OR "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v4, p0, Lcom/htc/android/mail/server/ImapServer$UidSet;->mUidRanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/server/ImapServer$UidRange;

    invoke-virtual {v4, p1}, Lcom/htc/android/mail/server/ImapServer$UidRange;->convertToSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6296
    :cond_1
    iget-object v4, p0, Lcom/htc/android/mail/server/ImapServer$UidSet;->mUidNumbers:Ljava/util/ArrayList;

    invoke-static {v4, v6}, Lcom/htc/android/mail/MailCommon;->getSequence(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v3

    .line 6298
    .local v3, uidNumbersSql:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 6299
    const-string v4, " OR "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6307
    :goto_1
    return-object v4

    .line 6300
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 6301
    const-string v4, ""

    goto :goto_1

    .line 6302
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 6303
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 6304
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 6305
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 6307
    :cond_5
    const-string v4, ""

    goto :goto_1
.end method

.method public parse(Ljava/lang/String;)V
    .locals 7
    .parameter "str"

    .prologue
    .line 6276
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 6277
    .local v3, uidSet:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 6278
    .local v4, uidStr:Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6279
    iget-object v5, p0, Lcom/htc/android/mail/server/ImapServer$UidSet;->mUidRanges:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/htc/android/mail/server/ImapServer$UidRange;->getInstance(Ljava/lang/String;)Lcom/htc/android/mail/server/ImapServer$UidRange;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6277
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6281
    :cond_0
    iget-object v5, p0, Lcom/htc/android/mail/server/ImapServer$UidSet;->mUidNumbers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6284
    .end local v4           #uidStr:Ljava/lang/String;
    :cond_1
    return-void
.end method
