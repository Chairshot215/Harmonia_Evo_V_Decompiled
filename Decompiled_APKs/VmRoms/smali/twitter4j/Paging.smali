.class public Ltwitter4j/Paging;
.super Ljava/lang/Object;
.source "Paging.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2d99b5ebea26203eL


# instance fields
.field private count:I

.field private maxId:J

.field private page:I

.field private sinceId:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Ltwitter4j/Paging;->page:I

    .line 36
    iput v0, p0, Ltwitter4j/Paging;->count:I

    .line 37
    iput-wide v1, p0, Ltwitter4j/Paging;->sinceId:J

    .line 38
    iput-wide v1, p0, Ltwitter4j/Paging;->maxId:J

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "page"

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Ltwitter4j/Paging;->page:I

    .line 36
    iput v0, p0, Ltwitter4j/Paging;->count:I

    .line 37
    iput-wide v1, p0, Ltwitter4j/Paging;->sinceId:J

    .line 38
    iput-wide v1, p0, Ltwitter4j/Paging;->maxId:J

    .line 45
    invoke-virtual {p0, p1}, Ltwitter4j/Paging;->setPage(I)V

    .line 46
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "page"
    .parameter "count"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Ltwitter4j/Paging;-><init>(I)V

    .line 54
    invoke-virtual {p0, p2}, Ltwitter4j/Paging;->setCount(I)V

    .line 55
    return-void
.end method

.method public constructor <init>(IIJ)V
    .locals 0
    .parameter "page"
    .parameter "count"
    .parameter "sinceId"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ltwitter4j/Paging;-><init>(II)V

    .line 63
    invoke-virtual {p0, p3, p4}, Ltwitter4j/Paging;->setSinceId(J)V

    .line 64
    return-void
.end method

.method public constructor <init>(IIJJ)V
    .locals 0
    .parameter "page"
    .parameter "count"
    .parameter "sinceId"
    .parameter "maxId"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Ltwitter4j/Paging;-><init>(IIJ)V

    .line 68
    invoke-virtual {p0, p5, p6}, Ltwitter4j/Paging;->setMaxId(J)V

    .line 69
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0
    .parameter "page"
    .parameter "sinceId"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Ltwitter4j/Paging;-><init>(I)V

    .line 58
    invoke-virtual {p0, p2, p3}, Ltwitter4j/Paging;->setSinceId(J)V

    .line 59
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .parameter "sinceId"

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Ltwitter4j/Paging;->page:I

    .line 36
    iput v0, p0, Ltwitter4j/Paging;->count:I

    .line 37
    iput-wide v1, p0, Ltwitter4j/Paging;->sinceId:J

    .line 38
    iput-wide v1, p0, Ltwitter4j/Paging;->maxId:J

    .line 49
    invoke-virtual {p0, p1, p2}, Ltwitter4j/Paging;->setSinceId(J)V

    .line 50
    return-void
.end method


# virtual methods
.method public count(I)Ltwitter4j/Paging;
    .locals 0
    .parameter "count"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Ltwitter4j/Paging;->setCount(I)V

    .line 95
    return-object p0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Ltwitter4j/Paging;->count:I

    return v0
.end method

.method public getMaxId()J
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Ltwitter4j/Paging;->maxId:J

    return-wide v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Ltwitter4j/Paging;->page:I

    return v0
.end method

.method public getSinceId()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Ltwitter4j/Paging;->sinceId:J

    return-wide v0
.end method

.method public maxId(J)Ltwitter4j/Paging;
    .locals 0
    .parameter "maxId"

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2}, Ltwitter4j/Paging;->setMaxId(J)V

    .line 139
    return-object p0
.end method

.method public setCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 87
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "count should be positive integer. passed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iput p1, p0, Ltwitter4j/Paging;->count:I

    .line 91
    return-void
.end method

.method public setMaxId(J)V
    .locals 3
    .parameter "maxId"

    .prologue
    .line 131
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "max_id should be positive integer. passed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iput-wide p1, p0, Ltwitter4j/Paging;->maxId:J

    .line 135
    return-void
.end method

.method public setPage(I)V
    .locals 3
    .parameter "page"

    .prologue
    .line 76
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "page should be positive integer. passed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    iput p1, p0, Ltwitter4j/Paging;->page:I

    .line 80
    return-void
.end method

.method public setSinceId(I)V
    .locals 3
    .parameter "sinceId"

    .prologue
    .line 103
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "since_id should be positive integer. passed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    int-to-long v0, p1

    iput-wide v0, p0, Ltwitter4j/Paging;->sinceId:J

    .line 107
    return-void
.end method

.method public setSinceId(J)V
    .locals 3
    .parameter "sinceId"

    .prologue
    .line 115
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "since_id should be positive integer. passed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iput-wide p1, p0, Ltwitter4j/Paging;->sinceId:J

    .line 119
    return-void
.end method

.method public sinceId(I)Ltwitter4j/Paging;
    .locals 0
    .parameter "sinceId"

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Ltwitter4j/Paging;->setSinceId(I)V

    .line 111
    return-object p0
.end method

.method public sinceId(J)Ltwitter4j/Paging;
    .locals 0
    .parameter "sinceId"

    .prologue
    .line 122
    invoke-virtual {p0, p1, p2}, Ltwitter4j/Paging;->setSinceId(J)V

    .line 123
    return-object p0
.end method
