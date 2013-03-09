.class public final Lcom/android/providers/contacts/HtcUtils/BlacklistUtils;
.super Ljava/lang/Object;
.source "BlacklistUtils.java"


# static fields
.field public static final BLACKLIST_CALLS:Ljava/lang/String; = null

.field public static final CALLS_WITH_PHOTO_TABLE_JOIN:Ljava/lang/String; = null

.field public static final CALLS_WITH_PHOTO_TABLE_JOIN_BLOCK_NUMBER:Ljava/lang/String; = null

.field public static final CNAME:Ljava/lang/String; = "cname"

.field public static final DATA_ID:Ljava/lang/String; = "data_id"

.field private static final EXCLUDE_SDN:Ljava/lang/String; = "NOT (ext_account_Type=\'com.anddroid.contacts.sim\' AND ext_account_name=\'SIM_SDN\' ) "

.field public static final NON_BLACKLIST_CALLS:Ljava/lang/String; = null

.field private static final ORDER_COLLATOR:Ljava/lang/String; = null

.field public static final RES_ICON:Ljava/lang/String; = "package_icon_res"

.field public static final RES_LABEL:Ljava/lang/String; = "package_label_res"

.field public static final RES_PACKAGE:Ljava/lang/String; = "package_name"

.field public static final TABLE_BLACKLIST:Ljava/lang/String; = null

.field public static final TABLE_BLACKLIST_CANDIDATE:Ljava/lang/String; = null

.field public static final TABLE_DIVERTED:Ljava/lang/String; = " (  SELECT _id,display_name,starred,photo_id,EXISTS (SELECT _id FROM visible_contacts WHERE contacts._id=visible_contacts._id) AS in_visible_group,lookup,has_phone_number,status_update_id,ext_account_Type FROM contacts WHERE send_to_voicemail = 1 AND ext_account_Type IS NOT NULL UNION ALL  SELECT _id AS _id,number AS display_name,NULL AS starred,-1 AS photo_id,NULL AS in_visible_group,NULL AS lookup,1 AS has_phone_number,NULL AS status_update_id,\'block_number\' AS ext_account_Type FROM blocked_number ORDER BY display_name COLLATE LOCALIZED ASC  ) "

.field public static final TABLE_DIVERTED_CANDIDATE:Ljava/lang/String; = " (  SELECT _id,display_name,starred,photo_id,EXISTS (SELECT _id FROM visible_contacts WHERE contacts._id=visible_contacts._id) AS in_visible_group,lookup,has_phone_number,status_update_id,ext_account_Type FROM contacts  WHERE  contacts._id NOT IN ( SELECT contacts._id  FROM contacts join raw_contacts on contacts._id = raw_contacts.contact_id  join data on raw_contacts._id = data.raw_contact_id  INNER JOIN mimetypes on data.mimetype_id = mimetypes._id  WHERE (contacts.send_to_voicemail = 1  OR mimetype=\'vnd.android.cursor.item/vnd.tmobile.faves\' AND data4=1))  GROUP BY _id  ORDER BY display_name COLLATE LOCALIZED ASC  ) "

.field public static final TABLE_VIP:Ljava/lang/String; = " (  SELECT contacts._id AS _id,contacts.display_name AS display_name,contacts.starred AS starred,photo_id,EXISTS (SELECT _id FROM visible_contacts WHERE contacts._id=visible_contacts._id) AS in_visible_group,lookup,has_phone_number,status_update_id,ext_account_Type,mode AS contact_presence FROM contacts LEFT OUTER JOIN agg_presence ON ( presence_contact_id = contacts._id )join raw_contacts on contacts._id = raw_contacts.contact_id join data on raw_contacts._id = data.raw_contact_id INNER JOIN mimetypes on data.mimetype_id = mimetypes._id WHERE (mimetype=\'vnd.android.cursor.item/vnd.tmobile.faves\' AND data4=1) GROUP BY _id  ORDER BY display_name COLLATE LOCALIZED ASC  ) "

