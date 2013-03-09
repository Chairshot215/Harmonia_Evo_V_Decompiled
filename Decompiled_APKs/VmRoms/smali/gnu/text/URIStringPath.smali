.class Lgnu/text/URIStringPath;
.super Lgnu/text/URIPath;
.source "URIPath.java"


# instance fields
.field uriString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URI;Ljava/lang/String;)V
    .locals 0
    .parameter "uri"
    .parameter "uriString"

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lgnu/text/URIPath;-><init>(Ljava/net/URI;)V

    .line 396
    iput-object p2, p0, Lgnu/text/URIStringPath;->uriString:Ljava/lang/String;

    .line 397
    return-void
.end method


# virtual methods
.method public toURIString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lgnu/text/URIStringPath;->uriString:Ljava/lang/String;

    return-object v0
.end method
