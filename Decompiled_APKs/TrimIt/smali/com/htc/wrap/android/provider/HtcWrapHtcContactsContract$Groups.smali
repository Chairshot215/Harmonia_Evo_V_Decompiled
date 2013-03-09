.class public final Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$Groups;
.super Ljava/lang/Object;
.source "HtcWrapHtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Groups"
.end annotation


# static fields
.field public static final CONTENT_ITEM_NAME_SYMMARY_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/group_name_summary"

.field public static final CONTENT_NAME_LIST_URI:Landroid/net/Uri; = null

.field public static final CONTENT_NAME_SUMMARY_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_GROUP_FAVORITE:Ljava/lang/String; = "Favorite_8656150684447252476_6727701920173350445"

.field public static final DEFAULT_GROUP_FAVORITE_CHECKNAME:Ljava/lang/String; = "Favorite_8656150684447252476_6727701920173350445"

.field public static final DEFAULT_GROUP_FAVORITE_DISPLAY_NAME:Ljava/lang/String; = "Favorites"

.field public static final DEFAULT_GROUP_HTC_FAVORITE:Ljava/lang/String; = "HTC Favorite"

.field public static final DEFAULT_GROUP_IMPORTANCE:Ljava/lang/String; = "VIP"

.field public static final DEFAULT_GROUP_IMPORTANCE_CHECKNAME:Ljava/lang/String; = "VIP"

.field public static final DEFAULT_GROUP_IMPORTANCE_DISPLAY_NAME:Ljava/lang/String; = "VIP"

.field public static final DELETE_CONTENT_URI:Landroid/net/Uri; = null

.field public static final EXTRA_GROUP_NAME:Ljava/lang/String; = "GROUP_NAME"

.field public static final GROUP_PHOTO:Ljava/lang/String; = "photo"

.field public static final MEMBER_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 866
    sget-object v0, Landroid/provider/HtcContactsContract$Groups;->DELETE_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$Groups;->DELETE_CONTENT_URI:Landroid/net/Uri;

    .line 871
    sget-object v0, Landroid/provider/HtcContactsContract$Groups;->MEMBER_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$Groups;->MEMBER_CONTENT_URI:Landroid/net/Uri;

    .line 876
    sget-object v0, Landroid/provider/HtcContactsContract$Groups;->CONTENT_NAME_SUMMARY_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$Groups;->CONTENT_NAME_SUMMARY_URI:Landroid/net/Uri;

    .line 881
    sget-object v0, Landroid/provider/HtcContactsContract$Groups;->CONTENT_NAME_LIST_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$Groups;->CONTENT_NAME_LIST_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 861
    return-void
.end method

.method public static getViewFavoriteIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 915
    invoke-static {}, Landroid/provider/HtcContactsContract$Groups;->getViewFavoriteIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final getViewGroupIntentByName(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "name"

    .prologue
    .line 925
    invoke-static {p0}, Landroid/provider/HtcContactsContract$Groups;->getViewGroupIntentByName(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final showDisplayGroupName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 906
    invoke-static {p0}, Landroid/provider/HtcContactsContract$Groups;->showDisplayGroupName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
