.class public Lcom/futuredial/pim/G2Sms;
.super Lcom/futuredial/pim/CPim;
.source "G2Sms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/pim/G2Sms$1;,
        Lcom/futuredial/pim/G2Sms$ReadSms;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "G2Sms"


# instance fields
.field private rdSms:Lcom/futuredial/pim/G2Sms$ReadSms;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/futuredial/pim/CPim;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/pim/G2Sms;->rdSms:Lcom/futuredial/pim/G2Sms$ReadSms;

    .line 30
    return-void
.end method

.method private getTimeMillfromString(Ljava/lang/String;)J
    .locals 4
    .parameter "csData"

    .prologue
    .line 272
    const-wide/16 v1, 0x0

    .line 274
    .local v1, ldata:J
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/futuredial/pim/G2Sms;->String2Time(Ljava/lang/String;Ljava/lang/String;)Landroid/text/format/Time;

    move-result-object v0

    .line 276
    .local v0, dtTime:Landroid/text/format/Time;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 277
    return-wide v1
.end method

.method private saveSms(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)Landroid/net/Uri;
    .locals 17
    .parameter "nBoxType"
    .parameter "nSmsStatus"
    .parameter "strContent"
    .parameter "strShowName"
    .parameter "strSmsPhoneNumber"
    .parameter "smsTimeMillis"
    .parameter "locked"

    .prologue
    .line 124
    const/4 v2, 0x1

    move/from16 v0, p8

    if-ne v0, v2, :cond_0

    .line 125
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/futuredial/pim/Telephony$Sms;->setSmsLocked(I)V

    .line 128
    :cond_0
    const-string v2, "\'"

    const-string v3, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p5

    .line 130
    const/16 v16, 0x0

    .line 131
    .local v16, resUri:Landroid/net/Uri;
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/pim/G2Sms;->cr:Landroid/content/ContentResolver;

    const-string v3, ""

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p5

    move-object/from16 v1, p3

    invoke-static {v2, v0, v1, v3, v4}, Lcom/futuredial/pim/Telephony$Sms$Draft;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v16

    .line 161
    :cond_1
    :goto_0
    return-object v16

    .line 137
    :cond_2
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 142
    const/4 v7, 0x0

    .line 143
    .local v7, read:Z
    if-nez p2, :cond_3

    .line 145
    const/4 v7, 0x1

    .line 147
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/pim/G2Sms;->cr:Landroid/content/ContentResolver;

    const-string v5, ""

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v3, p5

    move-object/from16 v4, p3

    invoke-static/range {v2 .. v7}, Lcom/futuredial/pim/Telephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;

    move-result-object v16

    .line 148
    goto :goto_0

    .end local v7           #read:Z
    :cond_4
    if-nez p1, :cond_5

    .line 153
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/futuredial/pim/G2Sms;->cr:Landroid/content/ContentResolver;

    const-string v11, ""

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    move-object/from16 v9, p5

    move-object/from16 v10, p3

    invoke-static/range {v8 .. v15}, Lcom/futuredial/pim/Telephony$Sms$Outbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJ)Landroid/net/Uri;

    move-result-object v16

    goto :goto_0

    .line 154
    :cond_5
    const/4 v2, 0x3

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/pim/G2Sms;->cr:Landroid/content/ContentResolver;

    const-string v3, ""

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p5

    move-object/from16 v1, p3

    invoke-static {v2, v0, v1, v3, v4}, Lcom/futuredial/pim/Telephony$Sms$Sent;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v16

    goto :goto_0
.end method


