.class public Lcom/htc/urlshorten/IsgdParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "IsgdParser.java"


# static fields
.field private static final ISGD_URL:Ljava/lang/String; = "http://is.gd/api.php?longurl="

.field private static final TIMEOUT:I = 0xfa0

.field private static sHandler:Landroid/os/Handler;

.field private static sUrl:Ljava/lang/String;

.field private static sWhatError:I

.field private static sWhatSuccess:I

.field private static sWhatTimeout:I


# instance fields
.field private mIsgdInfo:Lcom/htc/urlshorten/IsgdInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Lcom/htc/urlshorten/IsgdInfo;

    invoke-direct {v0}, Lcom/htc/urlshorten/IsgdInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/urlshorten/IsgdParser;->mIsgdInfo:Lcom/htc/urlshorten/IsgdInfo;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/urlshorten/IsgdParser;->sUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/urlshorten/IsgdParser;)Lcom/htc/urlshorten/IsgdInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/urlshorten/IsgdParser;->mIsgdInfo:Lcom/htc/urlshorten/IsgdInfo;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/htc/urlshorten/IsgdParser;->sWhatSuccess:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    sget v0, Lcom/htc/urlshorten/IsgdParser;->sWhatError:I

    return v0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/htc/urlshorten/IsgdParser;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, Lcom/htc/urlshorten/IsgdParser;->sWhatTimeout:I

    return v0
.end method


# virtual methods
.method public shortenUrl(Ljava/lang/String;Landroid/os/Handler;III)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "KENLOG"

    const-string v3, "<IsgdParser.getShorterUrl> strUrl incorrect."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p5, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lcom/htc/urlshorten/IsgdParser;->sHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_1
    sput-object p1, Lcom/htc/urlshorten/IsgdParser;->sUrl:Ljava/lang/String;

    sput-object p2, Lcom/htc/urlshorten/IsgdParser;->sHandler:Landroid/os/Handler;

    sput p3, Lcom/htc/urlshorten/IsgdParser;->sWhatSuccess:I

    sput p4, Lcom/htc/urlshorten/IsgdParser;->sWhatTimeout:I

    sput p5, Lcom/htc/urlshorten/IsgdParser;->sWhatError:I

    new-instance v1, Lcom/htc/urlshorten/IsgdParser$1;

    invoke-direct {v1, p0}, Lcom/htc/urlshorten/IsgdParser$1;-><init>(Lcom/htc/urlshorten/IsgdParser;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
