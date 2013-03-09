.class interface abstract Lcom/android/providers/contacts/ContactAggregator$EmailLookupQuery;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "EmailLookupQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final CONTACT_ID:I = 0x0

.field public static final Email_lookup:Ljava/lang/String; = "data13"

.field public static final MATCH_FROM:I = 0x2

.field public static final MATCH_TO:I = 0x3

.field public static final RAW_CONTACT_ID:I = 0x1

.field public static final SELECTION:Ljava/lang/String; = "dataA.raw_contact_id=? AND dataA.mimetype_id=? AND dataA.data13 NOT NULL AND LENGTH(dataA.data13) > 0 AND dataB.mimetype_id=? AND aggregation_needed=0 AND contact_id IN default_directory"

.field public static final TABLE:Ljava/lang/String; = "data dataA JOIN data dataB ON (dataA.data13=dataB.data13) JOIN raw_contacts ON (dataB.raw_contact_id = raw_contacts._id)"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1955
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "raw_contacts._id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "dataA.data13"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "dataB.data13"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactAggregator$EmailLookupQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
