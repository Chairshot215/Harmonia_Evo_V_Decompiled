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

    invoke-direct {p0}, Landroid/provider/CallLog$Calls;-><init>()V

    return-void
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJI)Landroid/net/Uri;
    .locals 8

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    :try_start_0
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne p3, v4, :cond_5

    const-string p2, "-2"

    if-eqz p0, :cond_0

    const-string v4, ""

    iput-object v4, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    :cond_0
    :goto_0
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    const-string v4, "number"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "date"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "duration"

    int-to-long v5, p7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "new"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p0, :cond_1

    const-string v4, "name"

    iget-object v5, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "numberlabel"

    iget-object v5, p0, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-boolean v4, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v4, :cond_2

    invoke-static {p1, v3, p0, p2}, Lcom/htc/provider/CallLog$Calls;->addCityIdInfo(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;)V

    :cond_2
    if-eqz p0, :cond_3

    iget-wide v4, p0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    iget-wide v4, p0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v1, v4, v5}, Landroid/provider/Contacts$People;->markAsContacted(Landroid/content/ContentResolver;J)V

    const-string v4, "raw_contact_id"

    iget-wide v5, p0, Lcom/android/internal/telephony/CallerInfo;->rawContactId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "numbertype"

    iget v5, p0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    sget-object v4, Lcom/htc/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1}, Lcom/htc/provider/CallLog$Calls;->removeExpiredEntries(Landroid/content/Context;)V

    sget-object v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v5, "1.6"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    #calls: Lcom/htc/provider/CallLog;->addFrequentCount(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;I)V
    invoke-static {p0, p1, p4}, Lcom/htc/provider/CallLog;->access$000(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;I)V

    :cond_4
    :goto_1
    return-object v2

    :cond_5
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne p3, v4, :cond_6

    const-string p2, "-3"

    if-eqz p0, :cond_0

    const-string v4, ""

    iput-object v4, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v4, "CallLog"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne p3, v4, :cond_0

    :cond_7
    const-string p2, "-1"

    if-eqz p0, :cond_0

    const-string v4, ""

    iput-object v4, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static addCityIdInfo(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    sget-object v3, Lcom/htc/util/phone/CityIdInfo;->USER_DATA_KEY:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/CallerInfo;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v1, 0x0

    instance-of v3, v2, Lcom/htc/util/phone/CityIdInfo;

    if-eqz v3, :cond_2

    move-object v1, v2

    check-cast v1, Lcom/htc/util/phone/CityIdInfo;

    iget-boolean v3, v1, Lcom/htc/util/phone/CityIdInfo;->m_hasLookupBeenPerformed:Z

    if-nez v3, :cond_0

    invoke-virtual {v1, p0, p3, v4}, Lcom/htc/util/phone/CityIdInfo;->doLookup(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    :cond_0
    :goto_0
    const/4 v3, 0x0

    invoke-static {v3, v1}, Lcom/htc/util/phone/CityIdInfo;->getCityIdDisplay(Landroid/widget/TextView;Lcom/htc/util/phone/CityIdInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "city_id"

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance v1, Lcom/htc/util/phone/CityIdInfo;

    invoke-direct {v1}, Lcom/htc/util/phone/CityIdInfo;-><init>()V

    invoke-virtual {v1, p0, p3, v4}, Lcom/htc/util/phone/CityIdInfo;->doLookup(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method private static removeExpiredEntries(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id IN (SELECT _id FROM calls ORDER BY date DESC LIMIT -1 OFFSET 500)"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
