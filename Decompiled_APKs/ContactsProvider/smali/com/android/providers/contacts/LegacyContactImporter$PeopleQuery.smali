.class public interface abstract Lcom/android/providers/contacts/LegacyContactImporter$PeopleQuery;
.super Ljava/lang/Object;
.source "LegacyContactImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/LegacyContactImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "PeopleQuery"
.end annotation


# static fields
.field public static final COLUMNS_WITHOUT_PHONETIC_NAME:[Ljava/lang/String; = null

.field public static final COLUMNS_WITH_DISPLAY_NAME_WITHOUT_PHONETIC_NAME:[Ljava/lang/String; = null

.field public static final COLUMNS_WITH_DISPLAY_NAME_WITH_PHONETIC_NAME:[Ljava/lang/String; = null

.field public static final COLUMNS_WITH_PHONETIC_NAME:[Ljava/lang/String; = null

.field public static final CUSTOM_RINGTONE:I = 0x9

.field public static final LAST_TIME_CONTACTED:I = 0x4

.field public static final NAME:I = 0x1

.field public static final NAME_SQL:Ljava/lang/String; = "(CASE WHEN (name IS NOT NULL AND name != \'\') THEN name ELSE (CASE WHEN primary_organization is NOT NULL THEN (SELECT company FROM organizations WHERE organizations._id = primary_organization) ELSE (CASE WHEN primary_phone IS NOT NULL THEN (SELECT number FROM phones WHERE phones._id = primary_phone) ELSE (CASE WHEN primary_email IS NOT NULL THEN (SELECT data FROM contact_methods WHERE contact_methods._id = primary_email) ELSE null END) END) END) END) "

.field public static final NOTES:I = 0x2

.field public static final PHONETIC_NAME:I = 0x10

.field public static final PRIMARY_EMAIL:I = 0x8

.field public static final PRIMARY_ORGANIZATION:I = 0x7

.field public static final PRIMARY_PHONE:I = 0x6

.field public static final SEND_TO_VOICEMAIL:I = 0xa

.field public static final STARRED:I = 0x5

.field public static final TABLE:Ljava/lang/String; = "people"

.field public static final TIMES_CONTACTED:I = 0x3

.field public static final _ID:I = 0x0

.field public static final _SYNC_ACCOUNT:I = 0xb

.field public static final _SYNC_DIRTY:I = 0xf

.field public static final _SYNC_ID:I = 0xc

.field public static final _SYNC_LOCAL_ID:I = 0xe

.field public static final _SYNC_TIME:I = 0xd


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 375
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "(CASE WHEN (name IS NOT NULL AND name != \'\') THEN name ELSE (CASE WHEN primary_organization is NOT NULL THEN (SELECT company FROM organizations WHERE organizations._id = primary_organization) ELSE (CASE WHEN primary_phone IS NOT NULL THEN (SELECT number FROM phones WHERE phones._id = primary_phone) ELSE (CASE WHEN primary_email IS NOT NULL THEN (SELECT data FROM contact_methods WHERE contact_methods._id = primary_email) ELSE null END) END) END) END) "

    aput-object v1, v0, v4

    const-string v1, "notes"

    aput-object v1, v0, v5

    const-string v1, "times_contacted"

    aput-object v1, v0, v6

    const-string v1, "last_time_contacted"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "primary_phone"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "primary_organization"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "primary_email"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "custom_ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_sync_account"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "_sync_time"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "_sync_local_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "_sync_dirty, extra_group"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/LegacyContactImporter$PeopleQuery;->COLUMNS_WITH_DISPLAY_NAME_WITHOUT_PHONETIC_NAME:[Ljava/lang/String;

    .line 384
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "(CASE WHEN (name IS NOT NULL AND name != \'\') THEN name ELSE (CASE WHEN primary_organization is NOT NULL THEN (SELECT company FROM organizations WHERE organizations._id = primary_organization) ELSE (CASE WHEN primary_phone IS NOT NULL THEN (SELECT number FROM phones WHERE phones._id = primary_phone) ELSE (CASE WHEN primary_email IS NOT NULL THEN (SELECT data FROM contact_methods WHERE contact_methods._id = primary_email) ELSE null END) END) END) END) "

    aput-object v1, v0, v4

    const-string v1, "notes"

    aput-object v1, v0, v5

    const-string v1, "times_contacted"

    aput-object v1, v0, v6

    const-string v1, "last_time_contacted"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "primary_phone"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "primary_organization"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "primary_email"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "custom_ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_sync_account"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "_sync_time"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "_sync_local_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "_sync_dirty"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "phonetic_name, extra_group"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/LegacyContactImporter$PeopleQuery;->COLUMNS_WITH_DISPLAY_NAME_WITH_PHONETIC_NAME:[Ljava/lang/String;

    .line 393
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "notes"

    aput-object v1, v0, v5

    const-string v1, "times_contacted"

    aput-object v1, v0, v6

    const-string v1, "last_time_contacted"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "primary_phone"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "primary_organization"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "primary_email"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "custom_ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_sync_account"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "_sync_time"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "_sync_local_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "_sync_dirty , extra_group"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/LegacyContactImporter$PeopleQuery;->COLUMNS_WITHOUT_PHONETIC_NAME:[Ljava/lang/String;

    .line 402
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "notes"

    aput-object v1, v0, v5

    const-string v1, "times_contacted"

    aput-object v1, v0, v6

    const-string v1, "last_time_contacted"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "primary_phone"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "primary_organization"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "primary_email"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "custom_ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_sync_account"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "_sync_time"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "_sync_local_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "_sync_dirty"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "phonetic_name, extra_group"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/LegacyContactImporter$PeopleQuery;->COLUMNS_WITH_PHONETIC_NAME:[Ljava/lang/String;

    return-void
.end method
