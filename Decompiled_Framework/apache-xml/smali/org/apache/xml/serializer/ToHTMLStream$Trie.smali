.class Lorg/apache/xml/serializer/ToHTMLStream$Trie;
.super Ljava/lang/Object;
.source "ToHTMLStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serializer/ToHTMLStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Trie"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;
    }
.end annotation


# static fields
.field public static final ALPHA_SIZE:I = 0x80


# instance fields
.field final m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

.field private m_charBuffer:[C

.field private final m_lowerCaseOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [C

    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    new-instance v0, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    invoke-direct {v0, p0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;-><init>(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V

    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_lowerCaseOnly:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    iget-object v1, p1, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    iput-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    iget-boolean v1, p1, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_lowerCaseOnly:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_lowerCaseOnly:Z

    invoke-virtual {p1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->getLongestKeyLength()I

    move-result v0

    new-array v1, v0, [C

    iput-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    new-instance v0, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    invoke-direct {v0, p0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;-><init>(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V

    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_lowerCaseOnly:Z

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    const/16 v6, 0x80

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v5, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    array-length v5, v5

    if-ge v5, v2, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-object v4

    :cond_1
    iget-object v3, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-le v6, v0, :cond_0

    iget-object v5, v3, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    aget-object v3, v5, v0

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_1
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ge v0, v6, :cond_0

    iget-object v5, v3, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    aget-object v3, v5, v0

    if-eqz v3, :cond_0

    iget-object v4, v3, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v4, v3, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public get2(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    const/16 v7, 0x80

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v5, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    array-length v5, v5

    if-ge v5, v2, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-object v4

    :cond_1
    iget-object v3, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    packed-switch v2, :pswitch_data_0

    iget-object v5, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    invoke-virtual {p1, v6, v2, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v5, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    aget-char v0, v5, v1

    if-le v7, v0, :cond_0

    iget-object v5, v3, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    aget-object v3, v5, v0

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ge v0, v7, :cond_0

    iget-object v5, v3, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    aget-object v3, v5, v0

    if-eqz v3, :cond_0

    iget-object v4, v3, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v4, v3, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getLongestKeyLength()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    array-length v0, v0

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v6, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    array-length v6, v6

    if-le v1, v6, :cond_0

    new-array v6, v1, [C

    iput-object v6, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    :cond_0
    iget-object v4, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    iget-object v6, v4, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    aget-object v3, v6, v7

    if-eqz v3, :cond_1

    move-object v4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v0, v1, :cond_3

    new-instance v2, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    invoke-direct {v2, p0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;-><init>(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V

    iget-boolean v6, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_lowerCaseOnly:Z

    if-eqz v6, :cond_2

    iget-object v6, v4, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    aput-object v2, v6, v7

    :goto_2
    move-object v4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v6, v4, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    aput-object v2, v6, v7

    iget-object v6, v4, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    aput-object v2, v6, v7

    goto :goto_2

    :cond_3
    iget-object v5, v4, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    iput-object p2, v4, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    return-object v5
.end method
