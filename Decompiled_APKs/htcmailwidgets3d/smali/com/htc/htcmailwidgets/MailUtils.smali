.class public Lcom/htc/htcmailwidgets/MailUtils;
.super Ljava/lang/Object;
.source "MailUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htcmailwidgets/MailUtils$Events;,
        Lcom/htc/htcmailwidgets/MailUtils$Status;,
        Lcom/htc/htcmailwidgets/MailUtils$Account;,
        Lcom/htc/htcmailwidgets/MailUtils$AccountProvider;,
        Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;
    }
.end annotation


# static fields
.field public static final ACTION_TIME_FORMAT_CHANGED:Ljava/lang/String; = "android.intent.action.TIMEFORMAT_CHANGED"

.field public static final ALL:I = 0x5

.field public static final APOP:I = 0x1

.field public static final BACK_TO_PROVIDER:I = 0xc8

.field protected static final EAS_MESSAGE_CLASS_INT_IPM_Schedule_Meeting_Request:I = 0x6

.field public static final EXCHANGE:I = 0x4

.field public static final GET_STRING_FIRST_SIZE:I = 0x1f40

.field public static final GET_STRING_FIRST_SIZE_3LINES:I = 0x1388

.field public static final GET_STRING_MAX_SIZE:I = 0x2710

.field public static final GET_STRING_MAX_SIZE_3LINES:I = 0x1388

.field public static final IMAP:I = 0x2

.field public static final KEY_ACCOUNT_DEFAULTFOLDER:Ljava/lang/String; = "ACCOUNT_DEFAULTFOLDER"

.field public static final KEY_ACCOUNT_ID:Ljava/lang/String; = "ACCOUNT_ID"

.field public static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "ACCOUNT_NAME"

.field public static final KEY_ACCOUNT_PROTOCOL:Ljava/lang/String; = "ACCOUNT_PROTOCOL"

.field private static final LOG_TAG:Ljava/lang/String; = "MailUtils"

