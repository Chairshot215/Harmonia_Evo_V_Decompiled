.class public Lcom/htc/android/mail/Mailbox;
.super Ljava/lang/Object;
.source "Mailbox.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/mail/Mailbox;",
            ">;"
        }
    .end annotation
.end field

.field public static final sCombinedAccountDefaultMailboxId:J = 0x7fffffffffffffffL

.field public static final sCombinedAccountDraftMailboxId:J = 0x7ffffffffffffffcL

.field public static final sCombinedAccountOutMailboxId:J = 0x7ffffffffffffffbL

.field public static final sCombinedAccountSentMailboxId:J = 0x7ffffffffffffffdL

.field public static final sCombinedAccountTrashMailboxId:J = 0x7ffffffffffffffeL

.field public static final sCombinedDefaultSyncMailboxId:J = 0x7ffffffffffffffaL

.field public static final sCombinedInboxAndSentMailboxId:J = 0x7ffffffffffffff9L

.field public static final sKindCombined:I = 0x7ffffffa

.field public static final sKindDefault:I = 0x7fffffff

.field public static final sKindDraft:I = 0x7ffffffc

.field public static final sKindNormal:I = 0x0

.field public static final sKindOut:I = 0x7ffffffb

.field public static final sKindSent:I = 0x7ffffffd

.field public static final sKindTrash:I = 0x7ffffffe

.field public static final sMimeViewerBox:I = 0x7fffff37

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public decodeName:Ljava/lang/String;

.field public id:J

.field public isServerFolder:Z

.field public kind:I

.field public mAccountId:J

.field private mCombinedMailboxArray:Lcom/htc/android/mail/util/SparseLongBooleanArray;

