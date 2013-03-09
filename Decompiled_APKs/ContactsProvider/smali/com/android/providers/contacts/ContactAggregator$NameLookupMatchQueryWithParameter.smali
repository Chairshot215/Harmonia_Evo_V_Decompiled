.class interface abstract Lcom/android/providers/contacts/ContactAggregator$NameLookupMatchQueryWithParameter;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "NameLookupMatchQueryWithParameter"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final CONTACT_ID:I = 0x0

.field public static final NAME:I = 0x1

.field public static final NAME_TYPE:I = 0x2

.field public static final TABLE:Ljava/lang/String; = "name_lookup JOIN raw_contacts ON (raw_contact_id = raw_contacts._id)"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1845
    const/4 v0, 0x3

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

    sput-object v0, Lcom/android/providers/contacts/ContactAggregator$NameLookupMatchQueryWithParameter;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
