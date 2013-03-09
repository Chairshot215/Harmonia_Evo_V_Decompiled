.class public final Lcom/htc/wrap/android/provider/HtcWrapContacts$SpeedDial;
.super Ljava/lang/Object;
.source "HtcWrapContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapContacts;
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
    .locals 1

    .prologue
    .line 1098
    sget-object v0, Landroid/provider/Contacts$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapContacts$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    .line 1122
    sget-object v0, Landroid/provider/Contacts$SpeedDial;->SPEED_DIAL_COLUMNS_PROJECTION:[Ljava/lang/String;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapContacts$SpeedDial;->SPEED_DIAL_COLUMNS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1092
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1093
    return-void
.end method
