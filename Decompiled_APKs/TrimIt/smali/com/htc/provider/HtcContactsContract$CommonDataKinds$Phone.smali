.class public final Lcom/htc/provider/HtcContactsContract$CommonDataKinds$Phone;
.super Ljava/lang/Object;
.source "HtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/HtcContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phone"
.end annotation


# static fields
.field public static final CONTENT_LOOKUP_NUMBER_EQUAL_URI:Landroid/net/Uri; = null

.field public static final CONTENT_LOOKUP_URI:Landroid/net/Uri; = null

.field public static final CONTENT_TYPE_EQUALL:Ljava/lang/String; = "vnd.android.cursor.dir/phone_equall"

.field public static final CONTENT_TYPE_LOOKUP:Ljava/lang/String; = "vnd.android.cursor.dir/htc_phone_lookup"

.field public static final DEFAULT_MSG_NUMBER:Ljava/lang/String; = "data7"

.field public static final SIM_LOCATION:Ljava/lang/String; = "data9"

.field public static final SIM_LOCATION_ADN:I = 0x1

.field public static final SIM_LOCATION_ANR1:I = 0x2

.field public static final SIM_LOCATION_ANR2:I = 0x3

.field public static final SOCIALNETWORK_TYPE:Ljava/lang/String; = "data8"

.field public static final TYPE_CALLLOG_HISTORY:I = 0x15

.field public static final TYPE_MMSLOG_HISTORY:I = 0x16


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1989
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "lookup"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$CommonDataKinds$Phone;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 2003
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "lookup_number_equal"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$CommonDataKinds$Phone;->CONTENT_LOOKUP_NUMBER_EQUAL_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
