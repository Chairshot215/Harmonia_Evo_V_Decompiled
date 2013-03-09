.class public Lcom/htc/socialnetwork/Update;
.super Ljava/lang/Object;
.source "Update.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/htc/socialnetwork/Constants;


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.socialnetwork.msg_update"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.socialnetwork.msg_update"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final COUNT:Ljava/lang/String; = "count"

.field public static final CREATE_TABLE_SQL:Ljava/lang/String; = "CREATE TABLE msg_update (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, sid INTEGER NOT NULL, type TEXT NOT NULL, uid INTEGER NOT NULL, count INTEGER, last_check_time INTEGER , UNIQUE( sid , uid , type ));"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id ASC"

.field public static final LASTCHECKTIME:Ljava/lang/String; = "last_check_time"

.field public static final SID:Ljava/lang/String; = "sid"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final UID:Ljava/lang/String; = "uid"

.field public static final UPDATE_PROJECTION:[Ljava/lang/String; = null

.field public static final UPDATE_TABLE:Ljava/lang/String; = "msg_update"


# instance fields
.field private mCount:I

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "uid"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "count"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "last_check_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/socialnetwork/Update;->UPDATE_PROJECTION:[Ljava/lang/String;

    .line 21
    const-string v0, "content://com.htc.socialnetwork.snprovider/msg_updates"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/socialnetwork/Update;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/htc/socialnetwork/Update;->mCount:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/socialnetwork/Update;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 47
    iput p1, p0, Lcom/htc/socialnetwork/Update;->mCount:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/socialnetwork/Update;->mType:Ljava/lang/String;

    return-void
.end method
