.class public interface abstract Lcom/android/providers/contacts/HtcLegacyContactImporter$HtcContactsInsert;
.super Ljava/lang/Object;
.source "HtcLegacyContactImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcLegacyContactImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "HtcContactsInsert"
.end annotation


# static fields
.field public static final CUSTOM_RINGTONE:I = 0x2

.field public static final DISPLAY_NAME:I = 0x7

.field public static final EXT_ACCOUNT_TYPE:I = 0x8

.field public static final ID:I = 0x1

.field public static final INSERT_SQL:Ljava/lang/String; = "INSERT INTO contacts(_id,custom_ringtone,last_time_contacted,send_to_voicemail,starred,times_contacted,display_name,ext_account_Type) VALUES (?,?,?,?,?,?,?,?)"

.field public static final LAST_TIME_CONTACTED:I = 0x3

.field public static final SEND_TO_VOICEMAIL:I = 0x4

.field public static final STARRED:I = 0x5

.field public static final TIMES_CONTACTED:I = 0x6
