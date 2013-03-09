.class interface abstract Lcom/android/providers/contacts/ContactsDatabaseHelper$Organization205Query;
.super Ljava/lang/Object;
.source "ContactsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Organization205Query"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final COMPANY:I = 0x2

.field public static final ID:I = 0x0

.field public static final PHONETIC_NAME:I = 0x3

.field public static final RAW_CONTACT_ID:I = 0x1

.field public static final TABLE:Ljava/lang/String; = "data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id)"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2812
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data._id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data8"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper$Organization205Query;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
