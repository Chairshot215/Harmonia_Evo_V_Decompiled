.class public Lcom/android/dmportread/TempSms;
.super Ljava/lang/Object;
.source "TempSms.java"


# static fields
.field public static final FIELD_BODY:I = 0x2

.field public static final FIELD_CALLBACK_NUM:I = 0x4

.field public static final FIELD_FROM:I = 0x1

.field public static final FIELD_IMPORTANCE:I = 0x5

.field public static final FIELD_TIME:I = 0x3

.field public static final FIELD_TO:I = 0x0

.field public static final NOT_VALID_DATE:J = 0x7fffffffffffffffL

.field public static final TOTAL_SMS_FIELD_NUM:I = 0x6

.field private static _id_col:I

.field private static address_col:I

.field private static body_col:I

.field private static callback_num_col:I

.field private static date_col:I

.field private static person_col:I

.field private static phone_num:Ljava/lang/String;

.field private static priority_col:I

.field private static protocol_col:I

.field private static read_col:I

.field private static reply_path_present_col:I

.field private static service_center_col:I

.field private static statusReceived_col:I

.field private static subject_col:I

.field private static thread_id_col:I

.field private static type_col:I


# instance fields
.field _id:J

.field address:Ljava/lang/String;

.field body:Ljava/lang/String;

.field callback_num:Ljava/lang/String;

.field date:J

.field msgId:I

.field person:J

.field priority:I

.field protocol:I

.field read:S

.field reply_path_present:Z

.field service_center:Ljava/lang/String;

.field statusReceived:Z

.field subject:Ljava/lang/String;

.field thread_id:J

.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, ""

    sput-object v0, Lcom/android/dmportread/TempSms;->phone_num:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 157
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/android/dmportread/TempSms;->address:Ljava/lang/String;

    .line 58
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/dmportread/TempSms;->date:J

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/android/dmportread/TempSms;->subject:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/android/dmportread/TempSms;->body:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/android/dmportread/TempSms;->service_center:Ljava/lang/String;

    .line 157
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/dmportread/TempSms;->msgId:I

    .line 158
    iput p1, p0, Lcom/android/dmportread/TempSms;->type:I

    .line 159
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/android/dmportread/TempSms;->read:S

    .line 160
    return-void
.end method

