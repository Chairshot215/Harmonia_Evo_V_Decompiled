.class public final Lcom/google/wireless/gdata2/parser/xml/XmlNametable;
.super Ljava/lang/Object;
.source "XmlNametable.java"


# static fields
.field public static ALTERNATE_REL:Ljava/lang/String;

.field public static AUTHOR:Ljava/lang/String;

.field public static CATEGORY:Ljava/lang/String;

.field public static CODE:Ljava/lang/String;

.field public static CONTENT:Ljava/lang/String;

.field public static CONTENT_TYPE:Ljava/lang/String;

.field public static DELETED:Ljava/lang/String;

.field public static EDIT_REL:Ljava/lang/String;

.field public static EMAIL:Ljava/lang/String;

.field public static ENTRY:Ljava/lang/String;

.field public static ERROR:Ljava/lang/String;

.field public static ETAG:Ljava/lang/String;

.field public static FEED:Ljava/lang/String;

.field public static FIELDS:Ljava/lang/String;

.field public static HREF:Ljava/lang/String;

.field public static ID:Ljava/lang/String;

.field public static ITEMS_PER_PAGE:Ljava/lang/String;

.field public static LINK:Ljava/lang/String;

.field public static NAME:Ljava/lang/String;

.field public static OPERATION:Ljava/lang/String;

.field public static PARSED:Ljava/lang/String;

.field public static PARTIAL:Ljava/lang/String;

.field public static PUBLISHED:Ljava/lang/String;

.field public static REASON:Ljava/lang/String;

.field public static REL:Ljava/lang/String;

.field public static SCHEME:Ljava/lang/String;

.field public static SRC:Ljava/lang/String;

.field public static START_INDEX:Ljava/lang/String;

.field public static STATUS:Ljava/lang/String;

.field public static SUCCESS:Ljava/lang/String;

.field public static SUMMARY:Ljava/lang/String;

.field public static TERM:Ljava/lang/String;

.field public static TEXT:Ljava/lang/String;

.field public static TEXTHTML:Ljava/lang/String;

.field public static TITLE:Ljava/lang/String;

.field public static TOTAL_RESULTS:Ljava/lang/String;

.field public static TYPE:Ljava/lang/String;

.field public static UPDATED:Ljava/lang/String;

.field public static UTF8:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "partial"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PARTIAL:Ljava/lang/String;

    .line 14
    const-string v0, "fields"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->FIELDS:Ljava/lang/String;

    .line 15
    const-string v0, "entry"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    .line 16
    const-string v0, "feed"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->FEED:Ljava/lang/String;

    .line 17
    const-string v0, "UTF-8"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->UTF8:Ljava/lang/String;

    .line 18
    const-string v0, "edit"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->EDIT_REL:Ljava/lang/String;

    .line 19
    const-string v0, "alternate"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ALTERNATE_REL:Ljava/lang/String;

    .line 20
    const-string v0, "rel"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->REL:Ljava/lang/String;

    .line 21
    const-string v0, "link"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->LINK:Ljava/lang/String;

    .line 22
    const-string v0, "href"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->HREF:Ljava/lang/String;

    .line 23
    const-string v0, "etag"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ETAG:Ljava/lang/String;

    .line 24
    const-string v0, "type"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TYPE:Ljava/lang/String;

    .line 25
    const-string v0, "src"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SRC:Ljava/lang/String;

    .line 26
    const-string v0, "text"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TEXT:Ljava/lang/String;

    .line 27
    const-string v0, "text/html"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TEXTHTML:Ljava/lang/String;

    .line 28
    const-string v0, "id"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ID:Ljava/lang/String;

    .line 29
    const-string v0, "title"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TITLE:Ljava/lang/String;

    .line 30
    const-string v0, "summary"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SUMMARY:Ljava/lang/String;

    .line 31
    const-string v0, "content"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CONTENT:Ljava/lang/String;

    .line 32
    const-string v0, "author"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->AUTHOR:Ljava/lang/String;

    .line 33
    const-string v0, "email"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->EMAIL:Ljava/lang/String;

    .line 34
    const-string v0, "name"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->NAME:Ljava/lang/String;

    .line 35
    const-string v0, "category"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CATEGORY:Ljava/lang/String;

    .line 36
    const-string v0, "term"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TERM:Ljava/lang/String;

    .line 37
    const-string v0, "scheme"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SCHEME:Ljava/lang/String;

    .line 38
    const-string v0, "published"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PUBLISHED:Ljava/lang/String;

    .line 39
    const-string v0, "updated"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->UPDATED:Ljava/lang/String;

    .line 40
    const-string v0, "operation"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->OPERATION:Ljava/lang/String;

    .line 41
    const-string v0, "totalResults"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TOTAL_RESULTS:Ljava/lang/String;

    .line 42
    const-string v0, "startIndex"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->START_INDEX:Ljava/lang/String;

    .line 43
    const-string v0, "itemsPerPage"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ITEMS_PER_PAGE:Ljava/lang/String;

    .line 44
    const-string v0, "deleted"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->DELETED:Ljava/lang/String;

    .line 45
    const-string v0, "status"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->STATUS:Ljava/lang/String;

    .line 46
    const-string v0, "code"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CODE:Ljava/lang/String;

    .line 47
    const-string v0, "reason"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->REASON:Ljava/lang/String;

    .line 48
    const-string v0, "content-type"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CONTENT_TYPE:Ljava/lang/String;

    .line 49
    const-string v0, "error"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ERROR:Ljava/lang/String;

    .line 50
    const-string v0, "success"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SUCCESS:Ljava/lang/String;

    .line 51
    const-string v0, "parsed"

    sput-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PARSED:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
