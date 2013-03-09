.class interface abstract Lcom/android/providers/contacts/ContactAggregator$DisplayNameQuery;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "DisplayNameQuery"
.end annotation


# static fields
.field public static final ACCOUNT_TYPE_AND_DATA_SET:I = 0x5

.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final DISPLAY_NAME:I = 0x1

.field public static final DISPLAY_NAME_SOURCE:I = 0x2

.field public static final NAME_VERIFIED:I = 0x3

.field public static final SOURCE_ID:I = 0x4

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3164
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name_source"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name_verified"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sourceid"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "account_type_and_data_set"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactAggregator$DisplayNameQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
