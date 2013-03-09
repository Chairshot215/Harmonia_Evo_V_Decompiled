.class public Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;
.super Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfigurationImpl;
.source "MobileProtoBufStreamConfiguration.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfigurationImpl;-><init>()V

    .line 92
    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HEARTBEAT_PING:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 93
    const/4 v0, 0x1

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HEARTBEAT_ACK:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 94
    const/4 v0, 0x2

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->LOGIN_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 95
    const/4 v0, 0x3

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->LOGIN_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 96
    const/4 v0, 0x4

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->CLOSE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 97
    const/4 v0, 0x5

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->MESSAGE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 98
    const/4 v0, 0x6

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->PRESENCE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 99
    const/4 v0, 0x7

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->IQ_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 100
    const/16 v0, 0x8

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->DATA_MESSAGE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 101
    const/16 v0, 0x9

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->BATCH_PRESENCE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 102
    const/16 v0, 0xa

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->STREAM_ERROR_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 103
    const/16 v0, 0xb

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HTTP_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 104
    const/16 v0, 0xc

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HTTP_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 105
    const/16 v0, 0xd

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->BIND_ACCOUNT_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 106
    const/16 v0, 0xe

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->BIND_ACCOUNT_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 107
    const/16 v0, 0xf

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->TALK_METADATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;->addProtoBuf(BLcom/google/common/io/protocol/ProtoBufType;)V

    .line 108
    return-void
.end method
