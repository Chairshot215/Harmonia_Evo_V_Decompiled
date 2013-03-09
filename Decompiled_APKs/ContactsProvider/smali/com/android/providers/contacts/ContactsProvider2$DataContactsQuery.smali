.class interface abstract Lcom/android/providers/contacts/ContactsProvider2$DataContactsQuery;
.super Ljava/lang/Object;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "DataContactsQuery"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:I = 0x2

.field public static final ACCOUNT_TYPE:I = 0x1

.field public static final CONTACT_ID:I = 0x5

.field public static final DATA_ID:I = 0x4

.field public static final DATA_SET:I = 0x3

.field public static final MIMETYPE_ID:I = 0x6

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final RAW_CONTACT_ID:I = 0x0

.field public static final TABLE:Ljava/lang/String; = "data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) JOIN contacts ON (raw_contacts.contact_id = contacts._id)"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 566
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "raw_contacts._id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "raw_contacts.account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "raw_contacts.account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "raw_contacts.data_set"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data._id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "contacts._id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data.mimetype_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2$DataContactsQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
