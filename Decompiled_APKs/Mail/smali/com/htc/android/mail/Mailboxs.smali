.class public Lcom/htc/android/mail/Mailboxs;
.super Ljava/lang/Object;
.source "Mailboxs.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/mail/Mailboxs;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Mailboxs"


# instance fields
.field mCombinedMailboxs:[Lcom/htc/android/mail/Mailbox;

.field mDecodeNames:[Ljava/lang/String;

.field mDefaultMailbox:Lcom/htc/android/mail/Mailbox;

.field mDraftMailbox:Lcom/htc/android/mail/Mailbox;

.field mIsExchg:Ljava/lang/Boolean;

.field mMailboxList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/Mailbox;",
            ">;"
        }
    .end annotation
.end field

.field mMailboxMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/android/mail/Mailbox;",
            ">;"
        }
    .end annotation
.end field

.field mMailboxUndecodeNameAndShortNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/android/mail/Mailbox;",
            ">;"
        }
    .end annotation
.end field

.field mOutMailbox:Lcom/htc/android/mail/Mailbox;

.field mSentMailbox:Lcom/htc/android/mail/Mailbox;

.field mShortNames:[Ljava/lang/String;

.field mTrashMailbox:Lcom/htc/android/mail/Mailbox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 649
    new-instance v0, Lcom/htc/android/mail/Mailboxs$1;

    invoke-direct {v0}, Lcom/htc/android/mail/Mailboxs$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/Mailboxs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxMap:Ljava/util/HashMap;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxUndecodeNameAndShortNameMap:Ljava/util/HashMap;

    .line 27
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mIsExchg:Ljava/lang/Boolean;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mCombinedMailboxs:[Lcom/htc/android/mail/Mailbox;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ZJJJJJJ)V
    .locals 15
    .parameter "context"
    .parameter "c"
    .parameter "isExchg"
    .parameter "accountId"
    .parameter "defaultId"
    .parameter "trashId"
    .parameter "sentId"
    .parameter "draftId"
    .parameter "outId"

    .prologue
    .line 145
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxMap:Ljava/util/HashMap;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxUndecodeNameAndShortNameMap:Ljava/util/HashMap;

    .line 27
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mIsExchg:Ljava/lang/Boolean;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mCombinedMailboxs:[Lcom/htc/android/mail/Mailbox;

    .line 146
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mIsExchg:Ljava/lang/Boolean;

    .line 147
    if-eqz p3, :cond_0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    move-wide/from16 v9, p10

    move-wide/from16 v11, p12

    move-wide/from16 v13, p14

    .line 148
    invoke-direct/range {v0 .. v14}, Lcom/htc/android/mail/Mailboxs;->initEAS(Landroid/content/Context;Landroid/database/Cursor;JJJJJJ)V

    .line 152
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    move-wide/from16 v9, p10

    move-wide/from16 v11, p12

    move-wide/from16 v13, p14

    .line 150
    invoke-direct/range {v0 .. v14}, Lcom/htc/android/mail/Mailboxs;->init(Landroid/content/Context;Landroid/database/Cursor;JJJJJJ)V

    goto :goto_0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 659
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxMap:Ljava/util/HashMap;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxUndecodeNameAndShortNameMap:Ljava/util/HashMap;

    .line 27
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mIsExchg:Ljava/lang/Boolean;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mCombinedMailboxs:[Lcom/htc/android/mail/Mailbox;

    .line 660
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/Mailboxs;->readFromParcel(Landroid/os/Parcel;)V

    .line 661
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/mail/Mailboxs$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/htc/android/mail/Mailboxs;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/Mailbox;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailbox;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxMap:Ljava/util/HashMap;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxUndecodeNameAndShortNameMap:Ljava/util/HashMap;

    .line 27
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mIsExchg:Ljava/lang/Boolean;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mCombinedMailboxs:[Lcom/htc/android/mail/Mailbox;

    .line 36
    iput-object p1, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    .line 37
    invoke-direct {p0}, Lcom/htc/android/mail/Mailboxs;->initialNames()V

    .line 38
    return-void
.end method

.method private dump()V
    .locals 31

    .prologue
    .line 599
    const-string v3, "Mailboxs"

    const-string v4, "-- dump accounts --"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 602
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 603
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 604
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 605
    const-string v3, "_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 606
    .local v19, id:J
    const-string v3, "_emailaddress"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 607
    .local v18, emailaddress:Ljava/lang/String;
    const-string v3, "_protocol"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 608
    .local v23, protocol:I
    const-string v3, "_defaultfolderId"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 609
    .local v14, defaultfolderId:J
    const-string v3, "_trashfolderId"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 610
    .local v27, trashfolderId:J
    const-string v3, "_sentfolderId"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 611
    .local v24, sentfolderId:J
    const-string v3, "_draftfolderId"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 612
    .local v16, draftfolderId:J
    const-string v3, "_outfolderId"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 613
    .local v21, outfolderId:J
    const-string v3, "Mailboxs"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", emailaddress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", protocol"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", defaultfolderId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", trashfolderId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v27

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sentfolderId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", draftfolderId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", outfolderId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v21

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 618
    .end local v14           #defaultfolderId:J
    .end local v16           #draftfolderId:J
    .end local v18           #emailaddress:Ljava/lang/String;
    .end local v19           #id:J
    .end local v21           #outfolderId:J
    .end local v23           #protocol:I
    .end local v24           #sentfolderId:J
    .end local v27           #trashfolderId:J
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 622
    :cond_1
    const-string v3, "Mailboxs"

    const-string v4, "-- dump mailboxs --"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 625
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 626
    if-eqz v10, :cond_3

    .line 627
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 628
    const-string v3, "_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 629
    .restart local v19       #id:J
    const-string v3, "_decodename"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 630
    .local v11, decodename:Ljava/lang/String;
    const-string v3, "_defaultfolder"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 631
    .local v12, defaultfolder:J
    const-string v3, "_account"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 632
    .local v8, accountId:J
    const-string v3, "_type"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 633
    .local v29, type:J
    const-string v3, "_serverid"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 634
    .local v26, serverId:Ljava/lang/String;
    const-string v3, "Mailboxs"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", decodename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", defaultfolder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", accountId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v29

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", serverid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 640
    .end local v8           #accountId:J
    .end local v11           #decodename:Ljava/lang/String;
    .end local v12           #defaultfolder:J
    .end local v19           #id:J
    .end local v26           #serverId:Ljava/lang/String;
    .end local v29           #type:J
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 643
    :cond_3
    return-void
.end method

.method public static getCombinedMailboxs(Landroid/content/Context;)Lcom/htc/android/mail/Mailboxs;
    .locals 22
    .parameter "context"

    .prologue
    .line 54
    new-instance v19, Lcom/htc/android/mail/Mailboxs;

    invoke-direct/range {v19 .. v19}, Lcom/htc/android/mail/Mailboxs;-><init>()V

    .line 55
    .local v19, mailboxs:Lcom/htc/android/mail/Mailboxs;
    new-instance v2, Lcom/htc/android/mail/Mailbox;

    const-wide v3, 0x7fffffffffffffffL

    const-wide v5, 0x7fffffffffffffffL

    const v7, 0x7f0b01d5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0b01d5

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0b01d5

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-direct/range {v2 .. v15}, Lcom/htc/android/mail/Mailbox;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/htc/android/mail/Mailboxs;->mDefaultMailbox:Lcom/htc/android/mail/Mailbox;

    .line 62
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mDefaultMailbox:Lcom/htc/android/mail/Mailbox;

    const v4, 0x7fffffff

    iput v4, v3, Lcom/htc/android/mail/Mailbox;->kind:I

    .line 63
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/htc/android/mail/Mailboxs;->mDefaultMailbox:Lcom/htc/android/mail/Mailbox;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxMap:Ljava/util/HashMap;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/htc/android/mail/Mailboxs;->mDefaultMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v4, v4, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/htc/android/mail/Mailboxs;->mDefaultMailbox:Lcom/htc/android/mail/Mailbox;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxUndecodeNameAndShortNameMap:Ljava/util/HashMap;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/htc/android/mail/Mailboxs;->mDefaultMailbox:Lcom/htc/android/mail/Mailbox;

    invoke-virtual {v4}, Lcom/htc/android/mail/Mailbox;->getUndecodeNameAndShortName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/htc/android/mail/Mailboxs;->mDefaultMailbox:Lcom/htc/android/mail/Mailbox;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const/4 v2, 0x0

    .line 70
    .local v2, mailbox:Lcom/htc/android/mail/Mailbox;
    new-instance v2, Lcom/htc/android/mail/Mailbox;

    .end local v2           #mailbox:Lcom/htc/android/mail/Mailbox;
    const-wide v3, 0x7fffffffffffffffL

    const-wide v5, 0x7ffffffffffffffaL

    const v7, 0x7f0b01db

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0b01db

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0b01db

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-direct/range {v2 .. v15}, Lcom/htc/android/mail/Mailbox;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 77
    .restart local v2       #mailbox:Lcom/htc/android/mail/Mailbox;
    const v3, 0x7ffffffa

    iput v3, v2, Lcom/htc/android/mail/Mailbox;->kind:I

    .line 78
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxMap:Ljava/util/HashMap;

    iget-wide v4, v2, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxUndecodeNameAndShortNameMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/htc/android/mail/Mailbox;->getUndecodeNameAndShortName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v3, Lcom/htc/android/mail/Mailbox;

    const-wide v4, 0x7fffffffffffffffL

    const-wide v6, 0x7ffffffffffffffcL

    const v8, 0x7f0b01d6

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0b01d6

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0b01d6

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-direct/range {v3 .. v16}, Lcom/htc/android/mail/Mailbox;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v0, v19

    iput-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mDraftMailbox:Lcom/htc/android/mail/Mailbox;

    .line 89
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mDraftMailbox:Lcom/htc/android/mail/Mailbox;

    const v4, 0x7ffffffc

    iput v4, v3, Lcom/htc/android/mail/Mailbox;->kind:I

    .line 90
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/htc/android/mail/Mailboxs;->mDraftMailbox:Lcom/htc/android/mail/Mailbox;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxMap:Ljava/util/HashMap;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/htc/android/mail/Mailboxs;->mDraftMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v4, v4, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/htc/android/mail/Mailboxs;->mDraftMailbox:Lcom/htc/android/mail/Mailbox;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxUndecodeNameAndShortNameMap:Ljava/util/HashMap;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/htc/android/mail/Mailboxs;->mDraftMailbox:Lcom/htc/android/mail/Mailbox;

    invoke-virtual {v4}, Lcom/htc/android/mail/Mailbox;->getUndecodeNameAndShortName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/htc/android/mail/Mailboxs;->mDraftMailbox:Lcom/htc/android/mail/Mailbox;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v3, Lcom/htc/android/mail/Mailbox;

    const-wide v4, 0x7fffffffffffffffL

    const-wide v6, 0x7ffffffffffffffbL

    const v8, 0x7f0b01d7

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0b01d7

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0b01d7

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-direct/range {v3 .. v16}, Lcom/htc/android/mail/Mailbox;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v0, v19

    iput-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mOutMailbox:Lcom/htc/android/mail/Mailbox;

    .line 101
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mOutMailbox:Lcom/htc/android/mail/Mailbox;

    const v4, 0x7ffffffb

    iput v4, v3, Lcom/htc/android/mail/Mailbox;->kind:I

    .line 102
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/htc/android/mail/Mailboxs;->mOutMailbox:Lcom/htc/android/mail/Mailbox;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxMap:Ljava/util/HashMap;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/htc/android/mail/Mailboxs;->mOutMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v4, v4, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/htc/android/mail/Mailboxs;->mOutMailbox:Lcom/htc/android/mail/Mailbox;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxUndecodeNameAndShortNameMap:Ljava/util/HashMap;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/htc/android/mail/Mailboxs;->mOutMailbox:Lcom/htc/android/mail/Mailbox;

    invoke-virtual {v4}, Lcom/htc/android/mail/Mailbox;->getUndecodeNameAndShortName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/htc/android/mail/Mailboxs;->mOutMailbox:Lcom/htc/android/mail/Mailbox;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v3, Lcom/htc/android/mail/Mailbox;

    const-wide v4, 0x7fffffffffffffffL

    const-wide v6, 0x7ffffffffffffffdL

    const v8, 0x7f0b01d8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0b01d8

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0b01d8

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-direct/range {v3 .. v16}, Lcom/htc/android/mail/Mailbox;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v0, v19

    iput-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mSentMailbox:Lcom/htc/android/mail/Mailbox;

    .line 113
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mSentMailbox:Lcom/htc/android/mail/Mailbox;

    const v4, 0x7ffffffd

    iput v4, v3, Lcom/htc/android/mail/Mailbox;->kind:I

    .line 114
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/htc/android/mail/Mailboxs;->mSentMailbox:Lcom/htc/android/mail/Mailbox;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxMap:Ljava/util/HashMap;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/htc/android/mail/Mailboxs;->mSentMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v4, v4, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/htc/android/mail/Mailboxs;->mSentMailbox:Lcom/htc/android/mail/Mailbox;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxUndecodeNameAndShortNameMap:Ljava/util/HashMap;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/htc/android/mail/Mailboxs;->mSentMailbox:Lcom/htc/android/mail/Mailbox;

    invoke-virtual {v4}, Lcom/htc/android/mail/Mailbox;->getUndecodeNameAndShortName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/htc/android/mail/Mailboxs;->mSentMailbox:Lcom/htc/android/mail/Mailbox;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v3, Lcom/htc/android/mail/Mailbox;

    const-wide v4, 0x7fffffffffffffffL

    const-wide v6, 0x7ffffffffffffffeL

    const v8, 0x7f0b01d9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0b01d9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0b01d9

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-direct/range {v3 .. v16}, Lcom/htc/android/mail/Mailbox;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v0, v19

    iput-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mTrashMailbox:Lcom/htc/android/mail/Mailbox;

    .line 125
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mTrashMailbox:Lcom/htc/android/mail/Mailbox;

    const v4, 0x7ffffffe

    iput v4, v3, Lcom/htc/android/mail/Mailbox;->kind:I

    .line 126
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/htc/android/mail/Mailboxs;->mTrashMailbox:Lcom/htc/android/mail/Mailbox;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxMap:Ljava/util/HashMap;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/htc/android/mail/Mailboxs;->mTrashMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v4, v4, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/htc/android/mail/Mailboxs;->mTrashMailbox:Lcom/htc/android/mail/Mailbox;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxUndecodeNameAndShortNameMap:Ljava/util/HashMap;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/htc/android/mail/Mailboxs;->mTrashMailbox:Lcom/htc/android/mail/Mailbox;

    invoke-virtual {v4}, Lcom/htc/android/mail/Mailbox;->getUndecodeNameAndShortName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/htc/android/mail/Mailboxs;->mTrashMailbox:Lcom/htc/android/mail/Mailbox;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const/16 v20, 0x0

    .line 131
    .local v20, shortNames:[Ljava/lang/String;
    const/16 v17, 0x0

    .line 132
    .local v17, decodeNames:[Ljava/lang/String;
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 133
    .local v21, size:I
    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 134
    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 135
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 136
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/Mailbox;

    iget-object v3, v3, Lcom/htc/android/mail/Mailbox;->shortName:Ljava/lang/String;

    aput-object v3, v20, v18

    .line 137
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/Mailbox;

    iget-object v3, v3, Lcom/htc/android/mail/Mailbox;->decodeName:Ljava/lang/String;

    aput-object v3, v17, v18

    .line 135
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 139
    :cond_0
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/htc/android/mail/Mailboxs;->mShortNames:[Ljava/lang/String;

    .line 140
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/htc/android/mail/Mailboxs;->mDecodeNames:[Ljava/lang/String;

    .line 142
    return-object v19
.end method

.method private init(Landroid/content/Context;Landroid/database/Cursor;JJJJJJ)V
    .locals 29
    .parameter "context"
    .parameter "c"
    .parameter "accountId"
    .parameter "defaultId"
    .parameter "trashId"
    .parameter "sentId"
    .parameter "draftId"
    .parameter "outId"

    .prologue
    .line 155
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v20, realMailboxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailbox;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v21, defaultSyncMailboxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailbox;>;"
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    const-string v3, "_account"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 159
    .local v22, account:J
    cmp-long v3, v22, p3

    if-eqz v3, :cond_3

    .line 160
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToPrevious()Z

    .end local v22           #account:J
    :cond_1
    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move-wide/from16 v18, p3

    .line 212
    invoke-direct/range {v16 .. v21}, Lcom/htc/android/mail/Mailboxs;->initCombinedMailbox(Landroid/content/Context;JLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 214
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mShortNames:[Ljava/lang/String;

    .line 215
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mDecodeNames:[Ljava/lang/String;

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 217
    .local v26, size:I
    move/from16 v0, v26

    new-array v3, v0, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mShortNames:[Ljava/lang/String;

    .line 218
    move/from16 v0, v26

    new-array v3, v0, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mDecodeNames:[Ljava/lang/String;

    .line 219
    const/16 v25, 0x0

    .local v25, i:I
    :goto_1
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_a

    .line 220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Mailboxs;->mShortNames:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/Mailbox;

    iget-object v3, v3, Lcom/htc/android/mail/Mailbox;->shortName:Ljava/lang/String;

    aput-object v3, v4, v25

    .line 221
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Mailboxs;->mDecodeNames:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/Mailbox;

    iget-object v3, v3, Lcom/htc/android/mail/Mailbox;->decodeName:Ljava/lang/String;

    aput-object v3, v4, v25

    .line 222
    const-string v3, "INBOX"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Mailboxs;->mDecodeNames:[Ljava/lang/String;

    aget-object v4, v4, v25

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mDecodeNames:[Ljava/lang/String;

    const-string v4, "Inbox"

    aput-object v4, v3, v25

    .line 219
    :cond_2
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 164
    .end local v25           #i:I
    .end local v26           #size:I
    .restart local v22       #account:J
    :cond_3
    const-string v3, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 165
    .local v5, id:J
    const-string v3, "_undecodename"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 166
    .local v7, undecodename:Ljava/lang/String;
    const-string v3, "_decodename"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 167
    .local v8, decodename:Ljava/lang/String;
    const-string v3, "_shortname"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 168
    .local v9, shortname:Ljava/lang/String;
    const-string v3, "_serverfolder"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 169
    .local v10, serverfolder:I
    const-string v3, "_movegroup"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 170
    .local v14, movegroup:I
    const-string v3, "_showsender"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 171
    .local v15, showsender:I
    const-string v3, "_synckey"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 172
    .local v27, syncKey:Ljava/lang/String;
    const-string v3, "_uidvalidity"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 173
    .local v28, uidValidity:Ljava/lang/String;
    const-string v3, "_default_sync"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    const/16 v24, 0x1

    .line 174
    .local v24, defaultSyncEnabled:Z
    :goto_2
    new-instance v2, Lcom/htc/android/mail/Mailbox;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide/from16 v3, p3

    invoke-direct/range {v2 .. v15}, Lcom/htc/android/mail/Mailbox;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 175
    .local v2, mailbox:Lcom/htc/android/mail/Mailbox;
    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/htc/android/mail/Mailbox;->setSyncKey(Ljava/lang/String;)V

    .line 176
    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/htc/android/mail/Mailbox;->setUidValidity(Ljava/lang/String;)V

    .line 177
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxMap:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxUndecodeNameAndShortNameMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/htc/android/mail/Mailbox;->getUndecodeNameAndShortName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    if-eqz v24, :cond_4

    .line 182
    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/htc/android/mail/Mailbox;->setDefaultSyncEnabled(Z)V

    .line 183
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_4
    cmp-long v3, p5, v5

    if-nez v3, :cond_5

    .line 187
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Mailboxs;->mDefaultMailbox:Lcom/htc/android/mail/Mailbox;

    .line 188
    const v3, 0x7fffffff

    iput v3, v2, Lcom/htc/android/mail/Mailbox;->kind:I

    .line 191
    :cond_5
    cmp-long v3, p7, v5

    if-nez v3, :cond_6

    .line 192
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Mailboxs;->mTrashMailbox:Lcom/htc/android/mail/Mailbox;

    .line 193
    const v3, 0x7ffffffe

    iput v3, v2, Lcom/htc/android/mail/Mailbox;->kind:I

    .line 196
    :cond_6
    cmp-long v3, p9, v5

    if-nez v3, :cond_7

    .line 197
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Mailboxs;->mSentMailbox:Lcom/htc/android/mail/Mailbox;

    .line 198
    const v3, 0x7ffffffd

    iput v3, v2, Lcom/htc/android/mail/Mailbox;->kind:I

    .line 201
    :cond_7
    cmp-long v3, p11, v5

    if-nez v3, :cond_8

    .line 202
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Mailboxs;->mDraftMailbox:Lcom/htc/android/mail/Mailbox;

    .line 203
    const v3, 0x7ffffffc

    iput v3, v2, Lcom/htc/android/mail/Mailbox;->kind:I

    .line 206
    :cond_8
    cmp-long v3, p13, v5

    if-nez v3, :cond_0

    .line 207
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Mailboxs;->mOutMailbox:Lcom/htc/android/mail/Mailbox;

    .line 208
    const v3, 0x7ffffffb

    iput v3, v2, Lcom/htc/android/mail/Mailbox;->kind:I

    goto/16 :goto_0

    .line 173
    .end local v2           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v24           #defaultSyncEnabled:Z
    :cond_9
    const/16 v24, 0x0

    goto :goto_2

    .line 227
    .end local v5           #id:J
    .end local v7           #undecodename:Ljava/lang/String;
    .end local v8           #decodename:Ljava/lang/String;
    .end local v9           #shortname:Ljava/lang/String;
    .end local v10           #serverfolder:I
    .end local v14           #movegroup:I
    .end local v15           #showsender:I
    .end local v22           #account:J
    .end local v27           #syncKey:Ljava/lang/String;
    .end local v28           #uidValidity:Ljava/lang/String;
    .restart local v25       #i:I
    .restart local v26       #size:I
    :cond_a
    return-void
.end method

.method private initCombinedMailbox(Landroid/content/Context;JLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 17
    .parameter "context"
    .parameter "accountId"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/Mailbox;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/Mailbox;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p4, realMailboxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailbox;>;"
    .local p5, defaultSyncMailboxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailbox;>;"
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/htc/android/mail/Mailbox;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Mailboxs;->mCombinedMailboxs:[Lcom/htc/android/mail/Mailbox;

    .line 339
    const/4 v1, 0x0

    .line 355
    .local v1, mailbox:Lcom/htc/android/mail/Mailbox;
    new-instance v1, Lcom/htc/android/mail/Mailbox;

    .end local v1           #mailbox:Lcom/htc/android/mail/Mailbox;
    const-wide v4, 0x7ffffffffffffffaL

    const v2, 0x7f0b01db

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v2, 0x7f0b01db

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v2, 0x7f0b01db

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-wide/from16 v2, p2

    invoke-direct/range {v1 .. v14}, Lcom/htc/android/mail/Mailbox;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 362
    .restart local v1       #mailbox:Lcom/htc/android/mail/Mailbox;
    const v2, 0x7ffffffa

    iput v2, v1, Lcom/htc/android/mail/Mailbox;->kind:I

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxMap:Ljava/util/HashMap;

    iget-wide v3, v1, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 366
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/android/mail/Mailbox;

    .line 367
    .local v16, m:Lcom/htc/android/mail/Mailbox;
    if-eqz v16, :cond_0

    .line 368
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/Mailbox;->addMailboxId(J)V

    goto :goto_0

    .line 371
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #m:Lcom/htc/android/mail/Mailbox;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mailboxs;->mDefaultMailbox:Lcom/htc/android/mail/Mailbox;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mailboxs;->mDefaultMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v2, v2, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/Mailbox;->addMailboxId(J)V

    .line 374
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mailboxs;->mCombinedMailboxs:[Lcom/htc/android/mail/Mailbox;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mailboxs;->mSentMailbox:Lcom/htc/android/mail/Mailbox;

    if-nez v2, :cond_3

    .line 378
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/Mailboxs;->dump()V

    .line 381
    :cond_3
    const/4 v6, 0x0

    .line 382
    .local v6, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mailboxs;->mIsExchg:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mDefaultMailbox:Lcom/htc/android/mail/Mailbox;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Mailboxs;->mIsExchg:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/htc/android/mail/Mailbox;->getShortFolderName(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mSentMailbox:Lcom/htc/android/mail/Mailbox;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Mailboxs;->mIsExchg:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/htc/android/mail/Mailbox;->getShortFolderName(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 387
    :goto_1
    new-instance v1, Lcom/htc/android/mail/Mailbox;

    .end local v1           #mailbox:Lcom/htc/android/mail/Mailbox;
    const-wide v4, 0x7ffffffffffffff9L

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-wide/from16 v2, p2

    move-object v7, v6

    move-object v8, v6

    invoke-direct/range {v1 .. v14}, Lcom/htc/android/mail/Mailbox;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 391
    .restart local v1       #mailbox:Lcom/htc/android/mail/Mailbox;
    const v2, 0x7ffffffa

    iput v2, v1, Lcom/htc/android/mail/Mailbox;->kind:I

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxMap:Ljava/util/HashMap;

    iget-wide v3, v1, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mailboxs;->mDefaultMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v2, v2, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/Mailbox;->addMailboxId(J)V

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mailboxs;->mSentMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v2, v2, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/Mailbox;->addMailboxId(J)V

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mailboxs;->mCombinedMailboxs:[Lcom/htc/android/mail/Mailbox;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 399
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 401
    :goto_2
    return-void

    .line 385
    :cond_4
    const v2, 0x7f0b01dc

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 400
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p4

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_2
.end method

.method private initEAS(Landroid/content/Context;Landroid/database/Cursor;JJJJJJ)V
    .locals 30
    .parameter "context"
    .parameter "c"
    .parameter "accountId"
    .parameter "defaultId"
    .parameter "trashId"
    .parameter "sentId"
    .parameter "draftId"
    .parameter "outId"

    .prologue
    .line 231
    if-nez p2, :cond_1

    .line 232
    const-string v3, "Mailboxs"

    const-string v4, "initEAS, cursor is null"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_0
    return-void

    .line 235
    :cond_1
    const/16 v26, 0x0

    .line 236
    .local v26, mailboxCount:I
    const/16 v28, 0x0

    .line 237
    .local v28, nError:Z
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v20, reailMailboxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailbox;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v21, defaultSyncMailboxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailbox;>;"
    :cond_2
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 240
    const-string v3, "_account"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 241
    .local v22, account:J
    cmp-long v3, v22, p3

    if-eqz v3, :cond_a

    .line 242
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 294
    .end local v22           #account:J
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mDefaultMailbox:Lcom/htc/android/mail/Mailbox;

    if-nez v3, :cond_4

    .line 295
    const/16 v28, 0x1

    .line 296
    const-string v3, "Mailboxs"

    const-string v4, "initEAS: defaultMailbox is null"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mTrashMailbox:Lcom/htc/android/mail/Mailbox;

    if-nez v3, :cond_5

    .line 299
    const/16 v28, 0x1

    .line 300
    const-string v3, "Mailboxs"

    const-string v4, "initEAS: trashMailbox is null"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mSentMailbox:Lcom/htc/android/mail/Mailbox;

    if-nez v3, :cond_6

    .line 303
    const/16 v28, 0x1

    .line 304
    const-string v3, "Mailboxs"

    const-string v4, "initEAS: SentMailbox is null"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mDraftMailbox:Lcom/htc/android/mail/Mailbox;

    if-nez v3, :cond_7

    .line 307
    const/16 v28, 0x1

    .line 308
    const-string v3, "Mailboxs"

    const-string v4, "initEAS: DraftMailbox is null"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mOutMailbox:Lcom/htc/android/mail/Mailbox;

    if-nez v3, :cond_8

    .line 311
    const/16 v28, 0x1

    .line 312
    const-string v3, "Mailboxs"

    const-string v4, "initEAS: OutMailbox is null"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_8
    if-eqz v28, :cond_9

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p7

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p9

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p11

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p13

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 317
    .local v27, msg:Ljava/lang/String;
    const-string v3, "Mailboxs"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mailbox error: "

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v27           #msg:Ljava/lang/String;
    :cond_9
    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move-wide/from16 v18, p3

    .line 320
    invoke-direct/range {v16 .. v21}, Lcom/htc/android/mail/Mailboxs;->initCombinedMailbox(Landroid/content/Context;JLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 322
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mShortNames:[Ljava/lang/String;

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v29

    .line 324
    .local v29, size:I
    move/from16 v0, v29

    new-array v3, v0, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mShortNames:[Ljava/lang/String;

    .line 325
    const/16 v25, 0x0

    .local v25, i:I
    :goto_1
    move/from16 v0, v25

    move/from16 v1, v29

    if-ge v0, v1, :cond_11

    .line 326
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Mailboxs;->mShortNames:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/Mailbox;

    iget-object v3, v3, Lcom/htc/android/mail/Mailbox;->shortName:Ljava/lang/String;

    aput-object v3, v4, v25

    .line 325
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 246
    .end local v25           #i:I
    .end local v29           #size:I
    .restart local v22       #account:J
    :cond_a
    add-int/lit8 v26, v26, 0x1

    .line 247
    const-string v3, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 248
    .local v5, id:J
    const-string v3, "_undecodename"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 249
    .local v7, undecodename:Ljava/lang/String;
    const-string v3, "_decodename"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 250
    .local v8, decodename:Ljava/lang/String;
    const-string v3, "_shortname"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 251
    .local v9, shortname:Ljava/lang/String;
    const-string v3, "_serverfolder"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 252
    .local v10, serverfolder:I
    const-string v3, "_type"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 253
    .local v11, type:Ljava/lang/String;
    const-string v3, "_serverid"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 254
    .local v12, serverId:Ljava/lang/String;
    const-string v3, "_parentid"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 255
    .local v13, parentId:Ljava/lang/String;
    const-string v3, "_movegroup"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 256
    .local v14, movegroup:I
    const-string v3, "_showsender"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 257
    .local v15, showsender:I
    const-string v3, "_default_sync"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    const/16 v24, 0x1

    .line 258
    .local v24, defaultSyncEnabled:Z
    :goto_2
    new-instance v2, Lcom/htc/android/mail/Mailbox;

    move-wide/from16 v3, p3

    invoke-direct/range {v2 .. v15}, Lcom/htc/android/mail/Mailbox;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 259
    .local v2, mailbox:Lcom/htc/android/mail/Mailbox;
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxMap:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxUndecodeNameAndShortNameMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/htc/android/mail/Mailbox;->getUndecodeNameAndShortName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    if-eqz v24, :cond_b

    .line 264
    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/htc/android/mail/Mailbox;->setDefaultSyncEnabled(Z)V

    .line 265
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_b
    cmp-long v3, p5, v5

    if-nez v3, :cond_c

    .line 269
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Mailboxs;->mDefaultMailbox:Lcom/htc/android/mail/Mailbox;

    .line 270
    const v3, 0x7fffffff

    iput v3, v2, Lcom/htc/android/mail/Mailbox;->kind:I

    .line 273
    :cond_c
    cmp-long v3, p7, v5

    if-nez v3, :cond_d

    .line 274
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Mailboxs;->mTrashMailbox:Lcom/htc/android/mail/Mailbox;

    .line 275
    const v3, 0x7ffffffe

    iput v3, v2, Lcom/htc/android/mail/Mailbox;->kind:I

    .line 278
    :cond_d
    cmp-long v3, p9, v5

    if-nez v3, :cond_e

    .line 279
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Mailboxs;->mSentMailbox:Lcom/htc/android/mail/Mailbox;

    .line 280
    const v3, 0x7ffffffd

    iput v3, v2, Lcom/htc/android/mail/Mailbox;->kind:I

    .line 283
    :cond_e
    cmp-long v3, p11, v5

    if-nez v3, :cond_f

    .line 284
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Mailboxs;->mDraftMailbox:Lcom/htc/android/mail/Mailbox;

    .line 285
    const v3, 0x7ffffffc

    iput v3, v2, Lcom/htc/android/mail/Mailbox;->kind:I

    .line 288
    :cond_f
    cmp-long v3, p13, v5

    if-nez v3, :cond_2

    .line 289
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/Mailboxs;->mOutMailbox:Lcom/htc/android/mail/Mailbox;

    .line 290
    const v3, 0x7ffffffb

    iput v3, v2, Lcom/htc/android/mail/Mailbox;->kind:I

    goto/16 :goto_0

    .line 257
    .end local v2           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v24           #defaultSyncEnabled:Z
    :cond_10
    const/16 v24, 0x0

    goto :goto_2

    .line 328
    .end local v5           #id:J
    .end local v7           #undecodename:Ljava/lang/String;
    .end local v8           #decodename:Ljava/lang/String;
    .end local v9           #shortname:Ljava/lang/String;
    .end local v10           #serverfolder:I
    .end local v11           #type:Ljava/lang/String;
    .end local v12           #serverId:Ljava/lang/String;
    .end local v13           #parentId:Ljava/lang/String;
    .end local v14           #movegroup:I
    .end local v15           #showsender:I
    .end local v22           #account:J
    .restart local v25       #i:I
    .restart local v29       #size:I
    :cond_11
    move/from16 v0, v29

    new-array v3, v0, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mDecodeNames:[Ljava/lang/String;

    .line 329
    const/16 v25, 0x0

    :goto_3
    move/from16 v0, v25

    move/from16 v1, v29

    if-ge v0, v1, :cond_0

    .line 330
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/Mailboxs;->mDecodeNames:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/Mailbox;

    iget-object v3, v3, Lcom/htc/android/mail/Mailbox;->decodeName:Ljava/lang/String;

    aput-object v3, v4, v25

    .line 329
    add-int/lit8 v25, v25, 0x1

    goto :goto_3
.end method

.method private initialNames()V
    .locals 4

    .prologue
    .line 41
    iget-object v2, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 42
    .local v1, size:I
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/android/mail/Mailboxs;->mShortNames:[Ljava/lang/String;

    .line 43
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/android/mail/Mailboxs;->mDecodeNames:[Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 45
    iget-object v3, p0, Lcom/htc/android/mail/Mailboxs;->mShortNames:[Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/Mailbox;

    iget-object v2, v2, Lcom/htc/android/mail/Mailbox;->shortName:Ljava/lang/String;

    aput-object v2, v3, v0

    .line 46
    iget-object v3, p0, Lcom/htc/android/mail/Mailboxs;->mDecodeNames:[Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/Mailbox;

    iget-object v2, v2, Lcom/htc/android/mail/Mailbox;->decodeName:Ljava/lang/String;

    aput-object v2, v3, v0

    .line 47
    const-string v2, "INBOX"

    iget-object v3, p0, Lcom/htc/android/mail/Mailboxs;->mDecodeNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/htc/android/mail/Mailboxs;->mDecodeNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/mail/Mailboxs;->mShortNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 44
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 646
    const/4 v0, 0x0

    return v0
.end method

.method public getCombinedMailboxs()[Lcom/htc/android/mail/Mailbox;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mCombinedMailboxs:[Lcom/htc/android/mail/Mailbox;

    return-object v0
.end method

.method public getDecodeNames(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 423
    iget-object v3, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 424
    .local v2, size:I
    new-array v0, v2, [Ljava/lang/String;

    .line 425
    .local v0, decodeNames:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 426
    iget-object v3, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/Mailbox;

    iget-object v4, p0, Lcom/htc/android/mail/Mailboxs;->mIsExchg:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/htc/android/mail/Mailbox;->getDecodeName(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 425
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 429
    :cond_0
    return-object v0
.end method

.method public getDefaultMailbox()Lcom/htc/android/mail/Mailbox;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mDefaultMailbox:Lcom/htc/android/mail/Mailbox;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/android/mail/Mailboxs;->dump()V

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mDefaultMailbox:Lcom/htc/android/mail/Mailbox;

    return-object v0
.end method

.method public getDefaultMailboxUnDecodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mDefaultMailbox:Lcom/htc/android/mail/Mailbox;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mDefaultMailbox:Lcom/htc/android/mail/Mailbox;

    iget-object v0, v0, Lcom/htc/android/mail/Mailbox;->unDecodeName:Ljava/lang/String;

    .line 523
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultSyncEnabled()[Z
    .locals 4

    .prologue
    .line 434
    iget-object v3, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 435
    .local v1, size:I
    new-array v2, v1, [Z

    .line 436
    .local v2, status:[Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 437
    iget-object v3, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/Mailbox;

    invoke-virtual {v3}, Lcom/htc/android/mail/Mailbox;->getDefaultSyncEnabled()Z

    move-result v3

    aput-boolean v3, v2, v0

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 439
    :cond_0
    return-object v2
.end method

.method public getDraftMailbox()Lcom/htc/android/mail/Mailbox;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mDraftMailbox:Lcom/htc/android/mail/Mailbox;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/android/mail/Mailboxs;->dump()V

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mDraftMailbox:Lcom/htc/android/mail/Mailbox;

    return-object v0
.end method

.method public getDraftMailboxUnDecodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mDraftMailbox:Lcom/htc/android/mail/Mailbox;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mDraftMailbox:Lcom/htc/android/mail/Mailbox;

    iget-object v0, v0, Lcom/htc/android/mail/Mailbox;->unDecodeName:Ljava/lang/String;

    .line 559
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMailbox(I)Lcom/htc/android/mail/Mailbox;
    .locals 1
    .parameter "location"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/Mailbox;

    return-object v0
.end method

.method public getMailboxById(J)Lcom/htc/android/mail/Mailbox;
    .locals 2
    .parameter "id"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/Mailbox;

    return-object v0
.end method

.method public getMailboxByKind(I)Lcom/htc/android/mail/Mailbox;
    .locals 1
    .parameter "kind"

    .prologue
    .line 578
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mDefaultMailbox:Lcom/htc/android/mail/Mailbox;

    .line 589
    :goto_0
    return-object v0

    .line 580
    :cond_0
    const v0, 0x7ffffffe

    if-ne p1, v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mTrashMailbox:Lcom/htc/android/mail/Mailbox;

    goto :goto_0

    .line 582
    :cond_1
    const v0, 0x7ffffffd

    if-ne p1, v0, :cond_2

    .line 583
    iget-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mSentMailbox:Lcom/htc/android/mail/Mailbox;

    goto :goto_0

    .line 584
    :cond_2
    const v0, 0x7ffffffc

    if-ne p1, v0, :cond_3

    .line 585
    iget-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mDraftMailbox:Lcom/htc/android/mail/Mailbox;

    goto :goto_0

    .line 586
    :cond_3
    const v0, 0x7ffffffb

    if-ne p1, v0, :cond_4

    .line 587
    iget-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mOutMailbox:Lcom/htc/android/mail/Mailbox;

    goto :goto_0

    .line 589
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMailboxByUndecodeNameAndShortName(Lcom/htc/android/mail/Mailbox;)Lcom/htc/android/mail/Mailbox;
    .locals 2
    .parameter "mailbox"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxUndecodeNameAndShortNameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/htc/android/mail/Mailbox;->getUndecodeNameAndShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/Mailbox;

    return-object v0
.end method

.method public getMailboxsForChange(Lcom/htc/android/mail/Mailbox;)Lcom/htc/android/mail/Mailboxs;
    .locals 9
    .parameter "mailbox"

    .prologue
    .line 478
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailbox;>;"
    iget-object v5, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 480
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 481
    iget-object v5, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/Mailbox;

    .line 482
    .local v4, tmailbox:Lcom/htc/android/mail/Mailbox;
    iget-wide v5, v4, Lcom/htc/android/mail/Mailbox;->id:J

    iget-wide v7, p1, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 483
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 486
    .end local v4           #tmailbox:Lcom/htc/android/mail/Mailbox;
    :cond_1
    new-instance v2, Lcom/htc/android/mail/Mailboxs;

    invoke-direct {v2, v1}, Lcom/htc/android/mail/Mailboxs;-><init>(Ljava/util/ArrayList;)V

    .line 487
    .local v2, mailboxs:Lcom/htc/android/mail/Mailboxs;
    iget-object v5, p0, Lcom/htc/android/mail/Mailboxs;->mIsExchg:Ljava/lang/Boolean;

    iput-object v5, v2, Lcom/htc/android/mail/Mailboxs;->mIsExchg:Ljava/lang/Boolean;

    .line 488
    return-object v2
.end method

.method public getMailboxsForMove(Lcom/htc/android/mail/Mailbox;)Lcom/htc/android/mail/Mailboxs;
    .locals 9
    .parameter "mailbox"

    .prologue
    .line 444
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailbox;>;"
    iget-object v5, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 446
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 447
    iget-object v5, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/Mailbox;

    .line 449
    .local v4, tmailbox:Lcom/htc/android/mail/Mailbox;
    iget-wide v5, v4, Lcom/htc/android/mail/Mailbox;->id:J

    iget-wide v7, p1, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    iget-wide v5, v4, Lcom/htc/android/mail/Mailbox;->id:J

    iget-object v7, p0, Lcom/htc/android/mail/Mailboxs;->mOutMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v7, v7, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    iget-wide v5, v4, Lcom/htc/android/mail/Mailbox;->id:J

    iget-object v7, p0, Lcom/htc/android/mail/Mailboxs;->mDraftMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v7, v7, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    iget v5, v4, Lcom/htc/android/mail/Mailbox;->kind:I

    const v6, 0x7ffffffa

    if-eq v5, v6, :cond_0

    .line 451
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 454
    .end local v4           #tmailbox:Lcom/htc/android/mail/Mailbox;
    :cond_1
    new-instance v2, Lcom/htc/android/mail/Mailboxs;

    invoke-direct {v2, v1}, Lcom/htc/android/mail/Mailboxs;-><init>(Ljava/util/ArrayList;)V

    .line 455
    .local v2, mailboxs:Lcom/htc/android/mail/Mailboxs;
    iget-object v5, p0, Lcom/htc/android/mail/Mailboxs;->mIsExchg:Ljava/lang/Boolean;

    iput-object v5, v2, Lcom/htc/android/mail/Mailboxs;->mIsExchg:Ljava/lang/Boolean;

    .line 456
    return-object v2
.end method

.method public getMailboxsForSelectDefaultSync()Lcom/htc/android/mail/Mailboxs;
    .locals 9

    .prologue
    .line 461
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailbox;>;"
    iget-object v5, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 463
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 464
    iget-object v5, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/Mailbox;

    .line 465
    .local v4, tmailbox:Lcom/htc/android/mail/Mailbox;
    iget-wide v5, v4, Lcom/htc/android/mail/Mailbox;->id:J

    iget-object v7, p0, Lcom/htc/android/mail/Mailboxs;->mOutMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v7, v7, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    iget-wide v5, v4, Lcom/htc/android/mail/Mailbox;->id:J

    iget-object v7, p0, Lcom/htc/android/mail/Mailboxs;->mDraftMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v7, v7, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    iget v5, v4, Lcom/htc/android/mail/Mailbox;->kind:I

    const v6, 0x7ffffffa

    if-eq v5, v6, :cond_0

    .line 468
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    .end local v4           #tmailbox:Lcom/htc/android/mail/Mailbox;
    :cond_1
    new-instance v2, Lcom/htc/android/mail/Mailboxs;

    invoke-direct {v2, v1}, Lcom/htc/android/mail/Mailboxs;-><init>(Ljava/util/ArrayList;)V

    .line 472
    .local v2, mailboxs:Lcom/htc/android/mail/Mailboxs;
    iget-object v5, p0, Lcom/htc/android/mail/Mailboxs;->mIsExchg:Ljava/lang/Boolean;

    iput-object v5, v2, Lcom/htc/android/mail/Mailboxs;->mIsExchg:Ljava/lang/Boolean;

    .line 473
    return-object v2
.end method

.method public getOutMailbox()Lcom/htc/android/mail/Mailbox;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mOutMailbox:Lcom/htc/android/mail/Mailbox;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/android/mail/Mailboxs;->dump()V

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mOutMailbox:Lcom/htc/android/mail/Mailbox;

    return-object v0
.end method

.method public getOutMailboxUnDecodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mOutMailbox:Lcom/htc/android/mail/Mailbox;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mOutMailbox:Lcom/htc/android/mail/Mailbox;

    iget-object v0, v0, Lcom/htc/android/mail/Mailbox;->unDecodeName:Ljava/lang/String;

    .line 571
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSentMailbox()Lcom/htc/android/mail/Mailbox;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mSentMailbox:Lcom/htc/android/mail/Mailbox;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/android/mail/Mailboxs;->dump()V

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mSentMailbox:Lcom/htc/android/mail/Mailbox;

    return-object v0
.end method

.method public getSentMailboxUnDecodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mSentMailbox:Lcom/htc/android/mail/Mailbox;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mSentMailbox:Lcom/htc/android/mail/Mailbox;

    iget-object v0, v0, Lcom/htc/android/mail/Mailbox;->unDecodeName:Ljava/lang/String;

    .line 547
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShortNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mShortNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getTrashMailbox()Lcom/htc/android/mail/Mailbox;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mTrashMailbox:Lcom/htc/android/mail/Mailbox;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/android/mail/Mailboxs;->dump()V

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mTrashMailbox:Lcom/htc/android/mail/Mailbox;

    return-object v0
.end method

.method public getTrashMailboxUnDecodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mTrashMailbox:Lcom/htc/android/mail/Mailbox;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/htc/android/mail/Mailboxs;->mTrashMailbox:Lcom/htc/android/mail/Mailbox;

    iget-object v0, v0, Lcom/htc/android/mail/Mailbox;->unDecodeName:Ljava/lang/String;

    .line 535
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 8
    .parameter "in"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 677
    iget-object v5, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    sget-object v6, Lcom/htc/android/mail/Mailbox;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 678
    iget-object v5, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/Mailbox;

    .line 679
    .local v1, mailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz v1, :cond_0

    .line 680
    iget-object v5, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxMap:Ljava/util/HashMap;

    iget-wide v6, v1, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    iget-object v5, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxUndecodeNameAndShortNameMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/htc/android/mail/Mailbox;->getUndecodeNameAndShortName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 684
    .end local v1           #mailbox:Lcom/htc/android/mail/Mailbox;
    :cond_1
    const/4 v5, 0x5

    new-array v2, v5, [Lcom/htc/android/mail/Mailbox;

    .line 685
    .local v2, mailboxs:[Lcom/htc/android/mail/Mailbox;
    sget-object v5, Lcom/htc/android/mail/Mailbox;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2, v5}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 686
    aget-object v5, v2, v4

    iput-object v5, p0, Lcom/htc/android/mail/Mailboxs;->mDefaultMailbox:Lcom/htc/android/mail/Mailbox;

    .line 687
    aget-object v5, v2, v3

    iput-object v5, p0, Lcom/htc/android/mail/Mailboxs;->mTrashMailbox:Lcom/htc/android/mail/Mailbox;

    .line 688
    const/4 v5, 0x2

    aget-object v5, v2, v5

    iput-object v5, p0, Lcom/htc/android/mail/Mailboxs;->mSentMailbox:Lcom/htc/android/mail/Mailbox;

    .line 689
    const/4 v5, 0x3

    aget-object v5, v2, v5

    iput-object v5, p0, Lcom/htc/android/mail/Mailboxs;->mDraftMailbox:Lcom/htc/android/mail/Mailbox;

    .line 690
    const/4 v5, 0x4

    aget-object v5, v2, v5

    iput-object v5, p0, Lcom/htc/android/mail/Mailboxs;->mOutMailbox:Lcom/htc/android/mail/Mailbox;

    .line 691
    invoke-direct {p0}, Lcom/htc/android/mail/Mailboxs;->initialNames()V

    .line 692
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v3, :cond_2

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/Mailboxs;->mIsExchg:Ljava/lang/Boolean;

    .line 693
    return-void

    :cond_2
    move v3, v4

    .line 692
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 665
    iget-object v3, p0, Lcom/htc/android/mail/Mailboxs;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 666
    const/4 v3, 0x5

    new-array v0, v3, [Lcom/htc/android/mail/Mailbox;

    .line 667
    .local v0, mailboxs:[Lcom/htc/android/mail/Mailbox;
    iget-object v3, p0, Lcom/htc/android/mail/Mailboxs;->mDefaultMailbox:Lcom/htc/android/mail/Mailbox;

    aput-object v3, v0, v2

    .line 668
    iget-object v3, p0, Lcom/htc/android/mail/Mailboxs;->mTrashMailbox:Lcom/htc/android/mail/Mailbox;

    aput-object v3, v0, v1

    .line 669
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/htc/android/mail/Mailboxs;->mSentMailbox:Lcom/htc/android/mail/Mailbox;

    aput-object v4, v0, v3

    .line 670
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/htc/android/mail/Mailboxs;->mDraftMailbox:Lcom/htc/android/mail/Mailbox;

    aput-object v4, v0, v3

    .line 671
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/htc/android/mail/Mailboxs;->mOutMailbox:Lcom/htc/android/mail/Mailbox;

    aput-object v4, v0, v3

    .line 672
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 673
    iget-object v3, p0, Lcom/htc/android/mail/Mailboxs;->mIsExchg:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 674
    return-void

    :cond_0
    move v1, v2

    .line 673
    goto :goto_0
.end method
