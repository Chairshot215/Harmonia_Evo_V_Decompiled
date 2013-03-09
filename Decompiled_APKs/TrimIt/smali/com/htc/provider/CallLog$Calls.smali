.class public Lcom/htc/provider/CallLog$Calls;
.super Landroid/provider/CallLog$Calls;
.source "CallLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Calls"
.end annotation


# static fields
.field public static final CITY_ID:Ljava/lang/String; = "city_id"

.field public static final CNAME:Ljava/lang/String; = "cname"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/provider/CallLog$Calls;-><init>()V

    return-void
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJI)Landroid/net/Uri;
    .locals 8
    .parameter "ci"
    .parameter "context"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "start"
    .parameter "duration"

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 92
    .local v1, resolver:Landroid/content/ContentResolver;
    :try_start_0
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne p3, v4, :cond_5

    .line 93
    const-string p2, "-2"

    .line 94
    if-eqz p0, :cond_0

    const-string v4, ""

    iput-object v4, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 105
    :cond_0
    :goto_0
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 107
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "number"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v4, "type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    const-string v4, "date"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 110
    const-string v4, "duration"

    int-to-long v5, p7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 111
    const-string v4, "new"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    if-eqz p0, :cond_1

    .line 113
    const-string v4, "name"

    iget-object v5, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v4, "numberlabel"

    iget-object v5, p0, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_1
    sget-boolean v4, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v4, :cond_2

    .line 120
    invoke-static {p1, v3, p0, p2}, Lcom/htc/provider/CallLog$Calls;->addCityIdInfo(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;)V

    .line 123
    :cond_2
    if-eqz p0, :cond_3

    iget-wide v4, p0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 124
    iget-wide v4, p0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v1, v4, v5}, Landroid/provider/Contacts$People;->markAsContacted(Landroid/content/ContentResolver;J)V

    .line 127
    const-string v4, "raw_contact_id"

    iget-wide v5, p0, Lcom/android/internal/telephony/CallerInfo;->rawContactId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 130
    const-string v4, "numbertype"

    iget v5, p0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    :cond_3
    sget-object v4, Lcom/htc/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 135
    .local v2, result:Landroid/net/Uri;
    invoke-static {p1}, Lcom/htc/provider/CallLog$Calls;->removeExpiredEntries(Landroid/content/Context;)V

    .line 138
    sget-object v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v5, "1.6"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 139
    #calls: Lcom/htc/provider/CallLog;->addFrequentCount(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;I)V
    invoke-static {p0, p1, p4}, Lcom/htc/provider/CallLog;->access$000(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;I)V

    .line 148
    .end local v2           #result:Landroid/net/Uri;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_4
    :goto_1
    return-object v2

    .line 96
    :cond_5
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne p3, v4, :cond_6

    .line 97
    const-string p2, "-3"

    .line 98
    if-eqz p0, :cond_0

    const-string v4, ""

    iput-object v4, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "CallLog"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    const/4 v2, 0x0

    goto :goto_1

    .line 99
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne p3, v4, :cond_0

    .line 101
    :cond_7
    const-string p2, "-1"

    .line 102
    if-eqz p0, :cond_0

    const-string v4, ""

    iput-object v4, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static addCityIdInfo(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "values"
    .parameter "ci"
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    .line 175
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 177
    sget-object v3, Lcom/htc/util/phone/CityIdInfo;->USER_DATA_KEY:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/CallerInfo;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 179
    .local v2, obj:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 181
    .local v1, info:Lcom/htc/util/phone/CityIdInfo;
    instance-of v3, v2, Lcom/htc/util/phone/CityIdInfo;

    if-eqz v3, :cond_2

    move-object v1, v2

    .line 182
    check-cast v1, Lcom/htc/util/phone/CityIdInfo;

    .line 183
    iget-boolean v3, v1, Lcom/htc/util/phone/CityIdInfo;->m_hasLookupBeenPerformed:Z

    if-nez v3, :cond_0

    .line 184
    invoke-virtual {v1, p0, p3, v4}, Lcom/htc/util/phone/CityIdInfo;->doLookup(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    .line 191
    :cond_0
    :goto_0
    const/4 v3, 0x0

    invoke-static {v3, v1}, Lcom/htc/util/phone/CityIdInfo;->getCityIdDisplay(Landroid/widget/TextView;Lcom/htc/util/phone/CityIdInfo;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, cityId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 193
    const-string v3, "city_id"

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .end local v0           #cityId:Ljava/lang/String;
    .end local v1           #info:Lcom/htc/util/phone/CityIdInfo;
    .end local v2           #obj:Ljava/lang/Object;
    :cond_1
    return-void

    .line 187
    .restart local v1       #info:Lcom/htc/util/phone/CityIdInfo;
    .restart local v2       #obj:Ljava/lang/Object;
    :cond_2
    new-instance v1, Lcom/htc/util/phone/CityIdInfo;

    .end local v1           #info:Lcom/htc/util/phone/CityIdInfo;
    invoke-direct {v1}, Lcom/htc/util/phone/CityIdInfo;-><init>()V

    .line 188
    .restart local v1       #info:Lcom/htc/util/phone/CityIdInfo;
    invoke-virtual {v1, p0, p3, v4}, Lcom/htc/util/phone/CityIdInfo;->doLookup(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method private static removeExpiredEntries(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 160
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id IN (SELECT _id FROM calls ORDER BY date DESC LIMIT -1 OFFSET 500)"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 163
    return-void
.end method
