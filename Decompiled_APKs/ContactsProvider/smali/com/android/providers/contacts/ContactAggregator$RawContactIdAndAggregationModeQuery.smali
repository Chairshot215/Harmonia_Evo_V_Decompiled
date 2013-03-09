.class Lcom/android/providers/contacts/ContactAggregator$RawContactIdAndAggregationModeQuery;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RawContactIdAndAggregationModeQuery"
.end annotation


# static fields
.field public static final AGGREGATION_MODE:I = 0x1

.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final SELECTION:Ljava/lang/String; = "contact_id=?"

.field public static final TABLE:Ljava/lang/String; = "raw_contacts"

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 717
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "aggregation_mode"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactAggregator$RawContactIdAndAggregationModeQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 714
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
