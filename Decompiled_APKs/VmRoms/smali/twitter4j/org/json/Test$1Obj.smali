.class Ltwitter4j/org/json/Test$1Obj;
.super Ljava/lang/Object;
.source "Test.java"

# interfaces
.implements Ltwitter4j/org/json/JSONString;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/org/json/Test;->main([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Obj"
.end annotation


# instance fields
.field public aBoolean:Z

.field public aNumber:D

.field public aString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;DZ)V
    .locals 0
    .parameter "string"
    .parameter "n"
    .parameter "b"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Ltwitter4j/org/json/Test$1Obj;->aString:Ljava/lang/String;

    .line 38
    iput-wide p2, p0, Ltwitter4j/org/json/Test$1Obj;->aNumber:D

    .line 39
    iput-boolean p4, p0, Ltwitter4j/org/json/Test$1Obj;->aBoolean:Z

    .line 40
    return-void
.end method


# virtual methods
.method public getBENT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "All uppercase key"

    return-object v0
.end method

.method public getNumber()D
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Ltwitter4j/org/json/Test$1Obj;->aNumber:D

    return-wide v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ltwitter4j/org/json/Test$1Obj;->aString:Ljava/lang/String;

    return-object v0
.end method

.method public getX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "x"

    return-object v0
.end method

.method public isBoolean()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Ltwitter4j/org/json/Test$1Obj;->aBoolean:Z

    return v0
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/org/json/Test$1Obj;->aString:Ljava/lang/String;

    invoke-static {v1}, Ltwitter4j/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/org/json/Test$1Obj;->aNumber:D

    invoke-static {v1, v2}, Ltwitter4j/org/json/JSONObject;->doubleToString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/org/json/Test$1Obj;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ltwitter4j/org/json/Test$1Obj;->getNumber()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ltwitter4j/org/json/Test$1Obj;->isBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ltwitter4j/org/json/Test$1Obj;->getBENT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ltwitter4j/org/json/Test$1Obj;->getX()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
