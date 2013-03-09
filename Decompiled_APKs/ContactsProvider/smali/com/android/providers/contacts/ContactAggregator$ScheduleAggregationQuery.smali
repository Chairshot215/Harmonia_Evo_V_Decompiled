.class interface abstract Lcom/android/providers/contacts/ContactAggregator$ScheduleAggregationQuery;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ScheduleAggregationQuery"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:I = 0x3

.field public static final ACCOUNT_TYPE:I = 0x2

.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final CONTACT_ID:I = 0x1

.field public static final DATA_SET:I = 0x4

.field public static final SELECTION:Ljava/lang/String; = "aggregation_needed=1 AND aggregation_mode=0 AND contact_id NOT NULL"

.field public static final TABLE:Ljava/lang/String; = "raw_contacts"

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3647
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data_set"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactAggregator$ScheduleAggregationQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
