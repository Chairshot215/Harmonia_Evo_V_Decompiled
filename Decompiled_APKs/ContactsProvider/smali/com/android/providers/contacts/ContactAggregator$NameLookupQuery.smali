.class interface abstract Lcom/android/providers/contacts/ContactAggregator$NameLookupQuery;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "NameLookupQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final NAME_TYPE:I = 0x1

.field public static final NORMALIZED_NAME:I = 0x0

.field public static final SELECTION:Ljava/lang/String; = "raw_contact_id=?"

.field public static final SELECTION_STRUCTURED_NAME_BASED:Ljava/lang/String; = "raw_contact_id=? AND name_type IN (0,1,2)"

.field public static final TABLE:Ljava/lang/String; = "name_lookup"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1664
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "normalized_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactAggregator$NameLookupQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
