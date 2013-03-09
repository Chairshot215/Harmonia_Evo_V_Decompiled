.class Ljava/net/URI$PartEncoder;
.super Llibcore/net/UriCodec;
.source "URI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/URI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PartEncoder"
.end annotation


# instance fields
.field private final extraLegalCharacters:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Llibcore/net/UriCodec;-><init>()V

    iput-object p1, p0, Ljava/net/URI$PartEncoder;->extraLegalCharacters:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected isRetained(C)Z
    .locals 2

    const/4 v1, -0x1

    const-string v0, "_-!.~\'()*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, ",;:$&+="

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljava/net/URI$PartEncoder;->extraLegalCharacters:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x7f

    if-le p1, v0, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
