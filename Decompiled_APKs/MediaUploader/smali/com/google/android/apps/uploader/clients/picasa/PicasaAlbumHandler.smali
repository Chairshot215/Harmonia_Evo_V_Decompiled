.class public Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler;
.super Ljava/lang/Object;
.source "PicasaAlbumHandler.java"

# interfaces
.implements Landroid/sax/ElementListener;


# static fields
.field private static final ATOM_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2005/Atom"

.field private static final PICASSA_NAMESPACE:Ljava/lang/String; = "http://schemas.google.com/photos/2007"


# instance fields
.field private final account:Ljava/lang/String;

.field private album:Lcom/google/android/apps/uploader/clients/picasa/Album;

.field private albums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/uploader/clients/picasa/Album;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lorg/xml/sax/ContentHandler;

.field private final parseFeed:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler;->account:Ljava/lang/String;

    .line 43
    iput-boolean p2, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler;->parseFeed:Z

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler;->albums:Ljava/util/List;

    .line 45
    invoke-direct {p0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler;->init()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler;)Lcom/google/android/apps/uploader/clients/picasa/Album;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler;->album:Lcom/google/android/apps/uploader/clients/picasa/Album;

    return-object v0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler;->parseFeed:Z

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Landroid/sax/RootElement;

    const-string v1, "http://www.w3.org/2005/Atom"

    const-string v2, "feed"

    invoke-direct {v0, v1, v2}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "http://www.w3.org/2005/Atom"

    const-string v2, "entry"

    invoke-virtual {v0, v1, v2}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    .line 62
    :goto_0
    invoke-virtual {v1, p0}, Landroid/sax/Element;->setElementListener(Landroid/sax/ElementListener;)V

    .line 64
    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v3, "title"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler$1;

    invoke-direct {v3, p0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler$1;-><init>(Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 71
    const-string v2, "http://schemas.google.com/photos/2007"

    const-string v3, "id"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler$2;

    invoke-direct {v2, p0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler$2;-><init>(Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 78
    invoke-virtual {v0}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler;->handler:Lorg/xml/sax/ContentHandler;

    .line 79
    return-void

    .line 59
    :cond_0
    new-instance v0, Landroid/sax/RootElement;

    const-string v1, "http://www.w3.org/2005/Atom"

    const-string v2, "entry"

    invoke-direct {v0, v1, v2}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 60
    goto :goto_0
.end method


# virtual methods
.method public end()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler;->albums:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler;->album:Lcom/google/android/apps/uploader/clients/picasa/Album;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public getAlbums()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/uploader/clients/picasa/Album;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler;->albums:Ljava/util/List;

    return-object v0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler;->handler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public start(Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter

    .prologue
    .line 82
    new-instance v0, Lcom/google/android/apps/uploader/clients/picasa/Album;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler;->account:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/apps/uploader/clients/picasa/Album;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaAlbumHandler;->album:Lcom/google/android/apps/uploader/clients/picasa/Album;

    .line 83
    return-void
.end method
