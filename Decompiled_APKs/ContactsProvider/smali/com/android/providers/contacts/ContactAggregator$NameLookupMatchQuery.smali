.class interface abstract Lcom/android/providers/contacts/ContactAggregator$NameLookupMatchQuery;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "NameLookupMatchQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final CONTACT_ID:I = 0x0

.field public static final NAME:I = 0x1

.field public static final NAME_TYPE_A:I = 0x2

.field public static final NAME_TYPE_B:I = 0x3

.field public static final RAW_CONTACT_ID:I = 0x4

.field public static final SELECTION:Ljava/lang/String; = "nameA.raw_contact_id=? AND aggregation_needed=0 AND contact_id IN default_directory"

.field public static final TABLE:Ljava/lang/String; = "name_lookup nameA JOIN name_lookup nameB ON (nameA.normalized_name=nameB.normalized_name) JOIN raw_contacts ON (nameB.raw_contact_id = raw_contacts._id)"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1783
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "nameA.normalized_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "nameA.name_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "nameB.name_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactAggregator$NameLookupMatchQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
