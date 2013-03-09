.class public Lcom/android/browser/AddBookmarkPage$BookmarkAccount;
.super Ljava/lang/Object;
.source "AddBookmarkPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/AddBookmarkPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BookmarkAccount"
.end annotation


# instance fields
.field accountName:Ljava/lang/String;

.field accountType:Ljava/lang/String;

.field private mLabel:Ljava/lang/String;

.field public rootFolderId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1027
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;->accountName:Ljava/lang/String;

    .line 1029
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;->accountType:Ljava/lang/String;

    .line 1031
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;->rootFolderId:J

    .line 1033
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;->accountName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;->mLabel:Ljava/lang/String;

    .line 1034
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;->mLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    const v0, 0x7f0c016a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;->mLabel:Ljava/lang/String;

    .line 1037
    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage$BookmarkAccount;->mLabel:Ljava/lang/String;

    return-object v0
.end method
