.class public interface abstract Lcom/android/providers/contacts/LegacyContactImporter$RawContactsInsert;
.super Ljava/lang/Object;
.source "LegacyContactImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/LegacyContactImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "RawContactsInsert"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:I = 0xb

.field public static final ACCOUNT_TYPE:I = 0xc

.field public static final CONTACT_ID:I = 0x2

.field public static final CUSTOM_RINGTONE:I = 0x3

.field public static final DIRTY:I = 0x4

.field public static final DISPLAY_NAME:I = 0xe

.field public static final ID:I = 0x1

.field public static final INSERT_SQL:Ljava/lang/String; = "INSERT INTO raw_contacts(_id,contact_id,custom_ringtone,dirty,last_time_contacted,send_to_voicemail,starred,times_contacted,sync1,sync2,account_name,account_type,sourceid,display_name) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

.field public static final LAST_TIME_CONTACTED:I = 0x5

.field public static final SEND_TO_VOICEMAIL:I = 0x6

.field public static final SOURCE_ID:I = 0xd

.field public static final STARRED:I = 0x7

.field public static final SYNC1:I = 0x9

.field public static final SYNC2:I = 0xa

.field public static final TIMES_CONTACTED:I = 0x8
