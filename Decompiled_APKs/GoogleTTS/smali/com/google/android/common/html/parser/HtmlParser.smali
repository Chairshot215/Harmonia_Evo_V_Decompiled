.class public Lcom/google/android/common/html/parser/HtmlParser;
.super Ljava/lang/Object;
.source "HtmlParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/html/parser/HtmlParser$1;,
        Lcom/google/android/common/html/parser/HtmlParser$AttributeScanner;,
        Lcom/google/android/common/html/parser/HtmlParser$TagNameScanner;,
        Lcom/google/android/common/html/parser/HtmlParser$ParseStyle;,
        Lcom/google/android/common/html/parser/HtmlParser$State;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field public static final DEFAULT_WHITELIST:Lcom/google/android/common/html/parser/HtmlWhitelist;

.field static NEEDS_QUOTING_ATTRIBUTE_VALUE_REGEX:Ljava/util/regex/Pattern;

.field private static final TRUNCATED_ENTITY:Ljava/util/regex/Pattern;


# instance fields
.field private clipLength:I

.field private final preserveAll:Z

.field private final preserveValidHtml:Z

.field private final unknownAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/common/html/parser/HTML$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private final unknownElements:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/common/html/parser/HTML$Element;",
            ">;"
        }
    .end annotation
.end field

.field private whitelists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/common/html/parser/HtmlWhitelist;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/common/html/parser/HtmlParser;->DEBUG:Z

    .line 54
    invoke-static {}, Lcom/google/android/common/html/parser/HTML4;->getWhitelist()Lcom/google/android/common/html/parser/HtmlWhitelist;

    move-result-object v0

    sput-object v0, Lcom/google/android/common/html/parser/HtmlParser;->DEFAULT_WHITELIST:Lcom/google/android/common/html/parser/HtmlWhitelist;

    .line 162
    const-string v0, "[\"\'&<>=\\s]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/common/html/parser/HtmlParser;->NEEDS_QUOTING_ATTRIBUTE_VALUE_REGEX:Ljava/util/regex/Pattern;

    .line 299
    const-string v0, "\\& \\#? [0-9a-zA-Z]{0,8} $"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/common/html/parser/HtmlParser;->TRUNCATED_ENTITY:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/google/android/common/html/parser/HtmlParser$ParseStyle;->NORMALIZE:Lcom/google/android/common/html/parser/HtmlParser$ParseStyle;

    invoke-direct {p0, v0}, Lcom/google/android/common/html/parser/HtmlParser;-><init>(Lcom/google/android/common/html/parser/HtmlParser$ParseStyle;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/google/android/common/html/parser/HtmlParser$ParseStyle;)V
    .locals 4
    .parameter "parseStyle"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/common/html/parser/HtmlParser;->clipLength:I

    .line 57
    new-array v0, v1, [Lcom/google/android/common/html/parser/HtmlWhitelist;

    sget-object v3, Lcom/google/android/common/html/parser/HtmlParser;->DEFAULT_WHITELIST:Lcom/google/android/common/html/parser/HtmlWhitelist;

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/common/html/parser/HtmlParser;->whitelists:Ljava/util/List;

    .line 580
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/common/html/parser/HtmlParser;->unknownElements:Ljava/util/HashMap;

    .line 586
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/common/html/parser/HtmlParser;->unknownAttributes:Ljava/util/HashMap;

    .line 98
    sget-object v0, Lcom/google/android/common/html/parser/HtmlParser$ParseStyle;->PRESERVE_ALL:Lcom/google/android/common/html/parser/HtmlParser$ParseStyle;

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/common/html/parser/HtmlParser;->preserveAll:Z

    .line 99
    iget-boolean v0, p0, Lcom/google/android/common/html/parser/HtmlParser;->preserveAll:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/common/html/parser/HtmlParser$ParseStyle;->PRESERVE_VALID:Lcom/google/android/common/html/parser/HtmlParser$ParseStyle;

    if-ne p1, v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/google/android/common/html/parser/HtmlParser;->preserveValidHtml:Z

    .line 100
    return-void

    :cond_2
    move v0, v2

    .line 98
    goto :goto_0
.end method
