.class public Lcom/android/syncml/providers/SyncML$ConnInfo;
.super Ljava/lang/Object;
.source "SyncML.java"

# interfaces
.implements Lcom/android/syncml/providers/SyncML$ConnInfoColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/syncml/providers/SyncML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnInfo"
.end annotation


# static fields
.field public static final AUTO_SYNC_ACTIVE:I = 0x1

.field public static final AUTO_SYNC_DEACTIVE:I = 0x0

.field public static final CONN_TYPE_HTTP:I = 0x0

.field public static final CONN_TYPE_OBEX:I = 0x1

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/syncml-conninfo"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/syncml-conninfo"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final ENCODING_TYPE_WBXML:I = 0x1

.field public static final ENCODING_TYPE_XML:I = 0x0

.field public static final IDX_ADDRESS:I = 0x3

.field public static final IDX_CONN_TYPE:I = 0x2

.field public static final IDX_ENCODING_TYPE:I = 0xe

.field public static final IDX_ID:I = 0x0

.field public static final IDX_IS_AUTOSYNC_ACTIVE:I = 0x10

.field public static final IDX_IS_SEP_INIT:I = 0x8

.field public static final IDX_MAX_MSG_SIZE:I = 0x9

.field public static final IDX_MAX_OBJ_SIZE:I = 0xa

.field public static final IDX_NETWORK_TYPE:I = 0xf

.field public static final IDX_PASSWORD:I = 0x6

.field public static final IDX_PORT:I = 0x4

.field public static final IDX_ROAMING_TYPE:I = 0xd

.field public static final IDX_SYNC_FREQUENCY:I = 0xc

.field public static final IDX_SYNC_MODE:I = 0xb

.field public static final IDX_SYNC_TYPE:I = 0x7

.field public static final IDX_USERNAME:I = 0x5

.field public static final IDX_VERSION:I = 0x1

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final ROAMING_TYPE_ALWAYS_ALLOW:I = 0x0

.field public static final ROAMING_TYPE_ASK_EACH_TIME:I = 0x1

.field public static final ROAMING_TYPE_NEVER_ALLOW:I = 0x2

.field public static final SYNC_FREQUENCY_DAILY:I = 0x1

.field public static final SYNC_FREQUENCY_MONTHLY:I = 0x3

.field public static final SYNC_FREQUENCY_WEEKLY:I = 0x2

.field public static final SYNC_FREQUENCY_WHENEVER_CHANGE:I = 0x0

.field public static final SYNC_MODE_AUTO:I = 0x0

.field public static final SYNC_MODE_MANUAL:I = 0x1

.field public static final SYNC_TYPE_ONE_WAY_FROM_CLIENT:I = 0xca

.field public static final SYNC_TYPE_ONE_WAY_FROM_SERVER:I = 0xcc

.field public static final SYNC_TYPE_REFRESH_FROM_CLIENT:I = 0xcb

.field public static final SYNC_TYPE_REFRESH_FROM_SERVER:I = 0xcd

.field public static final SYNC_TYPE_SLOW:I = 0xc9

.field public static final SYNC_TYPE_TWO_WAY:I = 0xc8


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 250
    const-string v0, "content://syncml/conninfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/syncml/providers/SyncML$ConnInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 284
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Version"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ConnType"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Address"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Username"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Password"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SyncType"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "IsSepInit"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "MaxMsgSize"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "MaxObjSize"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "SyncMode"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SyncFrequency"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "RoamingType"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "EncodingType"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "NetworkType"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "isAutoSyncActivated"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/syncml/providers/SyncML$ConnInfo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 248
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
