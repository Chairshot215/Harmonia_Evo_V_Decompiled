.class public Lcom/htc/vmm/util/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final GMT_FORMAT:Ljava/lang/String; = "EEE MMM dd HH:mm:ss zzz yyyy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .parameter "date"
    .parameter "format"

    .prologue
    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 40
    :goto_0
    return-object v1

    .line 35
    :catch_0
    move-exception v1

    .line 40
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 36
    :catch_1
    move-exception v1

    goto :goto_1

    .line 37
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public static getString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "date"
    .parameter "format"

    .prologue
    .line 43
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 50
    :goto_0
    return-object v1

    .line 46
    :catch_0
    move-exception v1

    .line 50
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 47
    :catch_1
    move-exception v1

    goto :goto_1
.end method
