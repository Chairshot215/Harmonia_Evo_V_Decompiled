.class public interface abstract Lcom/android/providers/contacts/HtcCustomOpenHelper$Tables;
.super Ljava/lang/Object;
.source "HtcCustomOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcCustomOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Tables"
.end annotation


# static fields
.field public static final CONTACTS:Ljava/lang/String; = "contacts"

.field public static final DEFAULT_ACTION:Ljava/lang/String; = "default_action"

.field public static final EVENT_INSTANCE:Ljava/lang/String; = "event_instance"

.field public static final FREQUENCY_TABLE:Ljava/lang/String; = "frequency"

.field public static final NAME_PATTERN:Ljava/lang/String; = "name_pattern"

.field public static final RAW_CONTACTS:Ljava/lang/String; = "raw_contacts"

.field public static final SPEED_DIAL:Ljava/lang/String; = "speed_dial"

.field public static final SPEED_DIAL_TABLE_CLEARLIST:Ljava/lang/String; = " ( SELECT *  FROM speed_dial WHERE speed_dial.data_id IS NULL AND speed_dial.raw_contact_id IS NULL AND speed_dial._id NOT IN ( SELECT speed_dial._id FROM speed_dial LEFT JOIN raw_contacts ON ( raw_contacts.account_name=\'SIM\' AND raw_contacts.account_type=\'com.anddroid.contacts.sim\' AND raw_contacts.sourceid=speed_dial.recordNumber) LEFT JOIN data ON ( raw_contacts._id=data.raw_contact_id ) WHERE data.data9=speed_dial.recordLocation ))"

.field public static final SPEED_DIAL_TABLE_UNION_SIM:Ljava/lang/String; = "( SELECT * FROM (SELECT speed_dial._id AS _id, speed_dial.location AS location, speed_dial.data_id AS data_id, speed_dial.raw_contact_id AS raw_contact_id, data.data1 as number, data.data2 as type, raw_contacts.display_name AS name, raw_contacts.display_name_alt AS name_alt, NULL as recordNumber, raw_contacts.contact_id as contact_id, NULL as number2, raw_contacts.deleted as deleted FROM speed_dial LEFT JOIN data ON ( speed_dial.data_id = data._id ) LEFT JOIN raw_contacts ON ( speed_dial.raw_contact_id = raw_contacts._id) UNION ALL SELECT speed_dial._id as _id, speed_dial.location as location, data._id as data_id, raw_contacts._id as raw_contact_id, data.data1 as number, data.data2 as type, raw_contacts.display_name as name, raw_contacts.display_name_alt AS name_alt, raw_contacts.sourceid as recordNumber, raw_contacts.contact_id as contact_id, NULL as number2, raw_contacts.deleted as deleted FROM speed_dial LEFT JOIN raw_contacts ON (raw_contacts.account_name=\'SIM\'  AND raw_contacts.account_type=\'com.anddroid.contacts.sim\'  AND raw_contacts.sourceid=speed_dial.recordNumber) LEFT JOIN data  ON (raw_contacts._id=data.raw_contact_id))  WHERE deleted = 0 GROUP BY _id )"

.field public static final SPEED_DIAL_TABLE_UNION_USIM:Ljava/lang/String; = "( SELECT * FROM (SELECT speed_dial._id AS _id, speed_dial.location AS location, speed_dial.data_id AS data_id, speed_dial.raw_contact_id AS raw_contact_id, data.data1 as number, data.data2 as type, raw_contacts.display_name AS name, raw_contacts.display_name_alt AS name_alt, NULL as recordNumber, raw_contacts.contact_id as contact_id, NULL as number2, raw_contacts.deleted as deleted, NULL as recordLocation FROM speed_dial LEFT JOIN data ON ( speed_dial.data_id = data._id ) LEFT JOIN raw_contacts ON ( speed_dial.raw_contact_id = raw_contacts._id) UNION ALL SELECT speed_dial._id as _id, speed_dial.location as location, data._id as data_id, raw_contacts._id as raw_contact_id, data.data1 as number, data.data2 as type, raw_contacts.display_name as name, raw_contacts.display_name_alt AS name_alt, raw_contacts.sourceid as recordNumber, raw_contacts.contact_id as contact_id, NULL as number2, raw_contacts.deleted as deleted, data.data9 as recordLocation FROM speed_dial LEFT JOIN raw_contacts ON (raw_contacts.account_name=\'SIM\' AND raw_contacts.account_type=\'com.anddroid.contacts.sim\' AND raw_contacts.sourceid=speed_dial.recordNumber) LEFT JOIN data ON (raw_contacts._id=data.raw_contact_id ) WHERE data.data9=speed_dial.recordLocation )  WHERE deleted = 0 GROUP BY _id )"

.field public static final SPEED_DIAL_TABLE_UPDATELIST:Ljava/lang/String; = " ( SELECT speed_dial._id AS _id, data.data1 as number, raw_contacts.sourceid as recordNumber, data.data9 as recordLocation FROM speed_dial  LEFT JOIN raw_contacts ON ( raw_contacts.account_name=\'SIM\' AND raw_contacts.account_type=\'com.anddroid.contacts.sim\' AND raw_contacts.sourceid=speed_dial.recordNumber) LEFT JOIN data ON ( raw_contacts._id=data.raw_contact_id ) WHERE data.data9=speed_dial.recordLocation )"

.field public static final SPEED_DIAL_TABLE_WITHOUT_SIM:Ljava/lang/String; = "( SELECT * FROM ( SELECT speed_dial._id as _id, speed_dial.location as location, speed_dial.data_id as data_id, speed_dial.raw_contact_id as raw_contact_id, data.data1 as number, data.data2 as type, raw_contacts.display_name as name, raw_contacts.display_name_alt AS name_alt, NULL as recordNumber, raw_contacts.contact_id as contact_id, NULL as number2, raw_contacts.deleted as deleted FROM speed_dial LEFT JOIN data ON ( speed_dial.data_id = data._id ) LEFT JOIN raw_contacts ON ( speed_dial.raw_contact_id = raw_contacts._id ) ) WHERE deleted = 0 GROUP BY _id )"

.field public static final SPEED_DIAL_TABLE_WITHOUT_USIM:Ljava/lang/String; = "( SELECT * FROM ( SELECT speed_dial._id as _id, speed_dial.location as location, speed_dial.data_id as data_id, speed_dial.raw_contact_id as raw_contact_id, data.data1 as number, data.data2 as type, raw_contacts.display_name as name, raw_contacts.display_name_alt AS name_alt, NULL as recordNumber, raw_contacts.contact_id as contact_id, NULL as number2, raw_contacts.deleted as deleted, NULL as recordLocation FROM speed_dial LEFT JOIN data ON ( speed_dial.data_id = data._id ) LEFT JOIN raw_contacts ON ( speed_dial.raw_contact_id = raw_contacts._id ) ) WHERE deleted = 0 GROUP BY _id )"

.field public static final SUGGESTION:Ljava/lang/String; = "suggestion"
