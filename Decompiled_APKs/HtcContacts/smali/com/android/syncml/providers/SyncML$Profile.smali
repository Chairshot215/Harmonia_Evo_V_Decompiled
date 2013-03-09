.class public Lcom/android/syncml/providers/SyncML$Profile;
.super Ljava/lang/Object;
.source "SyncML.java"

# interfaces
.implements Lcom/android/syncml/providers/SyncML$ProfileColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/syncml/providers/SyncML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Profile"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/syncml-profile"

.field public static final CONTENT_JOIN_CONN_URI:Landroid/net/Uri; = null

.field public static final CONTENT_JOIN_SYNCLOG_URI:Landroid/net/Uri; = null

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/syncml-profile"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_ACTIVE_PROFILE:Landroid/net/Uri; = null

.field public static final IDX_CONN_INFO_ID:I = 0x2

.field public static final IDX_ID:I = 0x0

.field public static final IDX_IS_ACTIVE:I = 0x5

.field public static final IDX_NAME:I = 0x1

.field public static final IDX_NEXT_SYNC_TIME:I = 0x6

.field public static final IDX_SERVER_INFO_ID:I = 0x4

.field public static final IDX_SESSION_INFO_ID:I = 0x3

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    const-string v0, "content://syncml/profile"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/syncml/providers/SyncML$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 85
    const-string v0, "content://syncml/profile/conninfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/syncml/providers/SyncML$Profile;->CONTENT_JOIN_CONN_URI:Landroid/net/Uri;

    .line 87
    const-string v0, "content://syncml/profile/synclog"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/syncml/providers/SyncML$Profile;->CONTENT_JOIN_SYNCLOG_URI:Landroid/net/Uri;

    .line 90
    const-string v0, "content://syncml/profile/active"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/syncml/providers/SyncML$Profile;->CONTENT_URI_ACTIVE_PROFILE:Landroid/net/Uri;

    .line 97
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ConnInfoID"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SessionInfoID"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ServerInfoID"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "IsActive"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "NextSyncTime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/syncml/providers/SyncML$Profile;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
