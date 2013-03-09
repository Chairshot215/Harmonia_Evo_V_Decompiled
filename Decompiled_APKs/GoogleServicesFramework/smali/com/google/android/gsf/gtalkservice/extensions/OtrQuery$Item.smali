.class public Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;
.super Ljava/lang/Object;
.source "OtrQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public mChangedByBuddy:Z

.field public mEnabled:Z

.field public mJid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter "jid"
    .parameter "enabled"

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;-><init>(Ljava/lang/String;ZZ)V

    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "jid"
    .parameter "enabled"
    .parameter "changedByBuddy"

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;->mJid:Ljava/lang/String;

    .line 158
    iput-boolean p2, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;->mEnabled:Z

    .line 159
    iput-boolean p3, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;->mChangedByBuddy:Z

    .line 160
    return-void
.end method


# virtual methods
.method public getChangedByBuddy()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;->mChangedByBuddy:Z

    return v0
.end method

.method public getJid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;->mJid:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;->mEnabled:Z

    return v0
.end method

.method public toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 3

    .prologue
    .line 175
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->OTR_ITEM:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 176
    .local v0, item:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;->mJid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 177
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;->mEnabled:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 179
    iget-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;->mChangedByBuddy:Z

    if-eqz v1, :cond_0

    .line 180
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;->mChangedByBuddy:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 184
    :cond_0
    return-object v0
.end method
