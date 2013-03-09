.class public final Landroid/provider/HtcContactsContract$IpDial;
.super Ljava/lang/Object;
.source "HtcContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/HtcContactsContract;
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

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final IP_DIAL_ID_COLUMN:I = 0x0

.field public static final IP_DIAL_NUMBER_COLUMN:I = 0x1

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final TABLE_NAME:Ljava/lang/String; = "ip_dial"

.field public static final enableIpDial:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/provider/HtcContactsContract$IpDial;->enableIpDial:Z

    sget-object v0, Landroid/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "ip_dial"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcContactsContract$IpDial;->CONTENT_URI:Landroid/net/Uri;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
