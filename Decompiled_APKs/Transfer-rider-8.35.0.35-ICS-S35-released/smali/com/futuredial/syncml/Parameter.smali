.class public Lcom/futuredial/syncml/Parameter;
.super Ljava/lang/Object;
.source "Parameter.java"


# instance fields
.field protected appDBName:Ljava/lang/String;

.field protected appServerName:Ljava/lang/String;

.field protected appStatus:I

.field protected auth:Ljava/lang/String;

.field protected contentType:Ljava/lang/String;

.field protected curModel:I

.field protected isSNE:Ljava/lang/String;

.field protected maxMessageSize:I

.field protected maxObjectSize:I

.field protected messageID:I

.field protected parameterHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected phoneDBName:Ljava/lang/String;

.field protected phoneServerName:Ljava/lang/String;

.field protected phoneStatus:I

.field protected requestUrl:Ljava/lang/String;

.field protected sessionID:Ljava/lang/String;

.field protected supportMaxMessageSize:Z

.field protected supportMaxObjectSize:Z

.field protected supportMoreData:Z

.field protected supportNumberOfChange:Z

.field protected supportUTC:Z

.field protected syncMLVersion:I

.field protected verDTD:Ljava/lang/String;

.field protected verProto:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const v3, 0xffff

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v1, p0, Lcom/futuredial/syncml/Parameter;->curModel:I

    .line 84
    iput-boolean v1, p0, Lcom/futuredial/syncml/Parameter;->supportMaxObjectSize:Z

    .line 85
    iput-boolean v1, p0, Lcom/futuredial/syncml/Parameter;->supportMaxMessageSize:Z

    .line 86
    iput-boolean v2, p0, Lcom/futuredial/syncml/Parameter;->supportUTC:Z

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/syncml/Parameter;->verDTD:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/syncml/Parameter;->verProto:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/syncml/Parameter;->contentType:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/syncml/Parameter;->appDBName:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/syncml/Parameter;->phoneDBName:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/syncml/Parameter;->appServerName:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/syncml/Parameter;->phoneServerName:Ljava/lang/String;

    .line 95
    iput v3, p0, Lcom/futuredial/syncml/Parameter;->maxMessageSize:I

    .line 96
    iput v3, p0, Lcom/futuredial/syncml/Parameter;->maxObjectSize:I

    .line 97
    iput-boolean v2, p0, Lcom/futuredial/syncml/Parameter;->supportNumberOfChange:Z

    .line 98
    iput-boolean v2, p0, Lcom/futuredial/syncml/Parameter;->supportMoreData:Z

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/syncml/Parameter;->sessionID:Ljava/lang/String;

    .line 101
    iput v1, p0, Lcom/futuredial/syncml/Parameter;->messageID:I

    .line 102
    iput v1, p0, Lcom/futuredial/syncml/Parameter;->syncMLVersion:I

    .line 103
    iput v1, p0, Lcom/futuredial/syncml/Parameter;->appStatus:I

    .line 104
    iput v1, p0, Lcom/futuredial/syncml/Parameter;->phoneStatus:I

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/futuredial/syncml/Parameter;->parameterHashMap:Ljava/util/HashMap;

    .line 106
    return-void
.end method


# virtual methods
.method public getAppDBName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/futuredial/syncml/Parameter;->appDBName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppServerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/futuredial/syncml/Parameter;->appServerName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppStatus()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/futuredial/syncml/Parameter;->appStatus:I

    return v0
.end method

.method public getAuth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/futuredial/syncml/Parameter;->auth:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/futuredial/syncml/Parameter;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCurModel()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/futuredial/syncml/Parameter;->curModel:I

    return v0
.end method

.method public getIsSNE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/futuredial/syncml/Parameter;->isSNE:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxMessageSize()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/futuredial/syncml/Parameter;->maxMessageSize:I

    return v0
.end method

.method public getMaxObjectSize()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/futuredial/syncml/Parameter;->maxObjectSize:I

    return v0
.end method

.method public getMessageID()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/futuredial/syncml/Parameter;->messageID:I

    return v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/futuredial/syncml/Parameter;->parameterHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneDBName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/futuredial/syncml/Parameter;->phoneDBName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneServerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/futuredial/syncml/Parameter;->phoneServerName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneStatus()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/futuredial/syncml/Parameter;->phoneStatus:I

    return v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/futuredial/syncml/Parameter;->requestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/futuredial/syncml/Parameter;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncMLVersion()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/futuredial/syncml/Parameter;->syncMLVersion:I

    return v0
.end method

.method public getVerDTD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/futuredial/syncml/Parameter;->verDTD:Ljava/lang/String;

    return-object v0
.end method

.method public getVerProto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/futuredial/syncml/Parameter;->verProto:Ljava/lang/String;

    return-object v0
.end method

.method public isSupportMaxMessageSize()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/futuredial/syncml/Parameter;->supportMaxMessageSize:Z

    return v0
.end method

.method public isSupportMaxObjectSize()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/futuredial/syncml/Parameter;->supportMaxObjectSize:Z

    return v0
.end method

.method public isSupportMoreData()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/futuredial/syncml/Parameter;->supportMoreData:Z

    return v0
.end method

