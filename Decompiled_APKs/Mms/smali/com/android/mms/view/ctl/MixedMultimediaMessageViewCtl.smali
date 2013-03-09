.class public Lcom/android/mms/view/ctl/MixedMultimediaMessageViewCtl;
.super Lcom/android/mms/view/ctl/MultimediaMessageViewCtl;
.source "MixedMultimediaMessageViewCtl.java"


# static fields
.field private static final TYPE_AUDIO:I = 0x1

.field private static final TYPE_IMAGE:I = 0x0

.field private static final TYPE_LOCATION:I = 0x5

.field private static final TYPE_MORE:I = 0x6

.field private static final TYPE_VCALENDAR:I = 0x4

.field private static final TYPE_VCARD:I = 0x3

.field private static final TYPE_VIDEO:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/mms/view/ctl/MultimediaMessageViewCtl;-><init>()V

    return-void
.end method

.method public static bind(Lcom/android/mms/view/MessageView;Lcom/android/mms/msg/AbstractMessage;)V
    .locals 17
    .parameter "msgView"
    .parameter "msg"

    .prologue
    .line 47
    invoke-static/range {p0 .. p1}, Lcom/android/mms/view/ctl/MultimediaMessageViewCtl;->bind(Lcom/android/mms/view/MessageView;Lcom/android/mms/msg/AbstractMessage;)V

    move-object/from16 v10, p0

    .line 49
    check-cast v10, Lcom/android/mms/view/MixedMultimediaMessageView;

    .local v10, mixedView:Lcom/android/mms/view/MixedMultimediaMessageView;
    move-object/from16 v9, p1

    .line 50
    check-cast v9, Lcom/android/mms/msg/MixedMultimediaMessage;

    .line 58
    .local v9, mixedMsg:Lcom/android/mms/msg/MixedMultimediaMessage;
    invoke-virtual {v9}, Lcom/android/mms/msg/MixedMultimediaMessage;->getFirstText()Lcom/android/mms/model/TextModel;

    move-result-object v12

    .line 59
    .local v12, text:Lcom/android/mms/model/TextModel;
    if-eqz v12, :cond_3

    .line 60
    invoke-virtual {v12}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v13}, Lcom/android/mms/view/MixedMultimediaMessageView;->setText(Ljava/lang/String;)V

    .line 68
    :goto_0
    const/4 v1, 0x0

    .line 69
    .local v1, TextCount:I
    const/4 v0, 0x0

    .line 70
    .local v0, MediaNumber:I
    const/4 v3, 0x0

    .line 71
    .local v3, i:I
    const/4 v5, 0x0

    .line 72
    .local v5, isVcardVcalendar:Z
    invoke-virtual {v9}, Lcom/android/mms/msg/MixedMultimediaMessage;->getMessageBody()Lcom/android/mms/msg/body/MixedMessageBody;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaList()Ljava/util/ArrayList;

    move-result-object v7

    .line 73
    .local v7, mMedia:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/model/MediaModel;

    .line 74
    .local v8, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 75
    add-int/lit8 v1, v1, 0x1

    .line 80
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 83
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->isVCard()Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->isVCalendar()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 84
    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    .line 63
    .end local v0           #MediaNumber:I
    .end local v1           #TextCount:I
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #isVcardVcalendar:Z
    .end local v7           #mMedia:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .end local v8           #media:Lcom/android/mms/model/MediaModel;
    :cond_3
    const/4 v13, 0x0

    invoke-interface {v10, v13}, Lcom/android/mms/view/MixedMultimediaMessageView;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    .restart local v0       #MediaNumber:I
    .restart local v1       #TextCount:I
    .restart local v3       #i:I
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #isVcardVcalendar:Z
    .restart local v7       #mMedia:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .restart local v8       #media:Lcom/android/mms/model/MediaModel;
    :cond_4
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->isLocation()Z

    move-result v13

    if-nez v13, :cond_1

    .line 78
    move v0, v3

    goto :goto_2

    .line 89
    .end local v8           #media:Lcom/android/mms/model/MediaModel;
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTextAttachment()Z

    move-result v13

    if-eqz v13, :cond_6

    if-nez v5, :cond_6

    .line 90
    const/4 v1, 0x0

    .line 93
    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_7

    .line 94
    const/4 v0, -0x1

    .line 96
    :cond_7
    invoke-interface {v10, v0}, Lcom/android/mms/view/MixedMultimediaMessageView;->setSingleMediaCount(I)V

    .line 98
    if-ltz v0, :cond_8

    .line 100
    invoke-virtual {v9}, Lcom/android/mms/msg/MixedMultimediaMessage;->containsLocation()Z

    move-result v13

    if-nez v13, :cond_a

    invoke-virtual {v9}, Lcom/android/mms/msg/MixedMultimediaMessage;->getMessageBody()Lcom/android/mms/msg/body/MixedMessageBody;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaNmuber()I

    move-result v13

    sub-int/2addr v13, v1

    const/4 v14, 0x1

    if-le v13, v14, :cond_a

    .line 115
    const/4 v13, 0x6

    invoke-interface {v10, v13}, Lcom/android/mms/view/MixedMultimediaMessageView;->setPreviewIcon(I)V

    .line 117
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 118
    invoke-virtual {v9}, Lcom/android/mms/msg/MixedMultimediaMessage;->getMediaNumber()I

    move-result v13

    sub-int/2addr v13, v1

    invoke-virtual {v9}, Lcom/android/mms/msg/MixedMultimediaMessage;->getMessageBody()Lcom/android/mms/msg/body/MixedMessageBody;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/mms/msg/body/MixedMessageBody;->getSize()I

    move-result v14

    invoke-interface {v10, v13, v14}, Lcom/android/mms/view/MixedMultimediaMessageView;->setAttachInfoText(II)V

    .line 178
    :cond_8
    :goto_3
    return-void

    .line 121
    :cond_9
    const v13, 0x7f090110

    invoke-virtual {v9}, Lcom/android/mms/msg/MixedMultimediaMessage;->getMediaNumber()I

    move-result v14

    sub-int/2addr v14, v1

    invoke-interface {v10, v13, v14}, Lcom/android/mms/view/MixedMultimediaMessageView;->setAttachInfoText(II)V

    goto :goto_3

    .line 124
    :cond_a
    invoke-virtual {v9}, Lcom/android/mms/msg/MixedMultimediaMessage;->getMessageBody()Lcom/android/mms/msg/body/MixedMessageBody;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaList()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/model/MediaModel;

    invoke-virtual {v13}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, filename:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/android/mms/msg/MixedMultimediaMessage;->containsLocation()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 127
    const/4 v13, 0x5

    invoke-interface {v10, v13}, Lcom/android/mms/view/MixedMultimediaMessageView;->setPreviewIcon(I)V

    .line 129
    invoke-virtual {v9}, Lcom/android/mms/msg/MixedMultimediaMessage;->getFirstLocation()Lcom/android/mms/model/LocationModel;

    move-result-object v6

    .line 130
    .local v6, location:Lcom/android/mms/model/LocationModel;
    invoke-virtual {v6}, Lcom/android/mms/model/LocationModel;->getPlace()Lcom/android/mms/location/Place;

    move-result-object v11

    .line 131
    .local v11, place:Lcom/android/mms/location/Place;
    if-eqz v2, :cond_b

    .line 132
    invoke-virtual {v11}, Lcom/android/mms/location/Place;->getName()Ljava/lang/String;

    move-result-object v2

    .line 133
    :cond_b
    invoke-virtual {v6}, Lcom/android/mms/model/LocationModel;->getAddressFirstLine()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Lcom/android/mms/model/LocationModel;->getAddressSecondLine()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v13, v14}, Lcom/android/mms/view/MixedMultimediaMessageView;->setAttachInfoText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 134
    .end local v6           #location:Lcom/android/mms/model/LocationModel;
    .end local v11           #place:Lcom/android/mms/location/Place;
    :cond_c
    invoke-virtual {v9}, Lcom/android/mms/msg/MixedMultimediaMessage;->containsImage()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 135
    const/4 v13, 0x0

    invoke-interface {v10, v13}, Lcom/android/mms/view/MixedMultimediaMessageView;->setPreviewIcon(I)V

    .line 136
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/msg/AbstractMessage;->getMessageSize()I

    move-result v13

    invoke-interface {v10, v2, v13}, Lcom/android/mms/view/MixedMultimediaMessageView;->setAttachInfoText(Ljava/lang/String;I)V

    goto :goto_3

    .line 137
    :cond_d
    invoke-virtual {v9}, Lcom/android/mms/msg/MixedMultimediaMessage;->containsAudio()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 138
    const/4 v13, 0x1

    invoke-interface {v10, v13}, Lcom/android/mms/view/MixedMultimediaMessageView;->setPreviewIcon(I)V

    .line 139
    invoke-virtual {v9}, Lcom/android/mms/msg/MixedMultimediaMessage;->getMessageSize()I

    move-result v13

    invoke-interface {v10, v2, v13}, Lcom/android/mms/view/MixedMultimediaMessageView;->setAttachInfoText(Ljava/lang/String;I)V

    goto :goto_3

    .line 141
    :cond_e
    invoke-virtual {v9}, Lcom/android/mms/msg/MixedMultimediaMessage;->containsVideo()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 142
    const/4 v13, 0x2

    invoke-interface {v10, v13}, Lcom/android/mms/view/MixedMultimediaMessageView;->setPreviewIcon(I)V

    .line 143
    invoke-virtual {v9}, Lcom/android/mms/msg/MixedMultimediaMessage;->getMessageSize()I

    move-result v13

    invoke-interface {v10, v2, v13}, Lcom/android/mms/view/MixedMultimediaMessageView;->setAttachInfoText(Ljava/lang/String;I)V

    goto :goto_3

    .line 145
    :cond_f
    invoke-virtual {v9}, Lcom/android/mms/msg/MixedMultimediaMessage;->containsVCard()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 146
    const/4 v13, 0x3

    invoke-interface {v10, v13}, Lcom/android/mms/view/MixedMultimediaMessageView;->setPreviewIcon(I)V

    .line 148
    if-eqz v2, :cond_10

    .line 149
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f090140

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    :cond_10
    invoke-virtual {v9}, Lcom/android/mms/msg/MixedMultimediaMessage;->getMessageSize()I

    move-result v13

    invoke-interface {v10, v2, v13}, Lcom/android/mms/view/MixedMultimediaMessageView;->setAttachInfoText(Ljava/lang/String;I)V

    .line 154
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v13

    if-eqz v13, :cond_8

    .line 155
    invoke-virtual {v9}, Lcom/android/mms/msg/MixedMultimediaMessage;->getMessageId()J

    move-result-wide v13

    invoke-interface {v10, v13, v14}, Lcom/android/mms/view/MixedMultimediaMessageView;->setAttachInfoSavedText(J)V

    goto/16 :goto_3

    .line 157
    :cond_11
    invoke-virtual {v9}, Lcom/android/mms/msg/MixedMultimediaMessage;->containsVCalendar()Z

    move-result v13

    if-eqz v13, :cond_12

    .line 158
    const/4 v13, 0x4

    invoke-interface {v10, v13}, Lcom/android/mms/view/MixedMultimediaMessageView;->setPreviewIcon(I)V

    .line 159
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f090141

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Lcom/android/mms/msg/MixedMultimediaMessage;->getMessageSize()I

    move-result v14

    invoke-interface {v10, v13, v14}, Lcom/android/mms/view/MixedMultimediaMessageView;->setAttachInfoText(Ljava/lang/String;I)V

    .line 162
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v13

    if-eqz v13, :cond_8

    .line 163
    invoke-virtual {v9}, Lcom/android/mms/msg/MixedMultimediaMessage;->getMessageId()J

    move-result-wide v13

    invoke-interface {v10, v13, v14}, Lcom/android/mms/view/MixedMultimediaMessageView;->setAttachInfoSavedText(J)V

    goto/16 :goto_3

    .line 164
    :cond_12
    invoke-virtual {v9}, Lcom/android/mms/msg/MixedMultimediaMessage;->containsUnsupportedMedia()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 165
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v13

    float-to-double v13, v13

    const-wide/high16 v15, 0x4000

    cmpl-double v13, v13, v15

    if-ltz v13, :cond_8

    .line 166
    const/4 v13, 0x6

    invoke-interface {v10, v13}, Lcom/android/mms/view/MixedMultimediaMessageView;->setPreviewIcon(I)V

    .line 169
    invoke-virtual {v9}, Lcom/android/mms/msg/MixedMultimediaMessage;->getMediaNumber()I

    move-result v13

    sub-int/2addr v13, v1

    invoke-virtual {v9}, Lcom/android/mms/msg/MixedMultimediaMessage;->getMessageSize()I

    move-result v14

    invoke-interface {v10, v13, v14}, Lcom/android/mms/view/MixedMultimediaMessageView;->setAttachInfoText(II)V

    goto/16 :goto_3
.end method
