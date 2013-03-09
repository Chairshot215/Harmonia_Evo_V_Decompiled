.class public Lcom/google/wireless/gdata2/calendar/data/Reminder;
.super Ljava/lang/Object;
.source "Reminder.java"


# instance fields
.field private method:B

.field private minutes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/gdata2/calendar/data/Reminder;->minutes:I

    .line 36
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/google/wireless/gdata2/calendar/data/Reminder;->method:B

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    if-ne p0, p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v1

    .line 98
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 99
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 102
    check-cast v0, Lcom/google/wireless/gdata2/calendar/data/Reminder;

    .line 104
    .local v0, reminder:Lcom/google/wireless/gdata2/calendar/data/Reminder;
    iget-byte v3, p0, Lcom/google/wireless/gdata2/calendar/data/Reminder;->method:B

    iget-byte v4, v0, Lcom/google/wireless/gdata2/calendar/data/Reminder;->method:B

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 105
    goto :goto_0

    .line 108
    :cond_4
    iget v3, p0, Lcom/google/wireless/gdata2/calendar/data/Reminder;->minutes:I

    iget v4, v0, Lcom/google/wireless/gdata2/calendar/data/Reminder;->minutes:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 109
    goto :goto_0
.end method

.method public getMethod()B
    .locals 1

    .prologue
    .line 49
    iget-byte v0, p0, Lcom/google/wireless/gdata2/calendar/data/Reminder;->method:B

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/google/wireless/gdata2/calendar/data/Reminder;->minutes:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 117
    iget v0, p0, Lcom/google/wireless/gdata2/calendar/data/Reminder;->minutes:I

    .line 118
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/Reminder;->method:B

    add-int v0, v1, v2

    .line 119
    return v0
.end method

.method public setMethod(B)V
    .locals 0
    .parameter "method"

    .prologue
    .line 57
    iput-byte p1, p0, Lcom/google/wireless/gdata2/calendar/data/Reminder;->method:B

    .line 58
    return-void
.end method

.method public setMinutes(I)V
    .locals 0
    .parameter "minutes"

    .prologue
    .line 77
    iput p1, p0, Lcom/google/wireless/gdata2/calendar/data/Reminder;->minutes:I

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 89
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/calendar/data/Reminder;->toString(Ljava/lang/StringBuffer;)V

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "sb"

    .prologue
    .line 81
    const-string v0, "REMINDER MINUTES: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/google/wireless/gdata2/calendar/data/Reminder;->minutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 82
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v0, "REMINDER METHOD: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/wireless/gdata2/calendar/data/Reminder;->method:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 84
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    return-void
.end method
