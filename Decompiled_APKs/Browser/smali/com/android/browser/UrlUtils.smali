.class public Lcom/android/browser/UrlUtils;
.super Ljava/lang/Object;
.source "UrlUtils.java"


# static fields
.field static final ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern; = null

.field private static final QUERY_PLACE_HOLDER:Ljava/lang/String; = "%s"

.field private static final QUICKSEARCH_G:Ljava/lang/String; = "http://www.google.com/m?q=%s"

.field private static final STRIP_URL_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "(?i)((?:http|https|file):\\/\\/|(?:inline|data|about|javascript):)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/browser/UrlUtils;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    .line 45
    const-string v0, "^http://(.*?)/?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/browser/UrlUtils;->STRIP_URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static filteredUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "inUrl"

    .prologue
    .line 165
    if-nez p0, :cond_1

    .line 166
    const-string p0, ""

    .line 172
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 168
    .restart local p0
    :cond_1
    const-string v0, "content:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "browser:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    :cond_2
    const-string p0, ""

    goto :goto_0
.end method

.method static fixUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "inUrl"

    .prologue
    .line 139
    const/16 v4, 0x3a

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 140
    .local v2, colon:I
    const/4 v0, 0x1

    .line 141
    .local v0, allLower:Z
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 142
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 143
    .local v1, ch:C
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 152
    .end local v1           #ch:C
    :cond_0
    const-string v4, "http://"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "https://"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 160
    :cond_1
    :goto_1
    return-object p0

    .line 146
    .restart local v1       #ch:C
    :cond_2
    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    and-int/2addr v0, v4

    .line 147
    add-int/lit8 v4, v2, -0x1

    if-ne v3, v4, :cond_3

    if-nez v0, :cond_3

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 141
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 154
    .end local v1           #ch:C
    :cond_4
    const-string v4, "http:"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "https:"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 156
    :cond_5
    const-string v4, "http:/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "https:/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 157
    :cond_6
    const-string v4, "/"

    const-string v5, "//"

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 158
    :cond_7
    const-string v4, ":"

    const-string v5, "://"

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method protected static smartUrlFilter(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "inUri"

    .prologue
    .line 72
    if-eqz p0, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/UrlUtils;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/browser/UrlUtils;->smartUrlFilter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static smartUrlFilter(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .parameter "url"
    .parameter "canBeSearch"

    .prologue
    const/4 v5, 0x1

    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, inUrl:Ljava/lang/String;
    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    move v0, v5

    .line 108
    .local v0, hasSpace:Z
    :goto_0
    sget-object v6, Lcom/android/browser/UrlUtils;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 109
    .local v3, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 111
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, scheme:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, lcScheme:Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    :cond_0
    if-eqz v0, :cond_1

    sget-object v5, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 117
    const-string v5, " "

    const-string v6, "%20"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v5, v1

    .line 130
    .end local v2           #lcScheme:Ljava/lang/String;
    .end local v4           #scheme:Ljava/lang/String;
    :goto_1
    return-object v5

    .line 106
    .end local v0           #hasSpace:Z
    .end local v3           #matcher:Ljava/util/regex/Matcher;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 121
    .restart local v0       #hasSpace:Z
    .restart local v3       #matcher:Ljava/util/regex/Matcher;
    :cond_3
    if-nez v0, :cond_4

    .line 122
    sget-object v5, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 123
    invoke-static {v1}, Landroid/webkit/URLUtil;->guessUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 126
    :cond_4
    if-eqz p1, :cond_5

    .line 127
    const-string v5, "http://www.google.com/m?q=%s"

    const-string v6, "%s"

    invoke-static {v1, v5, v6}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 130
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static stripUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 62
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 67
    .end local p0
    .local v0, m:Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    return-object p0

    .line 63
    .end local v0           #m:Ljava/util/regex/Matcher;
    .restart local p0
    :cond_1
    sget-object v1, Lcom/android/browser/UrlUtils;->STRIP_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 64
    .restart local v0       #m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
