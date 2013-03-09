.class public Lcom/google/wireless/gdata/calendar/data/Who;
.super Ljava/lang/Object;
.source "Who.java"


# static fields
.field public static final RELATIONSHIP_ATTENDEE:B = 0x1t

.field public static final RELATIONSHIP_NONE:B = 0x0t

.field public static final RELATIONSHIP_ORGANIZER:B = 0x2t

.field public static final RELATIONSHIP_PERFORMER:B = 0x3t

.field public static final RELATIONSHIP_SPEAKER:B = 0x4t

.field public static final STATUS_ACCEPTED:B = 0x1t

.field public static final STATUS_DECLINED:B = 0x2t

.field public static final STATUS_INVITED:B = 0x3t

.field public static final STATUS_NONE:B = 0x0t

.field public static final STATUS_TENTATIVE:B = 0x4t

.field public static final TYPE_NONE:B = 0x0t

.field public static final TYPE_OPTIONAL:B = 0x1t

.field public static final TYPE_REQUIRED:B = 0x2t


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
    iput-byte v0, p0, Lcom/google/wireless/gdata/calendar/data/Who;->relationship:B

    .line 85
    iput-byte v0, p0, Lcom/google/wireless/gdata/calendar/data/Who;->type:B

    .line 86
    iput-byte v0, p0, Lcom/google/wireless/gdata/calendar/data/Who;->status:B

    .line 92
    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/Who;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getRelationship()B
    .locals 1

    .prologue
    .line 111
    iget-byte v0, p0, Lcom/google/wireless/gdata/calendar/data/Who;->relationship:B

    return v0
.end method

.method public getStatus()B
    .locals 1

    .prologue
    .line 127
    iget-byte v0, p0, Lcom/google/wireless/gdata/calendar/data/Who;->status:B

    return v0
.end method

.method public getType()B
    .locals 1

    .prologue
    .line 119
    iget-byte v0, p0, Lcom/google/wireless/gdata/calendar/data/Who;->type:B

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/Who;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/wireless/gdata/calendar/data/Who;->email:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setRelationship(B)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-byte p1, p0, Lcom/google/wireless/gdata/calendar/data/Who;->relationship:B

    .line 116
    return-void
.end method

.method public setStatus(B)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-byte p1, p0, Lcom/google/wireless/gdata/calendar/data/Who;->status:B

    .line 132
    return-void
.end method

.method public setType(B)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-byte p1, p0, Lcom/google/wireless/gdata/calendar/data/Who;->type:B

    .line 124
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/wireless/gdata/calendar/data/Who;->value:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 150
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata/calendar/data/Who;->toString(Ljava/lang/StringBuffer;)V

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/Who;->email:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EMAIL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata/calendar/data/Who;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/Who;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VALUE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata/calendar/data/Who;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RELATIONSHIP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/wireless/gdata/calendar/data/Who;->relationship:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TYPE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/wireless/gdata/calendar/data/Who;->type:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/wireless/gdata/calendar/data/Who;->status:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    return-void
.end method
