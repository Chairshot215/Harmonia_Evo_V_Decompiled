.class public Lorg/apache/xml/serializer/ToHTMLStream;
.super Lorg/apache/xml/serializer/ToStream;
.source "ToHTMLStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serializer/ToHTMLStream$Trie;
    }
.end annotation


# static fields
.field private static final m_dummy:Lorg/apache/xml/serializer/ElemDesc;

.field static final m_elementFlags:Lorg/apache/xml/serializer/ToHTMLStream$Trie;


# instance fields
.field private m_htmlInfo:Lorg/apache/xml/serializer/ToHTMLStream$Trie;

.field private final m_htmlcharInfo:Lorg/apache/xml/serializer/CharInfo;

.field private m_inBlockElem:Z

.field protected m_inDTD:Z

.field private m_omitMetaTag:Z

.field private m_specialEscapeURLs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    invoke-direct {v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;-><init>()V

    sput-object v0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elementFlags:Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    sget-object v0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elementFlags:Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    invoke-static {v0}, Lorg/apache/xml/serializer/ToHTMLStream;->initTagReference(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V

    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    sput-object v0, Lorg/apache/xml/serializer/ToHTMLStream;->m_dummy:Lorg/apache/xml/serializer/ElemDesc;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;-><init>()V

    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inDTD:Z

    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inBlockElem:Z

    sget-object v0, Lorg/apache/xml/serializer/CharInfo;->HTML_ENTITIES_RESOURCE:Ljava/lang/String;

    const-string v1, "html"

    invoke-static {v0, v1}, Lorg/apache/xml/serializer/CharInfo;->getCharInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/CharInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_htmlcharInfo:Lorg/apache/xml/serializer/CharInfo;

    iput-boolean v3, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_omitMetaTag:Z

    new-instance v0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    sget-object v1, Lorg/apache/xml/serializer/ToHTMLStream;->m_elementFlags:Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;-><init>(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V

    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_htmlInfo:Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    iput-boolean v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_htmlcharInfo:Lorg/apache/xml/serializer/CharInfo;

    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-direct {v0}, Lorg/apache/xml/serializer/NamespaceMappings;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    return-void
.end method

.method public static final getElemDesc(Ljava/lang/String;)Lorg/apache/xml/serializer/ElemDesc;
    .locals 2

    sget-object v1, Lorg/apache/xml/serializer/ToHTMLStream;->m_elementFlags:Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    invoke-virtual {v1, p0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/xml/serializer/ToHTMLStream;->m_dummy:Lorg/apache/xml/serializer/ElemDesc;

    goto :goto_0
.end method

.method private getElemDesc2(Ljava/lang/String;)Lorg/apache/xml/serializer/ElemDesc;
    .locals 2

    iget-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_htmlInfo:Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    invoke-virtual {v1, p1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get2(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/xml/serializer/ToHTMLStream;->m_dummy:Lorg/apache/xml/serializer/ElemDesc;

    goto :goto_0
.end method

.method private final getOmitMetaTag()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_omitMetaTag:Z

    return v0
.end method

.method private final getSpecialEscapeURLs()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    return v0
.end method

.method static initTagReference(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V
    .locals 9

    const/16 v8, 0x1000

    const/16 v7, 0x38

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const-string v1, "BASEFONT"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v4}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "FRAME"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "FRAMESET"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "NOFRAMES"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ISINDEX"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "APPLET"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/high16 v3, 0x20

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CENTER"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DIR"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MENU"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TT"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "I"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "B"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BIG"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SMALL"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "EM"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x2000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "STRONG"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x2000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DFN"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x2000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CODE"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x2000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SAMP"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x2000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KBD"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x2000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VAR"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x2000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CITE"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x2000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ABBR"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x2000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ACRONYM"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x2000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUP"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x18000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUB"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x18000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SPAN"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x18000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BDO"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x18000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BR"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x1800a

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BODY"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ADDRESS"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DIV"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "A"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x8000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MAP"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x18008

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AREA"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LINK"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x2000a

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IMG"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x218002

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "OBJECT"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x238000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PARAM"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v4}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "HR"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x3a

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "P"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "H1"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x40008

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "H2"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x40008

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "H3"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x40008

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "H4"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x40008

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "H5"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x40008

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "H6"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x40008

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PRE"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x100008

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Q"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x18000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BLOCKQUOTE"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "INS"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DEL"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DL"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DT"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DD"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "OL"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x80008

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "UL"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x80008

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LI"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "FORM"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LABEL"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x4000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "INPUT"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x4802

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SELECT"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x4800

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "OPTGROUP"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "OPTION"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TEXTAREA"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x4800

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "FIELDSET"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LEGEND"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BUTTON"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x4800

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TABLE"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CAPTION"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "THEAD"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TFOOT"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TBODY"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "COLGROUP"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "COL"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TR"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TH"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TD"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "HEAD"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x400008

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TITLE"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BASE"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "META"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x2000a

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "STYLE"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x20108

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SCRIPT"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x38100

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "NOSCRIPT"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "HTML"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x800008

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "FONT"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "S"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "STRIKE"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "U"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "NOBR"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IFRAME"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LAYER"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ILAYER"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "a"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "HREF"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "NAME"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "area"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "HREF"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "NOHREF"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "base"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "HREF"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "button"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "DISABLED"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "blockquote"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "CITE"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "del"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "CITE"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "dir"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "COMPACT"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "div"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "SRC"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "NOWRAP"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "dl"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "COMPACT"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "form"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "ACTION"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "frame"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "SRC"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "LONGDESC"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "NORESIZE"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "head"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "PROFILE"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "hr"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "NOSHADE"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "iframe"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "SRC"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "LONGDESC"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "ilayer"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "SRC"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "img"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "SRC"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "LONGDESC"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "USEMAP"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "ISMAP"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "input"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "SRC"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "USEMAP"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "CHECKED"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "DISABLED"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "ISMAP"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "READONLY"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "ins"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "CITE"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "layer"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "SRC"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "link"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "HREF"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "menu"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "COMPACT"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "object"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "CLASSID"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "CODEBASE"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "DATA"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "ARCHIVE"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "USEMAP"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "DECLARE"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "ol"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "COMPACT"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "optgroup"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "DISABLED"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "option"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "SELECTED"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "DISABLED"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "q"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "CITE"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "script"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "SRC"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "FOR"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "DEFER"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "select"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "DISABLED"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "MULTIPLE"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "table"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "NOWRAP"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "td"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "NOWRAP"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "textarea"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "DISABLED"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "READONLY"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "th"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "NOWRAP"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "tr"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "NOWRAP"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    const-string v1, "ul"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    const-string v1, "COMPACT"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    return-void
.end method

.method private isASCIIDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHHSign(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    const/16 v2, 0x10

    :try_start_0
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    int-to-char v2, v2

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static makeHHString(I)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private outputDocTypeDecl(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v4, 0x1

    iget-boolean v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    if-ne v4, v5, :cond_3

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->getDoctypePublic()Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    :try_start_0
    const-string v4, "<!DOCTYPE "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v4, " PUBLIC \""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    :cond_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_4

    const-string v4, " SYSTEM \""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    :cond_2
    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->outputLineSep()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    return-void

    :cond_4
    :try_start_1
    const-string v4, " \""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method private resetToHTMLStream()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inBlockElem:Z

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inDTD:Z

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_omitMetaTag:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    return-void
.end method


# virtual methods
.method public addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    and-int/lit8 v2, p3, 0x1

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_htmlcharInfo:Lorg/apache/xml/serializer/CharInfo;

    iget-boolean v2, v2, Lorg/apache/xml/serializer/CharInfo;->onlyQuotAmpLtGt:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    :goto_0
    return-void

    :cond_0
    and-int/lit8 v2, p3, 0x2

    if-lez v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2

    :cond_2
    const/16 v2, 0x20

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    and-int/lit8 v2, p3, 0x4

    if-lez v2, :cond_3

    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    invoke-virtual {p0, v1, p2, v2}, Lorg/apache/xml/serializer/ToHTMLStream;->writeAttrURI(Ljava/io/Writer;Ljava/lang/String;Z)V

    :goto_1
    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, p2, v2}, Lorg/apache/xml/serializer/ToHTMLStream;->writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public final cdata([CII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    const-string v1, "SCRIPT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    const-string v1, "STYLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeStartTag()V

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->shouldIndent()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->indent()V

    :cond_2
    const/4 v4, 0x1

    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/serializer/ToHTMLStream;->writeNormalizedChars([CIIZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    new-instance v0, Lorg/xml/sax/SAXException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_OIERROR"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->cdata([CII)V

    goto :goto_0
.end method

.method public final characters([CII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_isRaw:Z

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeStartTag()V

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    const/4 v4, 0x0

    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/serializer/ToHTMLStream;->writeNormalizedChars([CIIZZ)V

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->fireCharEvent([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v6

    new-instance v0, Lorg/xml/sax/SAXException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_OIERROR"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->characters([CII)V

    goto :goto_0
.end method

.method protected closeStartTag()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-super {p0, v2}, Lorg/apache/xml/serializer/ToStream;->fireStartElem(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v2}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getLength()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p0, v2, v1}, Lorg/apache/xml/serializer/ToHTMLStream;->processAttributes(Ljava/io/Writer;I)V

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v2}, Lorg/apache/xml/serializer/AttributesImplSerializer;->clear()V

    :cond_1
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->isCdataSection()Z

    move-result v3

    iput-boolean v3, v2, Lorg/apache/xml/serializer/ElemContext;->m_isCdataSection:Z

    :cond_2
    iget-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    iget-object v2, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    iget-boolean v3, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    invoke-virtual {v2, v3}, Lorg/apache/xml/serializer/ToStream$BoolStack;->push(Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public comment([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inDTD:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeStartTag()V

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    if-eqz v0, :cond_2

    const-string v0, "html"

    invoke-direct {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream;->outputDocTypeDecl(Ljava/lang/String;)V

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->comment([CII)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeCDATA()V

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->startDocumentInternal()V

    goto :goto_1
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endDTD()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inDTD:Z

    return-void
.end method

.method public final endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->flushPending()V

    iget-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->outputLineSep()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->flushWriter()V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v1, :cond_1

    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->fireEndDoc()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public final endElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lorg/apache/xml/serializer/ToHTMLStream;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-boolean v11, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v11, :cond_0

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeCDATA()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v2, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementDesc:Lorg/apache/xml/serializer/ElemDesc;

    invoke-virtual {v2}, Lorg/apache/xml/serializer/ElemDesc;->getFlags()I

    move-result v4

    and-int/lit8 v11, v4, 0x2

    if-eqz v11, :cond_7

    move v3, v9

    :goto_1
    iget-boolean v11, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    if-eqz v11, :cond_4

    and-int/lit8 v11, v4, 0x8

    if-eqz v11, :cond_8

    move v5, v9

    :goto_2
    const/4 v7, 0x0

    iget-boolean v11, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    :cond_2
    :goto_3
    iget-boolean v11, v1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-nez v11, :cond_3

    if-eqz v7, :cond_3

    iget v11, v1, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v11}, Lorg/apache/xml/serializer/ToHTMLStream;->indent(I)V

    :cond_3
    if-nez v5, :cond_b

    :goto_4
    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inBlockElem:Z

    :cond_4
    iget-object v8, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    iget-boolean v9, v1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-nez v9, :cond_c

    const-string v9, "</"

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v8, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v9, 0x3e

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(I)V

    :goto_5
    const/high16 v9, 0x20

    and-int/2addr v9, v4

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    :cond_5
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    iget-object v9, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v9, :cond_6

    invoke-super {p0, p3}, Lorg/apache/xml/serializer/ToStream;->fireEndElem(Ljava/lang/String;)V

    :cond_6
    if-eqz v3, :cond_10

    iget-object v9, v1, Lorg/apache/xml/serializer/ElemContext;->m_prev:Lorg/apache/xml/serializer/ElemContext;

    iput-object v9, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v9, Lorg/xml/sax/SAXException;

    invoke-direct {v9, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v9

    :cond_7
    move v3, v10

    goto :goto_1

    :cond_8
    move v5, v10

    goto :goto_2

    :cond_9
    :try_start_1
    iget-boolean v11, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    if-eqz v11, :cond_2

    iget-boolean v11, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inBlockElem:Z

    if-eqz v11, :cond_a

    if-eqz v5, :cond_2

    :cond_a
    const/4 v11, 0x1

    iput-boolean v11, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    const/4 v7, 0x1

    goto :goto_3

    :cond_b
    move v9, v10

    goto :goto_4

    :cond_c
    iget-object v9, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v9, :cond_d

    invoke-super {p0, p3}, Lorg/apache/xml/serializer/ToStream;->fireStartElem(Ljava/lang/String;)V

    :cond_d
    iget-object v9, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v9}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getLength()I

    move-result v6

    if-lez v6, :cond_e

    iget-object v9, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p0, v9, v6}, Lorg/apache/xml/serializer/ToHTMLStream;->processAttributes(Ljava/io/Writer;I)V

    iget-object v9, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v9}, Lorg/apache/xml/serializer/AttributesImplSerializer;->clear()V

    :cond_e
    if-nez v3, :cond_f

    const-string v9, "></"

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v8, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v9, 0x3e

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(I)V

    goto :goto_5

    :cond_f
    const/16 v9, 0x3e

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(I)V

    goto :goto_5

    :cond_10
    iget-boolean v9, v1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-nez v9, :cond_11

    iget-boolean v9, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    if-eqz v9, :cond_11

    iget-object v9, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v9}, Lorg/apache/xml/serializer/ToStream$BoolStack;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_11

    iget-object v9, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v9}, Lorg/apache/xml/serializer/ToStream$BoolStack;->pop()Z

    :cond_11
    iget-object v9, v1, Lorg/apache/xml/serializer/ElemContext;->m_prev:Lorg/apache/xml/serializer/ElemContext;

    iput-object v9, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public final entityReference(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/xml/serializer/ToHTMLStream;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-object p2, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/xml/serializer/ToHTMLStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method protected processAttribute(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xml/serializer/ElemDesc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p4, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p4, p2, v0}, Lorg/apache/xml/serializer/ElemDesc;->isAttrFlagSet(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "=\""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p4, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p4, p2, v0}, Lorg/apache/xml/serializer/ElemDesc;->isAttrFlagSet(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    invoke-virtual {p0, p1, p3, v0}, Lorg/apache/xml/serializer/ToHTMLStream;->writeAttrURI(Ljava/io/Writer;Ljava/lang/String;Z)V

    :goto_1
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lorg/apache/xml/serializer/ToHTMLStream;->writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public processAttributes(Ljava/io/Writer;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v1, v0}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getQName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v2, v0}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getValue(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_elementDesc:Lorg/apache/xml/serializer/ElemDesc;

    invoke-virtual {p0, p1, v1, v2, v3}, Lorg/apache/xml/serializer/ToHTMLStream;->processAttribute(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xml/serializer/ElemDesc;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v4, 0x1

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->flushPending()V

    const-string v2, "javax.xml.transform.disable-output-escaping"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->startNonEscaping()V

    :goto_0
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v2, :cond_0

    invoke-super {p0, p1, p2}, Lorg/apache/xml/serializer/ToStream;->fireEscapingEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v2, "javax.xml.transform.enable-output-escaping"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->endNonEscaping()V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeStartTag()V

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    :cond_3
    :goto_1
    iget-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    if-ne v4, v2, :cond_4

    const-string v2, "html"

    invoke-direct {p0, v2}, Lorg/apache/xml/serializer/ToHTMLStream;->outputDocTypeDecl(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->shouldIndent()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->indent()V

    :cond_5
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v2, "<?"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    :cond_6
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    if-gtz v2, :cond_7

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->outputLineSep()V

    :cond_7
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2

    :cond_8
    :try_start_1
    iget-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeCDATA()V

    goto :goto_1

    :cond_9
    iget-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->startDocumentInternal()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public reset()Z
    .locals 2

    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->reset()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->resetToHTMLStream()V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setOmitMetaTag(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_omitMetaTag:Z

    return-void
.end method

.method public setOutputFormat(Ljava/util/Properties;)V
    .locals 2

    const-string v1, "{http://xml.apache.org/xalan}use-url-escaping"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "{http://xml.apache.org/xalan}use-url-escaping"

    invoke-static {v1, p1}, Lorg/apache/xml/serializer/OutputPropertyUtils;->getBooleanProperty(Ljava/lang/String;Ljava/util/Properties;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    :cond_0
    const-string v1, "{http://xml.apache.org/xalan}omit-meta-tag"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "{http://xml.apache.org/xalan}omit-meta-tag"

    invoke-static {v1, p1}, Lorg/apache/xml/serializer/OutputPropertyUtils;->getBooleanProperty(Ljava/lang/String;Ljava/util/Properties;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_omitMetaTag:Z

    :cond_1
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/ToStream;->setOutputFormat(Ljava/util/Properties;)V

    return-void
.end method

.method public setSpecialEscapeURLs(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inDTD:Z

    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected startDocumentInternal()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->startDocumentInternal()V

    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream;->setOmitXMLDeclaration(Z)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v9, v1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v9, :cond_5

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeStartTag()V

    const/4 v9, 0x0

    iput-boolean v9, v1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    :cond_0
    :goto_0
    iget-boolean v9, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    if-eqz v9, :cond_3

    move-object v7, p3

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    :cond_1
    move-object v7, p2

    :cond_2
    invoke-direct {p0, v7}, Lorg/apache/xml/serializer/ToHTMLStream;->outputDocTypeDecl(Ljava/lang/String;)V

    :cond_3
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_7

    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xml/serializer/ToStream;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-boolean v9, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v9, :cond_6

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeCDATA()V

    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    goto :goto_0

    :cond_6
    iget-boolean v9, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->startDocumentInternal()V

    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    goto :goto_0

    :cond_7
    :try_start_0
    invoke-direct {p0, p3}, Lorg/apache/xml/serializer/ToHTMLStream;->getElemDesc2(Ljava/lang/String;)Lorg/apache/xml/serializer/ElemDesc;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xml/serializer/ElemDesc;->getFlags()I

    move-result v3

    iget-boolean v9, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    if-eqz v9, :cond_9

    and-int/lit8 v9, v3, 0x8

    if-eqz v9, :cond_c

    const/4 v6, 0x1

    :goto_2
    iget-boolean v9, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    if-eqz v9, :cond_d

    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    :cond_8
    :goto_3
    if-nez v6, :cond_f

    const/4 v9, 0x1

    :goto_4
    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inBlockElem:Z

    :cond_9
    if-eqz p4, :cond_a

    invoke-virtual {p0, p4}, Lorg/apache/xml/serializer/ToHTMLStream;->addAttributes(Lorg/xml/sax/Attributes;)V

    :cond_a
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    iget-object v8, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const/16 v9, 0x3c

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(I)V

    invoke-virtual {v8, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v9, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v9, :cond_b

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->firePseudoAttributes()V

    :cond_b
    and-int/lit8 v9, v3, 0x2

    if-eqz v9, :cond_10

    invoke-virtual {v1}, Lorg/apache/xml/serializer/ElemContext;->push()Lorg/apache/xml/serializer/ElemContext;

    move-result-object v9

    iput-object v9, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v9, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-object p3, v9, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    iget-object v9, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-object v2, v9, Lorg/apache/xml/serializer/ElemContext;->m_elementDesc:Lorg/apache/xml/serializer/ElemDesc;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v9, Lorg/xml/sax/SAXException;

    invoke-direct {v9, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v9

    :cond_c
    const/4 v6, 0x0

    goto :goto_2

    :cond_d
    :try_start_1
    iget-object v9, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    if-eqz v9, :cond_8

    iget-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inBlockElem:Z

    if-eqz v9, :cond_e

    if-eqz v6, :cond_8

    :cond_e
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->indent()V

    goto :goto_3

    :cond_f
    const/4 v9, 0x0

    goto :goto_4

    :cond_10
    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/xml/serializer/ElemContext;->push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/ElemContext;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-object v2, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementDesc:Lorg/apache/xml/serializer/ElemDesc;

    and-int/lit16 v9, v3, 0x100

    if-eqz v9, :cond_12

    const/4 v9, 0x1

    :goto_5
    iput-boolean v9, v1, Lorg/apache/xml/serializer/ElemContext;->m_isRaw:Z

    const/high16 v9, 0x40

    and-int/2addr v9, v3

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeStartTag()V

    const/4 v9, 0x0

    iput-boolean v9, v1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    iget-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_omitMetaTag:Z

    if-nez v9, :cond_4

    iget-boolean v9, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    if-eqz v9, :cond_11

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->indent()V

    :cond_11
    const-string v9, "<META http-equiv=\"Content-Type\" content=\"text/html; charset="

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->getEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/xml/serializer/Encodings;->getMimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v9, "\">"

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_12
    const/4 v9, 0x0

    goto :goto_5
.end method

.method public writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attrBuff:[C

    array-length v0, v0

    if-le v5, v0, :cond_0

    mul-int/lit8 v0, v5, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attrBuff:[C

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attrBuff:[C

    invoke-virtual {p2, v6, v5, v0, v6}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attrBuff:[C

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_a

    aget-char v2, v4, v3

    invoke-virtual {p0, v2}, Lorg/apache/xml/serializer/ToHTMLStream;->escapingNotNeeded(C)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {v0, v2}, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar(I)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v8, v8, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x3c

    if-eq v0, v2, :cond_2

    const/16 v0, 0x3e

    if-ne v0, v2, :cond_3

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    const/16 v0, 0x26

    if-ne v0, v2, :cond_4

    add-int/lit8 v0, v3, 0x1

    if-ge v0, v5, :cond_4

    const/16 v0, 0x7b

    add-int/lit8 v1, v3, 0x1

    aget-char v1, v4, v1

    if-ne v0, v1, :cond_4

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    if-lez v8, :cond_5

    invoke-virtual {p1, v4, v9, v8}, Ljava/io/Writer;->write([CII)V

    const/4 v8, 0x0

    :cond_5
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lorg/apache/xml/serializer/ToHTMLStream;->accumDefaultEntity(Ljava/io/Writer;CI[CIZZ)I

    move-result v11

    if-eq v3, v11, :cond_6

    add-int/lit8 v3, v11, -0x1

    :goto_2
    add-int/lit8 v9, v3, 0x1

    goto :goto_1

    :cond_6
    invoke-static {v2}, Lorg/apache/xml/serializer/Encodings;->isHighUTF16Surrogate(C)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v2, v4, v3, v5}, Lorg/apache/xml/serializer/ToHTMLStream;->writeUTF16Surrogate(C[CII)I

    add-int/lit8 v3, v3, 0x1

    :cond_7
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {v0, v2}, Lorg/apache/xml/serializer/CharInfo;->getOutputStringForChar(C)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {p1, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v2}, Lorg/apache/xml/serializer/ToHTMLStream;->escapingNotNeeded(C)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    :cond_9
    const-string v0, "&#"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    :cond_a
    if-le v8, v7, :cond_d

    if-nez v9, :cond_c

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_b
    :goto_3
    return-void

    :cond_c
    invoke-virtual {p1, v4, v9, v8}, Ljava/io/Writer;->write([CII)V

    goto :goto_3

    :cond_d
    if-ne v8, v7, :cond_b

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_3
.end method

.method public writeAttrURI(Ljava/io/Writer;Ljava/lang/String;Z)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/SerializerBase;->m_attrBuff:[C

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v12, v0, :cond_0

    mul-int/lit8 v24, v12, 0x2

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [C

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/SerializerBase;->m_attrBuff:[C

    :cond_0
    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/SerializerBase;->m_attrBuff:[C

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v12, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/xml/serializer/SerializerBase;->m_attrBuff:[C

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v12, :cond_e

    aget-char v8, v9, v15

    const/16 v24, 0x20

    move/from16 v0, v24

    if-lt v8, v0, :cond_1

    const/16 v24, 0x7e

    move/from16 v0, v24

    if-le v8, v0, :cond_8

    :cond_1
    if-lez v10, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v11, v10}, Ljava/io/Writer;->write([CII)V

    const/4 v10, 0x0

    :cond_2
    if-eqz p3, :cond_6

    const/16 v24, 0x7f

    move/from16 v0, v24

    if-gt v8, v0, :cond_3

    const/16 v24, 0x25

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    invoke-static {v8}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v11, v15, 0x1

    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_3
    const/16 v24, 0x7ff

    move/from16 v0, v24

    if-gt v8, v0, :cond_4

    shr-int/lit8 v24, v8, 0x6

    move/from16 v0, v24

    or-int/lit16 v13, v0, 0xc0

    and-int/lit8 v24, v8, 0x3f

    move/from16 v0, v24

    or-int/lit16 v0, v0, 0x80

    move/from16 v16, v0

    const/16 v24, 0x25

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    invoke-static {v13}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v24, 0x25

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    invoke-static/range {v16 .. v16}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-static {v8}, Lorg/apache/xml/serializer/Encodings;->isHighUTF16Surrogate(C)Z

    move-result v24

    if-eqz v24, :cond_5

    and-int/lit16 v14, v8, 0x3ff

    and-int/lit16 v0, v14, 0x3c0

    move/from16 v24, v0

    shr-int/lit8 v20, v24, 0x6

    add-int/lit8 v19, v20, 0x1

    and-int/lit8 v24, v14, 0x3c

    shr-int/lit8 v23, v24, 0x2

    and-int/lit8 v24, v14, 0x3

    shl-int/lit8 v24, v24, 0x4

    and-int/lit8 v22, v24, 0x30

    add-int/lit8 v15, v15, 0x1

    aget-char v8, v9, v15

    and-int/lit16 v0, v8, 0x3ff

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x3c0

    move/from16 v24, v0

    shr-int/lit8 v24, v24, 0x6

    or-int v22, v22, v24

    and-int/lit8 v21, v17, 0x3f

    shr-int/lit8 v24, v19, 0x2

    move/from16 v0, v24

    or-int/lit16 v4, v0, 0xf0

    and-int/lit8 v24, v19, 0x3

    shl-int/lit8 v24, v24, 0x4

    and-int/lit8 v24, v24, 0x30

    move/from16 v0, v24

    or-int/lit16 v0, v0, 0x80

    move/from16 v24, v0

    or-int v5, v24, v23

    move/from16 v0, v22

    or-int/lit16 v6, v0, 0x80

    move/from16 v0, v21

    or-int/lit16 v7, v0, 0x80

    const/16 v24, 0x25

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    invoke-static {v4}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v24, 0x25

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    invoke-static {v5}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v24, 0x25

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    invoke-static {v6}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v24, 0x25

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    invoke-static {v7}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    shr-int/lit8 v24, v8, 0xc

    move/from16 v0, v24

    or-int/lit16 v13, v0, 0xe0

    and-int/lit16 v0, v8, 0xfc0

    move/from16 v24, v0

    shr-int/lit8 v24, v24, 0x6

    move/from16 v0, v24

    or-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    and-int/lit8 v24, v8, 0x3f

    move/from16 v0, v24

    or-int/lit16 v0, v0, 0x80

    move/from16 v16, v0

    const/16 v24, 0x25

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    invoke-static {v13}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v24, 0x25

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    invoke-static/range {v18 .. v18}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v24, 0x25

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    invoke-static/range {v16 .. v16}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/apache/xml/serializer/ToHTMLStream;->escapingNotNeeded(C)Z

    move-result v24

    if-eqz v24, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    :cond_7
    const-string v24, "&#"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v24, 0x3b

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    :cond_8
    const/16 v24, 0x22

    move/from16 v0, v24

    if-ne v8, v0, :cond_b

    if-lez v10, :cond_9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v11, v10}, Ljava/io/Writer;->write([CII)V

    const/4 v10, 0x0

    :cond_9
    if-eqz p3, :cond_a

    const-string v24, "%22"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v11, v15, 0x1

    goto/16 :goto_2

    :cond_a
    const-string v24, "&quot;"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    const/16 v24, 0x26

    move/from16 v0, v24

    if-ne v8, v0, :cond_d

    if-lez v10, :cond_c

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v11, v10}, Ljava/io/Writer;->write([CII)V

    const/4 v10, 0x0

    :cond_c
    const-string v24, "&amp;"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v11, v15, 0x1

    goto/16 :goto_2

    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    :cond_e
    const/16 v24, 0x1

    move/from16 v0, v24

    if-le v10, v0, :cond_11

    if-nez v11, :cond_10

    invoke-virtual/range {p1 .. p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_f
    :goto_4
    return-void

    :cond_10
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v11, v10}, Ljava/io/Writer;->write([CII)V

    goto :goto_4

    :cond_11
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v10, v0, :cond_f

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_4
.end method
