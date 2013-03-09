.class Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;
.super Ljava/lang/Object;
.source "ExpatParser.java"

# interfaces
.implements Lorg/xml/sax/Locator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/ExpatParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpatLocator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/xml/ExpatParser;


# direct methods
.method private constructor <init>(Lorg/apache/harmony/xml/ExpatParser;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/xml/ExpatParser;Lorg/apache/harmony/xml/ExpatParser$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;-><init>(Lorg/apache/harmony/xml/ExpatParser;)V

    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    #calls: Lorg/apache/harmony/xml/ExpatParser;->column()I
    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->access$900(Lorg/apache/harmony/xml/ExpatParser;)I

    move-result v0

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    #calls: Lorg/apache/harmony/xml/ExpatParser;->line()I
    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->access$800(Lorg/apache/harmony/xml/ExpatParser;)I

    move-result v0

    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    #getter for: Lorg/apache/harmony/xml/ExpatParser;->publicId:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->access$600(Lorg/apache/harmony/xml/ExpatParser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    #getter for: Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->access$700(Lorg/apache/harmony/xml/ExpatParser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Locator[publicId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    #getter for: Lorg/apache/harmony/xml/ExpatParser;->publicId:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/harmony/xml/ExpatParser;->access$600(Lorg/apache/harmony/xml/ExpatParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", systemId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    #getter for: Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/harmony/xml/ExpatParser;->access$700(Lorg/apache/harmony/xml/ExpatParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", column: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
