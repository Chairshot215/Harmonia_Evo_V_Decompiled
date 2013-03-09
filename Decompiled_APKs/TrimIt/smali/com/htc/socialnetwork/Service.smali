.class public final Lcom/htc/socialnetwork/Service;
.super Ljava/lang/Object;
.source "Service.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/htc/socialnetwork/Constants;


# static fields
.field public static final APIKEY:Ljava/lang/String; = "api_key"

.field public static final CAPABILITY:Ljava/lang/String; = "capability"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.socialnetwork.service"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.socialnetwork.service"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATE_TABLE_SQL:Ljava/lang/String; = "CREATE TABLE service (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,service_name TEXT NOT NULL,service_class TEXT NOT NULL,api_key TEXT NOT NULL,secret TEXT NOT NULL,session_token TEXT,capability INTEGER  NOT NULL );"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id ASC"

.field public static final SECRET:Ljava/lang/String; = "secret"

.field public static final SERVICECLASS:Ljava/lang/String; = "service_class"

.field public static final SERVICENAME:Ljava/lang/String; = "service_name"

.field public static final SERVICE_PROJECTION:[Ljava/lang/String; = null

.field public static final SERVICE_TABLE:Ljava/lang/String; = "service"

.field public static final SESSIONTOKEN:Ljava/lang/String; = "session_token"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "service_class"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "api_key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "secret"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "session_token"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "capability"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/socialnetwork/Service;->SERVICE_PROJECTION:[Ljava/lang/String;

    .line 37
    const-string v0, "content://com.htc.socialnetwork.snprovider/services"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/socialnetwork/Service;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
