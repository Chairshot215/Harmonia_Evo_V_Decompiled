.class final Lcom/coremobility/integration/i/n;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field final synthetic a:Lcom/coremobility/integration/i/f;

.field private b:Ljava/lang/String;

.field private c:Lcom/coremobility/integration/i/l;

.field private d:Ljava/lang/StringBuffer;


# direct methods
.method synthetic constructor <init>(Lcom/coremobility/integration/i/f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coremobility/integration/i/n;-><init>(Lcom/coremobility/integration/i/f;B)V

    return-void
.end method

.method private constructor <init>(Lcom/coremobility/integration/i/f;B)V
    .locals 1

    iput-object p1, p0, Lcom/coremobility/integration/i/n;->a:Lcom/coremobility/integration/i/f;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/i/n;->b:Ljava/lang/String;

    new-instance v0, Lcom/coremobility/integration/i/l;

    invoke-direct {v0}, Lcom/coremobility/integration/i/l;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/i/n;->c:Lcom/coremobility/integration/i/l;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/i/n;->d:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public final a()Lcom/coremobility/integration/i/l;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/integration/i/n;->c:Lcom/coremobility/integration/i/l;

    return-object v0
.end method

.method public final characters([CII)V
    .locals 2

    new-instance v0, Ljava/lang/String;

    sub-int v1, p3, p2

    invoke-direct {v0, p1, p2, v1}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lcom/coremobility/integration/i/n;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public final endDocument()V
    .locals 0

    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/coremobility/integration/i/n;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/integration/i/n;->b:Ljava/lang/String;

    const-string v1, "VersionLabel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/integration/i/n;->c:Lcom/coremobility/integration/i/l;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/coremobility/integration/i/n;->d:Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    iput-object v1, v0, Lcom/coremobility/integration/i/l;->a:Ljava/lang/String;

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/i/n;->b:Ljava/lang/String;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/coremobility/integration/i/n;->b:Ljava/lang/String;

    const-string v1, "MandatedVersionLabel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/integration/i/n;->c:Lcom/coremobility/integration/i/l;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/coremobility/integration/i/n;->d:Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    iput-object v1, v0, Lcom/coremobility/integration/i/l;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coremobility/integration/i/n;->b:Ljava/lang/String;

    const-string v1, "VersionText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/integration/i/n;->c:Lcom/coremobility/integration/i/l;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/coremobility/integration/i/n;->d:Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    iput-object v1, v0, Lcom/coremobility/integration/i/l;->d:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/coremobility/integration/i/n;->b:Ljava/lang/String;

    const-string v1, "MandatedText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/integration/i/n;->c:Lcom/coremobility/integration/i/l;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/coremobility/integration/i/n;->d:Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    iput-object v1, v0, Lcom/coremobility/integration/i/l;->e:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/coremobility/integration/i/n;->b:Ljava/lang/String;

    const-string v1, "BuildType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/integration/i/n;->c:Lcom/coremobility/integration/i/l;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/coremobility/integration/i/n;->d:Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    iput-object v1, v0, Lcom/coremobility/integration/i/l;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public final startDocument()V
    .locals 0

    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    iput-object p2, p0, Lcom/coremobility/integration/i/n;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/i/n;->d:Ljava/lang/StringBuffer;

    return-void
.end method
