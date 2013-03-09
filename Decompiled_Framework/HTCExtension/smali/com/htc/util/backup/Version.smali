.class public Lcom/htc/util/backup/Version;
.super Ljava/lang/Object;
.source "Version.java"


# instance fields
.field public build:I

.field public major:I

.field public minor:I

.field public revision:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/util/backup/Version;->major:I

    iput v1, p0, Lcom/htc/util/backup/Version;->minor:I

    iput v1, p0, Lcom/htc/util/backup/Version;->revision:I

    iput v1, p0, Lcom/htc/util/backup/Version;->build:I

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/htc/util/backup/Version;
    .locals 4

    new-instance v2, Lcom/htc/util/backup/Version;

    invoke-direct {v2}, Lcom/htc/util/backup/Version;-><init>()V

    const-string v3, "\\."

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/htc/util/backup/Version;->major:I

    goto :goto_1

    :pswitch_1
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/htc/util/backup/Version;->minor:I

    goto :goto_1

    :pswitch_2
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/htc/util/backup/Version;->revision:I

    goto :goto_1

    :pswitch_3
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/htc/util/backup/Version;->build:I

    goto :goto_1

    :cond_0
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public largerThan(Lcom/htc/util/backup/Version;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/util/backup/Version;->major:I

    iget v3, p1, Lcom/htc/util/backup/Version;->major:I

    if-le v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/htc/util/backup/Version;->major:I

    iget v3, p1, Lcom/htc/util/backup/Version;->major:I

    if-ge v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/htc/util/backup/Version;->minor:I

    iget v3, p1, Lcom/htc/util/backup/Version;->minor:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/htc/util/backup/Version;->minor:I

    iget v3, p1, Lcom/htc/util/backup/Version;->minor:I

    if-ge v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/htc/util/backup/Version;->revision:I

    iget v3, p1, Lcom/htc/util/backup/Version;->revision:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/htc/util/backup/Version;->revision:I

    iget v3, p1, Lcom/htc/util/backup/Version;->revision:I

    if-ge v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/htc/util/backup/Version;->build:I

    iget v3, p1, Lcom/htc/util/backup/Version;->build:I

    if-gt v2, v3, :cond_0

    iget v0, p0, Lcom/htc/util/backup/Version;->build:I

    iget v2, p1, Lcom/htc/util/backup/Version;->build:I

    if-ge v0, v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public lessEqualThan(Lcom/htc/util/backup/Version;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/htc/util/backup/Version;->major:I

    iget v3, p1, Lcom/htc/util/backup/Version;->major:I

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/htc/util/backup/Version;->major:I

    iget v3, p1, Lcom/htc/util/backup/Version;->major:I

    if-le v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/htc/util/backup/Version;->minor:I

    iget v3, p1, Lcom/htc/util/backup/Version;->minor:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Lcom/htc/util/backup/Version;->minor:I

    iget v3, p1, Lcom/htc/util/backup/Version;->minor:I

    if-le v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/htc/util/backup/Version;->revision:I

    iget v3, p1, Lcom/htc/util/backup/Version;->revision:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Lcom/htc/util/backup/Version;->revision:I

    iget v3, p1, Lcom/htc/util/backup/Version;->revision:I

    if-le v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/htc/util/backup/Version;->build:I

    iget v3, p1, Lcom/htc/util/backup/Version;->build:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Lcom/htc/util/backup/Version;->build:I

    iget v3, p1, Lcom/htc/util/backup/Version;->build:I

    if-le v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method
