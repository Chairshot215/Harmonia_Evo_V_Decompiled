.class public Lcom/htc/socialnetwork/ProfileUpdate;
.super Ljava/lang/Object;
.source "ProfileUpdate.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/htc/socialnetwork/Constants;


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.socialnetwork.profile_update"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.socialnetwork.profile_update"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATE_TABLE_SQL:Ljava/lang/String; = "CREATE TABLE profile_update (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, sid INTEGER NOT NULL, uid INTEGER NOT NULL, type TEXT NOT NULL, extra TEXT, is_read INTEGER NOT NULL, last_check_time INTEGER NOT NULL  );"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id ASC"

.field public static final EXTRA:Ljava/lang/String; = "extra"

.field public static final ISREAD:Ljava/lang/String; = "is_read"

.field public static final LASTUPDATETIME:Ljava/lang/String; = "last_check_time"

.field public static final PROFILE_UPDATE_PROJECTION:[Ljava/lang/String; = null

.field public static final PROFILE_UPDATE_TABLE:Ljava/lang/String; = "profile_update"

.field public static final SID:Ljava/lang/String; = "sid"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final UID:Ljava/lang/String; = "uid"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "uid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "extra"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "is_read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "last_check_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/socialnetwork/ProfileUpdate;->PROFILE_UPDATE_PROJECTION:[Ljava/lang/String;

    .line 19
    const-string v0, "content://com.htc.socialnetwork.snprovider/profile_updates"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/socialnetwork/ProfileUpdate;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
