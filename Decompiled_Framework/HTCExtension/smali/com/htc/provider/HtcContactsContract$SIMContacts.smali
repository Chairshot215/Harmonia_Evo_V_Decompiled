.class public final Lcom/htc/provider/HtcContactsContract$SIMContacts;
.super Ljava/lang/Object;
.source "HtcContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/htc/provider/HtcContactsContract$SimContactsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/HtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SIMContacts"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "SIM"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.anddroid.contacts.sim"

.field public static final CONTENT_IMPORT_ALL_URI:Landroid/net/Uri; = null

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contacts_sim"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contacts_sim"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_SOURCE_ID:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final TABLE_NAME:Ljava/lang/String; = "sim_db.simContacts"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "sim"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$SIMContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Lcom/htc/provider/HtcContactsContract$SIMContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "source_id"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$SIMContacts;->CONTENT_URI_SOURCE_ID:Landroid/net/Uri;

    sget-object v0, Lcom/htc/provider/HtcContactsContract$SIMContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "import_all"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$SIMContacts;->CONTENT_IMPORT_ALL_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
