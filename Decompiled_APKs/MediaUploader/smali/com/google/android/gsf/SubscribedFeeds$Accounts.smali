.class public final Lcom/google/android/gsf/SubscribedFeeds$Accounts;
.super Ljava/lang/Object;
.source "SubscribedFeeds.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/google/android/gsf/SubscribedFeeds$AccountColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/SubscribedFeeds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Accounts"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/subscribedfeedaccount"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/subscribedfeedaccounts"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_SYNC_ACCOUNT_TYPE, _SYNC_ACCOUNT ASC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 233
    const-string v0, "content://subscribedfeeds/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/SubscribedFeeds$Accounts;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static query(Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 221
    sget-object v1, Lcom/google/android/gsf/SubscribedFeeds$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_SYNC_ACCOUNT_TYPE, _SYNC_ACCOUNT ASC"

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    sget-object v1, Lcom/google/android/gsf/SubscribedFeeds$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    if-nez p3, :cond_0

    const-string v0, "_SYNC_ACCOUNT_TYPE, _SYNC_ACCOUNT ASC"

    move-object v5, v0

    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v5, p3

    goto :goto_0
.end method
