.class interface abstract Lcom/android/providers/contacts/ContactsProvider2$LookupByRawContactIdQuery;
.super Ljava/lang/Object;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "LookupByRawContactIdQuery"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:I = 0x2

.field public static final ACCOUNT_TYPE_AND_DATA_SET:I = 0x1

.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final CONTACT_ID:I = 0x0

.field public static final ID:I = 0x3

.field public static final TABLE:Ljava/lang/String; = "view_raw_contacts"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8117
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type_and_data_set"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2$LookupByRawContactIdQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
