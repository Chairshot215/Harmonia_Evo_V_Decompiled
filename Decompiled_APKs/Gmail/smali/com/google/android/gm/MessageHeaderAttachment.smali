.class public Lcom/google/android/gm/MessageHeaderAttachment;
.super Landroid/widget/LinearLayout;
.source "MessageHeaderAttachment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mAttachment:Lcom/google/android/gm/provider/Gmail$Attachment;

.field private mAttachmentSizeText:Ljava/lang/String;

.field private mCancelButton:Landroid/widget/Button;

.field private mConversationId:J

.field private mDisplayType:Ljava/lang/String;

.field private mIcon:Landroid/widget/ImageView;

.field private mInfoButton:Landroid/widget/Button;

.field private mInstallButton:Landroid/widget/Button;

.field private mPlayButton:Landroid/widget/Button;

.field private mPreviewButton:Landroid/widget/Button;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mResult:Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;

.field private mSaveButton:Landroid/widget/Button;

.field private mServerMessageId:J

.field private mSubTitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mUriBest:Landroid/net/Uri;

.field private mUriBestSd:Landroid/net/Uri;

.field private mUriSimple:Landroid/net/Uri;

.field private mViewButton:Landroid/widget/Button;

.field private mViewProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    new-instance v0, Lcom/google/android/gm/MessageHeaderAttachment$1;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gm/MessageHeaderAttachment$1;-><init>(Lcom/google/android/gm/MessageHeaderAttachment;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 76
    return-void
.end method

.method private canSave()Z
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mAttachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    iget-object v0, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->origin:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    sget-object v1, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;->LOCAL_FILE:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mResult:Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mResult:Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->isDownloadedToSd()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelAttachment()V
    .locals 9

    .prologue
    .line 412
    iget-object v1, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mAccount:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->getMailEngine(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v8

    .line 413
    .local v8, mailEngine:Lcom/google/android/gm/provider/MailEngine;
    if-eqz v8, :cond_0

    .line 414
    invoke-virtual {v8}, Lcom/google/android/gm/provider/MailEngine;->getAttachmentManager()Lcom/google/android/gm/provider/AttachmentManager;

    move-result-object v0

    .line 415
    .local v0, attachmentManager:Lcom/google/android/gm/provider/AttachmentManager;
    iget-wide v1, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mConversationId:J

    iget-object v3, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mResult:Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;

    iget-wide v3, v3, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->messageId:J

    iget-object v5, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mAttachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    iget-object v5, v5, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    sget-object v6, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->BEST:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gm/provider/AttachmentManager;->cancelDownloadRequest(JJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)I

    .line 417
    iget-wide v1, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mConversationId:J

    iget-object v3, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mResult:Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;

    iget-wide v3, v3, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->messageId:J

    iget-object v5, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mAttachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    iget-object v5, v5, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    sget-object v6, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->BEST:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gm/provider/AttachmentManager;->cancelDownloadRequest(JJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)I

    .line 420
    .end local v0           #attachmentManager:Lcom/google/android/gm/provider/AttachmentManager;
    :cond_0
    return-void
.end method

.method private downloadAttachment(Landroid/net/Uri;)V
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 302
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->getAttachmentDownloadUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/google/android/gm/MessageHeaderAttachment;
    .locals 2
    .parameter "inflater"
    .parameter "parent"

    .prologue
    .line 79
    const v0, 0x7f040019

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/MessageHeaderAttachment;

    return-object v0
.end method

.method private isImage()Z
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mAttachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    iget-object v0, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isLocalFile()Z
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mAttachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    iget-object v0, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->origin:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    sget-object v1, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;->LOCAL_FILE:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onClick(ILandroid/view/View;)Z
    .locals 4
    .parameter "res"
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 256
    packed-switch p1, :pswitch_data_0

    .line 286
    :cond_0
    :goto_0
    return v3

    .line 258
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderAttachment;->sendGviewIntent()V

    goto :goto_0

    .line 262
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/google/android/gm/MessageHeaderAttachment;->showAttachment(Z)V

    goto :goto_0

    .line 265
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderAttachment;->canSave()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    iget-object v2, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mUriBestSd:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/google/android/gm/MessageHeaderAttachment;->downloadAttachment(Landroid/net/Uri;)V

    goto :goto_0

    .line 270
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderAttachment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 271
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mAttachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    iget-object v2, v2, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gm/provider/MimeType;->isBlocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v1, 0x7f0c00fc

    .line 273
    .local v1, dialogMessage:I
    :goto_1
    const v2, 0x7f0c00fb

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 271
    .end local v1           #dialogMessage:I
    :cond_1
    const v1, 0x7f0c00fd

    goto :goto_1

    .line 276
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_4
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/gm/MessageHeaderAttachment;->showAttachment(Z)V

    goto :goto_0

    .line 279
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderAttachment;->cancelAttachment()V

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0050
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private sendGviewIntent()V
    .locals 4

    .prologue
    .line 353
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderAttachment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/android/gm/GviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 354
    const-string v1, "account"

    iget-object v2, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const-string v1, "serverMessageId"

    iget-wide v2, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mServerMessageId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 356
    const-string v1, "attId"

    iget-object v2, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mAttachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    iget-object v2, v2, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    const-string v1, "mimeType"

    iget-object v2, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mAttachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    iget-object v2, v2, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderAttachment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 359
    return-void
.end method

.method private sendViewIntent()V
    .locals 7

    .prologue
    .line 365
    iget-object v2, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mUriBest:Landroid/net/Uri;

    .line 367
    .local v2, viewUri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mResult:Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mResult:Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;

    iget-boolean v3, v3, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->saveToSd:Z

    if-eqz v3, :cond_0

    .line 368
    iget-object v3, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mResult:Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;

    iget-object v3, v3, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->fileName:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 371
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    .local v1, intent:Landroid/content/Intent;
    const v3, 0x80001

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 374
    iget-object v3, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mAttachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    iget-object v3, v3, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderAttachment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v0

    .line 379
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "Gmail"

    const-string v4, "Coun\'t find Activity for intent"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private setButtonVisible(Landroid/view/View;Z)V
    .locals 1
    .parameter "button"
    .parameter "visible"

    .prologue
    .line 307
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 308
    return-void

    .line 307
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setProgressVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    const/4 v2, 0x0

    .line 191
    if-eqz p1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mSubTitle:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showAttachment(Z)V
    .locals 2
    .parameter "useCache"

    .prologue
    .line 290
    iget-object v1, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mResult:Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mResult:Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->isDownloadedToSd()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mResult:Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->isDownloadedToCache()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 293
    .local v0, fetched:Z
    :goto_0
    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderAttachment;->isLocalFile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 294
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderAttachment;->sendViewIntent()V

    .line 299
    :goto_1
    return-void

    .line 290
    .end local v0           #fetched:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 296
    .restart local v0       #fetched:Z
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderAttachment;->showDownloadingDialog()V

    .line 297
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mUriBest:Landroid/net/Uri;

    :goto_2
    invoke-direct {p0, v1}, Lcom/google/android/gm/MessageHeaderAttachment;->downloadAttachment(Landroid/net/Uri;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mUriBestSd:Landroid/net/Uri;

    goto :goto_2
.end method

.method private showDownloadingDialog()V
    .locals 3

    .prologue
    .line 388
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderAttachment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mViewProgressDialog:Landroid/app/ProgressDialog;

    .line 389
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mViewProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0c00fe

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 390
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mViewProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderAttachment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mViewProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 392
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mViewProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mAttachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    iget v1, v1, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 393
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mViewProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 394
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mViewProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 395
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mViewProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 398
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mViewProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method private updateActions()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 317
    iget-object v7, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mResult:Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mResult:Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;

    invoke-virtual {v7}, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->isDownloading()Z

    move-result v7

    if-eqz v7, :cond_0

    move v4, v5

    .line 319
    .local v4, isDownloading:Z
    :goto_0
    iget-object v7, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mCancelButton:Landroid/widget/Button;

    invoke-direct {p0, v7, v4}, Lcom/google/android/gm/MessageHeaderAttachment;->setButtonVisible(Landroid/view/View;Z)V

    .line 321
    iget-object v7, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mAttachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    iget-object v7, v7, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gm/provider/MimeType;->isInstallable(Ljava/lang/String;)Z

    move-result v0

    .line 322
    .local v0, canInstall:Z
    iget-object v8, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mInstallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    if-nez v4, :cond_1

    move v7, v5

    :goto_1
    invoke-direct {p0, v8, v7}, Lcom/google/android/gm/MessageHeaderAttachment;->setButtonVisible(Landroid/view/View;Z)V

    .line 324
    if-nez v0, :cond_6

    .line 326
    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderAttachment;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mAttachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    iget-object v8, v8, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/google/android/gm/provider/MimeType;->isPreviewable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 328
    .local v2, canPreview:Z
    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderAttachment;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mUriBest:Landroid/net/Uri;

    iget-object v9, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mAttachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    iget-object v9, v9, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/google/android/gm/provider/MimeType;->isViewable(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v3

    .line 330
    .local v3, canView:Z
    iget-object v7, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mAttachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    iget-object v7, v7, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gm/provider/MimeType;->isPlayable(Ljava/lang/String;)Z

    move-result v1

    .line 332
    .local v1, canPlay:Z
    iget-object v7, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mPreviewButton:Landroid/widget/Button;

    invoke-direct {p0, v7, v2}, Lcom/google/android/gm/MessageHeaderAttachment;->setButtonVisible(Landroid/view/View;Z)V

    .line 333
    iget-object v8, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mPlayButton:Landroid/widget/Button;

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    if-nez v4, :cond_2

    move v7, v5

    :goto_2
    invoke-direct {p0, v8, v7}, Lcom/google/android/gm/MessageHeaderAttachment;->setButtonVisible(Landroid/view/View;Z)V

    .line 334
    iget-object v8, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mViewButton:Landroid/widget/Button;

    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    if-nez v4, :cond_3

    move v7, v5

    :goto_3
    invoke-direct {p0, v8, v7}, Lcom/google/android/gm/MessageHeaderAttachment;->setButtonVisible(Landroid/view/View;Z)V

    .line 335
    iget-object v8, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mSaveButton:Landroid/widget/Button;

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderAttachment;->canSave()Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez v4, :cond_4

    move v7, v5

    :goto_4
    invoke-direct {p0, v8, v7}, Lcom/google/android/gm/MessageHeaderAttachment;->setButtonVisible(Landroid/view/View;Z)V

    .line 336
    iget-object v7, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mInfoButton:Landroid/widget/Button;

    if-nez v2, :cond_5

    if-nez v3, :cond_5

    :goto_5
    invoke-direct {p0, v7, v5}, Lcom/google/android/gm/MessageHeaderAttachment;->setButtonVisible(Landroid/view/View;Z)V

    .line 347
    .end local v1           #canPlay:Z
    .end local v2           #canPreview:Z
    .end local v3           #canView:Z
    :goto_6
    return-void

    .end local v0           #canInstall:Z
    .end local v4           #isDownloading:Z
    :cond_0
    move v4, v6

    .line 317
    goto :goto_0

    .restart local v0       #canInstall:Z
    .restart local v4       #isDownloading:Z
    :cond_1
    move v7, v6

    .line 322
    goto :goto_1

    .restart local v1       #canPlay:Z
    .restart local v2       #canPreview:Z
    .restart local v3       #canView:Z
    :cond_2
    move v7, v6

    .line 333
    goto :goto_2

    :cond_3
    move v7, v6

    .line 334
    goto :goto_3

    :cond_4
    move v7, v6

    .line 335
    goto :goto_4

    :cond_5
    move v5, v6

    .line 336
    goto :goto_5

    .line 340
    .end local v1           #canPlay:Z
    .end local v2           #canPreview:Z
    .end local v3           #canView:Z
    :cond_6
    iget-object v5, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mPreviewButton:Landroid/widget/Button;

    invoke-direct {p0, v5, v6}, Lcom/google/android/gm/MessageHeaderAttachment;->setButtonVisible(Landroid/view/View;Z)V

    .line 341
    iget-object v5, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mPlayButton:Landroid/widget/Button;

    invoke-direct {p0, v5, v6}, Lcom/google/android/gm/MessageHeaderAttachment;->setButtonVisible(Landroid/view/View;Z)V

    .line 342
    iget-object v5, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mViewButton:Landroid/widget/Button;

    invoke-direct {p0, v5, v6}, Lcom/google/android/gm/MessageHeaderAttachment;->setButtonVisible(Landroid/view/View;Z)V

    .line 343
    iget-object v5, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mSaveButton:Landroid/widget/Button;

    invoke-direct {p0, v5, v6}, Lcom/google/android/gm/MessageHeaderAttachment;->setButtonVisible(Landroid/view/View;Z)V

    .line 344
    iget-object v5, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mInfoButton:Landroid/widget/Button;

    invoke-direct {p0, v5, v6}, Lcom/google/android/gm/MessageHeaderAttachment;->setButtonVisible(Landroid/view/View;Z)V

    goto :goto_6
.end method

.method private updateSubtitleText(Ljava/lang/String;)V
    .locals 3
    .parameter "prefix"

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .local v0, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 205
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mAttachmentSizeText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    iget-object v1, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mDisplayType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-object v1, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderAttachment;->cancelAttachment()V

    .line 409
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gm/MessageHeaderAttachment;->onClick(ILandroid/view/View;)Z

    .line 243
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mViewProgressDialog:Landroid/app/ProgressDialog;

    .line 404
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 217
    const v0, 0x7f0f004b

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderAttachment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mIcon:Landroid/widget/ImageView;

    .line 218
    const v0, 0x7f0f004c

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderAttachment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mTitle:Landroid/widget/TextView;

    .line 219
    const v0, 0x7f0f004d

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderAttachment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mSubTitle:Landroid/widget/TextView;

    .line 220
    const v0, 0x7f0f004e

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderAttachment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mProgress:Landroid/widget/ProgressBar;

    .line 222
    const v0, 0x7f0f0050

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderAttachment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mPreviewButton:Landroid/widget/Button;

    .line 223
    const v0, 0x7f0f0051

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderAttachment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mViewButton:Landroid/widget/Button;

    .line 224
    const v0, 0x7f0f0052

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderAttachment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mSaveButton:Landroid/widget/Button;

    .line 225
    const v0, 0x7f0f0053

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderAttachment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mInfoButton:Landroid/widget/Button;

    .line 226
    const v0, 0x7f0f0054

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderAttachment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mPlayButton:Landroid/widget/Button;

    .line 227
    const v0, 0x7f0f0055

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderAttachment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mInstallButton:Landroid/widget/Button;

    .line 228
    const v0, 0x7f0f0056

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderAttachment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mCancelButton:Landroid/widget/Button;

    .line 230
    invoke-virtual {p0, p0}, Lcom/google/android/gm/MessageHeaderAttachment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mPreviewButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mViewButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mInfoButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mPlayButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mInstallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 247
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/MessageHeaderAttachment;->onClick(ILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public render(Lcom/google/android/gm/provider/Gmail$Attachment;Ljava/lang/String;JJJ)V
    .locals 6
    .parameter "attachment"
    .parameter "account"
    .parameter "conversationId"
    .parameter "localMessageId"
    .parameter "serverMessageId"

    .prologue
    const/4 v5, 0x0

    .line 91
    iput-object p1, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mAttachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    .line 92
    iput-object p2, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mAccount:Ljava/lang/String;

    .line 93
    iput-wide p3, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mConversationId:J

    .line 94
    iput-wide p7, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mServerMessageId:J

    .line 95
    iget-object v0, p1, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderAttachment;->setTag(Ljava/lang/Object;)V

    .line 96
    sget-object v4, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->SIMPLE:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    move-object v0, p2

    move-wide v1, p5

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/provider/Gmail;->getAttachmentUri(Ljava/lang/String;JLcom/google/android/gm/provider/Gmail$Attachment;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mUriSimple:Landroid/net/Uri;

    .line 98
    sget-object v4, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->BEST:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    move-object v0, p2

    move-wide v1, p5

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/provider/Gmail;->getAttachmentUri(Ljava/lang/String;JLcom/google/android/gm/provider/Gmail$Attachment;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mUriBest:Landroid/net/Uri;

    .line 100
    sget-object v4, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->BEST:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    const/4 v5, 0x1

    move-object v0, p2

    move-wide v1, p5

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/provider/Gmail;->getAttachmentUri(Ljava/lang/String;JLcom/google/android/gm/provider/Gmail$Attachment;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mUriBestSd:Landroid/net/Uri;

    .line 103
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderAttachment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/AttachmentUtils;->convertToHumanReadableSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mAttachmentSizeText:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderAttachment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gm/AttachmentUtils;->getDisplayType(Landroid/content/Context;Lcom/google/android/gm/provider/Gmail$Attachment;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mDisplayType:Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/MessageHeaderAttachment;->updateSubtitleText(Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderAttachment;->isImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mUriSimple:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mProgress:Landroid/widget/ProgressBar;

    iget v1, p1, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 123
    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderAttachment;->updateActions()V

    .line 124
    return-void
.end method

.method public updateStatus(Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;)V
    .locals 7
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 136
    iput-object p1, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mResult:Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;

    .line 138
    invoke-virtual {p1}, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->isStatusError()Z

    move-result v0

    .line 139
    .local v0, isError:Z
    invoke-virtual {p1}, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->isStatusSuccess()Z

    move-result v1

    .line 141
    .local v1, isSuccess:Z
    iget-object v5, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mAttachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    iget v5, v5, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    if-lez v5, :cond_3

    iget v5, p1, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->downloadedSize:I

    if-lez v5, :cond_3

    iget v5, p1, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->downloadedSize:I

    iget-object v6, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mAttachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    iget v6, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    if-ge v5, v6, :cond_3

    move v2, v3

    .line 144
    .local v2, showProgress:Z
    :goto_0
    iget-object v5, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mViewProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mViewProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 145
    iget-object v5, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mViewProgressDialog:Landroid/app/ProgressDialog;

    iget v6, p1, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->downloadedSize:I

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 146
    iget-object v5, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mViewProgressDialog:Landroid/app/ProgressDialog;

    if-nez v2, :cond_4

    :goto_1
    invoke-virtual {v5, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 148
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    iget-object v3, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mViewProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 152
    :cond_1
    if-eqz v1, :cond_2

    .line 153
    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderAttachment;->sendViewIntent()V

    .line 180
    :cond_2
    :goto_2
    if-eqz v0, :cond_8

    .line 181
    iget-object v3, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderAttachment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0102

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :goto_3
    invoke-direct {p0}, Lcom/google/android/gm/MessageHeaderAttachment;->updateActions()V

    .line 188
    return-void

    .end local v2           #showProgress:Z
    :cond_3
    move v2, v4

    .line 141
    goto :goto_0

    .restart local v2       #showProgress:Z
    :cond_4
    move v3, v4

    .line 146
    goto :goto_1

    .line 157
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->isDownloading()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 158
    iget-object v5, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mProgress:Landroid/widget/ProgressBar;

    iget v6, p1, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->downloadedSize:I

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 159
    invoke-direct {p0, v3}, Lcom/google/android/gm/MessageHeaderAttachment;->setProgressVisible(Z)V

    .line 161
    iget-object v5, p0, Lcom/google/android/gm/MessageHeaderAttachment;->mProgress:Landroid/widget/ProgressBar;

    if-nez v2, :cond_6

    :goto_4
    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_2

    :cond_6
    move v3, v4

    goto :goto_4

    .line 163
    :cond_7
    invoke-direct {p0, v4}, Lcom/google/android/gm/MessageHeaderAttachment;->setProgressVisible(Z)V

    goto :goto_2

    .line 183
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->isDownloadedToSd()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderAttachment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0101

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-direct {p0, v3}, Lcom/google/android/gm/MessageHeaderAttachment;->updateSubtitleText(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    goto :goto_5
.end method
