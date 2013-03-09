.class public final Lcom/htc/provider/ContactsContract$Groups;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Groups"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/provider/ContactsContract$Groups$Thumbnail;,
        Lcom/htc/provider/ContactsContract$Groups$Favorite;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_GROUP_COWORK:Ljava/lang/String; = "Coworkers"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_GROUP_COWORK_DISPLAY_NAME:Ljava/lang/String; = "Coworkers"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_GROUP_COWORK_SYSTEM_ID:Ljava/lang/String; = "Coworkers"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_GROUP_FAMILY:Ljava/lang/String; = "Family"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_GROUP_FAMILY_DISPLAY_NAME:Ljava/lang/String; = "Family"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_GROUP_FAMILY_SYSTEM_ID:Ljava/lang/String; = "Family"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_GROUP_FAVORITE:Ljava/lang/String; = "Favorite_8656150684447252476_6727701920173350445"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_GROUP_FAVORITE_CHECKNAME:Ljava/lang/String; = "Favorite_8656150684447252476_6727701920173350445"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_GROUP_FAVORITE_DISPLAY_NAME:Ljava/lang/String; = "Favorites"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_GROUP_FREQUENT_CONTACT:Ljava/lang/String; = "Frequent Contacts"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_GROUP_FRIEND:Ljava/lang/String; = "Friends"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_GROUP_FRIEND_DISPLAY_NAME:Ljava/lang/String; = "Friends"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_GROUP_FRIEND_SYSTEM_ID:Ljava/lang/String; = "Friends"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_GROUP_HTC_FAVORITE:Ljava/lang/String; = "HTC Favorite"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_GROUP_IMPORTANCE:Ljava/lang/String; = "VIP"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_GROUP_IMPORTANCE_CHECKNAME:Ljava/lang/String; = "VIP"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_GROUP_IMPORTANCE_DISPLAY_NAME:Ljava/lang/String; = "VIP"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_GROUP_NAME:Ljava/lang/String; = "GROUP_NAME"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GROUP_ANDROID_STARRED:Ljava/lang/String; = "Starred in Android"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GROUP_PHOTO:Ljava/lang/String; = "photo"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GROUP_RAW_URI:Landroid/net/Uri; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IS_ATTRIBUTE_SET:Ljava/lang/String; = "is_attribute_set"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IS_HIDE:Ljava/lang/String; = "is_hide"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_SHOWN_FREQUENT_CONTACTS:I = 0x12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORDER_GROUP_COWORKERS:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORDER_GROUP_FAMILY:I = 0x28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORDER_GROUP_FAVORITES:I = -0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORDER_GROUP_FREQUENT_CONTACT:I = -0x1e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORDER_GROUP_FRIENDS:I = 0x1e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORDER_GROUP_IMPORTANCE:I = 0x32
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SORT_ORDER:Ljava/lang/String; = "sortorder"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SYSTEM_GROUP_MYCONTACTS:Ljava/lang/String; = "System Group: My Contacts"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SYSTEM_GROUP_MYCONTACTS_SYSTEM_ID:Ljava/lang/String; = "Contacts"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/htc/provider/HtcContactsContract$Groups;->GROUP_RAW_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/provider/ContactsContract$Groups;->GROUP_RAW_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDefaultGroupOrder(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/htc/provider/HtcContactsContract$Groups;->getDefaultGroupOrder(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getOrCreateGoogleSystemMyContactGroup(Landroid/content/ContentResolver;Landroid/accounts/Account;)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/htc/provider/HtcContactsContract$Groups;->getOrCreateGoogleSystemMyContactGroup(Landroid/content/ContentResolver;Landroid/accounts/Account;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final isDefaultGroupName(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/htc/provider/HtcContactsContract$Groups;->isDefaultGroupName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