# virtual methods
.method public DeleteAll()I
    .locals 6

    .prologue
    .line 108
    const/4 v1, 0x0

    .line 111
    .local v1, nRet:I
    :try_start_0
    iget-object v2, p0, Lcom/futuredial/pim/G2Sms;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/futuredial/pim/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/futuredial/pim/SqliteWrapper;->delete(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "G2Sms"

    const-string v3, "DeleteAllSms Exception."

    invoke-static {v2, v3, v0}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public InitRead()I
    .locals 2

    .prologue
    .line 498
    new-instance v0, Lcom/futuredial/pim/G2Sms$ReadSms;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/futuredial/pim/G2Sms$ReadSms;-><init>(Lcom/futuredial/pim/G2Sms;Lcom/futuredial/pim/G2Sms$1;)V

    iput-object v0, p0, Lcom/futuredial/pim/G2Sms;->rdSms:Lcom/futuredial/pim/G2Sms$ReadSms;

    .line 499
    iget-object v0, p0, Lcom/futuredial/pim/G2Sms;->rdSms:Lcom/futuredial/pim/G2Sms$ReadSms;

    invoke-virtual {v0}, Lcom/futuredial/pim/G2Sms$ReadSms;->InitRead()I

    move-result v0

    return v0
.end method

.method public ReadItem(Lorg/json/JSONObject;)I
    .locals 1
    .parameter "job"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/futuredial/pim/G2Sms;->rdSms:Lcom/futuredial/pim/G2Sms$ReadSms;

    invoke-virtual {v0, p1}, Lcom/futuredial/pim/G2Sms$ReadSms;->ReadItem(Lorg/json/JSONObject;)I

    move-result v0

    return v0
.end method

.method public UnInitRead()I
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/futuredial/pim/G2Sms;->rdSms:Lcom/futuredial/pim/G2Sms$ReadSms;

    invoke-virtual {v0}, Lcom/futuredial/pim/G2Sms$ReadSms;->UnInitRead()I

    move-result v0

    return v0
.end method

.method public addnewItem(Lcom/futuredial/publicobj/Item;Z)I
    .locals 27
    .parameter "objItem"
    .parameter "bLast"

    .prologue
    .line 166
    const/16 v20, 0x0

    .line 167
    .local v20, nRet:I
    const/16 v24, 0x0

    .line 169
    .local v24, resUri:Landroid/net/Uri;
    const/4 v3, 0x0

    .local v3, nBoxType:I
    const/4 v4, 0x0

    .local v4, nSmsStatus:I
    const/4 v10, 0x0

    .line 170
    .local v10, nSmsLocked:I
    const/4 v11, 0x0

    .line 171
    .local v11, bHasTelNO:Z
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 172
    .local v8, smsTimeMillis:J
    const-string v5, ""

    .local v5, strContent:Ljava/lang/String;
    const-string v6, ""

    .local v6, strShowName:Ljava/lang/String;
    const-string v7, " "

    .line 173
    .local v7, strSmsPhoneNumber:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v13

    .line 174
    .local v13, enmkeys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 175
    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    .line 176
    .local v21, nfldID:Ljava/lang/Integer;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 179
    .local v15, fldArrVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    new-instance v14, Lcom/futuredial/publicobj/Field;

    invoke-direct {v14}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 180
    .local v14, fld:Lcom/futuredial/publicobj/Field;
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 181
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #fld:Lcom/futuredial/publicobj/Field;
    check-cast v14, Lcom/futuredial/publicobj/Field;

    .line 184
    .restart local v14       #fld:Lcom/futuredial/publicobj/Field;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v2, v0, :cond_2

    .line 185
    invoke-virtual {v14}, Lcom/futuredial/publicobj/Field;->GetInt()I

    move-result v3

    goto :goto_0

    .line 183
    :cond_1
    const/16 v2, 0x4e33

    .line 265
    .end local v5           #strContent:Ljava/lang/String;
    .end local v6           #strShowName:Ljava/lang/String;
    .end local v7           #strSmsPhoneNumber:Ljava/lang/String;
    .end local v8           #smsTimeMillis:J
    .end local v13           #enmkeys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    .end local v14           #fld:Lcom/futuredial/publicobj/Field;
    .end local v15           #fldArrVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v21           #nfldID:Ljava/lang/Integer;
    :goto_1
    return v2

    .line 186
    .restart local v5       #strContent:Ljava/lang/String;
    .restart local v6       #strShowName:Ljava/lang/String;
    .restart local v7       #strSmsPhoneNumber:Ljava/lang/String;
    .restart local v8       #smsTimeMillis:J
    .restart local v13       #enmkeys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    .restart local v14       #fld:Lcom/futuredial/publicobj/Field;
    .restart local v15       #fldArrVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .restart local v21       #nfldID:Ljava/lang/Integer;
    :cond_2
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v26, 0x7

    move/from16 v0, v26

    if-ne v2, v0, :cond_3

    .line 187
    iget-object v5, v14, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    goto :goto_0

    .line 188
    :cond_3
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v26, 0x6

    move/from16 v0, v26

    if-ne v2, v0, :cond_4

    .line 189
    iget-object v6, v14, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    goto :goto_0

    .line 190
    :cond_4
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v2, v0, :cond_5

    .line 191
    invoke-virtual {v14}, Lcom/futuredial/publicobj/Field;->GetInt()I

    move-result v4

    goto :goto_0

    .line 192
    :cond_5
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v26, 0x8

    move/from16 v0, v26

    if-ne v2, v0, :cond_6

    .line 193
    invoke-virtual {v14}, Lcom/futuredial/publicobj/Field;->GetInt()I

    move-result v10

    goto :goto_0

    .line 194
    :cond_6
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v26, 0x3

    move/from16 v0, v26

    if-ne v2, v0, :cond_7

    .line 195
    const/4 v11, 0x1

    .line 196
    iget-object v7, v14, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    .line 197
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 198
    const-string v7, " "

    goto/16 :goto_0

    .line 199
    :cond_7
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v26, 0x5

    move/from16 v0, v26

    if-ne v2, v0, :cond_0

    .line 200
    iget-object v0, v14, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 201
    .local v25, strTime:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/futuredial/pim/G2Sms;->getTimeMillfromString(Ljava/lang/String;)J

    move-result-wide v8

    goto/16 :goto_0

    .line 205
    .end local v14           #fld:Lcom/futuredial/publicobj/Field;
    .end local v15           #fldArrVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v21           #nfldID:Ljava/lang/Integer;
    .end local v25           #strTime:Ljava/lang/String;
    :cond_8
    if-eqz v3, :cond_9

    const/4 v2, -0x1

    if-ne v3, v2, :cond_a

    .line 207
    :cond_9
    const/16 v20, 0x4e24

    move/from16 v2, v20

    .line 208
    goto :goto_1

    .line 211
    :cond_a
    if-eqz v11, :cond_e

    .line 212
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    const/16 v26, 0x3

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 215
    .local v16, fldArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    const/16 v17, 0x0

    .local v17, i:I
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    .local v19, nListCount:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_f

    .line 216
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/futuredial/publicobj/Field;

    .line 217
    .restart local v14       #fld:Lcom/futuredial/publicobj/Field;
    iget-object v2, v14, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    .line 218
    const/16 v18, 0x0

    .local v18, n:I
    iget-object v2, v14, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v23

    .local v23, propertyCount:I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    .line 219
    iget-object v2, v14, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/futuredial/publicobj/Field;

    .line 220
    .local v22, profld:Lcom/futuredial/publicobj/Field;
    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    .line 222
    const-string v2, "/"

    const-string v26, ""

    move-object/from16 v0, v26

    invoke-virtual {v7, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 223
    const-string v2, "\\"

    const-string v26, ""

    move-object/from16 v0, v26

    invoke-virtual {v7, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 224
    const-string v2, "#"

    const-string v26, ""

    move-object/from16 v0, v26

    invoke-virtual {v7, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    .line 226
    invoke-direct/range {v2 .. v10}, Lcom/futuredial/pim/G2Sms;->saveSms(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)Landroid/net/Uri;

    move-result-object v24

    .line 229
    if-nez v24, :cond_c

    .line 230
    const-string v2, "G2Sms"

    const-string v26, "Write sms failed !"

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/16 v20, 0x4e33

    .line 215
    .end local v18           #n:I
    .end local v22           #profld:Lcom/futuredial/publicobj/Field;
    .end local v23           #propertyCount:I
    :cond_b
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 218
    .restart local v18       #n:I
    .restart local v22       #profld:Lcom/futuredial/publicobj/Field;
    .restart local v23       #propertyCount:I
    :cond_c
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 238
    .end local v18           #n:I
    .end local v22           #profld:Lcom/futuredial/publicobj/Field;
    .end local v23           #propertyCount:I
    :cond_d
    const-string v2, "/"

    const-string v26, ""

    move-object/from16 v0, v26

    invoke-virtual {v7, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 239
    const-string v2, "\\"

    const-string v26, ""

    move-object/from16 v0, v26

    invoke-virtual {v7, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 240
    const-string v2, "#"

    const-string v26, ""

    move-object/from16 v0, v26

    invoke-virtual {v7, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    .line 241
    invoke-direct/range {v2 .. v10}, Lcom/futuredial/pim/G2Sms;->saveSms(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)Landroid/net/Uri;

    move-result-object v24

    goto :goto_4

    .end local v14           #fld:Lcom/futuredial/publicobj/Field;
    .end local v16           #fldArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v17           #i:I
    .end local v19           #nListCount:I
    :cond_e
    move-object/from16 v2, p0

    .line 247
    invoke-direct/range {v2 .. v10}, Lcom/futuredial/pim/G2Sms;->saveSms(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)Landroid/net/Uri;

    move-result-object v24

    .line 251
    :cond_f
    if-eqz v24, :cond_10

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/pim/G2Sms;->WrittenUri:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    const/16 v20, 0x0

    .end local v5           #strContent:Ljava/lang/String;
    .end local v6           #strShowName:Ljava/lang/String;
    .end local v7           #strSmsPhoneNumber:Ljava/lang/String;
    .end local v8           #smsTimeMillis:J
    .end local v13           #enmkeys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    :goto_5
    move/from16 v2, v20

    .line 265
    goto/16 :goto_1

    .line 256
    .restart local v5       #strContent:Ljava/lang/String;
    .restart local v6       #strShowName:Ljava/lang/String;
    .restart local v7       #strSmsPhoneNumber:Ljava/lang/String;
    .restart local v8       #smsTimeMillis:J
    .restart local v13       #enmkeys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    :cond_10
    const-string v2, "G2Sms"

    const-string v26, "Write sms failed !!!!!!!!!1"

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    const/16 v20, 0x4e33

    goto :goto_5

    .line 260
    .end local v5           #strContent:Ljava/lang/String;
    .end local v6           #strShowName:Ljava/lang/String;
    .end local v7           #strSmsPhoneNumber:Ljava/lang/String;
    .end local v8           #smsTimeMillis:J
    .end local v13           #enmkeys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v12

    .line 261
    .local v12, e:Ljava/lang/Exception;
    const-string v2, "G2Sms"

    const-string v26, "add new one sms exception!"

    move-object/from16 v0, v26

    invoke-static {v2, v0, v12}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 262
    const/16 v20, 0x4e33

    goto :goto_5
.end method

.method public getCounts()I
    .locals 9

    .prologue
    .line 44
    const/4 v6, 0x0

    .line 45
    .local v6, count:I
    const/4 v7, 0x0

    .line 51
    .local v7, cur:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/futuredial/pim/G2Sms;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/futuredial/pim/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/futuredial/pim/SqliteWrapper;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 52
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 53
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 54
    iget-object v0, p0, Lcom/futuredial/pim/G2Sms;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/futuredial/pim/Telephony$Sms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/futuredial/pim/SqliteWrapper;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 55
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/2addr v6, v0

    .line 56
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 57
    iget-object v0, p0, Lcom/futuredial/pim/G2Sms;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/futuredial/pim/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/futuredial/pim/SqliteWrapper;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 58
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/2addr v6, v0

    .line 59
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    const-string v0, "[sms query]"

    const-string v1, "sms count:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return v6

    .line 61
    :catch_0
    move-exception v8

    .line 63
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "G2Sms"

    const-string v1, "getSmsCount Exception."

    invoke-static {v0, v1, v8}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getInstance(Landroid/content/Context;)Lcom/futuredial/pim/G2Sms;
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/futuredial/pim/G2Sms;->m_pim:Lcom/futuredial/pim/CPim;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/futuredial/pim/G2Sms;->m_pim:Lcom/futuredial/pim/CPim;

    check-cast v0, Lcom/futuredial/pim/G2Sms;

    .line 38
    :goto_0
    return-object v0

    .line 37
    :cond_0
    new-instance v0, Lcom/futuredial/pim/G2Sms;

    invoke-direct {v0, p1}, Lcom/futuredial/pim/G2Sms;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/futuredial/pim/G2Sms;->m_pim:Lcom/futuredial/pim/CPim;

    .line 38
    iget-object v0, p0, Lcom/futuredial/pim/G2Sms;->m_pim:Lcom/futuredial/pim/CPim;

    check-cast v0, Lcom/futuredial/pim/G2Sms;

    goto :goto_0
.end method

.method public getPhoneMemCounts()I
    .locals 9

    .prologue
    .line 76
    const/4 v6, 0x0

    .line 77
    .local v6, count:I
    const/4 v7, 0x0

    .line 83
    .local v7, cur:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/futuredial/pim/G2Sms;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/futuredial/pim/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/futuredial/pim/SqliteWrapper;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 84
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 85
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 86
    iget-object v0, p0, Lcom/futuredial/pim/G2Sms;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/futuredial/pim/Telephony$Sms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/futuredial/pim/SqliteWrapper;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 87
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/2addr v6, v0

    .line 88
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 89
    iget-object v0, p0, Lcom/futuredial/pim/G2Sms;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/futuredial/pim/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/futuredial/pim/SqliteWrapper;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 90
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/2addr v6, v0

    .line 91
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    const-string v0, "[sms query]"

    const-string v1, "sms count:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return v6

    .line 93
    :catch_0
    move-exception v8

    .line 95
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "G2Sms"

    const-string v1, "getSmsCount Exception."

    invoke-static {v0, v1, v8}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
