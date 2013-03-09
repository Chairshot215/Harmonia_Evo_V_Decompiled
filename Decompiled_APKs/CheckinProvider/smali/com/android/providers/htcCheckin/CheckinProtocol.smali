.class public Lcom/android/providers/htcCheckin/CheckinProtocol;
.super Ljava/lang/Object;
.source "CheckinProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/htcCheckin/CheckinProtocol$1;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "htcCheckinService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 211
    return-void
.end method

.method public static formatRequest(Ljava/lang/String;JLjava/lang/String;Ljava/util/Locale;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;IIJ)Lorg/json/JSONObject;
    .locals 39
    .parameter "androidId"
    .parameter "loggingId"
    .parameter "digest"
    .parameter "locale"
    .parameter "events"
    .parameter "stats"
    .parameter "properties"
    .parameter "maxEvents"
    .parameter "maxEventData"
    .parameter "lastCheckinMsec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v25, Lorg/json/JSONObject;

    invoke-direct/range {v25 .. v25}, Lorg/json/JSONObject;-><init>()V

    .line 86
    .local v25, request:Lorg/json/JSONObject;
    if-eqz p0, :cond_0

    const-string v36, "id"

    move-object/from16 v0, v25

    move-object/from16 v1, v36

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    :cond_0
    const-wide/16 v36, 0x0

    cmp-long v36, p1, v36

    if-eqz v36, :cond_1

    const-string v36, "logging_id"

    move-object/from16 v0, v25

    move-object/from16 v1, v36

    move-wide/from16 v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 89
    :cond_1
    if-eqz p3, :cond_2

    const-string v36, "digest"

    move-object/from16 v0, v25

    move-object/from16 v1, v36

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    :cond_2
    if-eqz p4, :cond_3

    const-string v36, "locale"

    invoke-virtual/range {p4 .. p4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v25

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    :cond_3
    invoke-static {}, Lcom/android/providers/htcCheckin/CheckinProtocol;->getPhoneIdentity()Ljava/lang/String;

    move-result-object v18

    .line 94
    .local v18, imei:Ljava/lang/String;
    if-eqz v18, :cond_4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v36

    if-lez v36, :cond_4

    const-string v36, "imei"

    move-object/from16 v0, v25

    move-object/from16 v1, v36

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    :cond_4
    const-string v36, "ro.product.model"

    invoke-static/range {v36 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 102
    .local v19, modelno:Ljava/lang/String;
    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v36

    if-lez v36, :cond_5

    const-string v36, "model_number"

    move-object/from16 v0, v25

    move-object/from16 v1, v36

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    :cond_5
    invoke-static/range {p10 .. p11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v33

    .line 107
    .local v33, strLastCheckinMsec:Ljava/lang/String;
    if-eqz v33, :cond_6

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v36

    if-lez v36, :cond_6

    const-string v36, "last_checkin_msec"

    move-object/from16 v0, v25

    move-object/from16 v1, v36

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    :cond_6
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 111
    .local v8, checkin:Lorg/json/JSONObject;
    const-string v36, "checkin"

    move-object/from16 v0, v25

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 114
    .local v5, build:Lorg/json/JSONObject;
    const-string v36, "build"

    move-object/from16 v0, v36

    invoke-virtual {v8, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v36, "carrier"

    sget-object v37, Landroid/os/Build;->BRAND:Ljava/lang/String;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v36, "id"

    sget-object v37, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v36, "ro.hardware"

    invoke-static/range {v36 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, board:Ljava/lang/String;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v36

    if-lez v36, :cond_7

    const-string v36, "product"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    :cond_7
    const-string v36, "ro.revision"

    invoke-static/range {v36 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 122
    .local v26, revision:Ljava/lang/String;
    if-eqz v26, :cond_8

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v36

    if-lez v36, :cond_8

    const-string v36, "revision"

    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    :cond_8
    const-string v36, "ro.serialno"

    invoke-static/range {v36 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 125
    .local v27, serialno:Ljava/lang/String;
    if-eqz v27, :cond_9

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v36

    if-lez v36, :cond_9

    const-string v36, "serialno"

    move-object/from16 v0, v36

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    :cond_9
    const-string v36, "ro.bootloader"

    invoke-static/range {v36 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 132
    .local v17, hboot:Ljava/lang/String;
    const-string v36, "ro.lb"

    const-string v37, "0"

    invoke-static/range {v36 .. v37}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 133
    .local v32, strLB:Ljava/lang/String;
    if-nez v32, :cond_a

    const-string v32, "0"

    .line 134
    :cond_a
    const-string v36, "1"

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_b

    .line 135
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "u"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 137
    :cond_b
    if-eqz v17, :cond_c

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v36

    if-lez v36, :cond_c

    const-string v36, "bootloader"

    move-object/from16 v0, v36

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    :cond_c
    const-string v24, "gsm.version.baseband"

    .line 140
    .local v24, radioProp:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 141
    .local v23, radio:Ljava/lang/String;
    if-eqz v23, :cond_d

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v36

    if-lez v36, :cond_d

    const-string v36, "radio"

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    :cond_d
    const-string v36, "ro.com.google.clientid"

    invoke-static/range {v36 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 144
    .local v10, client:Ljava/lang/String;
    if-eqz v10, :cond_e

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v36

    if-lez v36, :cond_e

    const-string v36, "client"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    :cond_e
    const-string v36, "ro.build.description"

    invoke-static/range {v36 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 149
    .local v16, firmwarever:Ljava/lang/String;
    if-eqz v16, :cond_f

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v36

    if-lez v36, :cond_f

    const-string v36, "firmware_version"

    move-object/from16 v0, v36

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    :cond_f
    const-string v36, "ro.build.changelist"

    invoke-static/range {v36 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 153
    .local v7, buildno:Ljava/lang/String;
    if-eqz v7, :cond_10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v36

    if-lez v36, :cond_10

    const-string v36, "changelist"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    :cond_10
    const-string v36, "ro.build.type"

    invoke-static/range {v36 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 156
    .local v6, buildType:Ljava/lang/String;
    if-eqz v6, :cond_11

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v36

    if-lez v36, :cond_11

    const-string v36, "build_type"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    :cond_11
    if-eqz p5, :cond_14

    .line 161
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    .line 162
    .local v15, eventsArray:Lorg/json/JSONArray;
    const/4 v11, 0x0

    .line 163
    .local v11, eventData:I
    const-string v36, "tag"

    move-object/from16 v0, p5

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 164
    .local v13, eventTag:I
    const-string v36, "value"

    move-object/from16 v0, p5

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 165
    .local v14, eventValue:I
    const-string v36, "date"

    move-object/from16 v0, p5

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 166
    .local v12, eventDate:I
    sget-object v36, Landroid/provider/Checkin$Events$Tag;->CHECKIN_SUCCESS:Landroid/provider/Checkin$Events$Tag;

    invoke-virtual/range {v36 .. v36}, Landroid/provider/Checkin$Events$Tag;->toString()Ljava/lang/String;

    move-result-object v9

    .line 169
    .local v9, checkinTag:Ljava/lang/String;
    :goto_0
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v36

    move/from16 v0, v36

    move/from16 v1, p8

    if-ge v0, v1, :cond_13

    move/from16 v0, p9

    if-ge v11, v0, :cond_13

    invoke-interface/range {p5 .. p5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v36

    if-eqz v36, :cond_13

    .line 170
    move-object/from16 v0, p5

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 171
    .local v34, tag:Ljava/lang/String;
    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_12

    .line 172
    const-string v36, "last_checkin_msec"

    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    move-object/from16 v0, v36

    move-wide/from16 v1, v37

    invoke-virtual {v8, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 175
    :cond_12
    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V

    .line 176
    .local v20, obj:Lorg/json/JSONObject;
    const-string v36, "tag"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string v36, "value"

    move-object/from16 v0, p5

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string v36, "time_msec"

    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-wide/from16 v2, v37

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 179
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 180
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v36

    add-int v11, v11, v36

    .line 181
    goto :goto_0

    .line 182
    .end local v20           #obj:Lorg/json/JSONObject;
    .end local v34           #tag:Ljava/lang/String;
    :cond_13
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v36

    if-lez v36, :cond_14

    const-string v36, "event"

    move-object/from16 v0, v36

    invoke-virtual {v8, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    .end local v9           #checkinTag:Ljava/lang/String;
    .end local v11           #eventData:I
    .end local v12           #eventDate:I
    .end local v13           #eventTag:I
    .end local v14           #eventValue:I
    .end local v15           #eventsArray:Lorg/json/JSONArray;
    :cond_14
    if-eqz p6, :cond_16

    .line 186
    new-instance v31, Lorg/json/JSONArray;

    invoke-direct/range {v31 .. v31}, Lorg/json/JSONArray;-><init>()V

    .line 187
    .local v31, statsArray:Lorg/json/JSONArray;
    const-string v36, "tag"

    move-object/from16 v0, p6

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 188
    .local v30, statTag:I
    const-string v36, "count"

    move-object/from16 v0, p6

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 189
    .local v28, statCount:I
    const-string v36, "sum"

    move-object/from16 v0, p6

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 190
    .local v29, statSum:I
    :goto_1
    invoke-interface/range {p6 .. p6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v36

    if-eqz v36, :cond_15

    .line 191
    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V

    .line 192
    .restart local v20       #obj:Lorg/json/JSONObject;
    const-string v36, "tag"

    move-object/from16 v0, p6

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string v36, "count"

    move-object/from16 v0, p6

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 194
    const-string v36, "sum"

    move-object/from16 v0, p6

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v37

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-wide/from16 v2, v37

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 195
    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 197
    .end local v20           #obj:Lorg/json/JSONObject;
    :cond_15
    invoke-virtual/range {v31 .. v31}, Lorg/json/JSONArray;->length()I

    move-result v36

    if-lez v36, :cond_16

    const-string v36, "stat"

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    .end local v28           #statCount:I
    .end local v29           #statSum:I
    .end local v30           #statTag:I
    .end local v31           #statsArray:Lorg/json/JSONArray;
    :cond_16
    if-eqz p7, :cond_17

    .line 203
    const-string v36, "tag"

    move-object/from16 v0, p7

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 204
    .local v21, propTag:I
    const-string v36, "value"

    move-object/from16 v0, p7

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 205
    .local v22, propValue:I
    :goto_2
    invoke-interface/range {p7 .. p7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v36

    if-eqz v36, :cond_17

    .line 206
    move-object/from16 v0, p7

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 207
    .restart local v34       #tag:Ljava/lang/String;
    move-object/from16 v0, p7

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 208
    .local v35, value:Ljava/lang/String;
    sget-object v36, Lcom/android/providers/htcCheckin/CheckinProtocol$1;->$SwitchMap$android$provider$htcCheckin$Properties$Tag:[I

    invoke-static/range {v34 .. v34}, Landroid/provider/htcCheckin$Properties$Tag;->valueOf(Ljava/lang/String;)Landroid/provider/htcCheckin$Properties$Tag;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/provider/htcCheckin$Properties$Tag;->ordinal()I

    move-result v37

    aget v36, v36, v37

    packed-switch v36, :pswitch_data_0

    goto :goto_2

    .line 210
    :pswitch_0
    const-string v36, "desired_build"

    move-object/from16 v0, v25

    move-object/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 219
    .end local v21           #propTag:I
    .end local v22           #propValue:I
    .end local v34           #tag:Ljava/lang/String;
    .end local v35           #value:Ljava/lang/String;
    :cond_17
    return-object v25

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static getPhoneIdentity()Ljava/lang/String;
    .locals 3

    .prologue
    .line 230
    const-string v1, ""

    .line 232
    .local v1, phoneID:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    const-string v2, "ro.gsm.imei"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    :goto_0
    return-object v1

    .line 236
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method public static getReplyIntents(Lorg/json/JSONObject;)[Landroid/content/Intent;
    .locals 12
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 329
    const-string v10, "intent"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x0

    new-array v9, v10, [Landroid/content/Intent;

    .line 355
    :cond_0
    return-object v9

    .line 330
    :cond_1
    const-string v10, "intent"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 331
    .local v0, arr:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 332
    .local v7, length:I
    new-array v9, v7, [Landroid/content/Intent;

    .line 333
    .local v9, output:[Landroid/content/Intent;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v7, :cond_0

    .line 334
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 335
    .local v8, obj:Lorg/json/JSONObject;
    new-instance v5, Landroid/content/Intent;

    const-string v10, "action"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .local v5, intent:Landroid/content/Intent;
    const-string v10, "data_uri"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 337
    const-string v10, "data_uri"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 339
    :cond_2
    const-string v10, "mime_type"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 340
    const-string v10, "mime_type"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    :cond_3
    const-string v10, "extra"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 344
    const-string v10, "extra"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 345
    .local v2, extras:Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 346
    .local v3, extrasLength:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    if-ge v6, v3, :cond_4

    .line 347
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 348
    .local v1, extra:Lorg/json/JSONObject;
    const-string v10, "name"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "value"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 353
    .end local v1           #extra:Lorg/json/JSONObject;
    .end local v2           #extras:Lorg/json/JSONArray;
    .end local v3           #extrasLength:I
    .end local v6           #j:I
    :cond_4
    aput-object v5, v9, v4

    .line 333
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static getReplySettings(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 8
    .parameter "reply"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 365
    const-string v6, "digest"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v4, 0x0

    .line 378
    :cond_0
    return-object v4

    .line 367
    :cond_1
    const-string v6, "digest"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, digest:Ljava/lang/String;
    const-string v6, "setting"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 369
    .local v0, array:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 371
    .local v1, arrayLength:I
    new-instance v4, Ljava/util/HashMap;

    add-int/lit8 v6, v1, 0x1

    invoke-direct {v4, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 372
    .local v4, out:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "digest"

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 375
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 376
    .local v5, setting:Lorg/json/JSONObject;
    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "value"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getReplyTime(Lorg/json/JSONObject;)J
    .locals 2
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 318
    const-string v0, "time_msec"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 319
    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "time_msec"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getSmartNetworkVersion(Lorg/json/JSONObject;)I
    .locals 8
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 382
    const-string v7, "DeviceSettings"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    move v4, v6

    .line 399
    :cond_0
    :goto_0
    return v4

    .line 383
    :cond_1
    const/4 v4, -0x1

    .line 384
    .local v4, verSN:I
    const-string v7, "DeviceSettings"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 385
    .local v0, deviceSettings:Lorg/json/JSONObject;
    const-string v7, "settingInfo"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    move v4, v6

    goto :goto_0

    .line 386
    :cond_2
    const-string v6, "settingInfo"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 388
    .local v3, settingInfo:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    :try_start_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 389
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 390
    .local v5, verSmartNetwork:Lorg/json/JSONObject;
    const-string v6, "key"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "value"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 388
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 391
    :cond_4
    const-string v6, "key"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "powersaver_switch_2G_call"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 392
    const-string v6, "value"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 393
    goto :goto_0

    .line 396
    .end local v5           #verSmartNetwork:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 397
    .local v1, e:Ljava/lang/Exception;
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static isMarketReplyOk(Lorg/json/JSONObject;)Z
    .locals 1
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 309
    const-string v0, "market_ok"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "market_ok"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isReplyOk(Lorg/json/JSONObject;)Z
    .locals 1
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 300
    const-string v0, "stats_ok"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "stats_ok"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sentEventDate(Lorg/json/JSONObject;)J
    .locals 11
    .parameter "request"

    .prologue
    .line 252
    :try_start_0
    const-string v9, "checkin"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 253
    .local v1, checkin:Lorg/json/JSONObject;
    const-string v9, "event"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 254
    .local v0, arr:Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 255
    .local v6, length:I
    :goto_0
    const-wide/16 v7, 0x0

    .line 256
    .local v7, output:J
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v6, :cond_2

    .line 257
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "time_msec"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 258
    .local v2, date:J
    cmp-long v9, v2, v7

    if-lez v9, :cond_0

    move-wide v7, v2

    .line 256
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 254
    .end local v2           #date:J
    .end local v5           #i:I
    .end local v6           #length:I
    .end local v7           #output:J
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 261
    .end local v0           #arr:Lorg/json/JSONArray;
    .end local v1           #checkin:Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 263
    .local v4, e:Lorg/json/JSONException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 260
    .end local v4           #e:Lorg/json/JSONException;
    .restart local v0       #arr:Lorg/json/JSONArray;
    .restart local v1       #checkin:Lorg/json/JSONObject;
    .restart local v5       #i:I
    .restart local v6       #length:I
    .restart local v7       #output:J
    :cond_2
    return-wide v7
.end method

.method public static sentStats(Lorg/json/JSONObject;)[Landroid/content/ContentValues;
    .locals 11
    .parameter "request"

    .prologue
    .line 275
    :try_start_0
    const-string v8, "checkin"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 276
    .local v1, checkin:Lorg/json/JSONObject;
    const-string v8, "stat"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 277
    .local v0, arr:Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 278
    .local v4, length:I
    :goto_0
    new-array v6, v4, [Landroid/content/ContentValues;

    .line 279
    .local v6, output:[Landroid/content/ContentValues;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 280
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 281
    .local v5, obj:Lorg/json/JSONObject;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 282
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "tag"

    const-string v9, "tag"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v8, "count"

    const-string v9, "count"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    neg-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 284
    const-string v8, "sum"

    const-string v9, "sum"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    neg-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 285
    aput-object v7, v6, v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 277
    .end local v3           #i:I
    .end local v4           #length:I
    .end local v5           #obj:Lorg/json/JSONObject;
    .end local v6           #output:[Landroid/content/ContentValues;
    .end local v7           #values:Landroid/content/ContentValues;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 288
    .end local v0           #arr:Lorg/json/JSONArray;
    .end local v1           #checkin:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 290
    .local v2, e:Lorg/json/JSONException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 287
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v0       #arr:Lorg/json/JSONArray;
    .restart local v1       #checkin:Lorg/json/JSONObject;
    .restart local v3       #i:I
    .restart local v4       #length:I
    .restart local v6       #output:[Landroid/content/ContentValues;
    :cond_1
    return-object v6
.end method
