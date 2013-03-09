.class Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header$1;
.super Lcom/htc/util/mail/lib/org/apache/james/mime4j/AbstractContentHandler;
.source "Header.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;-><init>(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;

.field final synthetic val$parser:Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeStreamParser;


# direct methods
.method constructor <init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeStreamParser;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header$1;->this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;

    iput-object p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header$1;->val$parser:Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeStreamParser;

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/AbstractContentHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public endHeader()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header$1;->val$parser:Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeStreamParser;

    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeStreamParser;->stop()V

    .line 66
    return-void
.end method

.method public field(Ljava/lang/String;)V
    .locals 2
    .parameter "fieldData"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header$1;->this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;

    invoke-static {p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;->parse(Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Header;->addField(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;)V

    .line 69
    return-void
.end method
