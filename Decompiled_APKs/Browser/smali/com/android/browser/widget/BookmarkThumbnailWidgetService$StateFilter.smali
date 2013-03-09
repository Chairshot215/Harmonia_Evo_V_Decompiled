.class Lcom/android/browser/widget/BookmarkThumbnailWidgetService$StateFilter;
.super Ljava/lang/Object;
.source "BookmarkThumbnailWidgetService.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/widget/BookmarkThumbnailWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateFilter"
.end annotation


# static fields
.field static final sStatePattern:Ljava/util/regex/Pattern;


# instance fields
.field mWidgetIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    const-string v0, "widgetState-(\\d+)\\.xml"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$StateFilter;->sStatePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>([I)V
    .locals 6
    .parameter "ids"

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$StateFilter;->mWidgetIds:Ljava/util/HashSet;

    .line 143
    move-object v0, p1

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 144
    .local v2, id:I
    iget-object v4, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$StateFilter;->mWidgetIds:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v2           #id:I
    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5
    .parameter "dir"
    .parameter "filename"

    .prologue
    const/4 v2, 0x1

    .line 150
    sget-object v3, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$StateFilter;->sStatePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 151
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 153
    .local v0, id:I
    iget-object v3, p0, Lcom/android/browser/widget/BookmarkThumbnailWidgetService$StateFilter;->mWidgetIds:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 157
    .end local v0           #id:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
