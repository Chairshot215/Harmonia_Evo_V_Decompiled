.class public Landroid/webkit/WebResourceResponse;
.super Ljava/lang/Object;
.source "WebResourceResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebResourceResponse$Loader;
    }
.end annotation


# instance fields
.field private mEncoding:Ljava/lang/String;

.field private mInputStream:Ljava/io/InputStream;

.field private mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkit/WebResourceResponse;->mMimeType:Ljava/lang/String;

    iput-object p2, p0, Landroid/webkit/WebResourceResponse;->mEncoding:Ljava/lang/String;

    iput-object p3, p0, Landroid/webkit/WebResourceResponse;->mInputStream:Ljava/io/InputStream;

    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebResourceResponse;)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebResourceResponse;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/WebResourceResponse;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebResourceResponse;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/WebResourceResponse;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebResourceResponse;->mEncoding:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getData()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebResourceResponse;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebResourceResponse;->mEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebResourceResponse;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method loader(Landroid/webkit/LoadListener;)Landroid/webkit/StreamLoader;
    .locals 1

    new-instance v0, Landroid/webkit/WebResourceResponse$Loader;

    invoke-direct {v0, p0, p1}, Landroid/webkit/WebResourceResponse$Loader;-><init>(Landroid/webkit/WebResourceResponse;Landroid/webkit/LoadListener;)V

    return-object v0
.end method

.method public setData(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/WebResourceResponse;->mInputStream:Ljava/io/InputStream;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/WebResourceResponse;->mEncoding:Ljava/lang/String;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/WebResourceResponse;->mMimeType:Ljava/lang/String;

    return-void
.end method
