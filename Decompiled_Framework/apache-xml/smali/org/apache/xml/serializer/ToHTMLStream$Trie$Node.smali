.class Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;
.super Ljava/lang/Object;
.source "ToHTMLStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serializer/ToHTMLStream$Trie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Node"
.end annotation


# instance fields
.field m_Value:Ljava/lang/Object;

.field final m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

.field final synthetic this$0:Lorg/apache/xml/serializer/ToHTMLStream$Trie;


# direct methods
.method constructor <init>(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->this$0:Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    return-void
.end method
