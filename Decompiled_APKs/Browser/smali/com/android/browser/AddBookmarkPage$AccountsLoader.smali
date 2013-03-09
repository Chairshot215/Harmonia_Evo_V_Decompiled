.class Lcom/android/browser/AddBookmarkPage$AccountsLoader;
.super Landroid/content/CursorLoader;
.source "AddBookmarkPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/AddBookmarkPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccountsLoader"
.end annotation


# static fields
.field static final COLUMN_INDEX_ACCOUNT_NAME:I = 0x0

.field static final COLUMN_INDEX_ACCOUNT_TYPE:I = 0x1

.field static final COLUMN_INDEX_ROOT_ID:I = 0x2

.field static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1004
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "root_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/AddBookmarkPage$AccountsLoader;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 1015
    sget-object v2, Landroid/provider/BrowserContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/browser/AddBookmarkPage$AccountsLoader;->PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    return-void
.end method
