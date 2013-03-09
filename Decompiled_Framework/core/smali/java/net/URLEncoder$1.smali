.class final Ljava/net/URLEncoder$1;
.super Llibcore/net/UriCodec;
.source "URLEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/URLEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Llibcore/net/UriCodec;-><init>()V

    return-void
.end method


# virtual methods
.method protected isRetained(C)Z
    .locals 2

    const-string v0, " .-*_"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
