.class public Lcom/google/wireless/gdata2/calendar/data/When;
.super Ljava/lang/Object;
.source "When.java"


# instance fields
.field private final endTime:Ljava/lang/String;

.field private final startTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/When;->startTime:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/google/wireless/gdata2/calendar/data/When;->endTime:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    if-ne p0, p1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v1

    .line 59
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 60
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 63
    check-cast v0, Lcom/google/wireless/gdata2/calendar/data/When;

    .line 65
    .local v0, when:Lcom/google/wireless/gdata2/calendar/data/When;
    iget-object v3, p0, Lcom/google/wireless/gdata2/calendar/data/When;->endTime:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/wireless/gdata2/calendar/data/When;->endTime:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/wireless/gdata2/calendar/data/When;->endTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    .line 66
    goto :goto_0

    .line 65
    :cond_5
    iget-object v3, v0, Lcom/google/wireless/gdata2/calendar/data/When;->endTime:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 69
    :cond_6
    iget-object v3, p0, Lcom/google/wireless/gdata2/calendar/data/When;->startTime:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/wireless/gdata2/calendar/data/When;->startTime:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/wireless/gdata2/calendar/data/When;->startTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 70
    goto :goto_0

    .line 69
    :cond_7
    iget-object v3, v0, Lcom/google/wireless/gdata2/calendar/data/When;->startTime:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/When;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/When;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v2, p0, Lcom/google/wireless/gdata2/calendar/data/When;->startTime:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/wireless/gdata2/calendar/data/When;->startTime:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 79
    .local v0, result:I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/google/wireless/gdata2/calendar/data/When;->endTime:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/When;->endTime:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 80
    return v0

    .end local v0           #result:I
    :cond_1
    move v0, v1

    .line 78
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 50
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/calendar/data/When;->toString(Ljava/lang/StringBuffer;)V

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "sb"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/When;->startTime:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    const-string v0, "START TIME: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/When;->startTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/When;->endTime:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    const-string v0, "END TIME: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/When;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    :cond_1
    return-void
.end method
