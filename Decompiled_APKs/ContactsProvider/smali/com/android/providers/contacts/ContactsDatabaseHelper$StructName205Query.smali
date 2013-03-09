.class interface abstract Lcom/android/providers/contacts/ContactsDatabaseHelper$StructName205Query;
.super Ljava/lang/Object;
.source "ContactsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "StructName205Query"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final DISPLAY_NAME:I = 0x3

.field public static final DISPLAY_NAME_SOURCE:I = 0x2

.field public static final FAMILY_NAME:I = 0x7

.field public static final GIVEN_NAME:I = 0x5

.field public static final ID:I = 0x0

.field public static final MIDDLE_NAME:I = 0x6

.field public static final PHONETIC_FAMILY_NAME:I = 0x9

.field public static final PHONETIC_GIVEN_NAME:I = 0xb

.field public static final PHONETIC_MIDDLE_NAME:I = 0xa

.field public static final PREFIX:I = 0x4

.field public static final RAW_CONTACT_ID:I = 0x1

.field public static final SUFFIX:I = 0x8

.field public static final TABLE:Ljava/lang/String; = "data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id)"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2682
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data._id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name_source"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data6"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "data7"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructName205Query;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
