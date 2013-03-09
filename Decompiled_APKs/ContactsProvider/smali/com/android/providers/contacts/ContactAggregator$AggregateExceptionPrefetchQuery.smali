.class interface abstract Lcom/android/providers/contacts/ContactAggregator$AggregateExceptionPrefetchQuery;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AggregateExceptionPrefetchQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final RAW_CONTACT_ID1:I = 0x0

.field public static final RAW_CONTACT_ID2:I = 0x1

.field public static final TABLE:Ljava/lang/String; = "agg_exceptions"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1322
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "raw_contact_id1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "raw_contact_id2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactAggregator$AggregateExceptionPrefetchQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
