.class public final Landroid/provider/HtcUnionContact$SimContacts;
.super Ljava/lang/Object;
.source "HtcUnionContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/HtcUnionContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimContacts"
.end annotation


# static fields
.field public static final ADN_FULL_URI:Landroid/net/Uri; = null

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contacts_sim"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contacts_sim"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final EMAIL_ANR_FULL_URI:Landroid/net/Uri; = null

.field public static final ERROR_URI:Landroid/net/Uri; = null

.field public static final ID_COLUMN_INDEX:I = 0x0

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NAME_COLUMN_INDEX:I = 0x1

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final NUMBER_COLUMN_INDEX:I = 0x2

.field public static final PERSON:Ljava/lang/String; = "person"

.field public static final PHONE_ID:Ljava/lang/String; = "phoneId"

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final RECORD_NUMBER:Ljava/lang/String; = "recordNumber"

.field public static final REC_NUM_COLUMN_INDEX:I = 0x3

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "recordNumber"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/HtcUnionContact$SimContacts;->PROJECTION:[Ljava/lang/String;

    const-string v0, "content://icc/phonebook"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcUnionContact$SimContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "AdnFull"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcUnionContact$SimContacts;->ADN_FULL_URI:Landroid/net/Uri;

    const-string v0, "MemoryFull"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcUnionContact$SimContacts;->EMAIL_ANR_FULL_URI:Landroid/net/Uri;

    const-string v0, "Error"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcUnionContact$SimContacts;->ERROR_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