.method private constructor <init>(JJLjava/lang/String;JJISZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .parameter "t_id"
    .parameter "t_thread_id"
    .parameter "t_addr"
    .parameter "t_person"
    .parameter "t_date"
    .parameter "t_proto"
    .parameter "t_read"
    .parameter "t_status"
    .parameter "t_type"
    .parameter "t_RPP"
    .parameter "t_subject"
    .parameter "t_body"
    .parameter "t_SC"
    .parameter "t_messageId"
    .parameter "t_callback_num"
    .parameter "t_priority"

    .prologue
    .line 120
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v1, ""

    iput-object v1, p0, Lcom/android/dmportread/TempSms;->address:Ljava/lang/String;

    .line 58
    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Lcom/android/dmportread/TempSms;->date:J

    .line 64
    const-string v1, ""

    iput-object v1, p0, Lcom/android/dmportread/TempSms;->subject:Ljava/lang/String;

    .line 65
    const-string v1, ""

    iput-object v1, p0, Lcom/android/dmportread/TempSms;->body:Ljava/lang/String;

    .line 66
    const-string v1, ""

    iput-object v1, p0, Lcom/android/dmportread/TempSms;->service_center:Ljava/lang/String;

    .line 121
    iput-wide p1, p0, Lcom/android/dmportread/TempSms;->_id:J

    .line 122
    iput-wide p3, p0, Lcom/android/dmportread/TempSms;->thread_id:J

    .line 123
    iput-object p5, p0, Lcom/android/dmportread/TempSms;->address:Ljava/lang/String;

    .line 124
    iput-wide p6, p0, Lcom/android/dmportread/TempSms;->person:J

    .line 125
    iput-wide p8, p0, Lcom/android/dmportread/TempSms;->date:J

    .line 126
    iput p10, p0, Lcom/android/dmportread/TempSms;->protocol:I

    .line 127
    iput-short p11, p0, Lcom/android/dmportread/TempSms;->read:S

    .line 129
    iput-boolean p12, p0, Lcom/android/dmportread/TempSms;->statusReceived:Z

    .line 130
    move/from16 v0, p13

    iput v0, p0, Lcom/android/dmportread/TempSms;->type:I

    .line 131
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/dmportread/TempSms;->reply_path_present:Z

    .line 132
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/dmportread/TempSms;->subject:Ljava/lang/String;

    .line 133
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/dmportread/TempSms;->body:Ljava/lang/String;

    .line 134
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/dmportread/TempSms;->service_center:Ljava/lang/String;

    .line 135
    long-to-int v1, p1

    iput v1, p0, Lcom/android/dmportread/TempSms;->msgId:I

    .line 137
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/dmportread/TempSms;->callback_num:Ljava/lang/String;

    .line 138
    const/4 v1, 0x2

    move/from16 v0, p20

    if-ne v0, v1, :cond_0

    .line 140
    const-string v1, "DMCmdSvs"

    const-string v2, "tmp priority high"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/dmportread/TempSms;->priority:I

    .line 149
    :goto_0
    return-void

    .line 145
    :cond_0
    const-string v1, "DMCmdSvs"

    const-string v2, "tmp priority normal"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/dmportread/TempSms;->priority:I

    goto :goto_0
.end method

.method public static CreateTempSms(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 28
    .parameter "context"
    .parameter "cursor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dmportread/TempSms;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p2, totalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/dmportread/TempSms;>;"
    sget v18, Lcom/android/dmportread/TempSms;->_id_col:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 83
    .local v3, t_id:J
    sget v18, Lcom/android/dmportread/TempSms;->thread_id_col:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 84
    .local v5, t_thread_id:J
    sget v18, Lcom/android/dmportread/TempSms;->address_col:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 85
    .local v7, t_address:Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 86
    :cond_0
    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/android/dmportread/TempSms;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 88
    :cond_1
    sget v18, Lcom/android/dmportread/TempSms;->person_col:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 89
    .local v8, t_person:J
    sget v18, Lcom/android/dmportread/TempSms;->date_col:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 90
    .local v10, t_date:J
    sget v18, Lcom/android/dmportread/TempSms;->protocol_col:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 91
    .local v12, t_protocol:I
    sget v18, Lcom/android/dmportread/TempSms;->read_col:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v13

    .line 93
    .local v13, t_read:S
    sget v18, Lcom/android/dmportread/TempSms;->statusReceived_col:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v18

    if-nez v18, :cond_2

    const/4 v14, 0x0

    .line 94
    .local v14, t_statusReceived:Z
    :goto_0
    sget v18, Lcom/android/dmportread/TempSms;->type_col:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 95
    .local v15, t_type:I
    sget v18, Lcom/android/dmportread/TempSms;->reply_path_present_col:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    if-nez v18, :cond_3

    const/16 v16, 0x0

    .line 96
    .local v16, t_reply_path_present:Z
    :goto_1
    sget v18, Lcom/android/dmportread/TempSms;->subject_col:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 97
    .local v17, t_subject:Ljava/lang/String;
    sget v18, Lcom/android/dmportread/TempSms;->body_col:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 98
    .local v26, t_body:Ljava/lang/String;
    sget v18, Lcom/android/dmportread/TempSms;->service_center_col:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 99
    .local v19, t_service_center:Ljava/lang/String;
    sget v18, Lcom/android/dmportread/TempSms;->callback_num_col:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 100
    .local v21, t_cllback_num:Ljava/lang/String;
    const-string v18, "DMCmdSvs"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "load tmp cb "

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget v18, Lcom/android/dmportread/TempSms;->priority_col:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 102
    .local v22, t_priority:I
    const-string v18, "DMCmdSvs"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "load priority "

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {}, Landroid/telephony/gsm/SmsManager;->getDefault()Landroid/telephony/gsm/SmsManager;

    move-result-object v25

    .line 105
    .local v25, smsManager:Landroid/telephony/gsm/SmsManager;
    invoke-virtual/range {v25 .. v26}, Landroid/telephony/gsm/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v24

    .line 106
    .local v24, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 107
    .local v2, msg:Lcom/android/dmportread/TempSms;
    const/16 v23, 0x0

    .local v23, i:I
    :goto_2
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v23

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 108
    new-instance v2, Lcom/android/dmportread/TempSms;

    .end local v2           #msg:Lcom/android/dmportread/TempSms;
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-direct/range {v2 .. v22}, Lcom/android/dmportread/TempSms;-><init>(JJLjava/lang/String;JJISZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 111
    .restart local v2       #msg:Lcom/android/dmportread/TempSms;
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 93
    .end local v2           #msg:Lcom/android/dmportread/TempSms;
    .end local v14           #t_statusReceived:Z
    .end local v15           #t_type:I
    .end local v16           #t_reply_path_present:Z
    .end local v17           #t_subject:Ljava/lang/String;
    .end local v19           #t_service_center:Ljava/lang/String;
    .end local v21           #t_cllback_num:Ljava/lang/String;
    .end local v22           #t_priority:I
    .end local v23           #i:I
    .end local v24           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25           #smsManager:Landroid/telephony/gsm/SmsManager;
    .end local v26           #t_body:Ljava/lang/String;
    :cond_2
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 95
    .restart local v14       #t_statusReceived:Z
    .restart local v15       #t_type:I
    :cond_3
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 113
    .restart local v2       #msg:Lcom/android/dmportread/TempSms;
    .restart local v16       #t_reply_path_present:Z
    .restart local v17       #t_subject:Ljava/lang/String;
    .restart local v19       #t_service_center:Ljava/lang/String;
    .restart local v21       #t_cllback_num:Ljava/lang/String;
    .restart local v22       #t_priority:I
    .restart local v23       #i:I
    .restart local v24       #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v25       #smsManager:Landroid/telephony/gsm/SmsManager;
    .restart local v26       #t_body:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private static extractIdsToAddresses(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 14
    .parameter "context"
    .parameter "recipients"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 432
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    .local v7, addressBuf:Ljava/lang/StringBuilder;
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 434
    .local v13, recipientIds:[Ljava/lang/String;
    move-object v8, v13

    .local v8, arr$:[Ljava/lang/String;
    array-length v11, v8

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v11, :cond_2

    aget-object v12, v8, v10

    .line 435
    .local v12, recipientId:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://mms-sms/canonical-address/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 437
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 439
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 441
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    const-string v0, ";"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 434
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 446
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 449
    :cond_1
    new-instance v0, Landroid/database/SQLException;

    const-string v1, "Unable to get Cursor"

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    .end local v2           #uri:Landroid/net/Uri;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v12           #recipientId:Ljava/lang/String;
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    return-object v3

    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_1
.end method

.method public static getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "threadId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 406
    new-array v3, v10, [Ljava/lang/String;

    const-string v0, "recipient_ids"

    aput-object v0, v3, v1

    .line 408
    .local v3, projection:[Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 409
    .local v8, builder:Landroid/net/Uri$Builder;
    const-string v0, "simple"

    const-string v1, "true"

    invoke-virtual {v8, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 410
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 414
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 416
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/dmportread/TempSms;->getRecipientsByIds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 418
    .local v7, address:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 423
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 428
    .end local v7           #address:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 423
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v7, v5

    .line 428
    goto :goto_0

    .line 423
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 426
    :cond_1
    new-instance v0, Landroid/database/SQLException;

    const-string v1, "Unable to get cursor"

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getRecipientsByIds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "recipientIds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 460
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 461
    invoke-static {p0, p1}, Lcom/android/dmportread/TempSms;->extractIdsToAddresses(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 462
    .local v0, addressBuf:Ljava/lang/StringBuilder;
    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 467
    .end local v0           #addressBuf:Ljava/lang/StringBuilder;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static initiColInd(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "ctx"
    .parameter "phoneNum"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 317
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 319
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 320
    new-instance v0, Landroid/database/SQLException;

    const-string v1, "Unable to get Cursor"

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    :try_start_0
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/dmportread/TempSms;->_id_col:I

    .line 325
    const-string v0, "thread_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/dmportread/TempSms;->thread_id_col:I

    .line 326
    const-string v0, "address"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/dmportread/TempSms;->address_col:I

    .line 327
    const-string v0, "person"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/dmportread/TempSms;->person_col:I

    .line 328
    const-string v0, "date"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/dmportread/TempSms;->date_col:I

    .line 329
    const-string v0, "protocol"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/dmportread/TempSms;->protocol_col:I

    .line 330
    const-string v0, "read"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/dmportread/TempSms;->read_col:I

    .line 331
    const-string v0, "status"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/dmportread/TempSms;->statusReceived_col:I

    .line 332
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/dmportread/TempSms;->type_col:I

    .line 333
    const-string v0, "reply_path_present"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/dmportread/TempSms;->reply_path_present_col:I

    .line 334
    const-string v0, "subject"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/dmportread/TempSms;->subject_col:I

    .line 335
    const-string v0, "body"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/dmportread/TempSms;->body_col:I

    .line 336
    const-string v0, "service_center"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/dmportread/TempSms;->service_center_col:I

    .line 337
    const-string v0, "callback_number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/dmportread/TempSms;->callback_num_col:I

    .line 338
    const-string v0, "priority"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/dmportread/TempSms;->priority_col:I

    .line 339
    if-eqz p1, :cond_1

    .line 340
    sput-object p1, Lcom/android/dmportread/TempSms;->phone_num:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :cond_1
    return-object v6

    .line 343
    :catch_0
    move-exception v7

    .line 344
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "DMCmdSvs"

    const-string v1, "could not find column index"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-instance v0, Landroid/database/SQLException;

    const-string v1, "Could not find column index"

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/dmportread/TempSms;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/dmportread/TempSms;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getCallbackNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/dmportread/TempSms;->callback_num:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 290
    iget-wide v0, p0, Lcom/android/dmportread/TempSms;->date:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getField(I)Ljava/lang/String;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/dmportread/DMServiceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 189
    const-string v0, ""

    .line 190
    .local v0, result:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 220
    const-string v1, "TempSms"

    const-string v2, "Cannot find this field"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v1, Lcom/android/dmportread/DMServiceException;

    const-string v2, "invalid field id"

    invoke-direct {v1, v2}, Lcom/android/dmportread/DMServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :pswitch_0
    iget v1, p0, Lcom/android/dmportread/TempSms;->type:I

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/dmportread/TempSms;->phone_num:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 193
    sget-object v0, Lcom/android/dmportread/TempSms;->phone_num:Ljava/lang/String;

    .line 223
    :cond_0
    :goto_0
    return-object v0

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/android/dmportread/TempSms;->address:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/dmportread/TempSms;->address:Ljava/lang/String;

    goto :goto_0

    .line 199
    :pswitch_1
    iget v1, p0, Lcom/android/dmportread/TempSms;->type:I

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/android/dmportread/TempSms;->phone_num:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 200
    sget-object v0, Lcom/android/dmportread/TempSms;->phone_num:Ljava/lang/String;

    goto :goto_0

    .line 202
    :cond_2
    iget-object v1, p0, Lcom/android/dmportread/TempSms;->address:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/dmportread/TempSms;->address:Ljava/lang/String;

    goto :goto_0

    .line 206
    :pswitch_2
    iget-object v1, p0, Lcom/android/dmportread/TempSms;->body:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/dmportread/TempSms;->body:Ljava/lang/String;

    goto :goto_0

    .line 209
    :pswitch_3
    iget-wide v1, p0, Lcom/android/dmportread/TempSms;->date:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 210
    goto :goto_0

    .line 212
    :pswitch_4
    iget-object v0, p0, Lcom/android/dmportread/TempSms;->callback_num:Ljava/lang/String;

    .line 213
    goto :goto_0

    .line 217
    :pswitch_5
    const/4 v0, 0x0

    .line 218
    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getMsgId()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/android/dmportread/TempSms;->msgId:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/android/dmportread/TempSms;->priority:I

    return v0
.end method

.method public getRead()S
    .locals 1

    .prologue
    .line 483
    iget-short v0, p0, Lcom/android/dmportread/TempSms;->read:S

    return v0
.end method

.method public getSmsId()J
    .locals 2

    .prologue
    .line 356
    iget-wide v0, p0, Lcom/android/dmportread/TempSms;->_id:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Lcom/android/dmportread/TempSms;->type:I

    return v0
.end method

.method public initializeFields(Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 7
    .parameter "cursor"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/dmportread/DMServiceException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 368
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 369
    new-instance v1, Lcom/android/dmportread/DMServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor size != 1. cursorsize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/dmportread/DMServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 371
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 372
    sget v1, Lcom/android/dmportread/TempSms;->_id_col:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, p0, Lcom/android/dmportread/TempSms;->_id:J

    .line 373
    sget v1, Lcom/android/dmportread/TempSms;->thread_id_col:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/dmportread/TempSms;->thread_id:J

    .line 374
    sget v1, Lcom/android/dmportread/TempSms;->address_col:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dmportread/TempSms;->address:Ljava/lang/String;

    .line 375
    iget-object v1, p0, Lcom/android/dmportread/TempSms;->address:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dmportread/TempSms;->address:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 376
    :cond_1
    iget-wide v4, p0, Lcom/android/dmportread/TempSms;->thread_id:J

    invoke-static {p2, v4, v5}, Lcom/android/dmportread/TempSms;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dmportread/TempSms;->address:Ljava/lang/String;

    .line 378
    :cond_2
    sget v1, Lcom/android/dmportread/TempSms;->person_col:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/dmportread/TempSms;->person:J

    .line 379
    sget v1, Lcom/android/dmportread/TempSms;->date_col:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/dmportread/TempSms;->date:J

    .line 380
    sget v1, Lcom/android/dmportread/TempSms;->protocol_col:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/dmportread/TempSms;->protocol:I

    .line 381
    sget v1, Lcom/android/dmportread/TempSms;->read_col:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    iput-short v1, p0, Lcom/android/dmportread/TempSms;->read:S

    .line 383
    sget v1, Lcom/android/dmportread/TempSms;->statusReceived_col:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/dmportread/TempSms;->statusReceived:Z

    .line 384
    sget v1, Lcom/android/dmportread/TempSms;->type_col:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    iput v1, p0, Lcom/android/dmportread/TempSms;->type:I

    .line 385
    sget v1, Lcom/android/dmportread/TempSms;->reply_path_present_col:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_3

    move v3, v2

    :cond_3
    iput-boolean v3, p0, Lcom/android/dmportread/TempSms;->reply_path_present:Z

    .line 386
    sget v1, Lcom/android/dmportread/TempSms;->subject_col:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dmportread/TempSms;->subject:Ljava/lang/String;

    .line 387
    sget v1, Lcom/android/dmportread/TempSms;->body_col:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dmportread/TempSms;->body:Ljava/lang/String;

    .line 388
    sget v1, Lcom/android/dmportread/TempSms;->service_center_col:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dmportread/TempSms;->service_center:Ljava/lang/String;

    .line 389
    sget v1, Lcom/android/dmportread/TempSms;->callback_num_col:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dmportread/TempSms;->callback_num:Ljava/lang/String;

    .line 390
    sget v1, Lcom/android/dmportread/TempSms;->priority_col:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 391
    .local v0, tempPrioirty:I
    if-ne v0, v6, :cond_6

    .line 393
    iput v6, p0, Lcom/android/dmportread/TempSms;->priority:I

    .line 394
    const-string v1, "DMCmdSvs"

    const-string v2, "load high priority"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v0           #tempPrioirty:I
    :cond_4
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 403
    return-void

    :cond_5
    move v1, v3

    .line 383
    goto :goto_0

    .line 398
    .restart local v0       #tempPrioirty:I
    :cond_6
    iput v2, p0, Lcom/android/dmportread/TempSms;->priority:I

    .line 399
    const-string v1, "DMCmdSvs"

    const-string v2, "load normal priority"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isRead()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 305
    iget-short v1, p0, Lcom/android/dmportread/TempSms;->read:S

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setField(ILjava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 237
    packed-switch p1, :pswitch_data_0

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 239
    :pswitch_0
    iget v0, p0, Lcom/android/dmportread/TempSms;->type:I

    if-eq v0, v1, :cond_0

    .line 240
    iput-object p2, p0, Lcom/android/dmportread/TempSms;->address:Ljava/lang/String;

    goto :goto_0

    .line 244
    :pswitch_1
    iget v0, p0, Lcom/android/dmportread/TempSms;->type:I

    if-ne v0, v1, :cond_0

    .line 245
    iput-object p2, p0, Lcom/android/dmportread/TempSms;->address:Ljava/lang/String;

    goto :goto_0

    .line 249
    :pswitch_2
    iput-object p2, p0, Lcom/android/dmportread/TempSms;->body:Ljava/lang/String;

    goto :goto_0

    .line 252
    :pswitch_3
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dmportread/TempSms;->date:J

    goto :goto_0

    .line 255
    :pswitch_4
    const-string v0, "DMCmdSvs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set callback num "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iput-object p2, p0, Lcom/android/dmportread/TempSms;->callback_num:Ljava/lang/String;

    goto :goto_0

    .line 261
    :pswitch_5
    const-string v0, "DMCmdSvs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set priority "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setMsgId(I)Z
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/dmportread/DMServiceException;
        }
    .end annotation

    .prologue
    .line 172
    iget v0, p0, Lcom/android/dmportread/TempSms;->msgId:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 173
    const-string v0, "TempSms"

    const-string v1, "Cannot resetMsgId"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v0, Lcom/android/dmportread/DMServiceException;

    const-string v1, "Cannot resetMsgId"

    invoke-direct {v0, v1}, Lcom/android/dmportread/DMServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    iput p1, p0, Lcom/android/dmportread/TempSms;->msgId:I

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public setPriority(I)V
    .locals 3
    .parameter "setPri"

    .prologue
    .line 276
    const-string v0, "DMCmdSvs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set priority "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iput p1, p0, Lcom/android/dmportread/TempSms;->priority:I

    .line 278
    return-void
.end method

.method public setRead(S)V
    .locals 2
    .parameter "readtype"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/dmportread/DMServiceException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 472
    if-ne p1, v0, :cond_0

    .line 473
    iput-short v0, p0, Lcom/android/dmportread/TempSms;->read:S

    .line 480
    :goto_0
    return-void

    .line 475
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 476
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/android/dmportread/TempSms;->read:S

    goto :goto_0

    .line 478
    :cond_1
    new-instance v0, Lcom/android/dmportread/DMServiceException;

    const-string v1, "Invalid msg read type"

    invoke-direct {v0, v1}, Lcom/android/dmportread/DMServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
