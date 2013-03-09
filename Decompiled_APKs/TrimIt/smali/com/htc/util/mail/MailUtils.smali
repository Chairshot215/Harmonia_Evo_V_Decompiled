.class public Lcom/htc/util/mail/MailUtils;
.super Ljava/lang/Object;
.source "MailUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/mail/MailUtils$ContactInfo;
    }
.end annotation


# static fields
.field public static final SENSE_10:I = 0x0

.field public static final SENSE_15:I = 0x1

.field public static final SENSE_16:I = 0x2

.field public static final SENSE_20:I = 0x3

.field public static final SENSE_21:I = 0x4

.field public static final SENSE_30:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MailUtils"

.field public static final allUnreadMailURI:Landroid/net/Uri;

.field public static final sACCOUNT_PROJECTION:[Ljava/lang/String;

.field public static final sAccountsURI:Landroid/net/Uri;

.field public static final sDelMailURI:Landroid/net/Uri;

.field public static final sFOLDER_INFO_PROJECTION:[Ljava/lang/String;

.field public static final sMAIL_PROJECTION:[Ljava/lang/String;

.field public static final sMESSAGE_STATUS_PROJECTION:[Ljava/lang/String;

.field public static final sMailBoxURI:Landroid/net/Uri;

.field public static final sMessagesURI:Landroid/net/Uri;

.field public static final sPROVIDER_PROJECTION:[Ljava/lang/String;

.field public static final sPartsURI:Landroid/net/Uri;

.field public static final sProvidersURI:Landroid/net/Uri;

.field public static final sSetMessageStatusURI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    const-string v0, "content://mail/providers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sProvidersURI:Landroid/net/Uri;

    .line 27
    const-string v0, "content://mail/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sMessagesURI:Landroid/net/Uri;

    .line 32
    const-string v0, "content://mail/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sAccountsURI:Landroid/net/Uri;

    .line 37
    const-string v0, "content://mail/mailboxs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sMailBoxURI:Landroid/net/Uri;

    .line 42
    const-string v0, "content://mail/parts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sPartsURI:Landroid/net/Uri;

    .line 47
    const-string v0, "content://mail/allUnreadMail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/MailUtils;->allUnreadMailURI:Landroid/net/Uri;

    .line 52
    const-string v0, "content://mail/setMessageStatus"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sSetMessageStatusURI:Landroid/net/Uri;

    .line 57
    const-string v0, "content://mail/deleteMessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sDelMailURI:Landroid/net/Uri;

    .line 62
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_subject"

    aput-object v1, v0, v4

    const-string v1, "_internaldate"

    aput-object v1, v0, v5

    const-string v1, "_from"

    aput-object v1, v0, v6

    const-string v1, "_fromEmail"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "_to"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_cc"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_bcc"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_flags"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_read"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "_messagesize"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_incAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_account"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "_mailboxId"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "_importance"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "_mailAct"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "_messageClassInt"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "_subjtype"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sMAIL_PROJECTION:[Ljava/lang/String;

    .line 67
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_provider"

    aput-object v1, v0, v4

    const-string v1, "_domain"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sPROVIDER_PROJECTION:[Ljava/lang/String;

    .line 72
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_name"

    aput-object v1, v0, v4

    const-string v1, "_desc"

    aput-object v1, v0, v5

    const-string v1, "_protocol"

    aput-object v1, v0, v6

    const-string v1, "_defaultfolderId"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "_trashfolderId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_sentfolderId"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_draftfolderId"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_outfolderId"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_emailaddress"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "_defaultaccount"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_colorIdx"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 77
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_flags"

    aput-object v1, v0, v4

    const-string v1, "_read"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sMESSAGE_STATUS_PROJECTION:[Ljava/lang/String;

    .line 82
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_decodename"

    aput-object v1, v0, v4

    const-string v1, "_shortname"

    aput-object v1, v0, v5

    const-string v1, "_defaultfolder"

    aput-object v1, v0, v6

    const-string v1, "_account"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "_serverid"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_parentid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sFOLDER_INFO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    return-void
.end method

.method public static convertHTMLtoPlainText(Ljava/lang/String;)Ljava/lang/String;
    .locals 30
    .parameter "htmlStr"

    .prologue
    .line 219
    if-nez p0, :cond_0

    .line 220
    const-string v28, ""

    .line 439
    :goto_0
    return-object v28

    .line 221
    :cond_0
    const-string v9, "UTF-8"

    .line 224
    .local v9, encoding:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 229
    .local v12, htmlBytes:[B
    :goto_1
    array-length v0, v12

    move/from16 v28, v0

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 230
    .local v23, rtnBytes:[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 231
    .local v26, start:J
    const/16 v20, 0xc

    .line 232
    .local v20, maxLines:I
    const/16 v19, 0x258

    .line 233
    .local v19, maxCharacters:I
    const/16 v18, 0x0

    .line 234
    .local v18, line_count:I
    const/4 v5, 0x0

    .line 235
    .local v5, char_count:I
    const/16 v21, 0x0

    .line 236
    .local v21, old_byte:B
    const/16 v24, 0x0

    .line 237
    .local v24, rtnBytes_idx:I
    const/4 v15, 0x0

    .line 238
    .local v15, isTagFound:Z
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    array-length v0, v12

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v13, v0, :cond_2b

    .line 243
    aget-byte v7, v12, v13

    .line 244
    .local v7, cur_byte:B
    const/16 v28, 0x3c

    move/from16 v0, v28

    if-ne v7, v0, :cond_13

    .line 246
    add-int/lit8 v28, v13, 0x5

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_b

    .line 247
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x73

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x53

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    :cond_1
    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x74

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_2

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x54

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    :cond_2
    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x79

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_3

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x59

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    :cond_3
    add-int/lit8 v28, v13, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x6c

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_4

    add-int/lit8 v28, v13, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x4c

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    :cond_4
    add-int/lit8 v28, v13, 0x5

    aget-byte v28, v12, v28

    const/16 v29, 0x65

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_5

    add-int/lit8 v28, v13, 0x5

    aget-byte v28, v12, v28

    const/16 v29, 0x45

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    .line 250
    :cond_5
    add-int/lit8 v16, v13, 0x6

    .local v16, j:I
    :goto_3
    array-length v0, v12

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_b

    .line 251
    add-int/lit8 v28, v16, 0x5

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_f

    .line 252
    aget-byte v28, v12, v16

    const/16 v29, 0x73

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_6

    aget-byte v28, v12, v16

    const/16 v29, 0x53

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_f

    :cond_6
    add-int/lit8 v28, v16, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x74

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_7

    add-int/lit8 v28, v16, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x54

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_f

    :cond_7
    add-int/lit8 v28, v16, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x79

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_8

    add-int/lit8 v28, v16, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x59

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_f

    :cond_8
    add-int/lit8 v28, v16, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x6c

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_9

    add-int/lit8 v28, v16, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x4c

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_f

    :cond_9
    add-int/lit8 v28, v16, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x65

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_a

    add-int/lit8 v28, v16, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x45

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_f

    :cond_a
    add-int/lit8 v28, v16, 0x5

    aget-byte v28, v12, v28

    const/16 v29, 0x3e

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_f

    .line 255
    const/16 v7, 0x20

    .line 256
    add-int/lit8 v13, v16, 0x5

    .line 266
    .end local v16           #j:I
    :cond_b
    add-int/lit8 v28, v13, 0x3

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_c

    .line 267
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x21

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x2d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x2d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    .line 268
    add-int/lit8 v16, v13, 0x4

    .restart local v16       #j:I
    :goto_4
    array-length v0, v12

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_c

    .line 269
    add-int/lit8 v28, v16, 0x2

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_10

    .line 270
    aget-byte v28, v12, v16

    const/16 v29, 0x2d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    add-int/lit8 v28, v16, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x2d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    add-int/lit8 v28, v16, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x3e

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    .line 271
    const/16 v7, 0x20

    .line 272
    add-int/lit8 v13, v16, 0x2

    .line 283
    .end local v16           #j:I
    :cond_c
    add-int/lit8 v28, v13, 0x1

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_13

    .line 284
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x20

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_13

    .line 285
    const/4 v15, 0x0

    .line 286
    add-int/lit8 v16, v13, 0x1

    .restart local v16       #j:I
    :goto_5
    array-length v0, v12

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_d

    .line 287
    aget-byte v28, v12, v16

    const/16 v29, 0x3e

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    .line 288
    const/16 v7, 0x20

    .line 289
    move/from16 v13, v16

    .line 290
    const/4 v15, 0x1

    .line 303
    :cond_d
    if-eqz v15, :cond_13

    .line 238
    .end local v16           #j:I
    :cond_e
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 225
    .end local v5           #char_count:I
    .end local v7           #cur_byte:B
    .end local v12           #htmlBytes:[B
    .end local v13           #i:I
    .end local v15           #isTagFound:Z
    .end local v18           #line_count:I
    .end local v19           #maxCharacters:I
    .end local v20           #maxLines:I
    .end local v21           #old_byte:B
    .end local v23           #rtnBytes:[B
    .end local v24           #rtnBytes_idx:I
    .end local v26           #start:J
    :catch_0
    move-exception v8

    .line 226
    .local v8, e:Ljava/io/UnsupportedEncodingException;
    const/4 v9, 0x0

    .line 227
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .restart local v12       #htmlBytes:[B
    goto/16 :goto_1

    .line 250
    .end local v8           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v5       #char_count:I
    .restart local v7       #cur_byte:B
    .restart local v13       #i:I
    .restart local v15       #isTagFound:Z
    .restart local v16       #j:I
    .restart local v18       #line_count:I
    .restart local v19       #maxCharacters:I
    .restart local v20       #maxLines:I
    .restart local v21       #old_byte:B
    .restart local v23       #rtnBytes:[B
    .restart local v24       #rtnBytes_idx:I
    .restart local v26       #start:J
    :cond_f
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 268
    :cond_10
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 294
    :cond_11
    aget-byte v28, v12, v16

    const/16 v29, 0x3c

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_d

    .line 298
    array-length v0, v12

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v16

    move/from16 v1, v28

    if-ne v0, v1, :cond_12

    .line 299
    const/16 v7, 0x20

    .line 300
    array-length v13, v12

    .line 286
    :cond_12
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 311
    .end local v16           #j:I
    :cond_13
    const/16 v28, 0x26

    move/from16 v0, v28

    if-ne v7, v0, :cond_21

    add-int/lit8 v28, v13, 0x7

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_21

    .line 312
    const/4 v6, 0x0

    .line 313
    .local v6, chars_found:I
    const/16 v17, 0x2

    .local v17, k:I
    :goto_7
    const/16 v28, 0x7

    move/from16 v0, v17

    move/from16 v1, v28

    if-gt v0, v1, :cond_14

    .line 314
    add-int v28, v13, v17

    aget-byte v28, v12, v28

    const/16 v29, 0x3b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_18

    .line 315
    add-int/lit8 v6, v17, -0x2

    .line 320
    :cond_14
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x23

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_21

    if-lez v6, :cond_21

    .line 322
    const/4 v14, 0x0

    .line 323
    .local v14, intValue:I
    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x78

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_15

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x58

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1b

    .line 324
    :cond_15
    const/16 v17, 0x1

    :goto_8
    move/from16 v0, v17

    if-gt v0, v6, :cond_1d

    .line 325
    add-int v28, v13, v17

    add-int/lit8 v28, v28, 0x1

    aget-byte v4, v12, v28

    .line 326
    .local v4, b:B
    const/16 v28, 0x30

    move/from16 v0, v28

    if-lt v4, v0, :cond_19

    const/16 v28, 0x39

    move/from16 v0, v28

    if-gt v4, v0, :cond_19

    .line 327
    add-int/lit8 v28, v4, -0x30

    add-int v14, v14, v28

    .line 332
    :cond_16
    :goto_9
    move/from16 v0, v17

    if-ge v0, v6, :cond_17

    .line 333
    mul-int/lit8 v14, v14, 0x10

    .line 324
    :cond_17
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 313
    .end local v4           #b:B
    .end local v14           #intValue:I
    :cond_18
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 328
    .restart local v4       #b:B
    .restart local v14       #intValue:I
    :cond_19
    const/16 v28, 0x41

    move/from16 v0, v28

    if-lt v4, v0, :cond_1a

    const/16 v28, 0x46

    move/from16 v0, v28

    if-gt v4, v0, :cond_1a

    .line 329
    add-int/lit8 v28, v4, -0x41

    add-int/lit8 v28, v28, 0xa

    add-int v14, v14, v28

    goto :goto_9

    .line 330
    :cond_1a
    const/16 v28, 0x61

    move/from16 v0, v28

    if-lt v4, v0, :cond_16

    const/16 v28, 0x66

    move/from16 v0, v28

    if-gt v4, v0, :cond_16

    .line 331
    add-int/lit8 v28, v4, -0x61

    add-int/lit8 v28, v28, 0xa

    add-int v14, v14, v28

    goto :goto_9

    .line 336
    .end local v4           #b:B
    :cond_1b
    const/16 v17, 0x1

    :goto_a
    move/from16 v0, v17

    if-gt v0, v6, :cond_1d

    .line 337
    add-int v28, v13, v17

    add-int/lit8 v28, v28, 0x1

    aget-byte v28, v12, v28

    add-int/lit8 v28, v28, -0x30

    add-int v14, v14, v28

    .line 338
    move/from16 v0, v17

    if-ge v0, v6, :cond_1c

    .line 339
    mul-int/lit8 v14, v14, 0xa

    .line 336
    :cond_1c
    add-int/lit8 v17, v17, 0x1

    goto :goto_a

    .line 343
    :cond_1d
    if-nez v9, :cond_1e

    .line 345
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

    .line 346
    add-int/lit8 v24, v25, 0x1

    .end local v25           #rtnBytes_idx:I
    .restart local v24       #rtnBytes_idx:I
    and-int/lit16 v0, v14, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v25

    .line 347
    add-int/lit8 v5, v5, 0x2

    .line 366
    :goto_b
    add-int/lit8 v28, v6, 0x2

    add-int v13, v13, v28

    .line 367
    goto/16 :goto_6

    .line 351
    :cond_1e
    const/16 v28, 0x7e

    move/from16 v0, v28

    if-ge v14, v0, :cond_1f

    .line 352
    add-int/lit8 v25, v24, 0x1

    .end local v24           #rtnBytes_idx:I
    .restart local v25       #rtnBytes_idx:I
    and-int/lit8 v28, v14, 0x7f

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v24

    .line 353
    add-int/lit8 v5, v5, 0x1

    move/from16 v24, v25

    .end local v25           #rtnBytes_idx:I
    .restart local v24       #rtnBytes_idx:I
    goto :goto_b

    .line 354
    :cond_1f
    const/16 v28, 0x80

    move/from16 v0, v28

    if-lt v14, v0, :cond_20

    const/16 v28, 0x7ff

    move/from16 v0, v28

    if-gt v14, v0, :cond_20

    .line 355
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

    .line 356
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

    .line 357
    add-int/lit8 v5, v5, 0x2

    goto :goto_b

    .line 359
    :cond_20
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

    .line 360
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

    .line 361
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

    .line 362
    add-int/lit8 v5, v5, 0x3

    move/from16 v24, v25

    .end local v25           #rtnBytes_idx:I
    .restart local v24       #rtnBytes_idx:I
    goto/16 :goto_b

    .line 372
    .end local v6           #chars_found:I
    .end local v14           #intValue:I
    .end local v17           #k:I
    :cond_21
    const/16 v28, 0x26

    move/from16 v0, v28

    if-ne v7, v0, :cond_22

    add-int/lit8 v28, v13, 0x5

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_22

    .line 373
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x6e

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_22

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x62

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_22

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x73

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_22

    add-int/lit8 v28, v13, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x70

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_22

    add-int/lit8 v28, v13, 0x5

    aget-byte v28, v12, v28

    const/16 v29, 0x3b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_22

    .line 374
    const/16 v7, 0x20

    .line 375
    add-int/lit8 v13, v13, 0x5

    .line 379
    :cond_22
    const/16 v28, 0x26

    move/from16 v0, v28

    if-ne v7, v0, :cond_23

    add-int/lit8 v28, v13, 0x5

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_23

    .line 380
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x71

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_23

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x75

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_23

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x6f

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_23

    add-int/lit8 v28, v13, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x74

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_23

    add-int/lit8 v28, v13, 0x5

    aget-byte v28, v12, v28

    const/16 v29, 0x3b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_23

    .line 381
    const/16 v7, 0x22

    .line 382
    add-int/lit8 v13, v13, 0x5

    .line 386
    :cond_23
    const/16 v28, 0x26

    move/from16 v0, v28

    if-ne v7, v0, :cond_24

    add-int/lit8 v28, v13, 0x3

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_24

    .line 387
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x6c

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x74

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x3b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    .line 388
    const/16 v7, 0x3c

    .line 389
    add-int/lit8 v13, v13, 0x3

    .line 393
    :cond_24
    const/16 v28, 0x26

    move/from16 v0, v28

    if-ne v7, v0, :cond_25

    add-int/lit8 v28, v13, 0x3

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_25

    .line 394
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x67

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_25

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x74

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_25

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x3b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_25

    .line 395
    const/16 v7, 0x3e

    .line 396
    add-int/lit8 v13, v13, 0x3

    .line 400
    :cond_25
    const/16 v28, 0x26

    move/from16 v0, v28

    if-ne v7, v0, :cond_26

    add-int/lit8 v28, v13, 0x4

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_26

    .line 401
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x61

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_26

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x6d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_26

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x70

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_26

    add-int/lit8 v28, v13, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x3b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_26

    .line 402
    const/16 v7, 0x26

    .line 403
    add-int/lit8 v13, v13, 0x4

    .line 407
    :cond_26
    const/16 v28, 0xa

    move/from16 v0, v28

    if-ne v7, v0, :cond_27

    .line 408
    const/16 v28, 0xa

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_e

    .line 411
    add-int/lit8 v18, v18, 0x1

    .line 414
    :cond_27
    const/16 v28, 0x9

    move/from16 v0, v28

    if-eq v7, v0, :cond_28

    const/16 v28, 0xd

    move/from16 v0, v28

    if-ne v7, v0, :cond_29

    .line 415
    :cond_28
    const/16 v7, 0x20

    .line 418
    :cond_29
    const/16 v28, 0x20

    move/from16 v0, v28

    if-ne v7, v0, :cond_2a

    .line 419
    const/16 v28, 0xa

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_e

    .line 423
    :cond_2a
    move/from16 v21, v7

    .line 424
    add-int/lit8 v25, v24, 0x1

    .end local v24           #rtnBytes_idx:I
    .restart local v25       #rtnBytes_idx:I
    aput-byte v7, v23, v24

    .line 425
    add-int/lit8 v5, v5, 0x1

    move/from16 v24, v25

    .end local v25           #rtnBytes_idx:I
    .restart local v24       #rtnBytes_idx:I
    goto/16 :goto_6

    .line 429
    .end local v7           #cur_byte:B
    :cond_2b
    if-eqz v9, :cond_2c

    .line 431
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

    .line 438
    .local v22, rtn:Ljava/lang/String;
    :goto_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 439
    .local v10, end:J
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_0

    .line 432
    .end local v10           #end:J
    .end local v22           #rtn:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 433
    .restart local v8       #e:Ljava/io/UnsupportedEncodingException;
    new-instance v22, Ljava/lang/String;

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v28

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 434
    .restart local v22       #rtn:Ljava/lang/String;
    goto :goto_c

    .line 436
    .end local v8           #e:Ljava/io/UnsupportedEncodingException;
    .end local v22           #rtn:Ljava/lang/String;
    :cond_2c
    new-instance v22, Ljava/lang/String;

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v28

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .restart local v22       #rtn:Ljava/lang/String;
    goto :goto_c
.end method

.method public static escapeDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "displayName"

    .prologue
    .line 443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 447
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 448
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 456
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 446
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 450
    :sswitch_0
    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 453
    :sswitch_1
    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 459
    .end local v0           #c:C
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 448
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method public static getContactFromEmail(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .parameter "context"
    .parameter "fromEmail"

    .prologue
    const/4 v2, -0x1

    .line 194
    if-nez p1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v2

    .line 197
    :cond_1
    const/4 v1, 0x0

    .line 200
    .local v1, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/provider/HtcUnionContact;->getContactByMail(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_0

    .line 204
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getContactNameById(Landroid/content/Context;I)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "contact_id"

    .prologue
    const/4 v9, 0x0

    .line 167
    if-gez p1, :cond_1

    move-object v8, v9

    .line 183
    :cond_0
    :goto_0
    return-object v8

    .line 170
    :cond_1
    const/4 v8, 0x0

    .line 171
    .local v8, name:Ljava/lang/String;
    const-string v0, "content://com.android.contacts/contacts/widget_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 173
    .local v1, peopleUri:Landroid/net/Uri;
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

    .line 174
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 176
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 177
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    .end local v6           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .local v7, ex:Ljava/lang/Exception;
    move-object v8, v9

    .line 181
    goto :goto_0
.end method

.method public static getHtcString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 475
    :try_start_0
    invoke-static {p0}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 476
    .local v1, htcContext:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 479
    .end local v1           #htcContext:Landroid/content/Context;
    :goto_0
    return-object v2

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MailUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resource not found :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const-string v2, ""

    goto :goto_0
.end method

.method public static getSenseVersion()I
    .locals 3

    .prologue
    .line 98
    const/4 v0, 0x1

    .line 99
    .local v0, sense_version:I
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "1.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    const/4 v0, 0x0

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "1.6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    const/4 v0, 0x2

    goto :goto_0

    .line 103
    :cond_2
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    const/4 v0, 0x3

    goto :goto_0

    .line 105
    :cond_3
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "2.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 106
    const/4 v0, 0x4

    goto :goto_0

    .line 107
    :cond_4
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static getSpecifiedContactInfo(Landroid/content/Context;J)Lcom/htc/util/mail/MailUtils$ContactInfo;
    .locals 10
    .parameter "context"
    .parameter "contactid"

    .prologue
    .line 131
    const-string v0, "content://com.android.contacts/contacts/widget_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 133
    .local v1, peopleUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 136
    .local v8, info:Lcom/htc/util/mail/MailUtils$ContactInfo;
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

    .line 138
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 139
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 140
    new-instance v9, Lcom/htc/util/mail/MailUtils$ContactInfo;

    invoke-direct {v9}, Lcom/htc/util/mail/MailUtils$ContactInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v8           #info:Lcom/htc/util/mail/MailUtils$ContactInfo;
    .local v9, info:Lcom/htc/util/mail/MailUtils$ContactInfo;
    :try_start_1
    iput-wide p1, v9, Lcom/htc/util/mail/MailUtils$ContactInfo;->pid:J

    .line 142
    const-string v0, "photo_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/htc/util/mail/MailUtils$ContactInfo;->photo_id:J

    .line 143
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/htc/util/mail/MailUtils$ContactInfo;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v9

    .line 147
    .end local v9           #info:Lcom/htc/util/mail/MailUtils$ContactInfo;
    .restart local v8       #info:Lcom/htc/util/mail/MailUtils$ContactInfo;
    :cond_0
    if-eqz v6, :cond_1

    .line 148
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 156
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v8

    .line 151
    :catch_0
    move-exception v7

    .line 153
    .local v7, e:Ljava/lang/Exception;
    :goto_1
    const/4 v8, 0x0

    goto :goto_0

    .line 151
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #info:Lcom/htc/util/mail/MailUtils$ContactInfo;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v9       #info:Lcom/htc/util/mail/MailUtils$ContactInfo;
    :catch_1
    move-exception v7

    move-object v8, v9

    .end local v9           #info:Lcom/htc/util/mail/MailUtils$ContactInfo;
    .restart local v8       #info:Lcom/htc/util/mail/MailUtils$ContactInfo;
    goto :goto_1
.end method

.method public static getWellFormedEmailAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "displayName"
    .parameter "address"

    .prologue
    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/htc/util/mail/MailUtils;->escapeDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
