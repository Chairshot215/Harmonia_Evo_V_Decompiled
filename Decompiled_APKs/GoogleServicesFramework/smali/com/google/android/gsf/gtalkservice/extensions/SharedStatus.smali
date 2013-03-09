.class public Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "SharedStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus$1;
    }
.end annotation


# instance fields
.field private mDefaultStatusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDndStatusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasStatusMinVersion:Z

.field private mInvisible:Z

.field private mShow:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;

.field private mStatusListContentsMax:I

.field private mStatusListMax:I

.field private mStatusMax:I

.field private mStatusMinVersion:I

.field private mUseServerAttributes:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gtalkservice/Presence;)V
    .locals 2
    .parameter "sp"

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 69
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 71
    sget-object v0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus$1;->$SwitchMap$com$google$android$gtalkservice$Presence$Show:[I

    invoke-virtual {p1}, Lcom/google/android/gtalkservice/Presence;->getShow()Lcom/google/android/gtalkservice/Presence$Show;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/Presence$Show;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 81
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gtalkservice/Presence;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setStatus(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/google/android/gtalkservice/Presence;->isInvisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setInvisible(Z)V

    .line 83
    invoke-virtual {p1}, Lcom/google/android/gtalkservice/Presence;->getDefaultStatusList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setDefaultStatusList(Ljava/util/List;)V

    .line 84
    invoke-virtual {p1}, Lcom/google/android/gtalkservice/Presence;->getDndStatusList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setDndStatusList(Ljava/util/List;)V

    .line 85
    return-void

    .line 73
    :pswitch_0
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setShow(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :pswitch_1
    const-string v0, "dnd"

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setShow(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/packet/IQ$Type;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 66
    return-void
.end method

.method private addServerAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .locals 2
    .parameter "buf"
    .parameter "attributeName"
    .parameter "attributeValue"
    .parameter "dontAddForValue"

    .prologue
    .line 178
    if-ne p3, p4, :cond_0

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private appendStatusList(Lcom/google/common/io/protocol/ProtoBuf;Ljava/util/List;)V
    .locals 3
    .parameter "protobuf"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/protocol/ProtoBuf;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 332
    .local v1, s:Ljava/lang/String;
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v1}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    goto :goto_0

    .line 335
    .end local v1           #s:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private appendStatusList(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 5
    .parameter "buf"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v4, 0x3e

    .line 252
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 253
    .local v1, s:Ljava/lang/String;
    const/16 v2, 0x3c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const-string v2, "</"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 257
    .end local v1           #s:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static final getVersion()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x2

    return v0
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/16 v7, 0x3c

    const/16 v6, 0x3e

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v2

    .line 189
    .local v2, type:Lorg/jivesoftware/smack/packet/IQ$Type;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->isInvisible()Z

    move-result v1

    .line 192
    .local v1, invisible:Z
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "query"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " xmlns=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "google:shared-status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget-boolean v3, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mUseServerAttributes:Z

    if-eqz v3, :cond_6

    .line 195
    const-string v3, "status-max"

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->getStatusMax()I

    move-result v4

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->addServerAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 197
    const-string v3, "status-list-max"

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->getStatusListMax()I

    move-result v4

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->addServerAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 199
    const-string v3, "status-list-contents-max"

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->getStatusListContentsMax()I

    move-result v4

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->addServerAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 202
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->hasStatusMinVersion()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    const-string v3, "status-min-ver"

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->getStatusMinVersion()I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->addServerAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 210
    :cond_0
    :goto_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-eq v2, v3, :cond_5

    .line 214
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mStatus:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 215
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mStatus:Ljava/lang/String;

    invoke-static {v3}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v3, "</"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    :cond_1
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mShow:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 222
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "show"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mShow:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v3, "</"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "show"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    :cond_2
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mDefaultStatusList:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 229
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "status-list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " show=\'default\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mDefaultStatusList:Ljava/util/List;

    invoke-direct {p0, v0, v3}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->appendStatusList(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 231
    const-string v3, "</"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "status-list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    :cond_3
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mDndStatusList:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 236
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "status-list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " show=\'dnd\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mDndStatusList:Ljava/util/List;

    invoke-direct {p0, v0, v3}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->appendStatusList(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 238
    const-string v3, "</"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "status-list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    :cond_4
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "invisible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_7

    const-string v3, "true"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' />"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_5
    const-string v3, "</"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "query"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 207
    :cond_6
    const-string v3, "version"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 242
    :cond_7
    const-string v3, "false"

    goto :goto_1
.end method

.method public getDefaultStatusList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mDefaultStatusList:Ljava/util/List;

    return-object v0
.end method

.method public getDndStatusList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mDndStatusList:Ljava/util/List;

    return-object v0
.end method

.method protected getExtensionProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 13

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v9, 0x6

    .line 260
    sget-byte v7, Lorg/jivesoftware/smack/XMPPConnection;->CURRENT_VERSION:B

    if-ne v7, v10, :cond_0

    .line 261
    invoke-super {p0}, Lorg/jivesoftware/smack/packet/IQ;->getExtensionProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 327
    :goto_0
    return-object v2

    .line 264
    :cond_0
    new-instance v2, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->EXTENSION:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v7}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 265
    .local v2, extension:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v2, v10, v11}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 268
    new-instance v4, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->SHARED_STATUS:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v4, v7}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 269
    .local v4, sharedStatusPb:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v6

    .line 270
    .local v6, type:Lorg/jivesoftware/smack/packet/IQ$Type;
    iget-boolean v3, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mInvisible:Z

    .line 272
    .local v3, invisible:Z
    sget-object v7, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-eq v6, v7, :cond_6

    .line 274
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mStatus:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 275
    const/4 v7, 0x4

    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mStatus:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 280
    :cond_1
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mShow:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 281
    const/4 v5, 0x0

    .line 283
    .local v5, show:I
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mShow:Ljava/lang/String;

    const-string v8, "dnd"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 284
    const/4 v5, 0x1

    .line 287
    :cond_2
    invoke-virtual {v4, v11, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 292
    .end local v5           #show:I
    :cond_3
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mDefaultStatusList:Ljava/util/List;

    if-eqz v7, :cond_4

    .line 293
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->SHARED_STATUS:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v7, v9}, Lcom/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v7}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 296
    .local v0, defStatusListPb:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v7, 0x0

    invoke-virtual {v0, v12, v7}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 300
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mDefaultStatusList:Ljava/util/List;

    invoke-direct {p0, v0, v7}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->appendStatusList(Lcom/google/common/io/protocol/ProtoBuf;Ljava/util/List;)V

    .line 301
    invoke-virtual {v4, v9, v0}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 307
    .end local v0           #defStatusListPb:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_4
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mDndStatusList:Ljava/util/List;

    if-eqz v7, :cond_5

    .line 308
    new-instance v1, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->SHARED_STATUS:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v7, v9}, Lcom/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v7}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 311
    .local v1, dndStatusListPb:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v1, v12, v10}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 315
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mDndStatusList:Ljava/util/List;

    invoke-direct {p0, v1, v7}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->appendStatusList(Lcom/google/common/io/protocol/ProtoBuf;Ljava/util/List;)V

    .line 316
    invoke-virtual {v4, v9, v1}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 322
    .end local v1           #dndStatusListPb:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_5
    const/16 v7, 0x9

    invoke-virtual {v4, v7, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 326
    :cond_6
    const/4 v7, 0x2

    invoke-virtual {v2, v7, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_0
.end method

.method public getShow()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mShow:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusListContentsMax()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mStatusListContentsMax:I

    return v0
.end method

.method public getStatusListMax()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mStatusListMax:I

    return v0
.end method

.method public getStatusMax()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mStatusMax:I

    return v0
.end method

.method public getStatusMinVersion()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mStatusMinVersion:I

    return v0
.end method

.method public hasStatusMinVersion()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mHasStatusMinVersion:Z

    return v0
.end method

.method public isInvisible()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mInvisible:Z

    return v0
.end method

.method public setDefaultStatusList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mDefaultStatusList:Ljava/util/List;

    .line 125
    return-void
.end method

.method public setDndStatusList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mDndStatusList:Ljava/util/List;

    .line 133
    return-void
.end method

.method setHasStatusMinVersion(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mHasStatusMinVersion:Z

    .line 174
    return-void
.end method

.method public setInvisible(Z)V
    .locals 0
    .parameter "invisible"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mInvisible:Z

    .line 117
    return-void
.end method

.method public setShow(Ljava/lang/String;)V
    .locals 0
    .parameter "show"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mShow:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mStatus:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setStatusListContentsMax(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 156
    iput p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mStatusListContentsMax:I

    .line 157
    return-void
.end method

.method public setStatusListMax(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 148
    iput p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mStatusListMax:I

    .line 149
    return-void
.end method

.method public setStatusMax(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 140
    iput p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mStatusMax:I

    .line 141
    return-void
.end method

.method public setStatusMinVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 164
    iput p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mStatusMinVersion:I

    .line 165
    return-void
.end method

.method setUseServerAttributes(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->mUseServerAttributes:Z

    .line 89
    return-void
.end method
