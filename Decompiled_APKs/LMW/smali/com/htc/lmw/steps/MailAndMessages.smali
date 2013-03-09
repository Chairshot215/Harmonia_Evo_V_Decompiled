.class public Lcom/htc/lmw/steps/MailAndMessages;
.super Lcom/htc/lmw/WizardActivity;
.source "MailAndMessages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lmw/steps/MailAndMessages$PhoneActivity;
    }
.end annotation


# static fields
.field private static final DELETE_KEY:Ljava/lang/String; = "pref_key_auto_delete"

.field private static final DELETE_OLD_MESSAGES_ID:I = 0x64

.field private static final DELETE_URL:Ljava/lang/String; = "content://htc-messages/message-settings/pref_key_auto_delete"

.field private static final DOWNLOAD_PAST_MAIL_ID:I = 0x63

.field private static final MMS_DIALOG:I = 0x2

.field private static final MMS_KEY:Ljava/lang/String; = "MaxMmsMessagesPerThread"

.field private static final MMS_MAX_LIMIT:I = 0x3e7

.field private static final MMS_MIN_LIMIT:I = 0xa

.field private static final MMS_URL:Ljava/lang/String; = "content://htc-messages/message-settings/MaxMmsMessagesPerThread"

.field private static final MULTIMEDIA_MESSAGE_LIMIT_ID:I = 0x66

.field private static final SMS_DIALOG:I = 0x1

.field private static final SMS_KEY:Ljava/lang/String; = "MaxSmsMessagesPerThread"

.field private static final SMS_MAX_LIMIT:I = 0x1388

.field private static final SMS_MIN_LIMIT:I = 0xa

.field private static final SMS_URL:Ljava/lang/String; = "content://htc-messages/message-settings/MaxSmsMessagesPerThread"

.field private static final TAG:Ljava/lang/String; = "LMW/MailAndMessages"

.field private static final TEXT_MESSAGE_LIMIT_ID:I = 0x65

.field private static emailSettings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DEFAULT_EMAIL_ID:I

.field private activeDialog:Lcom/htc/lmw/ui/NumberPickerDialog;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsBroatToBackground:Z

.field mListView:Lcom/htc/widget/HtcListView;

.field private mMailSettingId:I

.field private mMmsNb:I

.field private mSmsNb:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/lmw/steps/MailAndMessages;->emailSettings:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/16 v1, 0xa

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1}, Lcom/htc/lmw/WizardActivity;-><init>(Landroid/app/Activity;)V

    .line 55
    iput v0, p0, Lcom/htc/lmw/steps/MailAndMessages;->DEFAULT_EMAIL_ID:I

    .line 62
    iput v0, p0, Lcom/htc/lmw/steps/MailAndMessages;->mMailSettingId:I

    .line 66
    iput v1, p0, Lcom/htc/lmw/steps/MailAndMessages;->mSmsNb:I

    .line 67
    iput v1, p0, Lcom/htc/lmw/steps/MailAndMessages;->mMmsNb:I

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lmw/steps/MailAndMessages;->mIsBroatToBackground:Z

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lmw/steps/MailAndMessages;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/lmw/steps/MailAndMessages;->showMailStorageDurationDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/lmw/steps/MailAndMessages;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/lmw/steps/MailAndMessages;->deleteOldMessageClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/lmw/steps/MailAndMessages;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/lmw/steps/MailAndMessages;->smsLimitDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/lmw/steps/MailAndMessages;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/lmw/steps/MailAndMessages;->mmsLimitDialog()V

    return-void
.end method

.method static synthetic access$402(Lcom/htc/lmw/steps/MailAndMessages;Lcom/htc/lmw/ui/NumberPickerDialog;)Lcom/htc/lmw/ui/NumberPickerDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/htc/lmw/steps/MailAndMessages;->activeDialog:Lcom/htc/lmw/ui/NumberPickerDialog;

    return-object p1
.end method

