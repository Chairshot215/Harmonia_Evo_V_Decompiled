.class Lcom/htc/text/HtcHtml$HtmlParser;
.super Ljava/lang/Object;
.source "HtcHtml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/text/HtcHtml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HtmlParser"
.end annotation


# static fields
.field private static final schema:Lorg/ccil/cowan/tagsoup/HTMLSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lorg/ccil/cowan/tagsoup/HTMLSchema;

    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/HTMLSchema;-><init>()V

    sput-object v0, Lcom/htc/text/HtcHtml$HtmlParser;->schema:Lorg/ccil/cowan/tagsoup/HTMLSchema;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/ccil/cowan/tagsoup/HTMLSchema;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/htc/text/HtcHtml$HtmlParser;->schema:Lorg/ccil/cowan/tagsoup/HTMLSchema;

    return-object v0
.end method
