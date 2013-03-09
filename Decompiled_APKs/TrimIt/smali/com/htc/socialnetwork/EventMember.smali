.class public Lcom/htc/socialnetwork/EventMember;
.super Ljava/lang/Object;
.source "EventMember.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/htc/socialnetwork/Constants;


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.socialnetwork.event_member"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.socialnetwork.event_member"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATE_TABLE_SQL:Ljava/lang/String; = "CREATE TABLE event_member (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, sid INTEGER NOT NULL, eid INTEGER NOT NULL, uid INTEGER NOT NULL , UNIQUE( sid , eid , uid ));"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id ASC"

.field public static final EID:Ljava/lang/String; = "eid"

.field public static final EVENT_MEMBER_PROJECTION:[Ljava/lang/String; = null

.field public static final EVENT_MEMBER_TABLE:Ljava/lang/String; = "event_member"

.field public static final SID:Ljava/lang/String; = "sid"

.field public static final UID:Ljava/lang/String; = "uid"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "eid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "uid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/socialnetwork/EventMember;->EVENT_MEMBER_PROJECTION:[Ljava/lang/String;

    .line 17
    const-string v0, "content://com.htc.socialnetwork.snprovider/event_members"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/socialnetwork/EventMember;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
