.class public abstract Lcom/htc/util/mail/lib/org/apache/james/mime4j/AbstractContentHandler;
.super Ljava/lang/Object;
.source "AbstractContentHandler.java"

# interfaces
.implements Lcom/htc/util/mail/lib/org/apache/james/mime4j/ContentHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public body(Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V
    .locals 0
    .parameter "bd"
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    return-void
.end method

.method public endBodyPart()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public endHeader()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public endMessage()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public endMultipart()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public epilogue(Ljava/io/InputStream;)V
    .locals 0
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    return-void
.end method

.method public field(Ljava/lang/String;)V
    .locals 0
    .parameter "fieldData"

    .prologue
    .line 82
    return-void
.end method

.method public preamble(Ljava/io/InputStream;)V
    .locals 0
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    return-void
.end method

.method public raw(Ljava/io/InputStream;)V
    .locals 0
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    return-void
.end method

.method public startBodyPart()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public startHeader()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public startMessage()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public startMultipart(Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;)V
    .locals 0
    .parameter "bd"

    .prologue
    .line 46
    return-void
.end method
