.class public interface abstract Lcom/android/providers/contacts/ContactAggregator$ContactReplaceSqlStatement;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "ContactReplaceSqlStatement"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field public static final CONTACT_ID:I = 0x0

.field public static final CONTACT_IS_READ_ONLY:I = 0xb

.field public static final CONTACT_SINGLE_IS_RESTRICTED:I = 0xc

.field public static final CUSTOM_RINGTONE:I = 0x5

.field public static final DISPLAY_NAME:I = 0xf

.field public static final EXT_ACCOUNT_NAME:I = 0x10

.field public static final EXT_ACCOUNT_TYPE:I = 0xd

.field public static final HAS_PHONE_NUMBER:I = 0x9

.field public static final INSERT_SQL:Ljava/lang/String; = "INSERT INTO contacts (name_raw_contact_id, photo_id, photo_file_id, send_to_voicemail, custom_ringtone, last_time_contacted, times_contacted, starred, has_phone_number, lookup, contact_is_read_only, single_is_restricted, ext_account_Type, vip, display_name)  VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

.field public static final INSERT_SQL_MORE_EXT_ACCOUNT_NAME:Ljava/lang/String; = "INSERT INTO contacts (name_raw_contact_id, photo_id, photo_file_id, send_to_voicemail, custom_ringtone, last_time_contacted, times_contacted, starred, has_phone_number, lookup, contact_is_read_only, single_is_restricted, ext_account_Type, vip, display_name, ext_account_name) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

.field public static final LAST_TIME_CONTACTED:I = 0x6

.field public static final LOOKUP_KEY:I = 0xa

.field public static final NAME_RAW_CONTACT_ID:I = 0x1

.field public static final PHOTO_FILE_ID:I = 0x3

.field public static final PHOTO_ID:I = 0x2

.field public static final SEND_TO_VOICEMAIL:I = 0x4

.field public static final STARRED:I = 0x8

.field public static final TIMES_CONTACTED:I = 0x7

.field public static final UPDATE_SQL:Ljava/lang/String; = "UPDATE contacts SET name_raw_contact_id=?, photo_id=?, photo_file_id=?, send_to_voicemail=?, custom_ringtone=?, last_time_contacted=?, times_contacted=?, starred=?, has_phone_number=?, lookup=?  , contact_is_read_only =?, single_is_restricted=?, ext_account_Type=?,vip=?,display_name=?  WHERE _id=?"

.field public static final UPDATE_SQL_MORE_EXT_ACCOUNT_NAME:Ljava/lang/String; = "UPDATE contacts SET name_raw_contact_id=?, photo_id=?, photo_file_id=?, send_to_voicemail=?, custom_ringtone=?, last_time_contacted=?, times_contacted=?, starred=?, has_phone_number=?, lookup=?  , contact_is_read_only =?,single_is_restricted=?, ext_account_Type=?,vip=?,display_name=? , ext_account_name = ?  WHERE _id=?"

.field public static final VIP:I = 0xe


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2602
    sget-boolean v0, Lcom/android/providers/contacts/HtcUtils/Constants;->IsSIMSDNEnabled:Z

    if-nez v0, :cond_0

    const/16 v0, 0x10

    :goto_0
    sput v0, Lcom/android/providers/contacts/ContactAggregator$ContactReplaceSqlStatement;->CONTACT_ID:I

    return-void

    :cond_0
    const/16 v0, 0x11

    goto :goto_0
.end method
