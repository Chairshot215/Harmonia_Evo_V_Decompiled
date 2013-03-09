.class public Lcom/android/syncml/providers/SyncML$SyncStatus;
.super Ljava/lang/Object;
.source "SyncML.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/syncml/providers/SyncML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncStatus"
.end annotation


# static fields
.field public static final CLIENTDB_URI:Ljava/lang/String; = "ClientDbUri"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/syncml-syncstatus"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/syncml-syncstatus"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final ITEMS_RECEIVED:Ljava/lang/String; = "ItemsReceived"

.field public static final ITEMS_SENT:Ljava/lang/String; = "ItemsSent"

.field public static final PROFILE_ID:Ljava/lang/String; = "ProfileId"

.field public static final STATUS:Ljava/lang/String; = "Status"

.field public static final TOTAL_SENDING:Ljava/lang/String; = "TotalSending"

.field public static final TOTAl_RECEIVING:Ljava/lang/String; = "TotalReceiving"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 598
    const-string v0, "content://syncml/syncstatus"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/syncml/providers/SyncML$SyncStatus;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 596
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
