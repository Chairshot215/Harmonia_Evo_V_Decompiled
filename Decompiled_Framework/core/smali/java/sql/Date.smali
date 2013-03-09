.class public Ljava/sql/Date;
.super Ljava/util/Date;
.source "Date.java"


# annotations
.annotation build Ljava/lang/FindBugsSuppressWarnings;
    value = {
        "NM_SAME_SIMPLE_NAME_AS_SUPERCLASS"
    }
.end annotation


# static fields
.field private static final PADDING:Ljava/lang/String; = "0000"

.field private static final serialVersionUID:J = 0x14fa46683f356697L


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljava/util/Date;-><init>(III)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    invoke-static {p1, p2}, Ljava/sql/Date;->normalizeTime(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-void
.end method

.method private format(IILjava/lang/StringBuilder;)V
    .locals 4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p2, v1

    if-lez v1, :cond_0

    const-string v1, "0000"

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static normalizeTime(J)J
    .locals 0

    return-wide p0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/sql/Date;
    .locals 8

    const/16 v6, 0x2d

    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    :cond_0
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    if-eqz v1, :cond_1

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_2

    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v5, Ljava/sql/Date;

    add-int/lit16 v6, v4, -0x76c

    add-int/lit8 v7, v2, -0x1

    invoke-direct {v5, v6, v7, v0}, Ljava/sql/Date;-><init>(III)V

    return-object v5
.end method


# virtual methods
.method public getHours()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getMinutes()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getSeconds()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setHours(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setMinutes(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setSeconds(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setTime(J)V
    .locals 2

    invoke-static {p1, p2}, Ljava/sql/Date;->normalizeTime(J)J

    move-result-wide v0

    invoke-super {p0, v0, v1}, Ljava/util/Date;->setTime(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x2d

    const/4 v3, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/sql/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2, v0}, Ljava/sql/Date;->format(IILjava/lang/StringBuilder;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/sql/Date;->getMonth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1, v3, v0}, Ljava/sql/Date;->format(IILjava/lang/StringBuilder;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/sql/Date;->getDate()I

    move-result v1

    invoke-direct {p0, v1, v3, v0}, Ljava/sql/Date;->format(IILjava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
