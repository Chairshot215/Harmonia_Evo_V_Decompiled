.class public Lcom/android/mms/view/impl/NotificationViewImpl;
.super Landroid/widget/LinearLayout;
.source "NotificationViewImpl.java"

# interfaces
.implements Lcom/android/mms/view/NotificationView;


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationViewImpl"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDeclineButton:Landroid/widget/Button;

.field private mDownloadButton:Landroid/widget/Button;

.field private mDownloadingIndicator:Landroid/widget/TextView;

.field private mExpireTimeView:Landroid/widget/TextView;

.field private mFromView:Landroid/widget/TextView;

.field private mMessageSizeView:Landroid/widget/TextView;

.field private mNotification:Lcom/android/mms/msg/Notification;

.field private mRightStatusIndicator:Landroid/widget/ImageView;

.field private mSubjectView:Landroid/widget/TextView;

.field private mThirdStatusIndicator:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/view/impl/NotificationViewImpl;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/view/impl/NotificationViewImpl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/mms/view/impl/NotificationViewImpl;->downloadMmsData()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/view/impl/NotificationViewImpl;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/view/impl/NotificationViewImpl;)Lcom/android/mms/msg/Notification;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mNotification:Lcom/android/mms/msg/Notification;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/view/impl/NotificationViewImpl;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private downloadMmsData()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 251
    iget-object v1, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mDownloadingIndicator:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    iget-object v1, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 253
    iget-object v1, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 254
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "uri"

    iget-object v2, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mNotification:Lcom/android/mms/msg/Notification;

    invoke-virtual {v2}, Lcom/android/mms/msg/Notification;->getURI()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    iget-object v1, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 258
    return-void
.end method