.method static synthetic access$500()Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/htc/lmw/steps/MailAndMessages;->emailSettings:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/lmw/steps/MailAndMessages;ILjava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/htc/lmw/steps/MailAndMessages;->setItemHint(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$702(Lcom/htc/lmw/steps/MailAndMessages;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/htc/lmw/steps/MailAndMessages;->mMailSettingId:I

    return p1
.end method

.method private addDiscription()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 173
    iget-object v1, p0, Lcom/htc/lmw/steps/MailAndMessages;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030004

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 174
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/htc/widget/HtcListItemSeparableType;

    invoke-direct {v1, v4, v4}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 175
    invoke-virtual {v0, v4}, Landroid/view/View;->setRoundedCornerEnabled(Z)V

    .line 176
    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 177
    iget-object v1, p0, Lcom/htc/lmw/steps/MailAndMessages;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;)V

    .line 178
    return-void
.end method

.method private varargs addSection(Lcom/htc/widget/HtcListView;I[Lcom/htc/lmw/ViewEntry;)V
    .locals 10
    .parameter "listView"
    .parameter "titleId"
    .parameter "buttons"

    .prologue
    .line 159
    const/4 v6, 0x0

    .line 161
    .local v6, v:Landroid/view/View;
    iget-object v7, p0, Lcom/htc/lmw/steps/MailAndMessages;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x2090026

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 162
    .local v5, title:Landroid/view/View;
    const v7, 0x2020010

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 163
    .local v4, text:Landroid/widget/TextView;
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(I)V

    .line 164
    invoke-virtual {p1, v5}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;)V

    .line 166
    move-object v0, p3

    .local v0, arr$:[Lcom/htc/lmw/ViewEntry;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 167
    .local v1, button:Lcom/htc/lmw/ViewEntry;
    invoke-virtual {v1, p1}, Lcom/htc/lmw/ViewEntry;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 168
    invoke-virtual {p1, v6}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;)V

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .end local v1           #button:Lcom/htc/lmw/ViewEntry;
    :cond_0
    new-instance v7, Lcom/htc/widget/HtcListItemSeparableType;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 171
    return-void
.end method

.method private deleteOldMessageClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 264
    const v2, 0x202001f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 265
    .local v0, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 266
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 267
    .local v1, checked:Z
    invoke-direct {p0, v1}, Lcom/htc/lmw/steps/MailAndMessages;->sendDeleteOldMessage(Z)V

    .line 268
    const/16 v2, 0x65

    invoke-virtual {p0, v2, v1}, Lcom/htc/lmw/steps/MailAndMessages;->setItemEnabled(IZ)V

    .line 269
    const/16 v2, 0x66

    invoke-virtual {p0, v2, v1}, Lcom/htc/lmw/steps/MailAndMessages;->setItemEnabled(IZ)V

    .line 270
    return-void
.end method

.method private getFormattedStr(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "formattedStr"
    .parameter "value"

    .prologue
    .line 477
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 481
    :goto_0
    return-object v1

    .line 478
    :catch_0
    move-exception v0

    .line 480
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LMW/MailAndMessages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad localization string, possibly around \"%s\". Could not set item hint, because of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const-string v1, ""

    goto :goto_0
.end method

.method private getLocalizedStr(I)Ljava/lang/String;
    .locals 4
    .parameter "stringId"

    .prologue
    .line 486
    :try_start_0
    iget-object v1, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 489
    :goto_0
    return-object v1

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LMW/MailAndMessages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not set item hint, because of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const-string v1, ""

    goto :goto_0
.end method

.method private mmsLimitDialog()V
    .locals 5

    .prologue
    .line 240
    iget-object v1, p0, Lcom/htc/lmw/steps/MailAndMessages;->activeDialog:Lcom/htc/lmw/ui/NumberPickerDialog;

    if-eqz v1, :cond_0

    .line 260
    :goto_0
    return-void

    .line 241
    :cond_0
    new-instance v0, Lcom/htc/lmw/steps/MailAndMessages$4;

    invoke-direct {v0, p0}, Lcom/htc/lmw/steps/MailAndMessages$4;-><init>(Lcom/htc/lmw/steps/MailAndMessages;)V

    .line 250
    .local v0, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/htc/lmw/ui/NumberPickerDialog;

    iget-object v2, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    const/16 v3, 0xa

    const/16 v4, 0x3e7

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/htc/lmw/ui/NumberPickerDialog;-><init>(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)V

    iput-object v1, p0, Lcom/htc/lmw/steps/MailAndMessages;->activeDialog:Lcom/htc/lmw/ui/NumberPickerDialog;

    .line 251
    iget-object v1, p0, Lcom/htc/lmw/steps/MailAndMessages;->activeDialog:Lcom/htc/lmw/ui/NumberPickerDialog;

    new-instance v2, Lcom/htc/lmw/steps/MailAndMessages$5;

    invoke-direct {v2, p0}, Lcom/htc/lmw/steps/MailAndMessages$5;-><init>(Lcom/htc/lmw/steps/MailAndMessages;)V

    invoke-virtual {v1, v2}, Lcom/htc/lmw/ui/NumberPickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 257
    iget-object v1, p0, Lcom/htc/lmw/steps/MailAndMessages;->activeDialog:Lcom/htc/lmw/ui/NumberPickerDialog;

    const v2, 0x7f050043

    invoke-virtual {v1, v2}, Lcom/htc/lmw/ui/NumberPickerDialog;->setTitle(I)V

    .line 258
    iget-object v1, p0, Lcom/htc/lmw/steps/MailAndMessages;->activeDialog:Lcom/htc/lmw/ui/NumberPickerDialog;

    iget v2, p0, Lcom/htc/lmw/steps/MailAndMessages;->mMmsNb:I

    invoke-virtual {v1, v2}, Lcom/htc/lmw/ui/NumberPickerDialog;->setNumber(I)V

    .line 259
    iget-object v1, p0, Lcom/htc/lmw/steps/MailAndMessages;->activeDialog:Lcom/htc/lmw/ui/NumberPickerDialog;

    invoke-virtual {v1}, Lcom/htc/lmw/ui/NumberPickerDialog;->show()V

    goto :goto_0
.end method

.method private sendDeleteOldMessage(Z)V
    .locals 6
    .parameter "state"

    .prologue
    .line 463
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 464
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "pref_key_auto_delete"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 467
    :try_start_0
    iget-object v2, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://htc-messages/message-settings/pref_key_auto_delete"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :goto_0
    return-void

    .line 469
    :catch_0
    move-exception v0

    .line 471
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private sendMailSetting(I)V
    .locals 6
    .parameter "item"

    .prologue
    .line 441
    if-lez p1, :cond_0

    .line 442
    :try_start_0
    const-string v3, "content://mail/accounts/lowStorage"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 443
    .local v1, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 451
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "_fetchMailDays"

    add-int/lit8 v4, p1, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 452
    iget-object v3, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-void

    .line 455
    :catch_0
    move-exception v0

    .line 457
    .local v0, e:Ljava/lang/Throwable;
    const-string v3, "LMW/MailAndMessages"

    const-string v4, "Failed to update download past mails limit for all account"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setItemHint(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "itemId"
    .parameter "hint"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/htc/lmw/Customize;->setItemHint(Landroid/app/Activity;ILjava/lang/CharSequence;)V

    .line 496
    return-void
.end method

.method private setMMSSetting(I)V
    .locals 6
    .parameter "number"

    .prologue
    .line 423
    const/16 v2, 0xa

    if-ge p1, v2, :cond_1

    .line 424
    const/16 p1, 0xa

    .line 428
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 429
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "MaxMmsMessagesPerThread"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 431
    :try_start_0
    iget-object v2, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://htc-messages/message-settings/MaxMmsMessagesPerThread"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_1
    return-void

    .line 425
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_1
    const/16 v2, 0x3e7

    if-le p1, v2, :cond_0

    .line 426
    const/16 p1, 0x3e7

    goto :goto_0

    .line 432
    .restart local v1       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 433
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setSMSSetting(I)V
    .locals 6
    .parameter "number"

    .prologue
    .line 406
    const/16 v2, 0xa

    if-ge p1, v2, :cond_1

    .line 407
    const/16 p1, 0xa

    .line 411
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 412
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "MaxSmsMessagesPerThread"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 415
    :try_start_0
    iget-object v2, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://htc-messages/message-settings/MaxSmsMessagesPerThread"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :goto_1
    return-void

    .line 408
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_1
    const/16 v2, 0x1388

    if-le p1, v2, :cond_0

    .line 409
    const/16 p1, 0x1388

    goto :goto_0

    .line 416
    .restart local v1       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 417
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setupEmailButton()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 210
    new-instance v0, Lcom/htc/lmw/ViewEntry$View2Text;

    iget-object v2, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    const/16 v3, 0x63

    const v1, 0x7f05003d

    invoke-static {v1}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v4

    sget-object v1, Lcom/htc/lmw/steps/MailAndMessages;->emailSettings:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/htc/lmw/ViewEntry$View2Text;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 211
    .local v0, button:Lcom/htc/lmw/ViewEntry$View2Text;
    iget-object v1, p0, Lcom/htc/lmw/steps/MailAndMessages;->mListView:Lcom/htc/widget/HtcListView;

    const v2, 0x7f05003b

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/htc/lmw/ViewEntry;

    aput-object v0, v3, v5

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/lmw/steps/MailAndMessages;->addSection(Lcom/htc/widget/HtcListView;I[Lcom/htc/lmw/ViewEntry;)V

    .line 212
    return-void
.end method

.method private setupListView()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/htc/lmw/steps/MailAndMessages;->mListView:Lcom/htc/widget/HtcListView;

    .line 139
    invoke-direct {p0}, Lcom/htc/lmw/steps/MailAndMessages;->addDiscription()V

    .line 140
    invoke-direct {p0}, Lcom/htc/lmw/steps/MailAndMessages;->setupEmailButton()V

    .line 141
    invoke-direct {p0}, Lcom/htc/lmw/steps/MailAndMessages;->setupMessagesButton()V

    .line 143
    iget-object v0, p0, Lcom/htc/lmw/steps/MailAndMessages;->mListView:Lcom/htc/widget/HtcListView;

    new-instance v1, Lcom/htc/lmw/steps/MailAndMessages$1;

    invoke-direct {v1, p0}, Lcom/htc/lmw/steps/MailAndMessages$1;-><init>(Lcom/htc/lmw/steps/MailAndMessages;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/htc/lmw/steps/MailAndMessages;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 156
    return-void
.end method

.method private setupMessagesButton()V
    .locals 18

    .prologue
    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lmw/steps/MailAndMessages;->getSmsSetting()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/lmw/steps/MailAndMessages;->mSmsNb:I

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lmw/steps/MailAndMessages;->getMmsSetting()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/lmw/steps/MailAndMessages;->mMmsNb:I

    .line 185
    const v2, 0x7f050042

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/lmw/steps/MailAndMessages;->getLocalizedStr(I)Ljava/lang/String;

    move-result-object v17

    .line 186
    .local v17, msgHint:Ljava/lang/String;
    const v2, 0x7f050044

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/lmw/steps/MailAndMessages;->getLocalizedStr(I)Ljava/lang/String;

    move-result-object v16

    .line 188
    .local v16, mmsHint:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lmw/steps/MailAndMessages;->getDeleteSetting()Z

    move-result v7

    .line 189
    .local v7, delEnabled:Z
    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    const-string v3, "common_more_view"

    const v4, 0x2080065

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v13

    .line 193
    .local v13, imagerId:I
    :goto_0
    const/4 v2, 0x3

    new-array v15, v2, [Lcom/htc/lmw/ViewEntry;

    const/4 v8, 0x0

    new-instance v2, Lcom/htc/lmw/ViewEntry$View2TextCheckbox;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    const/16 v4, 0x64

    const v5, 0x7f05003f

    invoke-static {v5}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v5

    const v6, 0x7f050040

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/lmw/steps/MailAndMessages;->getLocalizedStr(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v2 .. v7}, Lcom/htc/lmw/ViewEntry$View2TextCheckbox;-><init>(Landroid/content/Context;IILjava/lang/String;Z)V

    aput-object v2, v15, v8

    const/4 v2, 0x1

    new-instance v8, Lcom/htc/lmw/ViewEntry$View2TextImage;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    const/16 v10, 0x65

    const v3, 0x7f050041

    invoke-static {v3}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lmw/steps/MailAndMessages;->mSmsNb:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v3}, Lcom/htc/lmw/steps/MailAndMessages;->getFormattedStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    move v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/htc/lmw/ViewEntry$View2TextImage;-><init>(Landroid/content/Context;IILjava/lang/String;IZ)V

    aput-object v8, v15, v2

    const/4 v2, 0x2

    new-instance v8, Lcom/htc/lmw/ViewEntry$View2TextImage;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    const/16 v10, 0x66

    const v3, 0x7f050043

    invoke-static {v3}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lmw/steps/MailAndMessages;->mMmsNb:I

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3}, Lcom/htc/lmw/steps/MailAndMessages;->getFormattedStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    if-eqz v7, :cond_1

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcMMSFlag:Z

    if-eqz v3, :cond_1

    const/4 v14, 0x1

    :goto_1
    invoke-direct/range {v8 .. v14}, Lcom/htc/lmw/ViewEntry$View2TextImage;-><init>(Landroid/content/Context;IILjava/lang/String;IZ)V

    aput-object v8, v15, v2

    .line 206
    .local v15, messagesBar:[Lcom/htc/lmw/ViewEntry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lmw/steps/MailAndMessages;->mListView:Lcom/htc/widget/HtcListView;

    const v3, 0x7f05003c

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v15}, Lcom/htc/lmw/steps/MailAndMessages;->addSection(Lcom/htc/widget/HtcListView;I[Lcom/htc/lmw/ViewEntry;)V

    .line 207
    return-void

    .line 189
    .end local v13           #imagerId:I
    .end local v15           #messagesBar:[Lcom/htc/lmw/ViewEntry;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    const-string v3, "common_more_disabled"

    const v4, 0x20804a7

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v13

    goto/16 :goto_0

    .line 193
    .restart local v13       #imagerId:I
    :cond_1
    const/4 v14, 0x0

    goto :goto_1
.end method

.method private showMailStorageDurationDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 348
    const/4 v5, 0x4

    new-array v4, v5, [Ljava/lang/CharSequence;

    sget-object v5, Lcom/htc/lmw/steps/MailAndMessages;->emailSettings:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    aput-object v5, v4, v6

    sget-object v5, Lcom/htc/lmw/steps/MailAndMessages;->emailSettings:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    aput-object v5, v4, v7

    sget-object v5, Lcom/htc/lmw/steps/MailAndMessages;->emailSettings:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    aput-object v5, v4, v8

    sget-object v5, Lcom/htc/lmw/steps/MailAndMessages;->emailSettings:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    aput-object v5, v4, v9

    .line 350
    .local v4, tempItems:[Ljava/lang/CharSequence;
    move-object v3, v4

    .line 360
    .local v3, items:[Ljava/lang/CharSequence;
    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-direct {v0, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 361
    .local v0, builder:Lcom/htc/dialog/HtcAlertDialog$Builder;
    const v5, 0x7f05003d

    invoke-static {v5}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 363
    iget v1, p0, Lcom/htc/lmw/steps/MailAndMessages;->mMailSettingId:I

    .line 364
    .local v1, email_id_default:I
    new-instance v5, Lcom/htc/lmw/steps/MailAndMessages$6;

    invoke-direct {v5, p0}, Lcom/htc/lmw/steps/MailAndMessages$6;-><init>(Lcom/htc/lmw/steps/MailAndMessages;)V

    invoke-virtual {v0, v3, v1, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 373
    invoke-static {}, Lcom/htc/lmw/Customize;->getDialogIcon()I

    move-result v2

    .line 374
    .local v2, iconId:I
    if-lez v2, :cond_0

    .line 375
    invoke-virtual {v0, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 377
    :cond_0
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 378
    return-void
.end method

.method private smsLimitDialog()V
    .locals 5

    .prologue
    .line 216
    iget-object v1, p0, Lcom/htc/lmw/steps/MailAndMessages;->activeDialog:Lcom/htc/lmw/ui/NumberPickerDialog;

    if-eqz v1, :cond_0

    .line 236
    :goto_0
    return-void

    .line 217
    :cond_0
    new-instance v0, Lcom/htc/lmw/steps/MailAndMessages$2;

    invoke-direct {v0, p0}, Lcom/htc/lmw/steps/MailAndMessages$2;-><init>(Lcom/htc/lmw/steps/MailAndMessages;)V

    .line 226
    .local v0, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/htc/lmw/ui/NumberPickerDialog;

    iget-object v2, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    const/16 v3, 0xa

    const/16 v4, 0x1388

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/htc/lmw/ui/NumberPickerDialog;-><init>(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)V

    iput-object v1, p0, Lcom/htc/lmw/steps/MailAndMessages;->activeDialog:Lcom/htc/lmw/ui/NumberPickerDialog;

    .line 227
    iget-object v1, p0, Lcom/htc/lmw/steps/MailAndMessages;->activeDialog:Lcom/htc/lmw/ui/NumberPickerDialog;

    new-instance v2, Lcom/htc/lmw/steps/MailAndMessages$3;

    invoke-direct {v2, p0}, Lcom/htc/lmw/steps/MailAndMessages$3;-><init>(Lcom/htc/lmw/steps/MailAndMessages;)V

    invoke-virtual {v1, v2}, Lcom/htc/lmw/ui/NumberPickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 233
    iget-object v1, p0, Lcom/htc/lmw/steps/MailAndMessages;->activeDialog:Lcom/htc/lmw/ui/NumberPickerDialog;

    const v2, 0x7f050041

    invoke-virtual {v1, v2}, Lcom/htc/lmw/ui/NumberPickerDialog;->setTitle(I)V

    .line 234
    iget-object v1, p0, Lcom/htc/lmw/steps/MailAndMessages;->activeDialog:Lcom/htc/lmw/ui/NumberPickerDialog;

    iget v2, p0, Lcom/htc/lmw/steps/MailAndMessages;->mSmsNb:I

    invoke-virtual {v1, v2}, Lcom/htc/lmw/ui/NumberPickerDialog;->setNumber(I)V

    .line 235
    iget-object v1, p0, Lcom/htc/lmw/steps/MailAndMessages;->activeDialog:Lcom/htc/lmw/ui/NumberPickerDialog;

    invoke-virtual {v1}, Lcom/htc/lmw/ui/NumberPickerDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method getDeleteSetting()Z
    .locals 9

    .prologue
    .line 321
    const/4 v6, 0x0

    .line 324
    .local v6, checked:Z
    :try_start_0
    const-string v0, "content://htc-messages/message-settings/pref_key_auto_delete"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 325
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 326
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 328
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 332
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .end local v1           #uri:Landroid/net/Uri;
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v6

    .line 335
    :catch_0
    move-exception v8

    .line 337
    .local v8, t:Ljava/lang/Throwable;
    const-string v0, "LMW/MailAndMessages"

    const-string v2, "Failed to get auto delete setting: "

    invoke-static {v0, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method getMmsSetting()I
    .locals 9

    .prologue
    .line 297
    const/16 v7, 0xa

    .line 300
    .local v7, ret:I
    :try_start_0
    const-string v0, "content://htc-messages/message-settings/MaxMmsMessagesPerThread"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 301
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 302
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 304
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 308
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v7

    .line 311
    :catch_0
    move-exception v8

    .line 313
    .local v8, t:Ljava/lang/Throwable;
    const-string v0, "LMW/MailAndMessages"

    const-string v2, "Failed to get MMS limit setting: "

    invoke-static {v0, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method getSmsSetting()I
    .locals 9

    .prologue
    .line 274
    const/16 v7, 0xa

    .line 277
    .local v7, ret:I
    :try_start_0
    const-string v0, "content://htc-messages/message-settings/MaxSmsMessagesPerThread"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 278
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 279
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 281
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 285
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v7

    .line 288
    :catch_0
    move-exception v8

    .line 290
    .local v8, t:Ljava/lang/Throwable;
    const-string v0, "LMW/MailAndMessages"

    const-string v2, "Failed to get SMS limit setting: "

    invoke-static {v0, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public handleBackPressed()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lmw/steps/MailAndMessages;->mIsBroatToBackground:Z

    .line 134
    invoke-super {p0}, Lcom/htc/lmw/WizardActivity;->handleBackPressed()V

    .line 135
    return-void
.end method

.method public handleNextPressed()V
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/htc/lmw/steps/MailAndMessages;->mMailSettingId:I

    invoke-direct {p0, v0}, Lcom/htc/lmw/steps/MailAndMessages;->sendMailSetting(I)V

    .line 127
    invoke-super {p0}, Lcom/htc/lmw/WizardActivity;->handleNextPressed()V

    .line 128
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/htc/lmw/WizardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lmw/steps/MailAndMessages;->mInflater:Landroid/view/LayoutInflater;

    .line 97
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    const v1, 0x7f03000b

    invoke-static {v0, p0, v1}, Lcom/htc/lmw/Customize;->activityOnCreate(Landroid/app/Activity;Landroid/app/Activity;I)V

    .line 99
    sget-object v0, Lcom/htc/lmw/steps/MailAndMessages;->emailSettings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 101
    sget-object v0, Lcom/htc/lmw/steps/MailAndMessages;->emailSettings:Ljava/util/List;

    iget-object v1, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05004b

    invoke-static {v2}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/htc/lmw/steps/MailAndMessages;->emailSettings:Ljava/util/List;

    iget-object v1, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050045

    invoke-static {v2}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/htc/lmw/steps/MailAndMessages;->emailSettings:Ljava/util/List;

    iget-object v1, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050046

    invoke-static {v2}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/htc/lmw/steps/MailAndMessages;->emailSettings:Ljava/util/List;

    iget-object v1, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050047

    invoke-static {v2}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-direct {p0}, Lcom/htc/lmw/steps/MailAndMessages;->setupListView()V

    .line 107
    return-void
.end method

.method public onNumberSet(II)V
    .locals 5
    .parameter "dialogId"
    .parameter "number"

    .prologue
    .line 382
    const/4 v3, 0x0

    .line 383
    .local v3, stringId:I
    const/4 v0, 0x0

    .line 384
    .local v0, buttonId:I
    packed-switch p1, :pswitch_data_0

    .line 398
    :goto_0
    invoke-direct {p0, v3}, Lcom/htc/lmw/steps/MailAndMessages;->getLocalizedStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/htc/lmw/steps/MailAndMessages;->getFormattedStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, secondaryText:Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/htc/lmw/steps/MailAndMessages;->setItemHint(ILjava/lang/CharSequence;)V

    .line 400
    return-void

    .line 387
    .end local v1           #secondaryText:Ljava/lang/String;
    :pswitch_0
    const v4, 0x7f050042

    invoke-static {v4}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v3

    .line 388
    iget-object v4, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, str:Ljava/lang/String;
    iput p2, p0, Lcom/htc/lmw/steps/MailAndMessages;->mSmsNb:I

    invoke-direct {p0, p2}, Lcom/htc/lmw/steps/MailAndMessages;->setSMSSetting(I)V

    .line 390
    const/16 v0, 0x65

    .line 391
    goto :goto_0

    .line 393
    .end local v2           #str:Ljava/lang/String;
    :pswitch_1
    const v4, 0x7f050044

    invoke-static {v4}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v3

    .line 394
    iput p2, p0, Lcom/htc/lmw/steps/MailAndMessages;->mMmsNb:I

    invoke-direct {p0, p2}, Lcom/htc/lmw/steps/MailAndMessages;->setMMSSetting(I)V

    .line 395
    const/16 v0, 0x66

    goto :goto_0

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Lcom/htc/lmw/WizardActivity;->onPause()V

    .line 114
    sget-boolean v0, Lcom/htc/lmw/MainActivity;->isLowMode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lmw/steps/MailAndMessages;->mIsBroatToBackground:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lmw/Customize;->removeNotification(Landroid/content/Context;)V

    .line 117
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lmw/Customize;->raiseNotification(Landroid/content/Context;)V

    .line 118
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/lmw/Settings;->setNotifyOnDeviceLowStorage(Landroid/content/Context;Z)V

    .line 120
    :cond_0
    return-void
.end method

.method public setItemEnabled(IZ)V
    .locals 1
    .parameter "itemId"
    .parameter "enabled"

    .prologue
    .line 499
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/htc/lmw/Customize;->setItemEnabled(Landroid/app/Activity;IZ)V

    .line 500
    return-void
.end method
