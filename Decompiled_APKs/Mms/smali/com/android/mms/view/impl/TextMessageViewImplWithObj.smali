.class public Lcom/android/mms/view/impl/TextMessageViewImplWithObj;
.super Lcom/android/mms/view/impl/MultimediaMessageViewImpl;
.source "TextMessageViewImplWithObj.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;-><init>(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method private bind()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mAbsMsg:Lcom/android/mms/msg/AbstractMessage;

    invoke-static {p0, v0}, Lcom/android/mms/view/ctl/MessageViewCtl;->bind(Lcom/android/mms/view/MessageView;Lcom/android/mms/msg/AbstractMessage;)V

    .line 120
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mAbsMsg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v0}, Lcom/android/mms/msg/AbstractMessage;->getHighLightStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/view/impl/TextMessageViewImplWithObj;->setHighLightStr(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mAbsMsg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v0}, Lcom/android/mms/msg/AbstractMessage;->isVvm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/android/mms/view/impl/TextMessageViewImplWithObj;->setVvmContent()V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mAbsMsg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v0}, Lcom/android/mms/msg/AbstractMessage;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mAbsMsg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v0}, Lcom/android/mms/msg/AbstractMessage;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/view/impl/TextMessageViewImplWithObj;->setPhotoIcon(Ljava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mAbsMsg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v0}, Lcom/android/mms/msg/AbstractMessage;->getMePhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/view/impl/TextMessageViewImplWithObj;->setMePhotoIcon(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private setVvmContent()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/android/mms/view/impl/TextMessageViewImplWithObj;->inflateMmsView()V

    .line 153
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mAbsMsg:Lcom/android/mms/msg/AbstractMessage;

    check-cast v2, Lcom/android/mms/msg/HtcVoiceMailMessage;

    .line 171
    .local v2, vvmMsg:Lcom/android/mms/msg/HtcVoiceMailMessage;
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTypeView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTypeView:Landroid/widget/TextView;

    const v4, 0x7f09023c

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 173
    :cond_0
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mDetailView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 174
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mDetailView:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/android/mms/msg/HtcVoiceMailMessage;->getPlayTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessageUtils;->getPlaytimeFormatString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :cond_1
    invoke-virtual {v2}, Lcom/android/mms/msg/HtcVoiceMailMessage;->getPrivate()Z

    move-result v0

    .line 177
    .local v0, pri:Z
    if-eqz v0, :cond_3

    .line 178
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mRightStatusIndicator:Landroid/widget/ImageView;

    const v4, 0x7f0201a9

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mRightStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    :goto_0
    invoke-virtual {v2}, Lcom/android/mms/msg/HtcVoiceMailMessage;->getUrgent()Z

    move-result v1

    .line 185
    .local v1, urgent:Z
    if-eqz v1, :cond_4

    .line 186
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    const v4, 0x7f0201aa

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    :goto_1
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 194
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageView:Landroid/widget/ImageView;

    const v4, 0x7f0200f6

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/view/impl/TextMessageViewImplWithObj;->enableImageView()V

    .line 197
    return-void

    .line 181
    .end local v1           #urgent:Z
    :cond_3
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mRightStatusIndicator:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 189
    .restart local v1       #urgent:Z
    :cond_4
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public bindTo(Lcom/android/mms/msg/AbstractMessage;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isVvm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-super {p0, p1}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->bindTo(Lcom/android/mms/msg/AbstractMessage;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/mms/view/impl/TextMessageViewImplWithObj;->preBindingView()V

    .line 100
    invoke-direct {p0}, Lcom/android/mms/view/impl/TextMessageViewImplWithObj;->bind()V

    .line 101
    invoke-virtual {p0}, Lcom/android/mms/view/impl/TextMessageViewImplWithObj;->postBindingView()V

    goto :goto_0
.end method

.method public getBoundItem()Lcom/android/mms/msg/AbstractMessage;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mAbsMsg:Lcom/android/mms/msg/AbstractMessage;

    return-object v0
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 138
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mAbsMsg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->isVvm()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mAbsMsg:Lcom/android/mms/msg/AbstractMessage;

    check-cast v3, Lcom/android/mms/msg/HtcVoiceMailMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/HtcVoiceMailMessage;->getVvmId()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, vvmId:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.vvm.VoiceMailPlayActivity"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "extra_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->callerCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #vvmId:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method public setAttachInfoText(II)V
    .locals 0
    .parameter "resId"
    .parameter "size"

    .prologue
    .line 218
    return-void
.end method

.method public setAttachInfoText(Ljava/lang/String;I)V
    .locals 0
    .parameter "resString"
    .parameter "Size"

    .prologue
    .line 220
    return-void
.end method

.method public setAttachInfoText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "title"
    .parameter "detail"

    .prologue
    .line 222
    return-void
.end method
