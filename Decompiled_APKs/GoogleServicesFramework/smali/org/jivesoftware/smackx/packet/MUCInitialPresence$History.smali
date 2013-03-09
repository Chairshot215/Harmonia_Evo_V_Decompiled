.class public Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;
.super Ljava/lang/Object;
.source "MUCInitialPresence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/MUCInitialPresence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "History"
.end annotation


# instance fields
.field private maxChars:I

.field private maxStanzas:I

.field private seconds:I

.field private since:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput v0, p0, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->maxChars:I

    .line 135
    iput v0, p0, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->maxStanzas:I

    .line 136
    iput v0, p0, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->seconds:I

    return-void
.end method


# virtual methods
.method public getMaxChars()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->maxChars:I

    return v0
.end method

.method public getMaxStanzas()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->maxStanzas:I

    return v0
.end method

.method public getSeconds()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->seconds:I

    return v0
.end method

.method public getSince()Ljava/util/Date;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->since:Ljava/util/Date;

    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 221
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 222
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v2, "<history"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->getMaxChars()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 224
    const-string v2, " maxchars=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->getMaxChars()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->getMaxStanzas()I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 227
    const-string v2, " maxstanzas=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->getMaxStanzas()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->getSeconds()I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 230
    const-string v2, " seconds=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->getSeconds()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->getSince()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 233
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 234
    .local v1, utcFormat:Ljava/text/SimpleDateFormat;
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 235
    const-string v2, " since=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence$History;->getSince()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    .end local v1           #utcFormat:Ljava/text/SimpleDateFormat;
    :cond_3
    const-string v2, "/>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