.field public static final MAIL_PROJECTION:[Ljava/lang/String; = null

.field public static final MAIL_READ_FROM_ALL_ACCOUNT:Ljava/lang/String; = "MailReadFromAllAccount"

.field public static final POP3:I = 0x0

.field public static final Rfc2822_CONTENTTYPE_MIXED:I = 0x1

.field public static final Rfc2822_READ:I = 0x1

.field public static final SAVE_MAIL_TEXT_SIZE:I = 0x258

.field public static final SAVE_MAIL_TEXT_SIZE_3LINES:I = 0xc8

.field public static final SENSE_10:I = 0x0

.field public static final SENSE_15:I = 0x1

.field public static final SENSE_16:I = 0x2

.field public static final SENSE_20:I = 0x3

.field public static final SENSE_21:I = 0x4

.field public static final SENSE_30:I = 0x5

.field public static final SENSE_35:I = 0x6

.field public static final SMTP:I = 0x3

.field public static final STRING_SATISFY_SIZE:I = 0x1f4

.field public static final STRING_SATISFY_SIZE_3LINES:I = 0x1f4

.field public static final UNKNOWN:I = -0x1

.field private static account_drawable:[[I = null

.field public static final allUnreadMail:Landroid/net/Uri; = null

.field private static endTime:J = 0x0L

.field private static regularMeeting:Z = false

.field public static final sACCOUNT_PROJECTION:[Ljava/lang/String; = null

.field public static final sACCOUNT_PROJECTION2:[Ljava/lang/String; = null

.field public static final sAccountsURI:Landroid/net/Uri; = null

.field public static final sCombinedAccountId:J = 0x7fffffffffffffffL

.field public static final sDecrypAccountsURI:Landroid/net/Uri;

.field public static final sEVENT_PROJECTION:[Ljava/lang/String;

.field private static final sLOGV:Z

.field public static final sMAIL_PROJECTION:[Ljava/lang/String;

.field public static final sMAIL_PROJECTION_NOPREVIEW:[Ljava/lang/String;

.field public static final sMailBoxURI:Landroid/net/Uri;

.field public static final sMessagesURI:Landroid/net/Uri;

.field public static final sPROVIDER_PROJECTION:[Ljava/lang/String;

.field public static final sPartsURI:Landroid/net/Uri;

.field public static final sProvidersURI:Landroid/net/Uri;

.field public static final sSTATUS_PROJECTION:[Ljava/lang/String;

.field private static startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    const-string v0, "content://mail/providers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/htcmailwidgets/MailUtils;->sProvidersURI:Landroid/net/Uri;

    .line 62
    const-string v0, "content://mail/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/htcmailwidgets/MailUtils;->sMessagesURI:Landroid/net/Uri;

    .line 63
    const-string v0, "content://mail/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/htcmailwidgets/MailUtils;->sAccountsURI:Landroid/net/Uri;

    .line 64
    const-string v0, "content://mail/mailboxs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/htcmailwidgets/MailUtils;->sMailBoxURI:Landroid/net/Uri;

    .line 65
    const-string v0, "content://mail/parts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/htcmailwidgets/MailUtils;->sPartsURI:Landroid/net/Uri;

    .line 66
    const-string v0, "content://mail/allUnreadMail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/htcmailwidgets/MailUtils;->allUnreadMail:Landroid/net/Uri;

    .line 67
    const-string v0, "content://mail/decryptAccounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/htcmailwidgets/MailUtils;->sDecrypAccountsURI:Landroid/net/Uri;

    .line 69
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_Subject"

    aput-object v1, v0, v4

    const-string v1, "_internaldate"

    aput-object v1, v0, v5

    const-string v1, "_from"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "_fromEmail"

    aput-object v2, v0, v1

    const-string v1, "_flags"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "_read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_incAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_account"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_importance"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "_mailAct"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_messageClassInt"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_subjtype"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "_preview"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/htcmailwidgets/MailUtils;->sMAIL_PROJECTION:[Ljava/lang/String;

    .line 70
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_Subject"

    aput-object v1, v0, v4

    const-string v1, "_internaldate"

    aput-object v1, v0, v5

    const-string v1, "_from"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "_fromEmail"

    aput-object v2, v0, v1

    const-string v1, "_flags"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "_read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_incAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_account"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_importance"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "_mailAct"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_messageClassInt"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_subjtype"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/htcmailwidgets/MailUtils;->sMAIL_PROJECTION_NOPREVIEW:[Ljava/lang/String;

    .line 71
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_provider"

    aput-object v1, v0, v4

    const-string v1, "_domain"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/htcmailwidgets/MailUtils;->sPROVIDER_PROJECTION:[Ljava/lang/String;

    .line 72
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_desc"

    aput-object v1, v0, v4

    const-string v1, "_protocol"

    aput-object v1, v0, v5

    const-string v1, "_defaultfolderId"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "_emailaddress"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/htcmailwidgets/MailUtils;->sACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 73
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_desc"

    aput-object v1, v0, v4

    const-string v1, "_protocol"

    aput-object v1, v0, v5

    const-string v1, "_defaultfolderId"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "_emailaddress"

    aput-object v2, v0, v1

    const-string v1, "_colorIdx"

    aput-object v1, v0, v7

    sput-object v0, Lcom/htc/htcmailwidgets/MailUtils;->sACCOUNT_PROJECTION2:[Ljava/lang/String;

    .line 74
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_flags"

    aput-object v1, v0, v4

    const-string v1, "_read"

    aput-object v1, v0, v5

    const-string v1, "_importance"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "_mailAct"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/htcmailwidgets/MailUtils;->sSTATUS_PROJECTION:[Ljava/lang/String;

    .line 77
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_startTime"

    aput-object v1, v0, v4

    const-string v1, "_endTime"

    aput-object v1, v0, v5

    const-string v1, "_location"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "_allDayEvent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/htcmailwidgets/MailUtils;->sEVENT_PROJECTION:[Ljava/lang/String;

    .line 80
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "data2"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const-string v1, "data3"

    aput-object v1, v0, v7

    sput-object v0, Lcom/htc/htcmailwidgets/MailUtils;->MAIL_PROJECTION:[Ljava/lang/String;

    .line 126
    new-array v0, v5, [[I

    new-array v1, v7, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    const/16 v1, 0x10

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/htcmailwidgets/MailUtils;->account_drawable:[[I

    .line 186
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/htc/htcmailwidgets/MailUtils;->startTime:J

    .line 187
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/htc/htcmailwidgets/MailUtils;->endTime:J

    .line 188
    sput-boolean v3, Lcom/htc/htcmailwidgets/MailUtils;->regularMeeting:Z

    return-void

    .line 126
    nop

    :array_0
    .array-data 0x4
        0x54t 0x0t 0x8t 0x2t
        0x48t 0x0t 0x8t 0x2t
        0x4bt 0x0t 0x8t 0x2t
        0x4ct 0x0t 0x8t 0x2t
        0x4ft 0x0t 0x8t 0x2t
    .end array-data

    :array_1
    .array-data 0x4
        0x5at 0x0t 0x8t 0x2t
        0x53t 0x0t 0x8t 0x2t
        0x49t 0x0t 0x8t 0x2t
        0x4dt 0x0t 0x8t 0x2t
        0x55t 0x0t 0x8t 0x2t
        0x57t 0x0t 0x8t 0x2t
        0x4et 0x0t 0x8t 0x2t
        0x52t 0x0t 0x8t 0x2t
        0x4at 0x0t 0x8t 0x2t
        0x58t 0x0t 0x8t 0x2t
        0x5bt 0x0t 0x8t 0x2t
        0x56t 0x0t 0x8t 0x2t
        0x5ct 0x0t 0x8t 0x2t
        0x59t 0x0t 0x8t 0x2t
        0x50t 0x0t 0x8t 0x2t
        0x51t 0x0t 0x8t 0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 190
    return-void
.end method

.method public static final IsAccountExisted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "where"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 277
    const/4 v6, 0x0

    .line 279
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/htcmailwidgets/MailUtils;->sAccountsURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(_id) as _total"

    aput-object v4, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 280
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const-string v0, "_total"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 282
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 296
    :goto_0
    return v0

    .line 286
    :cond_0
    if-eqz v6, :cond_1

    .line 287
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    const/4 v6, 0x0

    :cond_1
    move v0, v9

    .line 290
    goto :goto_0

    .line 291
    :catch_0
    move-exception v7

    .line 292
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 293
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 295
    :cond_2
    const/4 v6, 0x0

    move v0, v9

    .line 296
    goto :goto_0
.end method

.method public static converHTMLtoPlainText(Ljava/lang/String;)Ljava/lang/String;
    .locals 30
    .parameter "htmlStr"

    .prologue
    .line 851
    if-nez p0, :cond_0

    .line 852
    const-string v28, ""

    .line 1074
    :goto_0
    return-object v28

    .line 853
    :cond_0
    const-string v9, "UTF-8"

    .line 856
    .local v9, encoding:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 861
    .local v12, htmlBytes:[B
    :goto_1
    array-length v0, v12

    move/from16 v28, v0

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 864
    .local v23, rtnBytes:[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 865
    .local v26, start:J
    const/16 v20, 0xc

    .line 866
    .local v20, maxLines:I
    const/16 v19, 0x258

    .line 867
    .local v19, maxCharacters:I
    const/16 v18, 0x0

    .line 868
    .local v18, line_count:I
    const/4 v5, 0x0

    .line 869
    .local v5, char_count:I
    const/16 v21, 0x0

    .line 870
    .local v21, old_byte:B
    const/16 v24, 0x0

    .line 871
    .local v24, rtnBytes_idx:I
    const/4 v15, 0x0

    .line 872
    .local v15, isTagFound:Z
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    array-length v0, v12

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v13, v0, :cond_1

    .line 873
    move/from16 v0, v18

    move/from16 v1, v20

    if-gt v0, v1, :cond_1

    move/from16 v0, v19

    if-le v5, v0, :cond_2

    .line 1062
    :cond_1
    if-eqz v9, :cond_2d

    .line 1064
    :try_start_1
    new-instance v22, Ljava/lang/String;

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v28

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1071
    .local v22, rtn:Ljava/lang/String;
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1074
    .local v10, end:J
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    goto :goto_0

    .line 857
    .end local v5           #char_count:I
    .end local v10           #end:J
    .end local v12           #htmlBytes:[B
    .end local v13           #i:I
    .end local v15           #isTagFound:Z
    .end local v18           #line_count:I
    .end local v19           #maxCharacters:I
    .end local v20           #maxLines:I
    .end local v21           #old_byte:B
    .end local v22           #rtn:Ljava/lang/String;
    .end local v23           #rtnBytes:[B
    .end local v24           #rtnBytes_idx:I
    .end local v26           #start:J
    :catch_0
    move-exception v8

    .line 858
    .local v8, e:Ljava/io/UnsupportedEncodingException;
    const/4 v9, 0x0

    .line 859
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .restart local v12       #htmlBytes:[B
    goto :goto_1

    .line 876
    .end local v8           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v5       #char_count:I
    .restart local v13       #i:I
    .restart local v15       #isTagFound:Z
    .restart local v18       #line_count:I
    .restart local v19       #maxCharacters:I
    .restart local v20       #maxLines:I
    .restart local v21       #old_byte:B
    .restart local v23       #rtnBytes:[B
    .restart local v24       #rtnBytes_idx:I
    .restart local v26       #start:J
    :cond_2
    aget-byte v7, v12, v13

    .line 877
    .local v7, cur_byte:B
    const/16 v28, 0x3c

    move/from16 v0, v28

    if-ne v7, v0, :cond_15

    .line 879
    add-int/lit8 v28, v13, 0x5

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_d

    .line 880
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x73

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_3

    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x53

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    :cond_3
    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x74

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_4

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x54

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    :cond_4
    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x79

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_5

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x59

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    :cond_5
    add-int/lit8 v28, v13, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x6c

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_6

    add-int/lit8 v28, v13, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x4c

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    :cond_6
    add-int/lit8 v28, v13, 0x5

    aget-byte v28, v12, v28

    const/16 v29, 0x65

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_7

    add-int/lit8 v28, v13, 0x5

    aget-byte v28, v12, v28

    const/16 v29, 0x45

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    .line 883
    :cond_7
    add-int/lit8 v16, v13, 0x6

    .local v16, j:I
    :goto_4
    array-length v0, v12

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_d

    .line 884
    add-int/lit8 v28, v16, 0x5

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_11

    .line 885
    aget-byte v28, v12, v16

    const/16 v29, 0x73

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_8

    aget-byte v28, v12, v16

    const/16 v29, 0x53

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    :cond_8
    add-int/lit8 v28, v16, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x74

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_9

    add-int/lit8 v28, v16, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x54

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    :cond_9
    add-int/lit8 v28, v16, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x79

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_a

    add-int/lit8 v28, v16, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x59

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    :cond_a
    add-int/lit8 v28, v16, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x6c

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_b

    add-int/lit8 v28, v16, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x4c

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    :cond_b
    add-int/lit8 v28, v16, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x65

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_c

    add-int/lit8 v28, v16, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x45

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    :cond_c
    add-int/lit8 v28, v16, 0x5

    aget-byte v28, v12, v28

    const/16 v29, 0x3e

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    .line 888
    const/16 v7, 0x20

    .line 889
    add-int/lit8 v13, v16, 0x5

    .line 899
    .end local v16           #j:I
    :cond_d
    add-int/lit8 v28, v13, 0x3

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_e

    .line 900
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x21

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_e

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x2d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_e

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x2d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_e

    .line 901
    add-int/lit8 v16, v13, 0x4

    .restart local v16       #j:I
    :goto_5
    array-length v0, v12

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_e

    .line 902
    add-int/lit8 v28, v16, 0x2

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_12

    .line 903
    aget-byte v28, v12, v16

    const/16 v29, 0x2d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_12

    add-int/lit8 v28, v16, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x2d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_12

    add-int/lit8 v28, v16, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x3e

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_12

    .line 904
    const/16 v7, 0x20

    .line 905
    add-int/lit8 v13, v16, 0x2

    .line 916
    .end local v16           #j:I
    :cond_e
    add-int/lit8 v28, v13, 0x1

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_15

    .line 917
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x20

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_15

    .line 918
    const/4 v15, 0x0

    .line 919
    add-int/lit8 v16, v13, 0x1

    .restart local v16       #j:I
    :goto_6
    array-length v0, v12

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_f

    .line 920
    aget-byte v28, v12, v16

    const/16 v29, 0x3e

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_13

    .line 921
    const/16 v7, 0x20

    .line 922
    move/from16 v13, v16

    .line 923
    const/4 v15, 0x1

    .line 936
    :cond_f
    if-eqz v15, :cond_15

    .line 872
    .end local v16           #j:I
    :cond_10
    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 883
    .restart local v16       #j:I
    :cond_11
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    .line 901
    :cond_12
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 927
    :cond_13
    aget-byte v28, v12, v16

    const/16 v29, 0x3c

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_f

    .line 931
    array-length v0, v12

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v16

    move/from16 v1, v28

    if-ne v0, v1, :cond_14

    .line 932
    const/16 v7, 0x20

    .line 933
    array-length v13, v12

    .line 919
    :cond_14
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 944
    .end local v16           #j:I
    :cond_15
    const/16 v28, 0x26

    move/from16 v0, v28

    if-ne v7, v0, :cond_23

    add-int/lit8 v28, v13, 0x7

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_23

    .line 945
    const/4 v6, 0x0

    .line 946
    .local v6, chars_found:I
    const/16 v17, 0x2

    .local v17, k:I
    :goto_8
    const/16 v28, 0x7

    move/from16 v0, v17

    move/from16 v1, v28

    if-gt v0, v1, :cond_16

    .line 947
    add-int v28, v13, v17

    aget-byte v28, v12, v28

    const/16 v29, 0x3b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1a

    .line 948
    add-int/lit8 v6, v17, -0x2

    .line 953
    :cond_16
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x23

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_23

    if-lez v6, :cond_23

    .line 955
    const/4 v14, 0x0

    .line 956
    .local v14, intValue:I
    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x78

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_17

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x58

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1d

    .line 957
    :cond_17
    const/16 v17, 0x1

    :goto_9
    move/from16 v0, v17

    if-gt v0, v6, :cond_1f

    .line 958
    add-int v28, v13, v17

    add-int/lit8 v28, v28, 0x1

    aget-byte v4, v12, v28

    .line 959
    .local v4, b:B
    const/16 v28, 0x30

    move/from16 v0, v28

    if-lt v4, v0, :cond_1b

    const/16 v28, 0x39

    move/from16 v0, v28

    if-gt v4, v0, :cond_1b

    .line 960
    add-int/lit8 v28, v4, -0x30

    add-int v14, v14, v28

    .line 965
    :cond_18
    :goto_a
    move/from16 v0, v17

    if-ge v0, v6, :cond_19

    .line 966
    mul-int/lit8 v14, v14, 0x10

    .line 957
    :cond_19
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 946
    .end local v4           #b:B
    .end local v14           #intValue:I
    :cond_1a
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 961
    .restart local v4       #b:B
    .restart local v14       #intValue:I
    :cond_1b
    const/16 v28, 0x41

    move/from16 v0, v28

    if-lt v4, v0, :cond_1c

    const/16 v28, 0x46

    move/from16 v0, v28

    if-gt v4, v0, :cond_1c

    .line 962
    add-int/lit8 v28, v4, -0x41

    add-int/lit8 v28, v28, 0xa

    add-int v14, v14, v28

    goto :goto_a

    .line 963
    :cond_1c
    const/16 v28, 0x61

    move/from16 v0, v28

    if-lt v4, v0, :cond_18

    const/16 v28, 0x66

    move/from16 v0, v28

    if-gt v4, v0, :cond_18

    .line 964
    add-int/lit8 v28, v4, -0x61

    add-int/lit8 v28, v28, 0xa

    add-int v14, v14, v28

    goto :goto_a

    .line 969
    .end local v4           #b:B
    :cond_1d
    const/16 v17, 0x1

    :goto_b
    move/from16 v0, v17

    if-gt v0, v6, :cond_1f

    .line 970
    add-int v28, v13, v17

    add-int/lit8 v28, v28, 0x1

    aget-byte v28, v12, v28

    add-int/lit8 v28, v28, -0x30

    add-int v14, v14, v28

    .line 971
    move/from16 v0, v17

    if-ge v0, v6, :cond_1e

    .line 972
    mul-int/lit8 v14, v14, 0xa

    .line 969
    :cond_1e
    add-int/lit8 v17, v17, 0x1

    goto :goto_b

    .line 976
    :cond_1f
    if-nez v9, :cond_20

    .line 978
    add-int/lit8 v25, v24, 0x1

    .end local v24           #rtnBytes_idx:I
    .local v25, rtnBytes_idx:I
    shr-int/lit8 v28, v14, 0x8

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v24

    .line 979
    add-int/lit8 v24, v25, 0x1

    .end local v25           #rtnBytes_idx:I
    .restart local v24       #rtnBytes_idx:I
    and-int/lit16 v0, v14, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v25

    .line 980
    add-int/lit8 v5, v5, 0x2

    .line 999
    :goto_c
    add-int/lit8 v28, v6, 0x2

    add-int v13, v13, v28

    .line 1000
    goto/16 :goto_7

    .line 984
    :cond_20
    const/16 v28, 0x7e

    move/from16 v0, v28

    if-ge v14, v0, :cond_21

    .line 985
    add-int/lit8 v25, v24, 0x1

    .end local v24           #rtnBytes_idx:I
    .restart local v25       #rtnBytes_idx:I
    and-int/lit8 v28, v14, 0x7f

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v24

    .line 986
    add-int/lit8 v5, v5, 0x1

    move/from16 v24, v25

    .end local v25           #rtnBytes_idx:I
    .restart local v24       #rtnBytes_idx:I
    goto :goto_c

    .line 987
    :cond_21
    const/16 v28, 0x80

    move/from16 v0, v28

    if-lt v14, v0, :cond_22

    const/16 v28, 0x7ff

    move/from16 v0, v28

    if-gt v14, v0, :cond_22

    .line 988
    add-int/lit8 v25, v24, 0x1

    .end local v24           #rtnBytes_idx:I
    .restart local v25       #rtnBytes_idx:I
    and-int/lit16 v0, v14, 0x7c0

    move/from16 v28, v0

    shr-int/lit8 v28, v28, 0x6

    move/from16 v0, v28

    or-int/lit16 v0, v0, 0xc0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v24

    .line 989
    add-int/lit8 v24, v25, 0x1

    .end local v25           #rtnBytes_idx:I
    .restart local v24       #rtnBytes_idx:I
    and-int/lit8 v28, v14, 0x3f

    move/from16 v0, v28

    or-int/lit16 v0, v0, 0x80

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v25

    .line 990
    add-int/lit8 v5, v5, 0x2

    goto :goto_c

    .line 992
    :cond_22
    add-int/lit8 v25, v24, 0x1

    .end local v24           #rtnBytes_idx:I
    .restart local v25       #rtnBytes_idx:I
    const v28, 0xf000

    and-int v28, v28, v14

    shr-int/lit8 v28, v28, 0xc

    move/from16 v0, v28

    or-int/lit16 v0, v0, 0xe0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v24

    .line 993
    add-int/lit8 v24, v25, 0x1

    .end local v25           #rtnBytes_idx:I
    .restart local v24       #rtnBytes_idx:I
    and-int/lit16 v0, v14, 0xfc0

    move/from16 v28, v0

    shr-int/lit8 v28, v28, 0x6

    move/from16 v0, v28

    or-int/lit16 v0, v0, 0x80

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v25

    .line 994
    add-int/lit8 v25, v24, 0x1

    .end local v24           #rtnBytes_idx:I
    .restart local v25       #rtnBytes_idx:I
    and-int/lit8 v28, v14, 0x3f

    move/from16 v0, v28

    or-int/lit16 v0, v0, 0x80

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v24

    .line 995
    add-int/lit8 v5, v5, 0x3

    move/from16 v24, v25

    .end local v25           #rtnBytes_idx:I
    .restart local v24       #rtnBytes_idx:I
    goto/16 :goto_c

    .line 1005
    .end local v6           #chars_found:I
    .end local v14           #intValue:I
    .end local v17           #k:I
    :cond_23
    const/16 v28, 0x26

    move/from16 v0, v28

    if-ne v7, v0, :cond_24

    add-int/lit8 v28, v13, 0x5

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_24

    .line 1006
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x6e

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x62

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x73

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    add-int/lit8 v28, v13, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x70

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    add-int/lit8 v28, v13, 0x5

    aget-byte v28, v12, v28

    const/16 v29, 0x3b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    .line 1007
    const/16 v7, 0x20

    .line 1008
    add-int/lit8 v13, v13, 0x5

    .line 1012
    :cond_24
    const/16 v28, 0x26

    move/from16 v0, v28

    if-ne v7, v0, :cond_25

    add-int/lit8 v28, v13, 0x5

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_25

    .line 1013
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x71

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_25

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x75

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_25

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x6f

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_25

    add-int/lit8 v28, v13, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x74

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_25

    add-int/lit8 v28, v13, 0x5

    aget-byte v28, v12, v28

    const/16 v29, 0x3b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_25

    .line 1014
    const/16 v7, 0x22

    .line 1015
    add-int/lit8 v13, v13, 0x5

    .line 1019
    :cond_25
    const/16 v28, 0x26

    move/from16 v0, v28

    if-ne v7, v0, :cond_26

    add-int/lit8 v28, v13, 0x3

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_26

    .line 1020
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x6c

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_26

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x74

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_26

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x3b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_26

    .line 1021
    const/16 v7, 0x3c

    .line 1022
    add-int/lit8 v13, v13, 0x3

    .line 1026
    :cond_26
    const/16 v28, 0x26

    move/from16 v0, v28

    if-ne v7, v0, :cond_27

    add-int/lit8 v28, v13, 0x3

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_27

    .line 1027
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x67

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_27

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x74

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_27

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x3b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_27

    .line 1028
    const/16 v7, 0x3e

    .line 1029
    add-int/lit8 v13, v13, 0x3

    .line 1033
    :cond_27
    const/16 v28, 0x26

    move/from16 v0, v28

    if-ne v7, v0, :cond_28

    add-int/lit8 v28, v13, 0x4

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_28

    .line 1034
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x61

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_28

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x6d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_28

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x70

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_28

    add-int/lit8 v28, v13, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x3b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_28

    .line 1035
    const/16 v7, 0x26

    .line 1036
    add-int/lit8 v13, v13, 0x4

    .line 1040
    :cond_28
    const/16 v28, 0xa

    move/from16 v0, v28

    if-ne v7, v0, :cond_29

    .line 1041
    const/16 v28, 0xa

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_10

    .line 1044
    add-int/lit8 v18, v18, 0x1

    .line 1047
    :cond_29
    const/16 v28, 0x9

    move/from16 v0, v28

    if-eq v7, v0, :cond_2a

    const/16 v28, 0xd

    move/from16 v0, v28

    if-ne v7, v0, :cond_2b

    .line 1048
    :cond_2a
    const/16 v7, 0x20

    .line 1051
    :cond_2b
    const/16 v28, 0x20

    move/from16 v0, v28

    if-ne v7, v0, :cond_2c

    .line 1052
    const/16 v28, 0xa

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_10

    .line 1056
    :cond_2c
    move/from16 v21, v7

    .line 1057
    add-int/lit8 v25, v24, 0x1

    .end local v24           #rtnBytes_idx:I
    .restart local v25       #rtnBytes_idx:I
    aput-byte v7, v23, v24

    .line 1058
    add-int/lit8 v5, v5, 0x1

    move/from16 v24, v25

    .end local v25           #rtnBytes_idx:I
    .restart local v24       #rtnBytes_idx:I
    goto/16 :goto_7

    .line 1065
    .end local v7           #cur_byte:B
    :catch_1
    move-exception v8

    .line 1066
    .restart local v8       #e:Ljava/io/UnsupportedEncodingException;
    new-instance v22, Ljava/lang/String;

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v28

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 1067
    .restart local v22       #rtn:Ljava/lang/String;
    goto/16 :goto_3

    .line 1069
    .end local v8           #e:Ljava/io/UnsupportedEncodingException;
    .end local v22           #rtn:Ljava/lang/String;
    :cond_2d
    new-instance v22, Ljava/lang/String;

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v28

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .restart local v22       #rtn:Ljava/lang/String;
    goto/16 :goto_3
.end method

.method public static getAccountColorIndex([Lcom/htc/htcmailwidgets/MailUtils$Account;J)I
    .locals 6
    .parameter "accounts"
    .parameter "account_id"

    .prologue
    .line 214
    move-object v1, p0

    .local v1, arr$:[Lcom/htc/htcmailwidgets/MailUtils$Account;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 215
    .local v0, a:Lcom/htc/htcmailwidgets/MailUtils$Account;
    iget-wide v4, v0, Lcom/htc/htcmailwidgets/MailUtils$Account;->id:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 216
    iget v4, v0, Lcom/htc/htcmailwidgets/MailUtils$Account;->coloridx:I

    .line 218
    .end local v0           #a:Lcom/htc/htcmailwidgets/MailUtils$Account;
    :goto_1
    return v4

    .line 214
    .restart local v0       #a:Lcom/htc/htcmailwidgets/MailUtils$Account;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    .end local v0           #a:Lcom/htc/htcmailwidgets/MailUtils$Account;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getAccountName(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 530
    const/4 v6, 0x0

    .line 531
    .local v6, accountName:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 533
    .local v3, accountWhere:Ljava/lang/String;
    const/4 v7, 0x0

    .line 535
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/htcmailwidgets/MailUtils;->sAccountsURI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 536
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    const-string v0, "_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 539
    :cond_0
    if-eqz v7, :cond_1

    .line 540
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    const/4 v7, 0x0

    .line 550
    :cond_1
    :goto_0
    return-object v6

    .line 543
    :catch_0
    move-exception v8

    .line 544
    .local v8, e:Ljava/lang/Exception;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 545
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 547
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static getAccountNameTitle(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 554
    const-string v8, ""

    .line 555
    .local v8, strName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 557
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/htcmailwidgets/MailUtils;->sAccountsURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_desc"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 558
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 559
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 560
    const-string v0, "_desc"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 562
    :cond_0
    if-eqz v6, :cond_1

    .line 563
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    const/4 v6, 0x0

    .line 572
    :cond_1
    :goto_0
    return-object v8

    .line 566
    :catch_0
    move-exception v7

    .line 567
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 568
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 570
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static getAccountProtocol([Lcom/htc/htcmailwidgets/MailUtils$Account;J)I
    .locals 7
    .parameter "accounts"
    .parameter "accountid"

    .prologue
    .line 1329
    const/4 v4, -0x1

    .line 1331
    .local v4, protocol:I
    if-eqz p0, :cond_0

    .line 1332
    move-object v1, p0

    .local v1, arr$:[Lcom/htc/htcmailwidgets/MailUtils$Account;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 1333
    .local v0, acc:Lcom/htc/htcmailwidgets/MailUtils$Account;
    iget-wide v5, v0, Lcom/htc/htcmailwidgets/MailUtils$Account;->id:J

    cmp-long v5, v5, p1

    if-nez v5, :cond_1

    .line 1334
    iget v4, v0, Lcom/htc/htcmailwidgets/MailUtils$Account;->protocol:I

    .line 1339
    .end local v0           #acc:Lcom/htc/htcmailwidgets/MailUtils$Account;
    .end local v1           #arr$:[Lcom/htc/htcmailwidgets/MailUtils$Account;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    return v4

    .line 1332
    .restart local v0       #acc:Lcom/htc/htcmailwidgets/MailUtils$Account;
    .restart local v1       #arr$:[Lcom/htc/htcmailwidgets/MailUtils$Account;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getAccountProviders(Landroid/content/Context;)[Lcom/htc/htcmailwidgets/MailUtils$AccountProvider;
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x0

    .line 352
    if-nez p0, :cond_0

    move-object v10, v11

    .line 396
    :goto_0
    return-object v10

    .line 355
    :cond_0
    const/4 v10, 0x0

    .line 356
    .local v10, mAccountProvider:[Lcom/htc/htcmailwidgets/MailUtils$AccountProvider;
    const/4 v6, 0x0

    .line 358
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/htcmailwidgets/MailUtils;->sProvidersURI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/htcmailwidgets/MailUtils;->sPROVIDER_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 359
    if-nez v6, :cond_1

    move-object v10, v11

    .line 360
    goto :goto_0

    .line 362
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 363
    .local v7, count:I
    if-nez v7, :cond_3

    .line 364
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v10, v11

    .line 365
    goto :goto_0

    .line 367
    :cond_3
    new-array v10, v7, [Lcom/htc/htcmailwidgets/MailUtils$AccountProvider;

    .line 368
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v7, :cond_8

    .line 369
    new-instance v0, Lcom/htc/htcmailwidgets/MailUtils$AccountProvider;

    invoke-direct {v0}, Lcom/htc/htcmailwidgets/MailUtils$AccountProvider;-><init>()V

    aput-object v0, v10, v9

    .line 370
    invoke-interface {v6, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 371
    aget-object v0, v10, v9

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/htcmailwidgets/MailUtils$AccountProvider;->id:I

    .line 372
    aget-object v0, v10, v9

    const-string v1, "_provider"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailUtils$AccountProvider;->provider:Ljava/lang/String;

    .line 373
    aget-object v0, v10, v9

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailUtils$AccountProvider;->provider:Ljava/lang/String;

    const-string v1, "Exchange ActiveSync"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 374
    aget-object v0, v10, v9

    const-string v1, "Microsoft\nExchange ActiveSync"

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailUtils$AccountProvider;->providerString:Ljava/lang/String;

    .line 368
    :cond_4
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 376
    :cond_5
    aget-object v0, v10, v9

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailUtils$AccountProvider;->provider:Ljava/lang/String;

    const-string v1, "Other"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 377
    aget-object v0, v10, v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v10, v9

    iget-object v2, v2, Lcom/htc/htcmailwidgets/MailUtils$AccountProvider;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (POP3/IMAP)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailUtils$AccountProvider;->providerString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 390
    .end local v7           #count:I
    .end local v9           #i:I
    :catch_0
    move-exception v8

    .line 391
    .local v8, e:Ljava/lang/Exception;
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 392
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 394
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 380
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v7       #count:I
    .restart local v9       #i:I
    :cond_7
    :try_start_1
    aget-object v0, v10, v9

    aget-object v1, v10, v9

    iget-object v1, v1, Lcom/htc/htcmailwidgets/MailUtils$AccountProvider;->provider:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailUtils$AccountProvider;->providerString:Ljava/lang/String;

    .line 381
    aget-object v0, v10, v9

    const-string v1, "_domain"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailUtils$AccountProvider;->domain:Ljava/lang/String;

    goto :goto_2

    .line 388
    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 389
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public static getAccounts(Landroid/content/Context;)[Lcom/htc/htcmailwidgets/MailUtils$Account;
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    .line 400
    if-nez p0, :cond_0

    move-object v10, v11

    .line 455
    :goto_0
    return-object v10

    .line 403
    :cond_0
    const/4 v10, 0x0

    .line 404
    .local v10, mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;
    const/4 v6, 0x0

    .line 406
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/htc/htcmailwidgets/MailUtils;->getSenseVersion()I

    move-result v0

    if-lt v0, v12, :cond_1

    .line 407
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/htcmailwidgets/MailUtils;->sDecrypAccountsURI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/htcmailwidgets/MailUtils;->sACCOUNT_PROJECTION2:[Ljava/lang/String;

    const-string v3, "_del = -1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 414
    :goto_1
    if-nez v6, :cond_2

    move-object v10, v11

    .line 415
    goto :goto_0

    .line 410
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/htcmailwidgets/MailUtils;->sDecrypAccountsURI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/htcmailwidgets/MailUtils;->sACCOUNT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_del = -1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_1

    .line 417
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 419
    .local v7, count:I
    if-nez v7, :cond_4

    .line 420
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v10, v11

    .line 421
    goto :goto_0

    .line 423
    :cond_4
    new-array v10, v7, [Lcom/htc/htcmailwidgets/MailUtils$Account;

    .line 425
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    if-ge v9, v7, :cond_8

    .line 426
    new-instance v0, Lcom/htc/htcmailwidgets/MailUtils$Account;

    invoke-direct {v0}, Lcom/htc/htcmailwidgets/MailUtils$Account;-><init>()V

    aput-object v0, v10, v9

    .line 427
    invoke-interface {v6, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 428
    aget-object v0, v10, v9

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/htc/htcmailwidgets/MailUtils$Account;->id:J

    .line 429
    aget-object v0, v10, v9

    const-string v1, "_desc"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailUtils$Account;->desc:Ljava/lang/String;

    .line 430
    aget-object v0, v10, v9

    const-string v1, "_protocol"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/htcmailwidgets/MailUtils$Account;->protocol:I

    .line 431
    aget-object v0, v10, v9

    const-string v1, "_defaultfolderId"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/htcmailwidgets/MailUtils$Account;->defaultfolderid:I

    .line 432
    aget-object v0, v10, v9

    const-string v1, "_emailaddress"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/htcmailwidgets/MailUtils$Account;->email:Ljava/lang/String;

    .line 435
    invoke-static {}, Lcom/htc/htcmailwidgets/MailUtils;->getSenseVersion()I

    move-result v0

    if-lt v0, v12, :cond_6

    .line 436
    aget-object v0, v10, v9

    const-string v1, "_colorIdx"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/htcmailwidgets/MailUtils$Account;->coloridx:I

    .line 425
    :cond_5
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 439
    :cond_6
    aget-object v0, v10, v9

    const/4 v1, -0x1

    iput v1, v0, Lcom/htc/htcmailwidgets/MailUtils$Account;->coloridx:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 449
    .end local v7           #count:I
    .end local v9           #i:I
    :catch_0
    move-exception v8

    .line 450
    .local v8, e:Ljava/lang/Exception;
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 451
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 453
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 447
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v7       #count:I
    .restart local v9       #i:I
    :cond_8
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 448
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public static getAccountsUpdateTime(Landroid/content/Context;J)J
    .locals 10
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 576
    const-wide/16 v8, 0x0

    .line 577
    .local v8, time:J
    const/4 v6, 0x0

    .line 579
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/htcmailwidgets/MailUtils;->sAccountsURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_lastupdatetime"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 580
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 581
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 582
    const-string v0, "_lastupdatetime"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 584
    :cond_0
    if-eqz v6, :cond_1

    .line 585
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    const/4 v6, 0x0

    .line 594
    :cond_1
    :goto_0
    return-wide v8

    .line 588
    :catch_0
    move-exception v7

    .line 589
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 590
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 592
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static getAllUnreadMail(Landroid/content/Context;)I
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    .line 625
    const/4 v8, 0x0

    .line 626
    .local v8, unread:I
    const/4 v6, 0x0

    .line 628
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/htcmailwidgets/MailUtils;->allUnreadMail:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 629
    if-nez v6, :cond_0

    move v0, v9

    .line 643
    :goto_0
    return v0

    .line 632
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 635
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    const/4 v6, 0x0

    :goto_1
    move v0, v8

    .line 643
    goto :goto_0

    .line 637
    :catch_0
    move-exception v7

    .line 638
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 639
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 641
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static getAttachmentsResourceId(Landroid/content/Context;J)I
    .locals 19
    .parameter "context"
    .parameter "messageid"

    .prologue
    .line 1149
    const/4 v5, 0x0

    .line 1150
    .local v5, selection:Ljava/lang/String;
    const/4 v13, 0x0

    .line 1151
    .local v13, filename:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1152
    .local v8, bOnlyone:Z
    const/16 v17, -0x1

    .line 1153
    .local v17, resId:I
    const/4 v15, 0x1

    .line 1154
    .local v15, index:I
    const/4 v11, 0x0

    .line 1155
    .local v11, count:I
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 1157
    .local v16, list:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_message="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND _filename<>\'\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND _contenttype="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1159
    const/4 v10, 0x0

    .line 1161
    .local v10, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/htcmailwidgets/MailUtils;->sPartsURI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1162
    if-eqz v10, :cond_0

    .line 1163
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1164
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 1165
    const/4 v2, 0x1

    if-ne v11, v2, :cond_3

    .line 1166
    const-string v2, "_filename"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1167
    const/4 v8, 0x1

    .line 1177
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1178
    const/4 v10, 0x0

    .line 1188
    :cond_0
    if-nez v8, :cond_1

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1189
    :cond_1
    invoke-static {v13}, Lcom/htc/htcmailwidgets/AttachmentIconMap;->getFileIconResource(Ljava/lang/String;)I

    move-result v17

    :cond_2
    :goto_1
    move/from16 v18, v17

    .line 1215
    .end local v17           #resId:I
    .local v18, resId:I
    :goto_2
    return v18

    .line 1170
    .end local v18           #resId:I
    .restart local v17       #resId:I
    :cond_3
    :try_start_1
    const-string v2, "_filename"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1171
    invoke-static {v13}, Lcom/htc/htcmailwidgets/AttachmentIconMap;->getFileIconResource(Ljava/lang/String;)I

    move-result v17

    .line 1172
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    add-int/lit8 v15, v15, 0x1

    .line 1174
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_3

    .line 1175
    const/4 v8, 0x0

    goto :goto_0

    .line 1180
    :catch_0
    move-exception v12

    .line 1182
    .local v12, ex:Ljava/lang/Exception;
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1183
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1184
    :cond_4
    const/4 v10, 0x0

    move/from16 v18, v17

    .line 1185
    .end local v17           #resId:I
    .restart local v18       #resId:I
    goto :goto_2

    .line 1191
    .end local v12           #ex:Ljava/lang/Exception;
    .end local v18           #resId:I
    .restart local v17       #resId:I
    :cond_5
    const/4 v9, 0x1

    .line 1194
    .local v9, bSameFormat:Z
    if-eqz v16, :cond_2

    .line 1196
    const/4 v2, 0x1

    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 1197
    const/4 v14, 0x1

    .local v14, i:I
    :goto_3
    if-ge v14, v11, :cond_8

    .line 1198
    add-int/lit8 v2, v14, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v0, v17

    if-eq v0, v2, :cond_6

    .line 1199
    const/4 v9, 0x0

    .line 1202
    :cond_6
    if-nez v9, :cond_7

    .line 1203
    const v17, 0x7f020004

    .line 1197
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 1206
    :cond_8
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1207
    const/16 v16, 0x0

    goto :goto_1

    .line 1209
    .end local v14           #i:I
    :catch_1
    move-exception v12

    .restart local v12       #ex:Ljava/lang/Exception;
    move/from16 v18, v17

    .line 1211
    .end local v17           #resId:I
    .restart local v18       #resId:I
    goto :goto_2
.end method

.method public static getColorResourceId(I)I
    .locals 4
    .parameter "index"

    .prologue
    .line 206
    invoke-static {p0}, Lcom/htc/htcmailwidgets/MailUtils;->getDecodedColorIdx(I)[I

    move-result-object v2

    .line 207
    .local v2, result:[I
    const/4 v3, 0x0

    aget v0, v2, v3

    .line 208
    .local v0, colorgrp:I
    const/4 v3, 0x1

    aget v1, v2, v3

    .line 209
    .local v1, coloridx:I
    sget-object v3, Lcom/htc/htcmailwidgets/MailUtils;->account_drawable:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    return v3
.end method

.method public static getContactFromEmail(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .parameter "context"
    .parameter "fromEmail"

    .prologue
    const/4 v2, -0x1

    .line 814
    if-nez p1, :cond_1

    .line 846
    :cond_0
    :goto_0
    return v2

    .line 817
    :cond_1
    const/4 v1, 0x0

    .line 820
    .local v1, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/provider/HtcUnionContact;->getContactByMail(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 821
    if-eqz v1, :cond_0

    .line 824
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_0

    .line 843
    :catch_0
    move-exception v0

    .line 845
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getContactId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 11
    .parameter "context"
    .parameter "addr"

    .prologue
    const/4 v10, 0x1

    .line 1275
    const/4 v8, -0x1

    .line 1276
    .local v8, contactId:I
    const-string v3, "data1 LIKE ?"

    .line 1278
    .local v3, where:Ljava/lang/String;
    if-nez p1, :cond_0

    move v0, v8

    .line 1305
    :goto_0
    return v0

    .line 1281
    :cond_0
    const/4 v7, 0x0

    .line 1283
    .local v7, cCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/htcmailwidgets/MailUtils;->MAIL_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1288
    :goto_1
    if-nez v7, :cond_1

    .line 1289
    const/4 v0, -0x1

    goto :goto_0

    .line 1284
    :catch_0
    move-exception v9

    .line 1285
    .local v9, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    goto :goto_1

    .line 1292
    .end local v9           #e:Ljava/lang/Exception;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v10, :cond_2

    .line 1293
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1294
    const-string v0, "contact_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1297
    .local v6, _Id:Ljava/lang/String;
    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 1301
    .end local v6           #_Id:Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1302
    const/4 v8, -0x1

    .line 1303
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1304
    const/4 v7, 0x0

    move v0, v8

    .line 1305
    goto :goto_0

    .line 1298
    .restart local v6       #_Id:Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static getContactNameById(Landroid/content/Context;I)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "contact_id"

    .prologue
    const/4 v9, 0x0

    .line 789
    if-gez p1, :cond_1

    move-object v8, v9

    .line 810
    :cond_0
    :goto_0
    return-object v8

    .line 792
    :cond_1
    const/4 v8, 0x0

    .line 793
    .local v8, name:Ljava/lang/String;
    const-string v0, "content://com.android.contacts/contacts/widget_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 794
    .local v1, peopleUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 796
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 797
    if-eqz v6, :cond_0

    .line 798
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 799
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 800
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    const/4 v6, 0x0

    goto :goto_0

    .line 803
    :catch_0
    move-exception v7

    .line 805
    .local v7, ex:Ljava/lang/Exception;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 806
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 807
    :cond_2
    const/4 v6, 0x0

    move-object v8, v9

    .line 808
    goto :goto_0
.end method

.method public static getContactPhoto(Landroid/content/Context;JIILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;[BJ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "context"
    .parameter "contactid"
    .parameter "photo_x"
    .parameter "photo_y"
    .parameter "facebookIcon"
    .parameter "bm"
    .parameter "jpgdata"
    .parameter "type"

    .prologue
    .line 1246
    const/4 v1, 0x0

    .line 1248
    .local v1, bms:Landroid/graphics/Bitmap;
    if-eqz p7, :cond_0

    :try_start_0
    array-length v4, p7

    if-lez v4, :cond_0

    .line 1249
    const-wide/16 v4, 0x1

    cmp-long v4, v4, p8

    if-nez v4, :cond_2

    const/4 v0, 0x1

    .line 1250
    .local v0, bIsFacebookPhoto:Z
    :goto_0
    if-eqz v0, :cond_3

    if-eqz p5, :cond_3

    .line 1251
    invoke-static {p7, p3, p4, p5}, Landroid/provider/HtcUnionContact$ContactUtils;->getScaledCenterCropBitmap([BIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1266
    .end local v0           #bIsFacebookPhoto:Z
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    .line 1267
    move-object v1, p6

    .line 1270
    :cond_1
    return-object v1

    .line 1249
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1253
    .restart local v0       #bIsFacebookPhoto:Z
    :cond_3
    invoke-static {p7, p3, p4}, Landroid/provider/HtcUnionContact$ContactUtils;->getScaledCenterCropBitmap([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_1

    .line 1257
    .end local v0           #bIsFacebookPhoto:Z
    :catch_0
    move-exception v2

    .line 1259
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "MailUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to call getScaledCenterCropBitmap()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    const/4 v1, 0x0

    .line 1264
    goto :goto_1

    .line 1261
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 1262
    .local v3, er:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 1263
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getDecodedColorIdx(I)[I
    .locals 3
    .parameter "encodedColorIdx"

    .prologue
    .line 199
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 200
    .local v0, result:[I
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    aput v2, v0, v1

    .line 201
    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    aput v2, v0, v1

    .line 202
    return-object v0
.end method

.method public static getDefaultMailBoxId(Landroid/content/Context;JI)J
    .locals 12
    .parameter "context"
    .parameter "accountId"
    .parameter "defaultfolderId"

    .prologue
    const-wide/16 v10, -0x1

    .line 459
    if-nez p0, :cond_0

    move-wide v8, v10

    .line 483
    :goto_0
    return-wide v8

    .line 462
    :cond_0
    const-wide/16 v8, -0x1

    .line 463
    .local v8, rtn:J
    const/4 v6, 0x0

    .line 466
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/htcmailwidgets/MailUtils;->sMailBoxURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_account="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND _defaultfolder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 468
    if-nez v6, :cond_1

    move-wide v8, v10

    .line 469
    goto :goto_0

    .line 472
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v8, v0

    .line 475
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    const/4 v6, 0x0

    goto :goto_0

    .line 477
    :catch_0
    move-exception v7

    .line 478
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 479
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 481
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static getEventInfo(Landroid/content/Context;I)Lcom/htc/htcmailwidgets/MailUtils$Events;
    .locals 12
    .parameter "context"
    .parameter "index"

    .prologue
    const/4 v11, 0x0

    .line 1080
    const/4 v6, 0x0

    .line 1081
    .local v6, c:Landroid/database/Cursor;
    new-instance v9, Lcom/htc/htcmailwidgets/MailUtils$Events;

    invoke-direct {v9}, Lcom/htc/htcmailwidgets/MailUtils$Events;-><init>()V

    .line 1083
    .local v9, event:Lcom/htc/htcmailwidgets/MailUtils$Events;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/htcmailwidgets/MailUtils;->sMessagesURI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/htcmailwidgets/MailUtils;->sEVENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1084
    if-nez v6, :cond_0

    move-object v9, v11

    .line 1105
    .end local v9           #event:Lcom/htc/htcmailwidgets/MailUtils$Events;
    :goto_0
    return-object v9

    .line 1088
    .restart local v9       #event:Lcom/htc/htcmailwidgets/MailUtils$Events;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1089
    const-string v0, "_startTime"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1090
    .local v10, start:Ljava/lang/String;
    const-string v0, "_endTime"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1091
    .local v8, end:Ljava/lang/String;
    invoke-static {v10, v8}, Lcom/htc/htcmailwidgets/MailUtils;->getTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    sget-wide v0, Lcom/htc/htcmailwidgets/MailUtils;->startTime:J

    iput-wide v0, v9, Lcom/htc/htcmailwidgets/MailUtils$Events;->start:J

    .line 1093
    sget-wide v0, Lcom/htc/htcmailwidgets/MailUtils;->endTime:J

    iput-wide v0, v9, Lcom/htc/htcmailwidgets/MailUtils$Events;->end:J

    .line 1094
    const-string v0, "_allDayEvent"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/htc/htcmailwidgets/MailUtils$Events;->allday:Ljava/lang/String;

    .line 1095
    const-string v0, "_location"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/htc/htcmailwidgets/MailUtils$Events;->location:Ljava/lang/String;

    .line 1097
    .end local v8           #end:Ljava/lang/String;
    .end local v10           #start:Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1098
    const/4 v6, 0x0

    goto :goto_0

    .line 1099
    :catch_0
    move-exception v7

    .line 1100
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1101
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1103
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static getFacebookIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "context"

    .prologue
    .line 1220
    const/4 v1, 0x0

    .line 1221
    .local v1, mbmFacebookIcon:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 1223
    const/4 v0, 0x0

    .line 1224
    .local v0, htcContext:Landroid/content/Context;
    :try_start_0
    const-string v5, "com.htc"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 1225
    const-string v4, "people_detail_facebook_small"

    .line 1226
    .local v4, resourceName:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/res/HtcResources;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v3

    .line 1227
    .local v3, resource:Landroid/content/res/Resources;
    const-string v5, "drawable"

    const-string v6, "com.htc"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1228
    .local v2, resid:I
    if-nez v2, :cond_0

    .line 1230
    const-string v4, "common_icon_indicator_facebook"

    .line 1231
    const-string v5, "drawable"

    const-string v6, "com.htc"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1234
    :cond_0
    if-eqz v2, :cond_1

    .line 1235
    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1240
    .end local v0           #htcContext:Landroid/content/Context;
    .end local v2           #resid:I
    .end local v3           #resource:Landroid/content/res/Resources;
    .end local v4           #resourceName:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 1236
    .restart local v0       #htcContext:Landroid/content/Context;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static getMailBody(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 675
    const/16 v1, 0x1f40

    invoke-static {p0, p1, v1}, Lcom/htc/htcmailwidgets/MailUtils;->getMailBody(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, body:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 677
    const/16 v1, 0x2710

    invoke-static {p0, p1, v1}, Lcom/htc/htcmailwidgets/MailUtils;->getMailBody(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 678
    .end local v0           #body:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static getMailBody(Landroid/content/Context;II)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "messageId"
    .parameter "size"

    .prologue
    const/16 v12, 0x1f40

    const/16 v11, 0x258

    const/4 v4, 0x0

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "substr(_text, 0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 691
    .local v10, substr:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    aput-object v10, v2, v4

    .line 692
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ( _mimetype=\'text/plain\' OR _mimetype=\'text/html\' )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 693
    .local v3, where:Ljava/lang/String;
    const-string v5, "_mimetype"

    .line 695
    .local v5, order:Ljava/lang/String;
    const/4 v7, 0x0

    .line 697
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/htcmailwidgets/MailUtils;->sPartsURI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 706
    const-string v6, ""

    .line 707
    .local v6, body:Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 710
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 711
    if-nez v6, :cond_0

    .line 712
    const-string v6, ""

    .line 713
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    .line 714
    .local v9, length:I
    invoke-static {v6}, Lcom/htc/htcmailwidgets/MailUtils;->converHTMLtoPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 716
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_5

    if-ne p2, v12, :cond_5

    if-ne v9, v12, :cond_5

    .line 717
    const/4 v6, 0x0

    .line 721
    :cond_1
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 722
    const/4 v7, 0x0

    .line 730
    .end local v9           #length:I
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 731
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 733
    :cond_3
    const/4 v7, 0x0

    .line 735
    .end local v6           #body:Ljava/lang/String;
    :goto_2
    return-object v6

    .line 698
    :catch_0
    move-exception v8

    .line 699
    .local v8, e:Ljava/lang/Exception;
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 700
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 702
    :cond_4
    const/4 v7, 0x0

    .line 703
    const-string v6, ""

    goto :goto_2

    .line 718
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v6       #body:Ljava/lang/String;
    .restart local v9       #length:I
    :cond_5
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v11, :cond_1

    .line 719
    const/4 v0, 0x0

    const/16 v1, 0x258

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    goto :goto_0

    .line 723
    .end local v9           #length:I
    :catch_1
    move-exception v8

    .line 725
    .restart local v8       #e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 726
    const-string v6, ""

    goto :goto_1
.end method

.method public static getMailBody3Lines(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "messageId"

    .prologue
    const/16 v1, 0x1388

    .line 682
    invoke-static {p0, p1, v1}, Lcom/htc/htcmailwidgets/MailUtils;->getMailBody3Lines(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 683
    .local v0, body:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 684
    invoke-static {p0, p1, v1}, Lcom/htc/htcmailwidgets/MailUtils;->getMailBody3Lines(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 685
    .end local v0           #body:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static getMailBody3Lines(Landroid/content/Context;II)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "messageId"
    .parameter "size"

    .prologue
    const/16 v12, 0x1388

    const/16 v11, 0xc8

    const/4 v4, 0x0

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "substr(_text, 0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 741
    .local v10, substr:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    aput-object v10, v2, v4

    .line 742
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ( _mimetype=\'text/plain\' OR _mimetype=\'text/html\' )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 743
    .local v3, where:Ljava/lang/String;
    const-string v5, "_mimetype"

    .line 745
    .local v5, order:Ljava/lang/String;
    const/4 v7, 0x0

    .line 747
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/htcmailwidgets/MailUtils;->sPartsURI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 756
    const-string v6, ""

    .line 757
    .local v6, body:Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 760
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 761
    if-nez v6, :cond_0

    .line 762
    const-string v6, ""

    .line 763
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    .line 764
    .local v9, length:I
    invoke-static {v6}, Lcom/htc/htcmailwidgets/MailUtils;->converHTMLtoPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 766
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_5

    if-ne p2, v12, :cond_5

    if-ne v9, v12, :cond_5

    .line 767
    const/4 v6, 0x0

    .line 771
    :cond_1
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 772
    const/4 v7, 0x0

    .line 780
    .end local v9           #length:I
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 781
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 783
    :cond_3
    const/4 v7, 0x0

    .line 785
    .end local v6           #body:Ljava/lang/String;
    :goto_2
    return-object v6

    .line 748
    :catch_0
    move-exception v8

    .line 749
    .local v8, e:Ljava/lang/Exception;
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 750
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 752
    :cond_4
    const/4 v7, 0x0

    .line 753
    const-string v6, ""

    goto :goto_2

    .line 768
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v6       #body:Ljava/lang/String;
    .restart local v9       #length:I
    :cond_5
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v11, :cond_1

    .line 769
    const/4 v0, 0x0

    const/16 v1, 0xc8

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    goto :goto_0

    .line 773
    .end local v9           #length:I
    :catch_1
    move-exception v8

    .line 775
    .restart local v8       #e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 776
    const-string v6, ""

    goto :goto_1
.end method

.method public static getMailStatus(Landroid/content/Context;J)Lcom/htc/htcmailwidgets/MailUtils$Status;
    .locals 10
    .parameter "context"
    .parameter "index"

    .prologue
    const/4 v9, 0x0

    .line 648
    new-instance v8, Lcom/htc/htcmailwidgets/MailUtils$Status;

    invoke-direct {v8}, Lcom/htc/htcmailwidgets/MailUtils$Status;-><init>()V

    .line 649
    .local v8, status:Lcom/htc/htcmailwidgets/MailUtils$Status;
    const/4 v6, 0x0

    .line 651
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/htcmailwidgets/MailUtils;->sMessagesURI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/htcmailwidgets/MailUtils;->sSTATUS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    long-to-int v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 652
    if-nez v6, :cond_0

    move-object v8, v9

    .line 671
    .end local v8           #status:Lcom/htc/htcmailwidgets/MailUtils$Status;
    :goto_0
    return-object v8

    .line 655
    .restart local v8       #status:Lcom/htc/htcmailwidgets/MailUtils$Status;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 658
    const-string v0, "_flags"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/htc/htcmailwidgets/MailUtils$Status;->flag:I

    .line 659
    const-string v0, "_read"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v8, Lcom/htc/htcmailwidgets/MailUtils$Status;->isUnread:Z

    .line 660
    const-string v0, "_importance"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/htc/htcmailwidgets/MailUtils$Status;->importance:I

    .line 661
    const-string v0, "_mailAct"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/htc/htcmailwidgets/MailUtils$Status;->mailacts:I

    .line 663
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    const/4 v6, 0x0

    goto :goto_0

    .line 659
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 665
    :catch_0
    move-exception v7

    .line 666
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 667
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 669
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static getSenseVersion()I
    .locals 3

    .prologue
    .line 222
    const/4 v0, 0x1

    .line 223
    .local v0, sense_version:I
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "1.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    const/4 v0, 0x0

    .line 235
    :cond_0
    :goto_0
    return v0

    .line 225
    :cond_1
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "1.6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    const/4 v0, 0x2

    goto :goto_0

    .line 227
    :cond_2
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 228
    const/4 v0, 0x3

    goto :goto_0

    .line 229
    :cond_3
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "2.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 230
    const/4 v0, 0x4

    goto :goto_0

    .line 231
    :cond_4
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 232
    const/4 v0, 0x5

    goto :goto_0

    .line 233
    :cond_5
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "3.5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public static getSpanString(Ljava/lang/String;II)Landroid/text/Spannable;
    .locals 6
    .parameter "in"
    .parameter "style"
    .parameter "color"

    .prologue
    const/4 v5, 0x0

    .line 1129
    if-nez p0, :cond_0

    .line 1130
    new-instance v0, Landroid/text/SpannableString;

    const-string v2, ""

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .local v0, in_:Landroid/text/Spannable;
    move-object v1, v0

    .line 1145
    .end local v0           #in_:Landroid/text/Spannable;
    .local v1, in_:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1133
    .end local v1           #in_:Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1134
    new-instance v0, Landroid/text/SpannableString;

    const-string v2, ""

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .restart local v0       #in_:Landroid/text/Spannable;
    move-object v1, v0

    .line 1135
    .restart local v1       #in_:Ljava/lang/Object;
    goto :goto_0

    .line 1139
    .end local v0           #in_:Landroid/text/Spannable;
    .end local v1           #in_:Ljava/lang/Object;
    :cond_1
    if-gtz p2, :cond_2

    .line 1140
    const/4 p2, -0x1

    .line 1142
    :cond_2
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1143
    .restart local v0       #in_:Landroid/text/Spannable;
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, p1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-interface {v0, v2, v5, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1144
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-interface {v0, v2, v5, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object v1, v0

    .line 1145
    .restart local v1       #in_:Ljava/lang/Object;
    goto :goto_0
.end method

.method public static getSpecifiedContactInfo(Landroid/content/Context;J)Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;
    .locals 10
    .parameter "context"
    .parameter "contactid"

    .prologue
    .line 239
    const-string v0, "content://com.android.contacts/contacts/widget_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 241
    .local v1, peopleUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 242
    .local v8, info:Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;
    const/4 v6, 0x0

    .line 245
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 247
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 248
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 249
    new-instance v9, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;

    invoke-direct {v9}, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v8           #info:Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;
    .local v9, info:Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;
    :try_start_1
    iput-wide p1, v9, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->pid:J

    .line 251
    const-string v0, "photo_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->photo_id:J

    .line 252
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->name:Ljava/lang/String;

    .line 255
    const-string v0, "data15"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, v9, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->jpgdata:[B

    .line 256
    const-string v0, "data7"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;->socialtype:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v9

    .line 259
    .end local v9           #info:Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;
    .restart local v8       #info:Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;
    :cond_0
    if-eqz v6, :cond_1

    .line 260
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 261
    const/4 v6, 0x0

    .line 271
    :cond_1
    :goto_0
    return-object v8

    .line 263
    :catch_0
    move-exception v7

    .line 264
    .local v7, e:Ljava/lang/Exception;
    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 265
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 267
    :cond_2
    const/4 v6, 0x0

    .line 268
    const/4 v8, 0x0

    goto :goto_0

    .line 263
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #info:Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;
    .restart local v9       #info:Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;
    :catch_1
    move-exception v7

    move-object v8, v9

    .end local v9           #info:Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;
    .restart local v8       #info:Lcom/htc/htcmailwidgets/MailUtils$ContactInfo;
    goto :goto_1
.end method

.method private static getTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "starttime"
    .parameter "endtime"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1110
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 1111
    .local v1, mStartTime:Landroid/text/format/Time;
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1113
    .local v0, mEndTime:Landroid/text/format/Time;
    const-string v3, "\\-"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\:"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1114
    .local v2, strTemp:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Z"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1116
    invoke-virtual {v1, v2}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1117
    invoke-virtual {v1, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    sput-wide v3, Lcom/htc/htcmailwidgets/MailUtils;->startTime:J

    .line 1119
    const-string v3, "\\-"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\:"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1120
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Z"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1122
    invoke-virtual {v0, v2}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1123
    invoke-virtual {v0, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    sput-wide v3, Lcom/htc/htcmailwidgets/MailUtils;->endTime:J

    .line 1124
    return-void
.end method

.method public static getTotalMailsCount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "where"

    .prologue
    .line 326
    if-nez p0, :cond_1

    .line 327
    const/4 v8, -0x1

    .line 348
    :cond_0
    :goto_0
    return v8

    .line 329
    :cond_1
    const/4 v8, 0x0

    .line 330
    .local v8, num:I
    const/4 v6, 0x0

    .line 333
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/htcmailwidgets/MailUtils;->sMessagesURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(_id) as _total"

    aput-object v4, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 334
    if-eqz v6, :cond_0

    .line 335
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    const-string v0, "_total"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 338
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    const/4 v6, 0x0

    goto :goto_0

    .line 341
    :catch_0
    move-exception v7

    .line 342
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 343
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 345
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static final getUnread(Landroid/content/Context;JII)I
    .locals 10
    .parameter "context"
    .parameter "accountId"
    .parameter "serverType"
    .parameter "mailboxId"

    .prologue
    const/4 v9, 0x0

    .line 488
    const/4 v6, 0x0

    .line 490
    .local v6, c:Landroid/database/Cursor;
    packed-switch p3, :pswitch_data_0

    .line 499
    :pswitch_0
    const/4 v1, 0x0

    .line 500
    .local v1, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 504
    .local v3, where:Ljava/lang/String;
    :goto_0
    const/4 v8, 0x0

    .line 505
    .local v8, num:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "count(_id) as _total"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 506
    if-eqz v6, :cond_1

    .line 507
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    const-string v0, "_total"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 510
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    const/4 v6, 0x0

    .line 521
    .end local v8           #num:I
    :cond_1
    :goto_1
    return v8

    .line 495
    .end local v1           #uri:Landroid/net/Uri;
    .end local v3           #where:Ljava/lang/String;
    :pswitch_1
    sget-object v1, Lcom/htc/htcmailwidgets/MailUtils;->sMessagesURI:Landroid/net/Uri;

    .line 496
    .restart local v1       #uri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_account="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_read=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_mailboxId = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' AND _del = \'-1\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 497
    .restart local v3       #where:Ljava/lang/String;
    goto :goto_0

    .line 514
    .restart local v8       #num:I
    :catch_0
    move-exception v7

    .line 517
    .local v7, ex:Ljava/lang/Exception;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 518
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 520
    :cond_2
    const/4 v6, 0x0

    move v8, v9

    .line 521
    goto :goto_1

    .line 490
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getUnreadMail(Landroid/content/Context;J)I
    .locals 12
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/4 v11, 0x0

    .line 598
    const/4 v10, 0x0

    .line 601
    .local v10, unread:I
    const/4 v8, 0x0

    .line 604
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/htcmailwidgets/MailUtils;->sAccountsURI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_defaultfolderId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_protocol"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 605
    if-nez v8, :cond_0

    move v0, v11

    .line 621
    :goto_0
    return v0

    .line 608
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 609
    const-string v0, "_protocol"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 610
    .local v7, _protocol:I
    const-string v0, "_defaultfolderId"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 611
    .local v6, _defaultfolderId:I
    invoke-static {p0, p1, p2, v7, v6}, Lcom/htc/htcmailwidgets/MailUtils;->getUnread(Landroid/content/Context;JII)I

    move-result v10

    .line 613
    .end local v6           #_defaultfolderId:I
    .end local v7           #_protocol:I
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    const/4 v8, 0x0

    :goto_1
    move v0, v10

    .line 621
    goto :goto_0

    .line 615
    :catch_0
    move-exception v9

    .line 616
    .local v9, e:Ljava/lang/Exception;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 617
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 619
    :cond_2
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public static isAccountDelete([Lcom/htc/htcmailwidgets/MailUtils$Account;J)Z
    .locals 7
    .parameter "accounts"
    .parameter "accountid"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, bExist:Z
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_3

    .line 307
    :cond_0
    if-nez v0, :cond_2

    .line 320
    :cond_1
    :goto_0
    return v3

    :cond_2
    move v3, v4

    .line 307
    goto :goto_0

    .line 309
    :cond_3
    array-length v2, p0

    .line 311
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 312
    aget-object v5, p0, v1

    iget-wide v5, v5, Lcom/htc/htcmailwidgets/MailUtils$Account;->id:J

    cmp-long v5, p1, v5

    if-nez v5, :cond_5

    .line 313
    const/4 v0, 0x1

    .line 320
    :cond_4
    if-eqz v0, :cond_1

    move v3, v4

    goto :goto_0

    .line 317
    :cond_5
    const/4 v0, 0x0

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static final isAutoSync(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 301
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    return v0
.end method

.method public static isDeviceFlag(B)Z
    .locals 1
    .parameter "byteDeviceFlag"

    .prologue
    .line 1309
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDeviceFlag(S)Z
    .locals 1
    .parameter "shortDeviceFlag"

    .prologue
    .line 1313
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isIMAP4(I)Z
    .locals 1
    .parameter "Protocol"

    .prologue
    .line 526
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSenseTablet()Z
    .locals 1

    .prologue
    .line 1317
    const/16 v0, 0x28

    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailUtils;->isDeviceFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x21

    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailUtils;->isDeviceFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x22

    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailUtils;->isDeviceFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xab

    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailUtils;->isDeviceFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xac

    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailUtils;->isDeviceFlag(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x7c

    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailUtils;->isDeviceFlag(S)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1323
    :cond_0
    const/4 v0, 0x1

    .line 1325
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