.field public static final TABLE_VIP_CANDIDATE:Ljava/lang/String; = " (  SELECT _id,display_name,starred,photo_id,EXISTS (SELECT _id FROM visible_contacts WHERE contacts._id=visible_contacts._id) AS in_visible_group,lookup,has_phone_number,status_update_id,ext_account_Type FROM contacts  WHERE  contacts._id NOT IN ( SELECT contacts._id  FROM contacts join raw_contacts on contacts._id = raw_contacts.contact_id  join data on raw_contacts._id = data.raw_contact_id  INNER JOIN mimetypes on data.mimetype_id = mimetypes._id  WHERE (contacts.send_to_voicemail = 1  OR mimetype=\'vnd.android.cursor.item/vnd.tmobile.faves\' AND data4=1))  GROUP BY _id  ORDER BY display_name COLLATE LOCALIZED ASC  ) "

.field public static final extAccountName:Ljava/lang/String; = "ext_account_name"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcom/android/providers/contacts/HtcUtils/BuildUtils;->isSKTOrKorea()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " COLLATE PHONEBOOK "

    :goto_0
    sput-object v0, Lcom/android/providers/contacts/HtcUtils/BlacklistUtils;->ORDER_COLLATOR:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (  SELECT _id,display_name,starred,photo_id,EXISTS (SELECT _id FROM visible_contacts WHERE contacts._id=visible_contacts._id) AS in_visible_group,lookup,has_phone_number,status_update_id,ext_account_Type FROM contacts WHERE send_to_voicemail = 1 AND ext_account_Type IS NOT NULL UNION ALL  SELECT _id AS _id,number AS display_name,NULL AS starred,-1 AS photo_id,NULL AS in_visible_group,NULL AS lookup,1 AS has_phone_number,NULL AS status_update_id,\'block_number\' AS ext_account_Type FROM blocked_number ORDER BY display_name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/HtcUtils/BlacklistUtils;->ORDER_COLLATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ASC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/HtcUtils/BlacklistUtils;->TABLE_BLACKLIST:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (  SELECT _id,display_name,starred,photo_id,EXISTS (SELECT _id FROM visible_contacts WHERE contacts._id=visible_contacts._id) AS in_visible_group,lookup,has_phone_number,status_update_id,ext_account_Type FROM contacts WHERE send_to_voicemail = 0 AND ext_account_Type IS NOT NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Lcom/android/providers/contacts/HtcUtils/Constants;->IsSIMSDNEnabled:Z

    if-eqz v0, :cond_1

    const-string v0, " AND NOT (ext_account_Type=\'com.anddroid.contacts.sim\' AND ext_account_name=\'SIM_SDN\' ) "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "display_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/HtcUtils/BlacklistUtils;->ORDER_COLLATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ASC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/HtcUtils/BlacklistUtils;->TABLE_BLACKLIST_CANDIDATE:Ljava/lang/String;

    .line 101
    sget-boolean v0, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " SELECT calls._id AS _id, calls.number AS number, calls.date AS date, calls.duration AS duration, calls.type AS type, calls.new AS new, calls.name AS name, calls.numberlabel AS numberlabel, calls.numbertype AS numbertype, calls.raw_contact_id AS raw_contact_id, contacts.photo_id AS photo_id, contacts.display_name AS display_name, contacts.lookup AS lookup, contacts.send_to_voicemail AS send_to_voicemail, contacts.vip AS vip, raw_contacts.contact_id AS contact_id, raw_contacts.account_type AS account_type , calls.city_id AS city_id ,  calls.callType AS callType , calls.cname AS cname , data_id AS data_id , package_name AS package_name , package_label_res AS package_label_res , package_icon_res AS package_icon_res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Lcom/android/providers/contacts/HtcUtils/Constants;->IsSIMSDNEnabled:Z

    if-eqz v0, :cond_2

    const-string v0, " , contacts.ext_account_name AS ext_account_name"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "calls "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LEFT JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contacts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " calls."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "= raw_contacts._id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LEFT JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contacts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " raw_contacts."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "= contacts._id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    sput-object v0, Lcom/android/providers/contacts/HtcUtils/BlacklistUtils;->CALLS_WITH_PHOTO_TABLE_JOIN:Ljava/lang/String;

    .line 185
    sget-boolean v0, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " SELECT calls._id AS _id, calls.number AS number, calls.date AS date, calls.duration AS duration, calls.type AS type, calls.new AS new, calls.name AS name, calls.numberlabel AS numberlabel, calls.numbertype AS numbertype, calls.raw_contact_id AS raw_contact_id, -1 AS photo_id, NULL AS display_name, NULL AS lookup, 0 AS send_to_voicemail, 0 AS vip, -1 AS contact_id, \'block_number\' AS account_type , calls.city_id AS city_id , calls.callType AS callType , calls.cname AS cname , data_id AS data_id , package_name AS package_name , package_label_res AS package_label_res , package_icon_res AS package_icon_res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Lcom/android/providers/contacts/HtcUtils/Constants;->IsSIMSDNEnabled:Z

    if-eqz v0, :cond_5

    const-string v0, " , NULL AS ext_account_name"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "calls, blocked_number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PHONE_NUMBERS_EQUAL(calls.number, blocked_number.number) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IS NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    sput-object v0, Lcom/android/providers/contacts/HtcUtils/BlacklistUtils;->CALLS_WITH_PHOTO_TABLE_JOIN_BLOCK_NUMBER:Ljava/lang/String;

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/HtcUtils/BlacklistUtils;->CALLS_WITH_PHOTO_TABLE_JOIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contacts."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "send_to_voicemail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "calls."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "( SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "blocked_number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND Contacts._id IS NOT NULL ) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UNION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/HtcUtils/BlacklistUtils;->CALLS_WITH_PHOTO_TABLE_JOIN_BLOCK_NUMBER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/HtcUtils/BlacklistUtils;->BLACKLIST_CALLS:Ljava/lang/String;

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/HtcUtils/BlacklistUtils;->CALLS_WITH_PHOTO_TABLE_JOIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " NOT IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "( SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "blocked_number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contacts."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "send_to_voicemail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = 0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contacts."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "send_to_voicemail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IS NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/HtcUtils/BlacklistUtils;->NON_BLACKLIST_CALLS:Ljava/lang/String;

    return-void

    .line 41
    :cond_0
    const-string v0, " COLLATE LOCALIZED "

    goto/16 :goto_0

    .line 83
    :cond_1
    const-string v0, ""

    goto/16 :goto_1

    .line 101
    :cond_2
    const-string v0, ""

    goto/16 :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " SELECT calls._id AS _id, calls.number AS number, calls.date AS date, calls.duration AS duration, calls.type AS type, calls.new AS new, calls.name AS name, calls.numberlabel AS numberlabel, calls.numbertype AS numbertype, calls.raw_contact_id AS raw_contact_id, contacts.photo_id AS photo_id, contacts.display_name AS display_name, contacts.lookup AS lookup, contacts.send_to_voicemail AS send_to_voicemail, contacts.vip AS vip, raw_contacts.contact_id AS contact_id, raw_contacts.account_type AS account_type ,  calls.callType AS callType , calls.cname AS cname , data_id AS data_id , package_name AS package_name , package_label_res AS package_label_res , package_icon_res AS package_icon_res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Lcom/android/providers/contacts/HtcUtils/Constants;->IsSIMSDNEnabled:Z

    if-eqz v0, :cond_4

    const-string v0, " , contacts.ext_account_name AS ext_account_name"

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "calls "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LEFT JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contacts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " calls."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "= raw_contacts._id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LEFT JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contacts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " raw_contacts."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "= contacts._id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_4
    const-string v0, ""

    goto :goto_6

    .line 185
    :cond_5
    const-string v0, ""

    goto/16 :goto_4

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " SELECT calls._id AS _id, calls.number AS number, calls.date AS date, calls.duration AS duration, calls.type AS type, calls.new AS new, calls.name AS name, calls.numberlabel AS numberlabel, calls.numbertype AS numbertype, calls.raw_contact_id AS raw_contact_id, -1 AS photo_id, NULL AS display_name, NULL AS lookup, 0 AS send_to_voicemail, 0 AS vip, -1 AS contact_id, \'block_number\' AS account_type , calls.callType AS callType , calls.cname AS cname , data_id AS data_id , package_name AS package_name , package_label_res AS package_label_res , package_icon_res AS package_icon_res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Lcom/android/providers/contacts/HtcUtils/Constants;->IsSIMSDNEnabled:Z

    if-eqz v0, :cond_7

    const-string v0, " , NULL AS ext_account_name"

    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "calls, blocked_number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PHONE_NUMBERS_EQUAL(calls.number, blocked_number.number) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IS NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_7
    const-string v0, ""

    goto :goto_7
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
