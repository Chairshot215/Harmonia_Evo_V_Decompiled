.class public final Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$SIMContacts;
.super Ljava/lang/Object;
.source "HtcWrapHtcContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$SimContactsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SIMContacts"
.end annotation


# static fields
.field public static final CONTENT_IMPORT_ALL_URI:Landroid/net/Uri; = null

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contacts_sim"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contacts_sim"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final TABLE_NAME:Ljava/lang/String; = "sim_db.simContacts"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 818
    sget-object v0, Landroid/provider/HtcContactsContract$SIMContacts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$SIMContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 838
    sget-object v0, Landroid/provider/HtcContactsContract$SIMContacts;->CONTENT_IMPORT_ALL_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$SIMContacts;->CONTENT_IMPORT_ALL_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 808
    return-void
.end method