# virtual methods
.method public bindTo(Lcom/android/mms/msg/AbstractMessage;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 117
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/mms/view/impl/NotificationViewImpl;->preBindingView()V

    move-object v0, p1

    .line 121
    check-cast v0, Lcom/android/mms/msg/Notification;

    iput-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mNotification:Lcom/android/mms/msg/Notification;

    .line 123
    invoke-static {p0, p1}, Lcom/android/mms/view/ctl/NotificationViewCtl;->bind(Lcom/android/mms/view/MessageView;Lcom/android/mms/msg/AbstractMessage;)V

    .line 124
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/view/impl/NotificationViewImpl;->setFrom(Ljava/lang/String;)V

    .line 126
    :cond_0
    return-void
.end method

.method public fireEvent(Lcom/android/mms/view/Event;)V
    .locals 6
    .parameter "evt"

    .prologue
    const/4 v5, 0x1

    .line 266
    sget-object v3, Lcom/android/mms/view/Event;->CLICKED_DOWNLOAD:Lcom/android/mms/view/Event;

    if-eq p1, v3, :cond_0

    sget-object v3, Lcom/android/mms/view/Event;->CLICKED_EVENT:Lcom/android/mms/view/Event;

    if-ne p1, v3, :cond_3

    .line 271
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 272
    .local v2, sp:Landroid/content/SharedPreferences;
    sget-object v3, Lcom/android/mms/ui/MessagingPreferenceActivity;->RETRIEVAL_DURING_ROAMING:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 274
    .local v1, roamingRetrival:Z
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->isRoaming()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    .line 275
    iget-object v3, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mActivity:Landroid/app/Activity;

    new-instance v4, Lcom/android/mms/view/impl/NotificationViewImpl$4;

    invoke-direct {v4, p0}, Lcom/android/mms/view/impl/NotificationViewImpl$4;-><init>(Lcom/android/mms/view/impl/NotificationViewImpl;)V

    new-instance v5, Lcom/android/mms/view/impl/NotificationViewImpl$5;

    invoke-direct {v5, p0}, Lcom/android/mms/view/impl/NotificationViewImpl$5;-><init>(Lcom/android/mms/view/impl/NotificationViewImpl;)V

    invoke-static {v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->showRoamingDownloadConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 304
    .end local v1           #roamingRetrival:Z
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return-void

    .line 291
    .restart local v1       #roamingRetrival:Z
    .restart local v2       #sp:Landroid/content/SharedPreferences;
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/mms/view/impl/NotificationViewImpl;->setDownloading(Z)V

    .line 292
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 293
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "uri"

    iget-object v4, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mNotification:Lcom/android/mms/msg/Notification;

    invoke-virtual {v4}, Lcom/android/mms/msg/Notification;->getURI()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v3, "type"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    iget-object v3, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 298
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #roamingRetrival:Z
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_3
    sget-object v3, Lcom/android/mms/view/Event;->CLICKED_DECLINE:Lcom/android/mms/view/Event;

    if-ne p1, v3, :cond_1

    .line 299
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/mms/ui/DeclineConfirmationDialog;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mNotification:Lcom/android/mms/msg/Notification;

    invoke-virtual {v3}, Lcom/android/mms/msg/Notification;->getURI()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 301
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 302
    iget-object v3, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public getBoundItem()Lcom/android/mms/msg/AbstractMessage;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mNotification:Lcom/android/mms/msg/Notification;

    return-object v0
.end method

.method public getIndicatorStatus()Z
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mRightStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 408
    :cond_0
    const/4 v0, 0x1

    .line 409
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 87
    const v0, 0x7f0e0095

    invoke-virtual {p0, v0}, Lcom/android/mms/view/impl/NotificationViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mFromView:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f0e0096

    invoke-virtual {p0, v0}, Lcom/android/mms/view/impl/NotificationViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mSubjectView:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f0e0097

    invoke-virtual {p0, v0}, Lcom/android/mms/view/impl/NotificationViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mMessageSizeView:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f0e0098

    invoke-virtual {p0, v0}, Lcom/android/mms/view/impl/NotificationViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mExpireTimeView:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f0e009b

    invoke-virtual {p0, v0}, Lcom/android/mms/view/impl/NotificationViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mDownloadingIndicator:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f0e0099

    invoke-virtual {p0, v0}, Lcom/android/mms/view/impl/NotificationViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mDownloadButton:Landroid/widget/Button;

    .line 93
    const v0, 0x7f0e009a

    invoke-virtual {p0, v0}, Lcom/android/mms/view/impl/NotificationViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mDeclineButton:Landroid/widget/Button;

    .line 95
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/view/impl/NotificationViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mContext:Landroid/content/Context;

    const-string v3, "common_button_small"

    const v4, 0x7f0200d4

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    const v0, 0x7f0e0065

    invoke-virtual {p0, v0}, Lcom/android/mms/view/impl/NotificationViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mRightStatusIndicator:Landroid/widget/ImageView;

    .line 99
    const v0, 0x7f0e0067

    invoke-virtual {p0, v0}, Lcom/android/mms/view/impl/NotificationViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    .line 102
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mDownloadButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/view/impl/NotificationViewImpl$1;

    invoke-direct {v1, p0}, Lcom/android/mms/view/impl/NotificationViewImpl$1;-><init>(Lcom/android/mms/view/impl/NotificationViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mDeclineButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/view/impl/NotificationViewImpl$2;

    invoke-direct {v1, p0}, Lcom/android/mms/view/impl/NotificationViewImpl$2;-><init>(Lcom/android/mms/view/impl/NotificationViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    return-void
.end method

.method preBindingView()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 307
    iput-object v2, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mNotification:Lcom/android/mms/msg/Notification;

    .line 309
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mMessageSizeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mExpireTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mDownloadingIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mRightStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mRightStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 322
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 326
    return-void
.end method

.method public setCaller(Landroid/app/Activity;)V
    .locals 0
    .parameter "act"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mActivity:Landroid/app/Activity;

    .line 338
    return-void
.end method

.method public setDownloading(Z)V
    .locals 4
    .parameter "isDownloading"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 204
    if-eqz p1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mDownloadingIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 247
    :goto_0
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/view/impl/NotificationViewImpl;->setLongClickable(Z)V

    .line 210
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mDownloadingIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 212
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 217
    :goto_1
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mDownloadButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/view/impl/NotificationViewImpl$3;

    invoke-direct {v1, p0}, Lcom/android/mms/view/impl/NotificationViewImpl$3;-><init>(Lcom/android/mms/view/impl/NotificationViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method public setErrorFlag()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public setEvdoicon(Z)V
    .locals 0
    .parameter "isevdo"

    .prologue
    .line 402
    return-void
.end method

.method public setFakeIndicatorView()V
    .locals 0

    .prologue
    .line 414
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 4
    .parameter "sender"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mFromView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/mms/view/impl/NotificationViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    return-void
.end method

.method public setIncomingFlag()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public setIsSimSms(Z)V
    .locals 0
    .parameter "isSimSms"

    .prologue
    .line 332
    return-void
.end method

.method public setMarkIcon(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 377
    return-void
.end method

.method public setMessageLocked()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mRightStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02017c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 383
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mRightStatusIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    return-void
.end method

.method public setMessageSize(I)V
    .locals 4
    .parameter "msgSize"

    .prologue
    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0900c0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit16 v2, p1, 0x3ff

    div-int/lit16 v2, v2, 0x400

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f090029

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mMessageSizeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    return-void
.end method

.method public setPendingFlag()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public setPriority(I)V
    .locals 7
    .parameter "pri"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const v4, 0x7f020102

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 345
    invoke-static {}, Lcom/android/mms/MmsApp;->getSMSHighPriorityLevel()I

    move-result v0

    .line 346
    .local v0, highPriorityLevel:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 347
    if-lt p1, v0, :cond_1

    .line 348
    iget-object v1, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 349
    iget-object v1, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 352
    iget-object v1, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 356
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSpecialSMSpriority()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 357
    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    if-ne p1, v6, :cond_4

    .line 358
    :cond_3
    iget-object v1, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 359
    iget-object v1, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 361
    :cond_4
    iget-object v1, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    iget-object v1, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 365
    :cond_5
    if-nez p1, :cond_6

    .line 366
    iget-object v1, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 367
    iget-object v1, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 368
    :cond_6
    if-gt p1, v6, :cond_0

    .line 369
    iget-object v1, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 370
    iget-object v1, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRequireDeliveryReport()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public setRequireReadReport()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public setSentFlag()V
    .locals 0

    .prologue
    .line 376
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 4
    .parameter "subject"

    .prologue
    const v3, 0x7f0900bf

    .line 176
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mSubjectView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/mms/view/impl/NotificationViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/view/impl/NotificationViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTextSize(I)V
    .locals 3
    .parameter "size"

    .prologue
    const/4 v2, 0x0

    .line 390
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mFromView:Landroid/widget/TextView;

    int-to-float v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 391
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mSubjectView:Landroid/widget/TextView;

    int-to-float v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 392
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mMessageSizeView:Landroid/widget/TextView;

    int-to-float v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 395
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mExpireTimeView:Landroid/widget/TextView;

    add-int/lit8 v1, p1, -0x4

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 397
    return-void
.end method

.method public setTimeExpire(J)V
    .locals 6
    .parameter "time"

    .prologue
    .line 198
    iget-object v1, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f090028

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, p2}, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->formatTimeStampStringForFuture(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, timeStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/view/impl/NotificationViewImpl;->mExpireTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    return-void
.end method

.method public setTimeReceived(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 156
    return-void
.end method

.method public setTimeRetried(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 141
    return-void
.end method

.method public setTimeSent(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 188
    return-void
.end method

.method public setUnread()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method