.method public isSupportNumberOfChange()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/futuredial/syncml/Parameter;->supportNumberOfChange:Z

    return v0
.end method

.method public isSupportUTC()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/futuredial/syncml/Parameter;->supportUTC:Z

    return v0
.end method

.method public resetParameter()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/futuredial/syncml/Parameter;->parameterHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 118
    return-void
.end method

.method public setAppDBName(Ljava/lang/String;)V
    .locals 0
    .parameter "appDBName"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/futuredial/syncml/Parameter;->appDBName:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setAppServerName(Ljava/lang/String;)V
    .locals 0
    .parameter "appServerName"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/futuredial/syncml/Parameter;->appServerName:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setAppStatus(I)V
    .locals 0
    .parameter "appStatus"

    .prologue
    .line 218
    iput p1, p0, Lcom/futuredial/syncml/Parameter;->appStatus:I

    .line 219
    return-void
.end method

.method public setAuth(Ljava/lang/String;)V
    .locals 0
    .parameter "auth"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/futuredial/syncml/Parameter;->auth:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .parameter "contentType"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/futuredial/syncml/Parameter;->contentType:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setCurModel(I)V
    .locals 0
    .parameter "curModel"

    .prologue
    .line 39
    iput p1, p0, Lcom/futuredial/syncml/Parameter;->curModel:I

    .line 40
    return-void
.end method

.method public setIsSNE(Ljava/lang/String;)V
    .locals 0
    .parameter "isSNE"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/futuredial/syncml/Parameter;->isSNE:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setMaxMessageSize(I)V
    .locals 1
    .parameter "maxMessageSize"

    .prologue
    .line 170
    iget v0, p0, Lcom/futuredial/syncml/Parameter;->maxMessageSize:I

    if-ge p1, v0, :cond_0

    .line 172
    iput p1, p0, Lcom/futuredial/syncml/Parameter;->maxMessageSize:I

    .line 174
    :cond_0
    return-void
.end method

.method public setMaxObjectSize(I)V
    .locals 1
    .parameter "maxObjectSize"

    .prologue
    .line 179
    iget v0, p0, Lcom/futuredial/syncml/Parameter;->maxObjectSize:I

    if-ge p1, v0, :cond_0

    .line 181
    iput p1, p0, Lcom/futuredial/syncml/Parameter;->maxObjectSize:I

    .line 183
    :cond_0
    return-void
.end method

.method public setMessageID(I)V
    .locals 0
    .parameter "messageID"

    .prologue
    .line 206
    iput p1, p0, Lcom/futuredial/syncml/Parameter;->messageID:I

    .line 207
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/futuredial/syncml/Parameter;->parameterHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/futuredial/syncml/Parameter;->parameterHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/futuredial/syncml/Parameter;->parameterHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public setPhoneDBName(Ljava/lang/String;)V
    .locals 0
    .parameter "phoneDBName"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/futuredial/syncml/Parameter;->phoneDBName:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setPhoneServerName(Ljava/lang/String;)V
    .locals 0
    .parameter "phoneServerName"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/futuredial/syncml/Parameter;->phoneServerName:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setPhoneStatus(I)V
    .locals 0
    .parameter "phoneStatus"

    .prologue
    .line 224
    iput p1, p0, Lcom/futuredial/syncml/Parameter;->phoneStatus:I

    .line 225
    return-void
.end method

.method public setRequestUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "requestUrl"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/futuredial/syncml/Parameter;->requestUrl:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setSessionID(Ljava/lang/String;)V
    .locals 0
    .parameter "sessionID"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/futuredial/syncml/Parameter;->sessionID:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setSupportMaxMessageSize(Z)V
    .locals 0
    .parameter "supportMaxMessageSize"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/futuredial/syncml/Parameter;->supportMaxMessageSize:Z

    .line 74
    return-void
.end method

.method public setSupportMaxObjectSize(Z)V
    .locals 0
    .parameter "supportMaxObjectSize"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/futuredial/syncml/Parameter;->supportMaxObjectSize:Z

    .line 81
    return-void
.end method

.method public setSupportMoreData(Z)V
    .locals 0
    .parameter "supportMoreData"

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/futuredial/syncml/Parameter;->supportMoreData:Z

    .line 195
    return-void
.end method

.method public setSupportNumberOfChange(Z)V
    .locals 0
    .parameter "supportNumberOfChange"

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/futuredial/syncml/Parameter;->supportNumberOfChange:Z

    .line 189
    return-void
.end method

.method public setSupportUTC(Z)V
    .locals 0
    .parameter "supportUTC"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/futuredial/syncml/Parameter;->supportUTC:Z

    .line 67
    return-void
.end method

.method public setSyncMLVersion(I)V
    .locals 0
    .parameter "syncMLVersion"

    .prologue
    .line 212
    iput p1, p0, Lcom/futuredial/syncml/Parameter;->syncMLVersion:I

    .line 213
    return-void
.end method

.method public setVerDTD(Ljava/lang/String;)V
    .locals 0
    .parameter "verDTD"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/futuredial/syncml/Parameter;->verDTD:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setVerProto(Ljava/lang/String;)V
    .locals 0
    .parameter "verProto"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/futuredial/syncml/Parameter;->verProto:Ljava/lang/String;

    .line 135
    return-void
.end method
