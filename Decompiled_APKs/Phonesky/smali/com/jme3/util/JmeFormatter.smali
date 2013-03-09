.class public Lcom/jme3/util/JmeFormatter;
.super Ljava/util/logging/Formatter;
.source "JmeFormatter.java"


# instance fields
.field private args:[Ljava/lang/Object;

.field private calendar:Ljava/util/Date;

.field private format:Ljava/text/MessageFormat;

.field private lineSeperator:Ljava/lang/String;

.field private store:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 49
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/JmeFormatter;->calendar:Ljava/util/Date;

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/jme3/util/JmeFormatter;->args:[Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/JmeFormatter;->store:Ljava/lang/StringBuffer;

    .line 56
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/util/JmeFormatter;->lineSeperator:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "{0,time}"

    invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jme3/util/JmeFormatter;->format:Ljava/text/MessageFormat;

    .line 58
    return-void
.end method


# virtual methods
.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 8
    .parameter "record"

    .prologue
    const/4 v7, 0x0

    .line 62
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    .local v2, sb:Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/jme3/util/JmeFormatter;->calendar:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Date;->setTime(J)V

    .line 65
    iget-object v4, p0, Lcom/jme3/util/JmeFormatter;->args:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/jme3/util/JmeFormatter;->calendar:Ljava/util/Date;

    aput-object v5, v4, v7

    .line 66
    iget-object v4, p0, Lcom/jme3/util/JmeFormatter;->store:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 67
    iget-object v4, p0, Lcom/jme3/util/JmeFormatter;->format:Ljava/text/MessageFormat;

    iget-object v5, p0, Lcom/jme3/util/JmeFormatter;->args:[Ljava/lang/Object;

    iget-object v6, p0, Lcom/jme3/util/JmeFormatter;->store:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Ljava/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 69
    const/4 v0, 0x0

    .line 71
    .local v0, clazz:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 75
    :goto_0
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/logging/Level;->getLocalizedName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    iget-object v4, p0, Lcom/jme3/util/JmeFormatter;->store:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    invoke-virtual {p0, p1}, Lcom/jme3/util/JmeFormatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/jme3/util/JmeFormatter;->lineSeperator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 82
    :try_start_1
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 83
    .local v3, sw:Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 84
    .local v1, pw:Ljava/io/PrintWriter;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 85
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 86
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    .end local v1           #pw:Ljava/io/PrintWriter;
    .end local v3           #sw:Ljava/io/StringWriter;
    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 87
    :catch_0
    move-exception v4

    goto :goto_1

    .line 72
    :catch_1
    move-exception v4

    goto :goto_0
.end method
