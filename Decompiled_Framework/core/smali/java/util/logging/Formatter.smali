.class public abstract Ljava/util/logging/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
.end method

.method public formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getResourceBundle()Ljava/util/ResourceBundle;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v3, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getParameters()[Ljava/lang/Object;

    move-result-object v1

    const-string v4, "{0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    if-eqz v1, :cond_1

    array-length v4, v1

    if-lez v4, :cond_1

    :try_start_1
    invoke-static {v2, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :cond_1
    :goto_1
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public getHead(Ljava/util/logging/Handler;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getTail(Ljava/util/logging/Handler;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
