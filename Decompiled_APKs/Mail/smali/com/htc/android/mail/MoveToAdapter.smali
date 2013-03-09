.class public Lcom/htc/android/mail/MoveToAdapter;
.super Landroid/widget/BaseAdapter;
.source "MoveToAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/MoveToAdapter$ViewTag;
    }
.end annotation


# static fields
.field private static final ITEM:I = 0x65

.field public static final REGEX:Ljava/lang/String; = "_"

.field private static final SEPARATOR:I = 0x66

.field private static final TAG:Ljava/lang/String; = "MoveToAdapter"

.field public static final numMove2Mailbox:I = 0x4


# instance fields
.field private listViewTag:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MoveToAdapter$ViewTag;",
            ">;"
        }
    .end annotation
.end field

.field private myInflater:Landroid/view/LayoutInflater;

.field public nCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Mailbox;Landroid/content/Context;)V
    .locals 19
    .parameter "ctxt"
    .parameter "account"
    .parameter "mailbox"
    .parameter "appCtxt"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/android/mail/MoveToAdapter;->nCount:I

    .line 27
    invoke-virtual/range {p2 .. p2}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/Mailboxs;->getMailboxsForMove(Lcom/htc/android/mail/Mailbox;)Lcom/htc/android/mail/Mailboxs;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/Mailboxs;->getDecodeNames(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v9

    .line 28
    .local v9, listFolder:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v1

    move-object/from16 v0, p4

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/Util;->getAccountLastMove2MailboxId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    .line 29
    .local v12, mailboxId:Ljava/lang/String;
    const/4 v11, 0x0

    .line 30
    .local v11, listRecent:[Ljava/lang/CharSequence;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v10, listMailboxID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v12, :cond_3

    .line 34
    const/4 v7, 0x0

    .line 35
    .local v7, count:I
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v17, wordList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "_"

    invoke-virtual {v12, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 37
    .local v16, names:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v1, v0

    add-int/lit8 v8, v1, -0x1

    .local v8, i:I
    :goto_0
    const/4 v1, -0x1

    if-le v8, v1, :cond_2

    .line 39
    aget-object v1, v16, v8

    if-eqz v1, :cond_0

    aget-object v1, v16, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 41
    aget-object v1, v16, v8

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 42
    .local v14, move2MailboxId:J
    move-object/from16 v0, p3

    iget-wide v1, v0, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v1, v14, v1

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual/range {p2 .. p2}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v13

    .line 45
    .local v13, move2Mailbox:Lcom/htc/android/mail/Mailbox;
    if-nez v13, :cond_1

    .line 37
    .end local v13           #move2Mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v14           #move2MailboxId:J
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 48
    .restart local v13       #move2Mailbox:Lcom/htc/android/mail/Mailbox;
    .restart local v14       #move2MailboxId:J
    :cond_1
    iget-object v1, v13, Lcom/htc/android/mail/Mailbox;->decodeName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v7, v7, 0x1

    .line 52
    const/4 v1, 0x3

    if-lt v7, v1, :cond_0

    .line 58
    .end local v13           #move2Mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v14           #move2MailboxId:J
    :cond_2
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    .end local v11           #listRecent:[Ljava/lang/CharSequence;
    check-cast v11, [Ljava/lang/CharSequence;

    .line 61
    .end local v7           #count:I
    .end local v8           #i:I
    .end local v16           #names:[Ljava/lang/String;
    .end local v17           #wordList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11       #listRecent:[Ljava/lang/CharSequence;
    :cond_3
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/android/mail/MoveToAdapter;->myInflater:Landroid/view/LayoutInflater;

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/android/mail/MoveToAdapter;->listViewTag:Ljava/util/ArrayList;

    .line 64
    if-eqz v11, :cond_5

    array-length v1, v11

    if-lez v1, :cond_5

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MoveToAdapter;->listViewTag:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    new-instance v1, Lcom/htc/android/mail/MoveToAdapter$ViewTag;

    const v2, 0x7f0b0319

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x66

    const-wide/16 v5, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/htc/android/mail/MoveToAdapter$ViewTag;-><init>(Lcom/htc/android/mail/MoveToAdapter;Ljava/lang/CharSequence;IJ)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_1
    array-length v1, v11

    if-ge v8, v1, :cond_4

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MoveToAdapter;->listViewTag:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    new-instance v1, Lcom/htc/android/mail/MoveToAdapter$ViewTag;

    aget-object v3, v11, v8

    const/16 v4, 0x65

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/htc/android/mail/MoveToAdapter$ViewTag;-><init>(Lcom/htc/android/mail/MoveToAdapter;Ljava/lang/CharSequence;IJ)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 73
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MoveToAdapter;->listViewTag:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    new-instance v1, Lcom/htc/android/mail/MoveToAdapter$ViewTag;

    const v2, 0x7f0b031a

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x66

    const-wide/16 v5, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/htc/android/mail/MoveToAdapter$ViewTag;-><init>(Lcom/htc/android/mail/MoveToAdapter;Ljava/lang/CharSequence;IJ)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    array-length v1, v11

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/android/mail/MoveToAdapter;->nCount:I

    .line 77
    .end local v8           #i:I
    :cond_5
    if-eqz v9, :cond_6

    array-length v1, v9

    if-lez v1, :cond_6

    .line 79
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_2
    array-length v1, v9

    if-ge v8, v1, :cond_6

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MoveToAdapter;->listViewTag:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    new-instance v1, Lcom/htc/android/mail/MoveToAdapter$ViewTag;

    aget-object v3, v9, v8

    const/16 v4, 0x65

    const-wide/16 v5, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/htc/android/mail/MoveToAdapter$ViewTag;-><init>(Lcom/htc/android/mail/MoveToAdapter;Ljava/lang/CharSequence;IJ)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 84
    .end local v8           #i:I
    :cond_6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/android/mail/MoveToAdapter;->listViewTag:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/htc/android/mail/MoveToAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/htc/android/mail/MoveToAdapter;->notifyDataSetChanged()V

    .line 98
    iget-object v0, p0, Lcom/htc/android/mail/MoveToAdapter;->listViewTag:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MoveToAdapter;->listViewTag:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 106
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/MoveToAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/MoveToAdapter$ViewTag;

    .line 127
    .local v0, item:Lcom/htc/android/mail/MoveToAdapter$ViewTag;
    iget v1, v0, Lcom/htc/android/mail/MoveToAdapter$ViewTag;->tag:I

    const/16 v2, 0x66

    if-ne v1, v2, :cond_0

    .line 128
    const/4 v1, 0x0

    .line 130
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getMailboxID(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/MoveToAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/MoveToAdapter$ViewTag;

    .line 172
    .local v0, item:Lcom/htc/android/mail/MoveToAdapter$ViewTag;
    iget-wide v1, v0, Lcom/htc/android/mail/MoveToAdapter$ViewTag;->mailboxID:J

    return-wide v1
.end method

.method public getToMailbox(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Mailbox;ILandroid/content/Context;)Lcom/htc/android/mail/Mailbox;
    .locals 22
    .parameter "account"
    .parameter "mailbox"
    .parameter "which"
    .parameter "appCtxt"

    .prologue
    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v18

    move-object/from16 v0, p4

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/Util;->getAccountLastMove2MailboxId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 179
    .local v8, lastMove2MailboxId:Ljava/lang/String;
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9}, Ljava/lang/String;-><init>()V

    .line 180
    .local v9, lastStr:Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 182
    const-string v18, "_"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 183
    .local v15, names:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/mail/MoveToAdapter;->nCount:I

    .line 184
    .local v5, count:I
    if-lez v5, :cond_0

    .line 187
    add-int/lit8 v5, v5, 0x2

    .line 190
    :cond_0
    move/from16 v0, p3

    if-ge v0, v5, :cond_1

    .line 192
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MoveToAdapter;->getMailboxID(I)J

    move-result-wide v11

    .line 193
    .local v11, mailboxID:J
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v12}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v17

    .line 194
    .local v17, toMailbox:Lcom/htc/android/mail/Mailbox;
    if-nez v17, :cond_2

    const/16 v18, 0x0

    .line 259
    .end local v5           #count:I
    .end local v11           #mailboxID:J
    .end local v15           #names:[Ljava/lang/String;
    :goto_0
    return-object v18

    .line 198
    .end local v17           #toMailbox:Lcom/htc/android/mail/Mailbox;
    .restart local v5       #count:I
    .restart local v15       #names:[Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/Mailboxs;->getMailboxsForMove(Lcom/htc/android/mail/Mailbox;)Lcom/htc/android/mail/Mailboxs;

    move-result-object v18

    sub-int v19, p3, v5

    invoke-virtual/range {v18 .. v19}, Lcom/htc/android/mail/Mailboxs;->getMailbox(I)Lcom/htc/android/mail/Mailbox;

    move-result-object v17

    .line 199
    .restart local v17       #toMailbox:Lcom/htc/android/mail/Mailbox;
    if-nez v17, :cond_2

    const/16 v18, 0x0

    goto :goto_0

    .line 209
    :cond_2
    const/4 v4, 0x0

    .line 210
    .local v4, bfound:Z
    move-object v3, v15

    .local v3, arr$:[Ljava/lang/String;
    array-length v10, v3

    .local v10, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v10, :cond_5

    aget-object v16, v3, v7

    .line 212
    .local v16, s:Ljava/lang/String;
    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_4

    .line 214
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 215
    .local v13, move2MailboxId:J
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v18, v0

    cmp-long v18, v13, v18

    if-nez v18, :cond_3

    .line 217
    const/4 v4, 0x1

    .line 210
    .end local v13           #move2MailboxId:J
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 221
    .restart local v13       #move2MailboxId:J
    :cond_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 222
    goto :goto_2

    .line 225
    .end local v13           #move2MailboxId:J
    :cond_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 229
    .end local v16           #s:Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_6

    .line 231
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 252
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #bfound:Z
    .end local v5           #count:I
    .end local v7           #i$:I
    .end local v10           #len$:I
    .end local v15           #names:[Ljava/lang/String;
    :goto_3
    const-string v18, "MoveToAdapter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mailbox.id:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v18, "MoveToAdapter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "lastStr:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v18

    move-object/from16 v0, p4

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2, v9}, Lcom/htc/android/mail/Util;->writeAccountLastMove2MailboxIdToPref(Landroid/content/Context;JLjava/lang/String;)V

    move-object/from16 v18, v17

    .line 259
    goto/16 :goto_0

    .line 235
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v4       #bfound:Z
    .restart local v5       #count:I
    .restart local v7       #i$:I
    .restart local v10       #len$:I
    .restart local v15       #names:[Ljava/lang/String;
    :cond_6
    const-string v18, "_"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 236
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 242
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #bfound:Z
    .end local v5           #count:I
    .end local v7           #i$:I
    .end local v10           #len$:I
    .end local v15           #names:[Ljava/lang/String;
    .end local v17           #toMailbox:Lcom/htc/android/mail/Mailbox;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/Mailboxs;->getMailboxsForMove(Lcom/htc/android/mail/Mailbox;)Lcom/htc/android/mail/Mailboxs;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/Mailboxs;->getMailbox(I)Lcom/htc/android/mail/Mailbox;

    move-result-object v17

    .line 245
    .restart local v17       #toMailbox:Lcom/htc/android/mail/Mailbox;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ge v6, v0, :cond_8

    .line 247
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 245
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 249
    :cond_8
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x66

    .line 137
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/MoveToAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/MoveToAdapter$ViewTag;

    .line 139
    .local v0, item:Lcom/htc/android/mail/MoveToAdapter$ViewTag;
    if-nez p2, :cond_0

    .line 141
    iget v2, v0, Lcom/htc/android/mail/MoveToAdapter$ViewTag;->tag:I

    if-ne v2, v4, :cond_2

    .line 143
    iget-object v2, p0, Lcom/htc/android/mail/MoveToAdapter;->myInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030044

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 152
    :cond_0
    :goto_0
    iget v2, v0, Lcom/htc/android/mail/MoveToAdapter$ViewTag;->tag:I

    if-ne v2, v4, :cond_3

    .line 154
    const v2, 0x7f09011b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 161
    .local v1, itemLayout:Landroid/widget/TextView;
    :goto_1
    if-eqz v1, :cond_1

    .line 163
    iget-object v2, v0, Lcom/htc/android/mail/MoveToAdapter$ViewTag;->text:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :cond_1
    return-object p2

    .line 147
    .end local v1           #itemLayout:Landroid/widget/TextView;
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/MoveToAdapter;->myInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030003

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 158
    :cond_3
    const v2, 0x2020010

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .restart local v1       #itemLayout:Landroid/widget/TextView;
    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/MoveToAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/MoveToAdapter$ViewTag;

    iget v0, v0, Lcom/htc/android/mail/MoveToAdapter$ViewTag;->tag:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 114
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method
