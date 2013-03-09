.class interface abstract Lcom/android/providers/contacts/ContactAggregator$ContactNameLookupQuery;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ContactNameLookupQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final CONTACT_ID:I = 0x0

.field public static final NAME_TYPE:I = 0x2

.field public static final NORMALIZED_NAME:I = 0x1

.field public static final RAW_CONTACT_ID:I = 0x3

.field public static final TABLE:Ljava/lang/String; = "name_lookup INNER JOIN view_raw_contacts ON (name_lookup.raw_contact_id = view_raw_contacts._id)"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2091
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "normalized_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactAggregator$ContactNameLookupQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
