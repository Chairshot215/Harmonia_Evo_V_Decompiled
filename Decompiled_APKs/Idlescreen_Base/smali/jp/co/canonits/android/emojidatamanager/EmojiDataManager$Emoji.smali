.class public final Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$Emoji;
.super Ljava/lang/Object;
.source "EmojiDataManager.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Emoji"
.end annotation


# static fields
.field public static final CATEGORY_02:Ljava/lang/String; = "category_02"

.field public static final CATEGORY_03:Ljava/lang/String; = "category_03"

.field public static final CATEGORY_04:Ljava/lang/String; = "category_04"

.field public static final CATEGORY_05:Ljava/lang/String; = "category_05"

.field public static final CATEGORY_06:Ljava/lang/String; = "category_06"

.field public static final CATEGORY_07:Ljava/lang/String; = "category_07"

.field public static final CATEGORY_08:Ljava/lang/String; = "category_08"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.canonits.emoji"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.canonits.emoji"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_COPY_DATA:Landroid/net/Uri; = null

.field public static final CONTENT_URI_HISTORY:Landroid/net/Uri; = null

.field public static final CONTENT_URI_TEST:Landroid/net/Uri; = null

.field public static final DATA:Ljava/lang/String; = "_data"

.field public static final DATA_PATH:Ljava/lang/String; = "/files/"

.field private static final DEBUG:Z = false

.field public static final DISPLAY_NAME:Ljava/lang/String; = "_display_name"

.field public static final EMOJI_CATEGORY_LIST:[Ljava/lang/String; = null

.field public static final EMOJI_CATEGORY_LIST_ENG:[Ljava/lang/String; = null

.field public static final EMOJI_PATH:Ljava/lang/String; = "/data/data/jp.co.canonits.android.emojidisplayprovider/files/"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final PACKAGE_PATH:Ljava/lang/String; = "/data/data/jp.co.canonits.android.emojidisplayprovider"

.field public static final READ_INFO:Ljava/lang/String; = "read_info"

.field public static final SELECTED_DATE:Ljava/lang/String; = "selected_date"

.field private static final TAG:Ljava/lang/String; = "EmojiDataManager"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    const-string v0, "content://jp.co.canonits.android.emojidisplayprovider.emojidatamanager/emoji"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$Emoji;->CONTENT_URI:Landroid/net/Uri;

    .line 59
    const-string v0, "content://jp.co.canonits.android.emojidisplayprovider.emojidatamanager/emoji_history"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$Emoji;->CONTENT_URI_HISTORY:Landroid/net/Uri;

    .line 60
    const-string v0, "content://jp.co.canonits.android.emojidisplayprovider.emojidatamanager/copy_data"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$Emoji;->CONTENT_URI_COPY_DATA:Landroid/net/Uri;

    .line 61
    const-string v0, "content://jp.co.canonits.android.emojidisplayprovider.emojidatamanager/test"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$Emoji;->CONTENT_URI_TEST:Landroid/net/Uri;

    .line 101
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 102
    const-string v1, "\u5c65\u6b74"

    aput-object v1, v0, v3

    .line 103
    const-string v1, "\u9854\u30fb\u8868\u60c5"

    aput-object v1, v0, v4

    .line 104
    const-string v1, "\u6c17\u6301\u3061\u30fb\u304b\u3089\u3060"

    aput-object v1, v0, v5

    .line 105
    const-string v1, "\u751f\u304d\u7269\u30fb\u661f\u5ea7"

    aput-object v1, v0, v6

    .line 106
    const-string v1, "\u98df\u3079\u7269\u30fb\u98f2\u307f\u7269"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 107
    const-string v2, "\u81ea\u7136\u30fb\u5b63\u7bc0"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 108
    const-string v2, "\u30d5\u30a1\u30c3\u30b7\u30e7\u30f3\u30fb\u904a\u3073"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 109
    const-string v2, "\u4e57\u308a\u7269\u30fb\u5efa\u7269\u30fb\u5730\u56f3"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 110
    const-string v2, "\u9053\u5177"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 111
    const-string v2, "\u8a18\u53f7"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 112
    const-string v2, "\u4ed6\u793e\u5909\u63db\u53ef\u80fd"

    aput-object v2, v0, v1

    .line 101
    sput-object v0, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$Emoji;->EMOJI_CATEGORY_LIST:[Ljava/lang/String;

    .line 114
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 115
    const-string v1, "History"

    aput-object v1, v0, v3

    .line 116
    const-string v1, "Face"

    aput-object v1, v0, v4

    .line 117
    const-string v1, "Mood/Body"

    aput-object v1, v0, v5

    .line 118
    const-string v1, "Critter/Star"

    aput-object v1, v0, v6

    .line 119
    const-string v1, "Food/Drink"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 120
    const-string v2, "Nat./Season"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 121
    const-string v2, "Fashion/Play"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 122
    const-string v2, "Ride/Bldg./Map"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 123
    const-string v2, "Tool"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 124
    const-string v2, "Symbol"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 125
    const-string v2, "Interchangeability"

    aput-object v2, v0, v1

    .line 114
    sput-object v0, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$Emoji;->EMOJI_CATEGORY_LIST_ENG:[Ljava/lang/String;

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method
