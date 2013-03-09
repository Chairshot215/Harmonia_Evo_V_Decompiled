.class public Lcom/google/wireless/gdata2/calendar/data/Who;
.super Ljava/lang/Object;
.source "Who.java"


# instance fields
.field private email:Ljava/lang/String;

.field private relationship:B

.field private status:B

.field private type:B

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-byte v0, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->relationship:B

    .line 85
    iput-byte v0, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->type:B

    .line 86
    iput-byte v0, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->status:B

    .line 92
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    if-ne p0, p1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v1

    .line 159
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 160
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 163
    check-cast v0, Lcom/google/wireless/gdata2/calendar/data/Who;

    .line 165
    .local v0, who:Lcom/google/wireless/gdata2/calendar/data/Who;
    iget-byte v3, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->relationship:B

    iget-byte v4, v0, Lcom/google/wireless/gdata2/calendar/data/Who;->relationship:B

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 166
    goto :goto_0

    .line 168
    :cond_4
    iget-byte v3, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->status:B

    iget-byte v4, v0, Lcom/google/wireless/gdata2/calendar/data/Who;->status:B

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 169
    goto :goto_0

    .line 171
    :cond_5
    iget-byte v3, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->type:B

    iget-byte v4, v0, Lcom/google/wireless/gdata2/calendar/data/Who;->type:B

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 172
    goto :goto_0

    .line 174
    :cond_6
    iget-object v3, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->email:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->email:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/wireless/gdata2/calendar/data/Who;->email:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    move v1, v2

    .line 175
    goto :goto_0

    .line 174
    :cond_8
    iget-object v3, v0, Lcom/google/wireless/gdata2/calendar/data/Who;->email:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 178
    :cond_9
    iget-object v3, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->value:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->value:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/wireless/gdata2/calendar/data/Who;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 179
    goto :goto_0

    .line 178
    :cond_a
    iget-object v3, v0, Lcom/google/wireless/gdata2/calendar/data/Who;->value:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getRelationship()B
    .locals 1

    .prologue
    .line 111
    iget-byte v0, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->relationship:B

    return v0
.end method

.method public getStatus()B
    .locals 1

    .prologue
    .line 127
    iget-byte v0, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->status:B

    return v0
.end method

.method public getType()B
    .locals 1

    .prologue
    .line 119
    iget-byte v0, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->type:B

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 187
    iget-object v2, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->email:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->email:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 188
    .local v0, result:I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->value:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 189
    mul-int/lit8 v1, v0, 0x1f

    iget-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->relationship:B

    add-int v0, v1, v2

    .line 190
    mul-int/lit8 v1, v0, 0x1f

    iget-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->type:B

    add-int v0, v1, v2

    .line 191
    mul-int/lit8 v1, v0, 0x1f

    iget-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->status:B

    add-int v0, v1, v2

    .line 192
    return v0

    .end local v0           #result:I
    :cond_1
    move v0, v1

    .line 187
    goto :goto_0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->email:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setRelationship(B)V
    .locals 0
    .parameter "relationship"

    .prologue
    .line 115
    iput-byte p1, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->relationship:B

    .line 116
    return-void
.end method

.method public setStatus(B)V
    .locals 0
    .parameter "status"

    .prologue
    .line 131
    iput-byte p1, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->status:B

    .line 132
    return-void
.end method

.method public setType(B)V
    .locals 0
    .parameter "type"

    .prologue
    .line 123
    iput-byte p1, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->type:B

    .line 124
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->value:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 150
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/calendar/data/Who;->toString(Ljava/lang/StringBuffer;)V

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "sb"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->email:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    const-string v0, "EMAIL: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    const-string v0, "VALUE: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    :cond_1
    const-string v0, "RELATIONSHIP: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->relationship:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    const-string v0, "TYPE: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->type:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    const-string v0, "STATUS: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/wireless/gdata2/calendar/data/Who;->status:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    return-void
.end method
