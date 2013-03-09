.class interface abstract Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestionQuery;
.super Ljava/lang/Object;
.source "GlobalCallLogSearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/GlobalCallLogSearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "SearchSuggestionQuery"
.end annotation


# static fields
.field public static final CACHE_NUMBER_LABEL:I = 0x6

.field public static final CACHE_NUMBER_TYPE:I = 0x5

.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final CONTACT_ID:I = 0x7

.field public static final DATE:I = 0x3

.field public static final DISPLAY_NAME:I = 0x8

.field public static final DURATION:I = 0x2

.field public static final EXT_ACCOUNT_TYPE:I = 0xb

.field public static final ID:I = 0x0

.field public static final LOOKUP:I = 0xa

.field public static final NUMBER:I = 0x1

.field public static final PHOTO_ID:I = 0x9

.field public static final TABLE:Ljava/lang/String; = "calls  LEFT JOIN raw_contacts ON (calls.raw_contact_id = raw_contacts._id) LEFT JOIN contacts ON (raw_contacts.contact_id = contacts._id) "

.field public static final TYPE:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "calls._id AS _id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "contacts._id AS contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "contacts.display_name AS display_name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "contacts.photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ext_account_Type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestionQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
