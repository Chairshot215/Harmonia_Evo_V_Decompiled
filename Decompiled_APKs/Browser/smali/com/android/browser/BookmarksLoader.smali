.class public Lcom/android/browser/BookmarksLoader;
.super Landroid/content/CursorLoader;
.source "BookmarksLoader.java"


# static fields
.field public static final ARG_ACCOUNT_NAME:Ljava/lang/String; = "acct_name"

.field public static final ARG_ACCOUNT_TYPE:Ljava/lang/String; = "acct_type"

.field public static final COLUMN_INDEX_FAVICON:I = 0x3

.field public static final COLUMN_INDEX_ID:I = 0x0

.field public static final COLUMN_INDEX_IS_FOLDER:I = 0x6

.field public static final COLUMN_INDEX_PARENT:I = 0x8

.field public static final COLUMN_INDEX_SERVER_UNIQUE:I = 0x9

.field public static final COLUMN_INDEX_THUMBNAIL:I = 0x4

.field public static final COLUMN_INDEX_TITLE:I = 0x2

.field public static final COLUMN_INDEX_TOUCH_ICON:I = 0x5

.field public static final COLUMN_INDEX_URL:I = 0x1

.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field mAccountName:Ljava/lang/String;

.field mAccountType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "thumbnail"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "touch_icon"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "folder"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "position"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "parent"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sync3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/BookmarksLoader;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "accountType"
    .parameter "accountName"

    .prologue
    const/4 v4, 0x0

    .line 56
    sget-object v0, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Lcom/android/browser/BookmarksLoader;->addAccount(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/browser/BookmarksLoader;->PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iput-object p2, p0, Lcom/android/browser/BookmarksLoader;->mAccountType:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/android/browser/BookmarksLoader;->mAccountName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static addAccount(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "uri"
    .parameter "accountType"
    .parameter "accountName"

    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "acct_type"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "acct_name"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public setUri(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/browser/BookmarksLoader;->mAccountType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/browser/BookmarksLoader;->mAccountName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/browser/BookmarksLoader;->addAccount(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 65
    return-void
.end method
