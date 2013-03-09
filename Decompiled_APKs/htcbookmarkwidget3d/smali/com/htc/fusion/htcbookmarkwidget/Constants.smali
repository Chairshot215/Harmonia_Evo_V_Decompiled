.class public Lcom/htc/fusion/htcbookmarkwidget/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/htcbookmarkwidget/Constants$BookmarkTagColumns;,
        Lcom/htc/fusion/htcbookmarkwidget/Constants$TagsColumns;
    }
.end annotation


# static fields
.field public static final BOOKMARKTAG_PROJECTION:[Ljava/lang/String; = null

.field public static final BOOKMARKTAG_PROJECT_BID_INDEX:I = 0x1

.field public static final BOOKMARKTAG_PROJECT_ID_INDEX:I = 0x0

.field public static final BOOKMARKTAG_PROJECT_TID_INDEX:I = 0x2

.field public static final BOOKMARKTAG_URI:Landroid/net/Uri; = null

.field public static final DEBUG:Z = false

.field public static final EXTRA_INTENT_WIDGET:Ljava/lang/String; = "intent_widget"

.field public static final EXTRA_INTENT_WIDGETSETTING:Ljava/lang/String; = "intent_widget_setting"

.field public static final EXTRA_SELECTED_TAGS:Ljava/lang/String; = "selected_tags"

.field public static final LOGTAG:Ljava/lang/String; = "HtcBookmarkWidget"

.field public static final PROP_SELECTED_TAGS:Ljava/lang/String; = "selected_tags"

.field public static final RAWCONTENT_URI:Landroid/net/Uri; = null

.field public static final TAGNAME_ALL_BOOKMARKS:Ljava/lang/String; = "tag_name_of_all_bookmarks"

.field public static final TAGNAME_BOOKMARKS_WITHOUT_TAGS:Ljava/lang/String; = "tag_name_of_bookmarks_without_tags"

.field public static final TAGNAME_ITEM_ADDBOOKMARK:Ljava/lang/String; = "tag_name_of_add_bookmark_item"

.field public static final TAGS_PROJECTION_CREATED_INDEX:I = 0x2

.field public static final TAGS_PROJECTION_ID_INDEX:I = 0x0

.field public static final TAGS_PROJECTION_NAME_INDEX:I = 0x1

.field public static final TAGS_PROJECTION_POSITION_INDEX:I = 0x4

.field public static final TAGS_PROJECTION_VISITS_INDEX:I = 0x3

.field public static final TAGS_URI:Landroid/net/Uri;

.field public static final TAG_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    const-string v0, "content://browser/combinedbookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/fusion/htcbookmarkwidget/Constants;->RAWCONTENT_URI:Landroid/net/Uri;

    .line 28
    const-string v0, "content://browser/tags"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/fusion/htcbookmarkwidget/Constants;->TAGS_URI:Landroid/net/Uri;

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "created"

    aput-object v1, v0, v5

    const-string v1, "visits"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "position"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/fusion/htcbookmarkwidget/Constants;->TAG_PROJECTION:[Ljava/lang/String;

    .line 50
    const-string v0, "content://browser/bookmark_tag"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/fusion/htcbookmarkwidget/Constants;->BOOKMARKTAG_URI:Landroid/net/Uri;

    .line 61
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "b_id"

    aput-object v1, v0, v4

    const-string v1, "t_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/fusion/htcbookmarkwidget/Constants;->BOOKMARKTAG_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method
