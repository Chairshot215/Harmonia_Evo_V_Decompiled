.class public Lcom/android/mms/ui/CmasDialogActivity;
.super Landroid/app/Activity;
.source "CmasDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;
    }
.end annotation


# static fields
.field public static final CMAS_DIALOG_DISMISS:Ljava/lang/String; = "cmas_dialog_action_dismiss"

.field public static final CMAS_DIALOG_VIEW:Ljava/lang/String; = "cmas_dialog_action_view"

.field private static final DEBUG:Z = false

.field private static final HTC_DEBUG:Z = false

.field public static final KEY_EXTRA_CMAS_TYPE:Ljava/lang/String; = "c_type"

.field public static final KEY_EXTRA_EXPIRED_TIME:Ljava/lang/String; = "ExpireTime"

.field public static final KEY_EXTRA_ID:Ljava/lang/String; = "id"

.field public static final KEY_EXTRA_MAP_KEY:Ljava/lang/String; = "MapKey"

.field public static final KEY_EXTRA_RECEIVED_TIME:Ljava/lang/String; = "ReceiveTime"

.field private static final NEW_LINE:C = '\n'

.field private static final REQUEST_OPENVIEW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CmasDialogActivity"

.field public static sCmasIntentStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentDialog:Lcom/htc/widget/HtcAlertDialog;

.field private final mDismissListener:Landroid/content/DialogInterface$OnClickListener;

.field private mExpiretime:J

.field private mIntentInfo:Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;

.field private mMapKey:J

.field private mReceivetime:J

.field private mStartedActivityForResult:Z

.field private final mViewListener:Landroid/content/DialogInterface$OnClickListener;

