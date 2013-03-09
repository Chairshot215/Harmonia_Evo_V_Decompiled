.class public final Lcom/android/htcdialer/HtcIpDialActivity$IpDial;
.super Ljava/lang/Object;
.source "HtcIpDialActivity.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/HtcIpDialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IpDial"
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "ip_dial"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contact_ip_dial"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contact_ip_dial"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "location ASC"

.field public static final IP_DIAL_COLUMNS_PROJECTION:[Ljava/lang/String; = null

.field public static final IP_DIAL_ID_COLUMN:I = 0x0

.field public static final IP_DIAL_NUMBER_COLUMN:I = 0x1

.field public static final IP_DIAL_STATE_COLUMN:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 211
    const-string v0, "content://com.android.contacts/ip_dial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/HtcIpDialActivity$IpDial;->CONTENT_URI:Landroid/net/Uri;

    .line 235
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htcdialer/HtcIpDialActivity$IpDial;->IP_DIAL_COLUMNS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 206
    return-void
.end method
