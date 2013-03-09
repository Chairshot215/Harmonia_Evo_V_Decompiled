.class Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;
.super Ljava/io/Writer;
.source "ToStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serializer/ToStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WritertoStringBuffer"
.end annotation


# instance fields
.field private final m_stringbuf:Ljava/lang/StringBuffer;

.field final synthetic this$0:Lorg/apache/xml/serializer/ToStream;


# direct methods
.method constructor <init>(Lorg/apache/xml/serializer/ToStream;Ljava/lang/StringBuffer;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;->this$0:Lorg/apache/xml/serializer/ToStream;

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    iput-object p2, p0, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;->m_stringbuf:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public write(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;->m_stringbuf:Ljava/lang/StringBuffer;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;->m_stringbuf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public write([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;->m_stringbuf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void
.end method
