.class public final Landroid/provider/Contacts$SpeedDial;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Contacts$SpeedDialColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpeedDial"
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "speed_dial"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contact_dpeed_dial"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contact_speed_dial"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "location ASC"

.field public static final SPEED_DIAL_COLUMNS_PROJECTION:[Ljava/lang/String; = null

.field public static final SPEED_DIAL_ID_COLUMN:I = 0x0

.field public static final SPEED_DIAL_LOCATION_COLUMN:I = 0x1

.field public static final SPEED_DIAL_NAME_COLUMN:I = 0x4

.field public static final SPEED_DIAL_NUMBER_COLUMN:I = 0x5

.field public static final SPEED_DIAL_PEOPLE_COLUMN:I = 0x3

.field public static final SPEED_DIAL_PHONE_COLUMN:I = 0x2

.field public static final SPEED_DIAL_PHONE_TYPE_COLUMN:I = 0x6

.field public static final SPEED_DIAL_SIM_RECORD_NUMBER_COLUMN:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://contacts/speed_dial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "phone"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "people"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "recordNumber"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Contacts$SpeedDial;->SPEED_DIAL_COLUMNS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