.field private nCurrentidx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/android/mms/ui/CmasDialogActivity;->sCmasIntentStack:Ljava/util/Stack;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/CmasDialogActivity;->mMapKey:J

    .line 71
    iput-wide v2, p0, Lcom/android/mms/ui/CmasDialogActivity;->mReceivetime:J

    .line 72
    iput-wide v2, p0, Lcom/android/mms/ui/CmasDialogActivity;->mExpiretime:J

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/CmasDialogActivity;->mStartedActivityForResult:Z

    .line 77
    new-instance v0, Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;-><init>(Lcom/android/mms/ui/CmasDialogActivity;Lcom/android/mms/ui/CmasDialogActivity$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/CmasDialogActivity;->mIntentInfo:Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;

    .line 270
    new-instance v0, Lcom/android/mms/ui/CmasDialogActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CmasDialogActivity$2;-><init>(Lcom/android/mms/ui/CmasDialogActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/CmasDialogActivity;->mDismissListener:Landroid/content/DialogInterface$OnClickListener;

    .line 278
    new-instance v0, Lcom/android/mms/ui/CmasDialogActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CmasDialogActivity$3;-><init>(Lcom/android/mms/ui/CmasDialogActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/CmasDialogActivity;->mViewListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/CmasDialogActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/mms/ui/CmasDialogActivity;->doDismiss(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/CmasDialogActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/mms/ui/CmasDialogActivity;->viewOneCmas()V

    return-void
.end method

.method private dismissCmasDialog()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/mms/ui/CmasDialogActivity;->mCurrentDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/android/mms/ui/CmasDialogActivity;->mCurrentDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/CmasDialogActivity;->mCurrentDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 311
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/CmasDialogActivity;->mCurrentDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 313
    :cond_1
    return-void
.end method

.method private doDismiss(Z)V
    .locals 3
    .parameter "bdismiss"

    .prologue
    .line 184
    const-string v1, "CmasDialogActivity"

    const-string v2, "Enter doDismiss"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0}, Lcom/android/mms/ui/CmasDialogActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 188
    .local v0, context:Landroid/content/Context;
    if-eqz p1, :cond_0

    .line 189
    const/16 v1, 0x7d3

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/CmasDialogActivity;->popCmasStack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    invoke-direct {p0}, Lcom/android/mms/ui/CmasDialogActivity;->showCmasDialog()V

    .line 196
    :cond_1
    return-void
.end method

.method private getMessageString(Landroid/content/Intent;Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;)Ljava/lang/String;
    .locals 8
    .parameter "intent"
    .parameter "info"

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    .line 159
    const-string v2, "CMAS_BODY_KEY"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 163
    .local v0, messageChars:Ljava/lang/CharSequence;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, str:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 166
    const-string v2, ""

    .line 179
    :goto_0
    return-object v2

    .line 168
    :cond_0
    const-string v2, "\r\n"

    const-string v3, "\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    const-string v2, "\r"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    iput-object v1, p2, Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;->MessageStr:Ljava/lang/String;

    .line 171
    const-string v2, "MapKey"

    invoke-virtual {p1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p2, Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;->MapKey:J

    .line 172
    const-string v2, "ReceiveTime"

    invoke-virtual {p1, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p2, Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;->Receivetime:J

    .line 173
    const-string v2, "id"

    invoke-virtual {p1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p2, Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;->tid:J

    .line 174
    const-string v2, "c_type"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p2, Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;->type:I

    .line 175
    const-string v2, "ExpireTime"

    invoke-virtual {p1, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p2, Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;->Expiretime:J

    move-object v2, v1

    .line 179
    goto :goto_0
.end method

.method private getMsgContent()Ljava/lang/String;
    .locals 8

    .prologue
    const v4, 0x7f0900bd

    const/16 v7, 0xa

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x1f4

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 236
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportEarthquakeAlert()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 237
    iget-object v3, p0, Lcom/android/mms/ui/CmasDialogActivity;->mIntentInfo:Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;

    iget-object v3, v3, Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;->MessageStr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/CmasDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {p0}, Lcom/android/mms/ui/CmasDialogActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/CmasDialogActivity;->mIntentInfo:Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;

    iget-wide v4, v4, Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;->Receivetime:J

    invoke-static {v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampCmasString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 243
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/CmasDialogActivity;->mIntentInfo:Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;

    iget v3, v3, Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;->type:I

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getCmasTitleResId(I)I

    move-result v2

    .line 244
    .local v2, titleId:I
    if-nez v2, :cond_2

    const/4 v1, 0x0

    .line 245
    .local v1, title:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/CmasDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {p0}, Lcom/android/mms/ui/CmasDialogActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/CmasDialogActivity;->mIntentInfo:Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;

    iget-wide v4, v4, Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;->Receivetime:J

    invoke-static {v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampCmasString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    iget-object v3, p0, Lcom/android/mms/ui/CmasDialogActivity;->mIntentInfo:Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;

    iget-object v3, v3, Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;->MessageStr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    const/16 v3, 0xa8

    invoke-static {v3}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/CmasDialogActivity;->mIntentInfo:Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;

    iget-wide v3, v3, Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;->Expiretime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 256
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    const v3, 0x7f090126

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/CmasDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {p0}, Lcom/android/mms/ui/CmasDialogActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/CmasDialogActivity;->mIntentInfo:Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;

    iget-wide v4, v4, Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;->Expiretime:J

    invoke-static {v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampCmasString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 244
    .end local v1           #title:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CmasDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private popCmasStack()Z
    .locals 2

    .prologue
    .line 299
    :try_start_0
    sget-object v1, Lcom/android/mms/ui/CmasDialogActivity;->sCmasIntentStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    const/4 v1, 0x1

    .line 305
    :goto_0
    return v1

    .line 301
    :catch_0
    move-exception v0

    .line 303
    .local v0, e:Ljava/util/EmptyStackException;
    invoke-virtual {p0}, Lcom/android/mms/ui/CmasDialogActivity;->finish()V

    .line 305
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showCmasDialog()V
    .locals 8

    .prologue
    .line 199
    const-string v4, "CmasDialogActivity"

    const-string v5, "showCmasDialog:"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-direct {p0}, Lcom/android/mms/ui/CmasDialogActivity;->dismissCmasDialog()V

    .line 205
    :try_start_0
    sget-object v4, Lcom/android/mms/ui/CmasDialogActivity;->sCmasIntentStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .local v3, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/mms/ui/CmasDialogActivity;->mIntentInfo:Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/CmasDialogActivity;->getMessageString(Landroid/content/Intent;Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;)Ljava/lang/String;

    .line 213
    const/4 v0, 0x1

    .line 214
    .local v0, bIsSupportHyperLink:Z
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 215
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v4, 0x7f09030a

    invoke-static {v4}, Lcom/android/mms/custom/CustomizedManager;->getStringResId(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 217
    iget-object v4, p0, Lcom/android/mms/ui/CmasDialogActivity;->mIntentInfo:Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;

    iget-wide v4, v4, Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;->tid:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 218
    const v4, 0x7f090329

    iget-object v5, p0, Lcom/android/mms/ui/CmasDialogActivity;->mViewListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 220
    :cond_0
    const v4, 0x7f09032a

    iget-object v5, p0, Lcom/android/mms/ui/CmasDialogActivity;->mDismissListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 221
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 222
    new-instance v4, Lcom/android/mms/ui/CmasDialogActivity$1;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/CmasDialogActivity$1;-><init>(Lcom/android/mms/ui/CmasDialogActivity;)V

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 229
    invoke-direct {p0}, Lcom/android/mms/ui/CmasDialogActivity;->getMsgContent()Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_1

    const/16 v4, 0xf

    :goto_0
    invoke-virtual {v1, v5, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 230
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/CmasDialogActivity;->mCurrentDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 231
    .end local v0           #bIsSupportHyperLink:Z
    .end local v1           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v3           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 206
    :catch_0
    move-exception v2

    .line 208
    .local v2, e:Ljava/util/EmptyStackException;
    invoke-virtual {p0}, Lcom/android/mms/ui/CmasDialogActivity;->finish()V

    goto :goto_1

    .line 229
    .end local v2           #e:Ljava/util/EmptyStackException;
    .restart local v0       #bIsSupportHyperLink:Z
    .restart local v1       #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private viewOneCmas()V
    .locals 7

    .prologue
    .line 329
    iget-object v4, p0, Lcom/android/mms/ui/CmasDialogActivity;->mIntentInfo:Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;

    iget-wide v4, v4, Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;->tid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 330
    .local v2, msgid:Ljava/lang/Long;
    iget-object v4, p0, Lcom/android/mms/ui/CmasDialogActivity;->mIntentInfo:Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;

    iget v3, v4, Lcom/android/mms/ui/CmasDialogActivity$IntentInfo;->type:I

    .line 331
    .local v3, msgtype:I
    const-string v4, "CmasDialogActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msgtype/msgid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/mms/ui/OneCmasViewActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 334
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "c_type"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 335
    const-string v4, "_id"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 337
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v4}, Lcom/android/mms/ui/CmasDialogActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 343
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/CmasDialogActivity;->dismissCmasDialog()V

    .line 344
    invoke-direct {p0}, Lcom/android/mms/ui/CmasDialogActivity;->popCmasStack()Z

    .line 345
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/mms/ui/CmasDialogActivity;->mStartedActivityForResult:Z

    .line 346
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 340
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 341
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 288
    packed-switch p1, :pswitch_data_0

    .line 295
    :goto_0
    return-void

    .line 291
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/CmasDialogActivity;->showCmasDialog()V

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/CmasDialogActivity;->mStartedActivityForResult:Z

    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CmasDialogActivity;->requestWindowFeature(I)Z

    .line 128
    invoke-virtual {p0}, Lcom/android/mms/ui/CmasDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0201a4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 130
    invoke-direct {p0}, Lcom/android/mms/ui/CmasDialogActivity;->showCmasDialog()V

    .line 131
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 156
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 111
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmas_dialog_action_view"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/android/mms/ui/CmasDialogActivity;->viewOneCmas()V

    .line 121
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmas_dialog_action_dismiss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/CmasDialogActivity;->doDismiss(Z)V

    goto :goto_0

    .line 119
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/CmasDialogActivity;->showCmasDialog()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 144
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 137
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 150
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .prologue
    .line 318
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 326
    return-void
.end method