.field private mCombinedMailboxIds:[J

.field private mDefaultSyncEnabled:Z

.field public mHasChild:I

.field public mNoSelect:I

.field private mSyncKey:Ljava/lang/String;

.field private mUidValidity:Ljava/lang/String;

.field public moveGroup:I

.field public parentId:Ljava/lang/String;

.field public serverId:Ljava/lang/String;

.field public shortName:Ljava/lang/String;

.field public showSender:Z

.field public type:Ljava/lang/String;

.field public unDecodeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 249
    new-instance v0, Lcom/htc/android/mail/Mailbox$1;

    invoke-direct {v0}, Lcom/htc/android/mail/Mailbox$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/Mailbox;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .parameter "accountId"
    .parameter "id"
    .parameter "undecodename"
    .parameter "decodename"
    .parameter "shortname"
    .parameter "serverfolder"
    .parameter "type"
    .parameter "serverId"
    .parameter "parentId"
    .parameter "moveGroup"
    .parameter "showSender"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/Mailbox;->mHasChild:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/Mailbox;->mNoSelect:I

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/android/mail/Mailbox;->mAccountId:J

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/Mailbox;->kind:I

    .line 72
    iput-wide p1, p0, Lcom/htc/android/mail/Mailbox;->mAccountId:J

    .line 73
    iput-wide p3, p0, Lcom/htc/android/mail/Mailbox;->id:J

    .line 74
    iput-object p5, p0, Lcom/htc/android/mail/Mailbox;->unDecodeName:Ljava/lang/String;

    .line 75
    iput-object p6, p0, Lcom/htc/android/mail/Mailbox;->decodeName:Ljava/lang/String;

    .line 76
    iput-object p7, p0, Lcom/htc/android/mail/Mailbox;->shortName:Ljava/lang/String;

    .line 77
    const/4 v0, 0x1

    if-ne p8, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/android/mail/Mailbox;->isServerFolder:Z

    .line 78
    iput p12, p0, Lcom/htc/android/mail/Mailbox;->moveGroup:I

    .line 79
    const/4 v0, 0x1

    if-ne p13, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/android/mail/Mailbox;->showSender:Z

    .line 82
    iput-object p9, p0, Lcom/htc/android/mail/Mailbox;->type:Ljava/lang/String;

    .line 83
    iput-object p10, p0, Lcom/htc/android/mail/Mailbox;->serverId:Ljava/lang/String;

    .line 84
    iput-object p11, p0, Lcom/htc/android/mail/Mailbox;->parentId:Ljava/lang/String;

    .line 86
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>(JLjava/lang/String;ZII)V
    .locals 3
    .parameter "accountId"
    .parameter "undecodename"
    .parameter "serverFolder"
    .parameter "hasChild"
    .parameter "noSelect"

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v2, p0, Lcom/htc/android/mail/Mailbox;->mHasChild:I

    .line 45
    iput v2, p0, Lcom/htc/android/mail/Mailbox;->mNoSelect:I

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/android/mail/Mailbox;->mAccountId:J

    .line 47
    iput v2, p0, Lcom/htc/android/mail/Mailbox;->kind:I

    .line 63
    iput-wide p1, p0, Lcom/htc/android/mail/Mailbox;->mAccountId:J

    .line 64
    iput-object p3, p0, Lcom/htc/android/mail/Mailbox;->unDecodeName:Ljava/lang/String;

    .line 65
    iput-boolean p4, p0, Lcom/htc/android/mail/Mailbox;->isServerFolder:Z

    .line 66
    iput p5, p0, Lcom/htc/android/mail/Mailbox;->mHasChild:I

    .line 67
    iput p6, p0, Lcom/htc/android/mail/Mailbox;->mNoSelect:I

    .line 68
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    .line 259
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v2, p0, Lcom/htc/android/mail/Mailbox;->mHasChild:I

    .line 45
    iput v2, p0, Lcom/htc/android/mail/Mailbox;->mNoSelect:I

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/android/mail/Mailbox;->mAccountId:J

    .line 47
    iput v2, p0, Lcom/htc/android/mail/Mailbox;->kind:I

    .line 260
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/Mailbox;->readFromParcel(Landroid/os/Parcel;)V

    .line 261
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/mail/Mailbox$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/htc/android/mail/Mailbox;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public addMailboxId(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->mCombinedMailboxArray:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SparseLongBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/Mailbox;->mCombinedMailboxArray:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->mCombinedMailboxArray:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->put(JZ)V

    .line 155
    return-void
.end method

.method public contains(J)Z
    .locals 2
    .parameter "mailboxId"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->mCombinedMailboxArray:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->mCombinedMailboxArray:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->get(J)Z

    move-result v0

    .line 149
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public decode()V
    .locals 5

    .prologue
    .line 111
    const-string v1, ""

    .line 113
    .local v1, shortUndecode:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/mail/Mailbox;->unDecodeName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/mail/Mailbox;->unDecodeName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/Mailbox;->unDecodeName:Ljava/lang/String;

    .line 118
    iget-object v2, p0, Lcom/htc/android/mail/Mailbox;->unDecodeName:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 119
    iget-object v2, p0, Lcom/htc/android/mail/Mailbox;->unDecodeName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/mail/Mailbox;->unDecodeName:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/htc/android/mail/Mailbox;->unDecodeName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 123
    :cond_2
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/mail/Mailbox;->unDecodeName:Ljava/lang/String;

    const-string v4, "ISO8859-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "IMAP-mailbox-name"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lcom/htc/android/mail/Mailbox;->decodeName:Ljava/lang/String;

    .line 124
    new-instance v2, Ljava/lang/String;

    const-string v3, "ISO8859-1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "IMAP-mailbox-name"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lcom/htc/android/mail/Mailbox;->shortName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    iget-object v2, p0, Lcom/htc/android/mail/Mailbox;->unDecodeName:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/android/mail/Base64;->ModifiedUtf7decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/Mailbox;->shortName:Ljava/lang/String;

    .line 128
    invoke-static {v1}, Lcom/htc/android/mail/Base64;->ModifiedUtf7decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/Mailbox;->decodeName:Ljava/lang/String;

    .line 129
    const-string v2, "Base64"

    const-string v3, "UnsupportedEncodingException"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 415
    iget-wide v0, p0, Lcom/htc/android/mail/Mailbox;->mAccountId:J

    return-wide v0
.end method

.method public getDecodeName(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "isExchg"

    .prologue
    const v8, 0x7ffffffe

    const v7, 0x7ffffffd

    const v6, 0x7ffffffc

    const v5, 0x7ffffffb

    const v4, 0x7f0b01db

    .line 375
    if-eqz p2, :cond_1

    .line 376
    iget-wide v0, p0, Lcom/htc/android/mail/Mailbox;->id:J

    const-wide v2, 0x7ffffffffffffffaL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 377
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 410
    :goto_0
    return-object v0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->decodeName:Ljava/lang/String;

    goto :goto_0

    .line 381
    :cond_1
    iget-wide v0, p0, Lcom/htc/android/mail/Mailbox;->mAccountId:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 382
    iget v0, p0, Lcom/htc/android/mail/Mailbox;->kind:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_2

    .line 383
    const v0, 0x7f0b01d5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 384
    :cond_2
    iget v0, p0, Lcom/htc/android/mail/Mailbox;->kind:I

    if-ne v0, v8, :cond_3

    .line 385
    const v0, 0x7f0b01d9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 386
    :cond_3
    iget v0, p0, Lcom/htc/android/mail/Mailbox;->kind:I

    if-ne v0, v7, :cond_4

    .line 387
    const v0, 0x7f0b01d8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 388
    :cond_4
    iget v0, p0, Lcom/htc/android/mail/Mailbox;->kind:I

    if-ne v0, v6, :cond_5

    .line 389
    const v0, 0x7f0b01d6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 390
    :cond_5
    iget v0, p0, Lcom/htc/android/mail/Mailbox;->kind:I

    if-ne v0, v5, :cond_b

    .line 391
    const v0, 0x7f0b01d7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 393
    :cond_6
    iget v0, p0, Lcom/htc/android/mail/Mailbox;->kind:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_7

    .line 394
    const v0, 0x7f0b01ce

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 395
    :cond_7
    iget v0, p0, Lcom/htc/android/mail/Mailbox;->kind:I

    if-ne v0, v8, :cond_8

    .line 396
    const v0, 0x7f0b01d2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 397
    :cond_8
    iget v0, p0, Lcom/htc/android/mail/Mailbox;->kind:I

    if-ne v0, v7, :cond_9

    .line 398
    const v0, 0x7f0b01d3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 399
    :cond_9
    iget v0, p0, Lcom/htc/android/mail/Mailbox;->kind:I

    if-ne v0, v6, :cond_a

    .line 400
    const v0, 0x7f0b01d1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 401
    :cond_a
    iget v0, p0, Lcom/htc/android/mail/Mailbox;->kind:I

    if-ne v0, v5, :cond_b

    .line 402
    const v0, 0x7f0b01d4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 405
    :cond_b
    iget-wide v0, p0, Lcom/htc/android/mail/Mailbox;->id:J

    const-wide v2, 0x7ffffffffffffffaL

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 406
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 407
    :cond_c
    iget-wide v0, p0, Lcom/htc/android/mail/Mailbox;->id:J

    const-wide v2, 0x7ffffffffffffff9L

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    .line 408
    const v0, 0x7f0b01dc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 410
    :cond_d
    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->decodeName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public getDefaultSyncEnabled()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/htc/android/mail/Mailbox;->mDefaultSyncEnabled:Z

    return v0
.end method

.method public getHighestModSeq()J
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->mSyncKey:Ljava/lang/String;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 164
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getMailboxIds()[J
    .locals 5

    .prologue
    .line 134
    iget-object v1, p0, Lcom/htc/android/mail/Mailbox;->mCombinedMailboxIds:[J

    if-nez v1, :cond_1

    .line 135
    iget v1, p0, Lcom/htc/android/mail/Mailbox;->kind:I

    const v2, 0x7ffffffa

    if-ne v1, v2, :cond_0

    .line 136
    iget-object v1, p0, Lcom/htc/android/mail/Mailbox;->mCombinedMailboxArray:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-virtual {v1}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->size()I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/htc/android/mail/Mailbox;->mCombinedMailboxIds:[J

    .line 137
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/mail/Mailbox;->mCombinedMailboxArray:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-virtual {v1}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/htc/android/mail/Mailbox;->mCombinedMailboxIds:[J

    iget-object v2, p0, Lcom/htc/android/mail/Mailbox;->mCombinedMailboxArray:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-virtual {v2, v0}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->keyAt(I)J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/htc/android/mail/Mailbox;->id:J

    aput-wide v3, v1, v2

    iput-object v1, p0, Lcom/htc/android/mail/Mailbox;->mCombinedMailboxIds:[J

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/Mailbox;->mCombinedMailboxIds:[J

    return-object v1
.end method

.method public getShortFolderName(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "isExchg"

    .prologue
    const v8, 0x7fffffff

    const v7, 0x7ffffffe

    const v6, 0x7ffffffd

    const v5, 0x7ffffffc

    const v4, 0x7ffffffb

    .line 339
    if-eqz p2, :cond_0

    .line 340
    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->shortName:Ljava/lang/String;

    .line 370
    :goto_0
    return-object v0

    .line 341
    :cond_0
    iget-wide v0, p0, Lcom/htc/android/mail/Mailbox;->mAccountId:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 342
    iget v0, p0, Lcom/htc/android/mail/Mailbox;->kind:I

    if-ne v0, v8, :cond_1

    .line 343
    const v0, 0x7f0b01d5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 344
    :cond_1
    iget v0, p0, Lcom/htc/android/mail/Mailbox;->kind:I

    if-ne v0, v7, :cond_2

    .line 345
    const v0, 0x7f0b01d9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 346
    :cond_2
    iget v0, p0, Lcom/htc/android/mail/Mailbox;->kind:I

    if-ne v0, v6, :cond_3

    .line 347
    const v0, 0x7f0b01d8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 348
    :cond_3
    iget v0, p0, Lcom/htc/android/mail/Mailbox;->kind:I

    if-ne v0, v5, :cond_4

    .line 349
    const v0, 0x7f0b01d6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 350
    :cond_4
    iget v0, p0, Lcom/htc/android/mail/Mailbox;->kind:I

    if-ne v0, v4, :cond_a

    .line 351
    const v0, 0x7f0b01d7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 353
    :cond_5
    iget v0, p0, Lcom/htc/android/mail/Mailbox;->kind:I

    if-ne v0, v8, :cond_6

    .line 354
    const v0, 0x7f0b01ce

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 355
    :cond_6
    iget v0, p0, Lcom/htc/android/mail/Mailbox;->kind:I

    if-ne v0, v7, :cond_7

    .line 356
    const v0, 0x7f0b01d2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 357
    :cond_7
    iget v0, p0, Lcom/htc/android/mail/Mailbox;->kind:I

    if-ne v0, v6, :cond_8

    .line 358
    const v0, 0x7f0b01d3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 359
    :cond_8
    iget v0, p0, Lcom/htc/android/mail/Mailbox;->kind:I

    if-ne v0, v5, :cond_9

    .line 360
    const v0, 0x7f0b01d1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 361
    :cond_9
    iget v0, p0, Lcom/htc/android/mail/Mailbox;->kind:I

    if-ne v0, v4, :cond_a

    .line 362
    const v0, 0x7f0b01d4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 365
    :cond_a
    iget-wide v0, p0, Lcom/htc/android/mail/Mailbox;->id:J

    const-wide v2, 0x7ffffffffffffffaL

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 366
    const v0, 0x7f0b01db

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 367
    :cond_b
    iget-wide v0, p0, Lcom/htc/android/mail/Mailbox;->id:J

    const-wide v2, 0x7ffffffffffffff9L

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 368
    const v0, 0x7f0b01dc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 370
    :cond_c
    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->shortName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public getUidValidity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->mUidValidity:Ljava/lang/String;

    return-object v0
.end method

.method public getUndecodeNameAndShortName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/android/mail/Mailbox;->unDecodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/Mailbox;->shortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isTopFolder(Lcom/htc/android/mail/Account;J)Z
    .locals 4
    .parameter "a"
    .parameter "checkMailboxId"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 423
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Mailboxs;->getDefaultMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 429
    :cond_1
    :goto_0
    return v0

    .line 425
    :cond_2
    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Mailboxs;->getDefaultMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v2

    iget-wide v2, v2, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    .line 426
    const-wide v2, 0x7ffffffffffffffaL

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    .line 427
    const-wide v2, 0x7ffffffffffffff9L

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 429
    goto :goto_0
.end method

.method public needShowNotification()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 105
    iget-wide v1, p0, Lcom/htc/android/mail/Mailbox;->id:J

    const-wide v3, 0x7ffffffffffffffaL

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    iget-wide v1, p0, Lcom/htc/android/mail/Mailbox;->id:J

    const-wide v3, 0x7ffffffffffffff9L

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/htc/android/mail/Mailbox;->getDefaultSyncEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 8
    .parameter "in"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, b:B
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/android/mail/Mailbox;->id:J

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 268
    if-nez v0, :cond_1

    .line 269
    iput-object v7, p0, Lcom/htc/android/mail/Mailbox;->unDecodeName:Ljava/lang/String;

    .line 274
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 275
    if-nez v0, :cond_2

    .line 276
    iput-object v7, p0, Lcom/htc/android/mail/Mailbox;->decodeName:Ljava/lang/String;

    .line 281
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 282
    if-nez v0, :cond_3

    .line 283
    iput-object v7, p0, Lcom/htc/android/mail/Mailbox;->shortName:Ljava/lang/String;

    .line 288
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/htc/android/mail/Mailbox;->isServerFolder:Z

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/android/mail/Mailbox;->moveGroup:I

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v3, :cond_5

    :goto_4
    iput-boolean v3, p0, Lcom/htc/android/mail/Mailbox;->showSender:Z

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/android/mail/Mailbox;->mHasChild:I

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/android/mail/Mailbox;->mNoSelect:I

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/android/mail/Mailbox;->mAccountId:J

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/android/mail/Mailbox;->kind:I

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 297
    if-nez v0, :cond_6

    .line 298
    iput-object v7, p0, Lcom/htc/android/mail/Mailbox;->type:Ljava/lang/String;

    .line 303
    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 304
    if-nez v0, :cond_7

    .line 305
    iput-object v7, p0, Lcom/htc/android/mail/Mailbox;->serverId:Ljava/lang/String;

    .line 310
    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 311
    if-nez v0, :cond_8

    .line 312
    iput-object v7, p0, Lcom/htc/android/mail/Mailbox;->parentId:Ljava/lang/String;

    .line 316
    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 317
    .local v1, combinedMailboxIdsLength:I
    if-ltz v1, :cond_0

    .line 318
    new-array v2, v1, [J

    iput-object v2, p0, Lcom/htc/android/mail/Mailbox;->mCombinedMailboxIds:[J

    .line 319
    iget-object v2, p0, Lcom/htc/android/mail/Mailbox;->mCombinedMailboxIds:[J

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readLongArray([J)V

    .line 322
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 323
    if-nez v0, :cond_9

    .line 324
    iput-object v7, p0, Lcom/htc/android/mail/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 329
    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 330
    if-nez v0, :cond_a

    .line 331
    iput-object v7, p0, Lcom/htc/android/mail/Mailbox;->mUidValidity:Ljava/lang/String;

    .line 335
    :goto_9
    return-void

    .line 271
    .end local v1           #combinedMailboxIdsLength:I
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/Mailbox;->unDecodeName:Ljava/lang/String;

    goto :goto_0

    .line 278
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/Mailbox;->decodeName:Ljava/lang/String;

    goto :goto_1

    .line 285
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/Mailbox;->shortName:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move v2, v4

    .line 288
    goto :goto_3

    :cond_5
    move v3, v4

    .line 290
    goto :goto_4

    .line 300
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/Mailbox;->type:Ljava/lang/String;

    goto :goto_5

    .line 307
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/Mailbox;->serverId:Ljava/lang/String;

    goto :goto_6

    .line 314
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/Mailbox;->parentId:Ljava/lang/String;

    goto :goto_7

    .line 326
    .restart local v1       #combinedMailboxIdsLength:I
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/Mailbox;->mSyncKey:Ljava/lang/String;

    goto :goto_8

    .line 333
    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/Mailbox;->mUidValidity:Ljava/lang/String;

    goto :goto_9
.end method

.method public removeMailboxId(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->mCombinedMailboxArray:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->delete(J)V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/Mailbox;->mCombinedMailboxIds:[J

    .line 160
    return-void
.end method

.method public setDefaultSyncEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/htc/android/mail/Mailbox;->mDefaultSyncEnabled:Z

    .line 90
    return-void
.end method

.method public setSyncKey(Ljava/lang/String;)V
    .locals 0
    .parameter "syncKey"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/htc/android/mail/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setUidValidity(Ljava/lang/String;)V
    .locals 0
    .parameter "uidValidity"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/htc/android/mail/Mailbox;->mUidValidity:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 176
    iget-wide v3, p0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 177
    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->unDecodeName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 178
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 184
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->decodeName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 185
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 191
    :goto_1
    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->shortName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 192
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 198
    :goto_2
    iget-boolean v0, p0, Lcom/htc/android/mail/Mailbox;->isServerFolder:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 199
    iget v0, p0, Lcom/htc/android/mail/Mailbox;->moveGroup:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-boolean v0, p0, Lcom/htc/android/mail/Mailbox;->showSender:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 201
    iget v0, p0, Lcom/htc/android/mail/Mailbox;->mHasChild:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget v0, p0, Lcom/htc/android/mail/Mailbox;->mNoSelect:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget-wide v3, p0, Lcom/htc/android/mail/Mailbox;->mAccountId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 204
    iget v0, p0, Lcom/htc/android/mail/Mailbox;->kind:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->type:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 207
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 213
    :goto_5
    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->serverId:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 214
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 220
    :goto_6
    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->parentId:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 221
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 227
    :goto_7
    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->mCombinedMailboxIds:[J

    if-nez v0, :cond_8

    .line 228
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    :goto_8
    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->mSyncKey:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 235
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 241
    :goto_9
    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->mUidValidity:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 242
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 247
    :goto_a
    return-void

    .line 180
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 181
    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->unDecodeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 188
    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->decodeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 194
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 195
    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->shortName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move v0, v2

    .line 198
    goto :goto_3

    :cond_4
    move v0, v2

    .line 200
    goto :goto_4

    .line 209
    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 210
    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_5

    .line 216
    :cond_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 217
    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->serverId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_6

    .line 223
    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 224
    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->parentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_7

    .line 230
    :cond_8
    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->mCombinedMailboxIds:[J

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->mCombinedMailboxIds:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    goto :goto_8

    .line 237
    :cond_9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 238
    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 244
    :cond_a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 245
    iget-object v0, p0, Lcom/htc/android/mail/Mailbox;->mUidValidity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a
.end method
