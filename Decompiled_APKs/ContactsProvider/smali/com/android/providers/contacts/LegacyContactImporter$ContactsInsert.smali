.class public interface abstract Lcom/android/providers/contacts/LegacyContactImporter$ContactsInsert;
.super Ljava/lang/Object;
.source "LegacyContactImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/LegacyContactImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "ContactsInsert"
.end annotation


# static fields
.field public static final CUSTOM_RINGTONE:I = 0x2

.field public static final ID:I = 0x1

.field public static final INSERT_SQL:Ljava/lang/String; = "INSERT INTO contacts(_id,custom_ringtone,last_time_contacted,send_to_voicemail,starred,times_contacted,name_raw_contact_id) VALUES (?,?,?,?,?,?,?)"

.field public static final LAST_TIME_CONTACTED:I = 0x3

.field public static final NAME_RAW_CONTACT_ID:I = 0x7

.field public static final SEND_TO_VOICEMAIL:I = 0x4

.field public static final STARRED:I = 0x5

.field public static final TIMES_CONTACTED:I = 0x6
