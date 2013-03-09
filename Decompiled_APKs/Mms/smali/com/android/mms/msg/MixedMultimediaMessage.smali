.class public Lcom/android/mms/msg/MixedMultimediaMessage;
.super Lcom/android/mms/msg/MultimediaMessage;
.source "MixedMultimediaMessage.java"


# instance fields
.field mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;I)V
    .locals 3
    .parameter "context"
    .parameter "adapter"
    .parameter "threadType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/msg/MultimediaMessage;-><init>(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;I)V

    .line 41
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/msg/MixedMultimediaMessage;->loadMultimediaMessage(Landroid/content/Context;)Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move-result-object v0

    .line 42
    .local v0, pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/msg/body/MixedMessageBody;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/msg/body/MixedMessageBody;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/msg/MixedMultimediaMessage;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    .line 43
    iget-object v1, p0, Lcom/android/mms/msg/MixedMultimediaMessage;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v1}, Lcom/android/mms/msg/body/MixedMessageBody;->getSize()I

    move-result v1

    iput v1, p0, Lcom/android/mms/msg/AbstractMessage;->mMessageSize:I

    .line 44
    return-void
.end method


# virtual methods
.method public containsAudio()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/mms/msg/MixedMultimediaMessage;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v0}, Lcom/android/mms/msg/body/MixedMessageBody;->containsAudio()Z

    move-result v0

    return v0
.end method

.method public containsImage()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mms/msg/MixedMultimediaMessage;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v0}, Lcom/android/mms/msg/body/MixedMessageBody;->containsImage()Z

    move-result v0

    return v0
.end method

.method public containsLocation()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/mms/msg/MixedMultimediaMessage;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v0}, Lcom/android/mms/msg/body/MixedMessageBody;->containsLocation()Z

    move-result v0

    return v0
.end method

.method public containsText()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/msg/MixedMultimediaMessage;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v0}, Lcom/android/mms/msg/body/MixedMessageBody;->containsText()Z

    move-result v0

    return v0
.end method

.method public containsUnsupportedMedia()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/msg/MixedMultimediaMessage;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v0}, Lcom/android/mms/msg/body/MixedMessageBody;->containsUnsupportedMedia()Z

    move-result v0

    return v0
.end method

.method public containsVCalendar()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/mms/msg/MixedMultimediaMessage;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v0}, Lcom/android/mms/msg/body/MixedMessageBody;->containsVCalendar()Z

    move-result v0

    return v0
.end method

.method public containsVCard()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/mms/msg/MixedMultimediaMessage;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v0}, Lcom/android/mms/msg/body/MixedMessageBody;->containsVCard()Z

    move-result v0

    return v0
.end method

.method public containsVideo()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/mms/msg/MixedMultimediaMessage;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v0}, Lcom/android/mms/msg/body/MixedMessageBody;->containsVideo()Z

    move-result v0

    return v0
.end method

.method public getAttachmentCount()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public getFirstAudio()Lcom/android/mms/model/AudioModel;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/mms/msg/MixedMultimediaMessage;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v0}, Lcom/android/mms/msg/body/MixedMessageBody;->getFirstAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v0

    return-object v0
.end method

.method public getFirstImage()Lcom/android/mms/model/ImageModel;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/mms/msg/MixedMultimediaMessage;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v0}, Lcom/android/mms/msg/body/MixedMessageBody;->getFirstImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    return-object v0
.end method

.method public getFirstLocation()Lcom/android/mms/model/LocationModel;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/msg/MixedMultimediaMessage;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v0}, Lcom/android/mms/msg/body/MixedMessageBody;->getFirstLocation()Lcom/android/mms/model/LocationModel;

    move-result-object v0

    return-object v0
.end method

.method public getFirstText()Lcom/android/mms/model/TextModel;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/mms/msg/MixedMultimediaMessage;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v0}, Lcom/android/mms/msg/body/MixedMessageBody;->getFirstText()Lcom/android/mms/model/TextModel;

    move-result-object v0

    return-object v0
.end method

.method public getFirstVideo()Lcom/android/mms/model/VideoModel;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/msg/MixedMultimediaMessage;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v0}, Lcom/android/mms/msg/body/MixedMessageBody;->getFirstVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v0

    return-object v0
.end method

.method public getMediaNumber()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/mms/msg/MixedMultimediaMessage;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v0}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaNmuber()I

    move-result v0

    return v0
.end method

.method public getMessageBody()Lcom/android/mms/msg/body/MixedMessageBody;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/mms/msg/MixedMultimediaMessage;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    return-object v0
.end method

.method public getMessageSize()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/mms/msg/MixedMultimediaMessage;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v0}, Lcom/android/mms/msg/body/MixedMessageBody;->getMessageSize()I

    move-result v0

    return v0
.end method

.method public getSecondText()Lcom/android/mms/model/TextModel;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/mms/msg/MixedMultimediaMessage;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v0}, Lcom/android/mms/msg/body/MixedMessageBody;->getSecondText()Lcom/android/mms/model/TextModel;

    move-result-object v0

    return-object v0
.end method

.method public hasOnlyOneMedia()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/mms/msg/MixedMultimediaMessage;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v0}, Lcom/android/mms/msg/body/MixedMessageBody;->hasOnlyOneMedia()Z

    move-result v0

    return v0
.end method

.method public isNeedExpandContent(I)Z
    .locals 1
    .parameter "attachmentCount"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/mms/msg/MixedMultimediaMessage;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v0, p1}, Lcom/android/mms/msg/body/MixedMessageBody;->isNeedExpandContent(I)Z

    move-result v0

    return v0
.end method

.method public isNotification()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/mms/msg/MixedMultimediaMessage;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v0, p1}, Lcom/android/mms/msg/body/MixedMessageBody;->makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    return-object v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/mms/msg/MixedMultimediaMessage;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v0}, Lcom/android/mms/msg/body/MixedMessageBody;->recycle()V

    .line 139
    return-void
.end method

.method public withMixedMessageBody()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public withRelatedMessageBody()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method
