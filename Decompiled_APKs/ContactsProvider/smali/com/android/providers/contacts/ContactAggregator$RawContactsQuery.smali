.class interface abstract Lcom/android/providers/contacts/ContactAggregator$RawContactsQuery;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "RawContactsQuery"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:I = 0x4

.field public static final ACCOUNT_TYPE:I = 0x3

.field public static final CUSTOM_RINGTONE:I = 0x7

.field public static final DATA_ID:I = 0xd

.field public static final DATA_SET:I = 0x5

.field public static final DISPLAY_NAME:I = 0x1

.field public static final DISPLAY_NAME_SOURCE:I = 0x2

.field public static final IS_RESTRICTED:I = 0x13

.field public static final IS_SUPER_PRIMARY:I = 0xf

.field public static final LAST_TIME_CONTACTED:I = 0x9

.field public static final MIMETYPE_ID:I = 0xe

.field public static final NAME_VERIFIED:I = 0xc

.field public static final PHOTO_FILE_ID:I = 0x10

.field public static final RAW_CONTACT_ID:I = 0x0

.field public static final RAW_CONTACT_IS_READ_ONLY:I = 0x12

.field public static final SEND_TO_VOICEMAIL:I = 0x8

.field public static final SOURCE_ID:I = 0x6

.field public static final SQL_FORMAT:Ljava/lang/String; = "SELECT raw_contacts._id,display_name,display_name_source,account_type,account_name,data_set,sourceid,custom_ringtone,send_to_voicemail,last_time_contacted,times_contacted,starred,name_verified,data._id,data.mimetype_id,is_super_primary,data14,data4,raw_contact_is_read_only,is_restricted FROM raw_contacts LEFT OUTER JOIN data ON (data.raw_contact_id=raw_contacts._id AND ((mimetype_id=%d AND data15 NOT NULL) OR (mimetype_id=%d AND data1 NOT NULL) OR (mimetype_id=%d AND data4 NOT NULL)))"

.field public static final SQL_FORMAT_BY_CONTACT_ID:Ljava/lang/String; = "SELECT raw_contacts._id,display_name,display_name_source,account_type,account_name,data_set,sourceid,custom_ringtone,send_to_voicemail,last_time_contacted,times_contacted,starred,name_verified,data._id,data.mimetype_id,is_super_primary,data14,data4,raw_contact_is_read_only,is_restricted FROM raw_contacts LEFT OUTER JOIN data ON (data.raw_contact_id=raw_contacts._id AND ((mimetype_id=%d AND data15 NOT NULL) OR (mimetype_id=%d AND data1 NOT NULL) OR (mimetype_id=%d AND data4 NOT NULL))) WHERE contact_id=? AND deleted=0"

.field public static final SQL_FORMAT_BY_RAW_CONTACT_ID:Ljava/lang/String; = "SELECT raw_contacts._id,display_name,display_name_source,account_type,account_name,data_set,sourceid,custom_ringtone,send_to_voicemail,last_time_contacted,times_contacted,starred,name_verified,data._id,data.mimetype_id,is_super_primary,data14,data4,raw_contact_is_read_only,is_restricted FROM raw_contacts LEFT OUTER JOIN data ON (data.raw_contact_id=raw_contacts._id AND ((mimetype_id=%d AND data15 NOT NULL) OR (mimetype_id=%d AND data1 NOT NULL) OR (mimetype_id=%d AND data4 NOT NULL))) WHERE raw_contacts._id=?"

.field public static final STARRED:I = 0xb

.field public static final TIMES_CONTACTED:I = 0xa

.field public static final VIP:I = 0x11
