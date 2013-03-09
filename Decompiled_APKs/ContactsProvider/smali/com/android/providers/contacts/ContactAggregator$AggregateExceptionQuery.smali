.class interface abstract Lcom/android/providers/contacts/ContactAggregator$AggregateExceptionQuery;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AggregateExceptionQuery"
.end annotation


# static fields
.field public static final AGGREGATION_NEEDED_1:I = 0x5

.field public static final AGGREGATION_NEEDED_2:I = 0x8

.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final CONTACT_ID1:I = 0x3

.field public static final CONTACT_ID2:I = 0x6

.field public static final RAW_CONTACT_ACCOUNT1:I = 0x4

.field public static final RAW_CONTACT_ACCOUNT2:I = 0x7

.field public static final RAW_CONTACT_ID1:I = 0x1

.field public static final RAW_CONTACT_ID2:I = 0x2

.field public static final TABLE:Ljava/lang/String; = "agg_exceptions JOIN raw_contacts raw_contacts1  ON (agg_exceptions.raw_contact_id1 = raw_contacts1._id)  JOIN raw_contacts raw_contacts2  ON (agg_exceptions.raw_contact_id2 = raw_contacts2._id) "

.field public static final TYPE:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1372
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "raw_contact_id1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "raw_contact_id2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "raw_contacts1.contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "raw_contacts1.account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "raw_contacts1.aggregation_needed"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "raw_contacts2.contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "raw_contacts2.account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "raw_contacts2.aggregation_needed"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactAggregator$AggregateExceptionQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
