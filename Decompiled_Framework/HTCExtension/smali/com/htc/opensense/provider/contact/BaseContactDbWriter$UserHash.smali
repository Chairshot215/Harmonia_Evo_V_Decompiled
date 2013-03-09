.class public Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;
.super Ljava/lang/Object;
.source "BaseContactDbWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/provider/contact/BaseContactDbWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserHash"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.opensense.snprovider"

.field public static final COL_ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final COL_ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field public static final COL_USER_HASH:Ljava/lang/String; = "user_hash"

.field public static final COL_USER_ID:Ljava/lang/String; = "user_id"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.opensense.sn_rawcontact"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATE_TABLE_SQL:Ljava/lang/String; = "CREATE TABLE user_hash (_id INTEGER PRIMARY KEY AUTOINCREMENT, user_id TEXT, account_name TEXT, account_type TEXT,user_hash INTEGER NOT NULL);"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "user_id ASC"

.field public static final FLAG_DELETE:I = 0x3

.field public static final FLAG_INVALID:I = 0x0

.field public static final FLAG_NEW:I = 0x2

.field public static final FLAG_UPDATE:I = 0x1

.field public static final INVALID_HASH:I = -0x1

.field public static final INVALID_RAW_CONTACT_ID:I = -0x1

.field public static final PROJECTIONS:[Ljava/lang/String; = null

.field public static final TABLE_USERHASH:Ljava/lang/String; = "user_hash"

.field public static final _ID:Ljava/lang/String; = "_id"

.field private static final sStringBuffer:Ljava/lang/StringBuffer;


# instance fields
.field public flag:I

.field public hash:I

.field public rawContactId:I

.field public userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "user_hash"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->PROJECTIONS:[Ljava/lang/String;

    const-string v0, "content://com.htc.opensense.snprovider/user_hashs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->sStringBuffer:Ljava/lang/StringBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->flag:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->userId:Ljava/lang/String;

    iput v1, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->hash:I

    iput v1, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->rawContactId:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->flag:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->userId:Ljava/lang/String;

    iput v1, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->hash:I

    iput v1, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->rawContactId:I

    iput p1, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->flag:I

    iput-object p2, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->userId:Ljava/lang/String;

    iput p3, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->hash:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->flag:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->userId:Ljava/lang/String;

    iput v1, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->hash:I

    iput v1, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->rawContactId:I

    iput-object p1, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->userId:Ljava/lang/String;

    iput p2, p0, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->rawContactId:I

    return-void
.end method

.method public static varargs makeHash([Ljava/lang/String;)I
    .locals 8

    const/4 v7, 0x0

    sget-object v5, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->sStringBuffer:Ljava/lang/StringBuffer;

    sget-object v6, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->sStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v5, v7, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    sget-object v5, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->sStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v5, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->sStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    sget-object v5, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->sStringBuffer:Ljava/lang/StringBuffer;

    sget-object v6, Lcom/htc/opensense/provider/contact/BaseContactDbWriter$UserHash;->sStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v5, v7, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    return v1
.end method
