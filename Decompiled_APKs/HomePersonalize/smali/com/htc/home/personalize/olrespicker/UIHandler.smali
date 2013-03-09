.class public Lcom/htc/home/personalize/olrespicker/UIHandler;
.super Landroid/os/Handler;
.source "UIHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/olrespicker/UIHandler$OnlineResourcePicker;
    }
.end annotation


# static fields
.field public static final ALERT_LIMIT_REACHED:I = 0x1a

.field public static final ALERT_NETWORK_PROBLEM:I = 0x16

.field public static final ALERT_NO_ENOUGH_STORAGE:I = 0x19

.field public static final ALERT_SD_NOT_READY:I = 0x18

.field public static final ALERT_SERVER_UNAVAILABLE:I = 0x17

.field public static final ALERT_UNKNOWN_ERROR:I = 0x15

.field private static final ANIMATE_LOADING_VIEW:I = 0x3d

.field public static final CHANGE_TO_NO_DATA_VIEW:I = 0x33

.field private static final DEFAULT_ANIMATE_TIME:J = 0x3e8L

.field public static final DISMISS_ALERT:I = 0x14

.field public static final HIDE_LOADING_CURSOR:I = 0xa

.field private static final NOTIFY_DATA_SET_CHANGED:I = 0x1f

.field public static final SHOW_LOADING_CURSOR:I = 0xb

.field private static final TAG:Ljava/lang/String; = null

.field private static final UPDATE_STATUS:I = 0x29


# instance fields
.field private final activity:Landroid/app/Activity;

.field private adapter:Landroid/widget/BaseAdapter;

.field private loadingCursorCount:I

.field private final onlineList:Lcom/htc/home/personalize/olrespicker/UIHandler$OnlineResourcePicker;

.field private progressDialog:Landroid/app/Dialog;

.field public showNetworkSetting:Z

.field public volatile waitForWireless:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/htc/home/personalize/olrespicker/UIHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/olrespicker/UIHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/htc/home/personalize/olrespicker/UIHandler$OnlineResourcePicker;)V
    .locals 2
    .parameter "activity"
    .parameter "onlineList"

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 74
    iput-boolean v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->waitForWireless:Z

    .line 75
    iput-boolean v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->showNetworkSetting:Z

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->progressDialog:Landroid/app/Dialog;

    .line 77
    iput v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->loadingCursorCount:I

    .line 86
    iput-object p1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->activity:Landroid/app/Activity;

    .line 87
    iput-object p2, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->onlineList:Lcom/htc/home/personalize/olrespicker/UIHandler$OnlineResourcePicker;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/htc/home/personalize/olrespicker/UIHandler;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/home/personalize/olrespicker/UIHandler;)Lcom/htc/home/personalize/olrespicker/UIHandler$OnlineResourcePicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->onlineList:Lcom/htc/home/personalize/olrespicker/UIHandler$OnlineResourcePicker;

    return-object v0
.end method

.method private alertLimitReached()V
    .locals 3

    .prologue
    .line 254
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 255
    .local v0, tmp:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f090054

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 256
    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 257
    const v1, 0x104000a

    new-instance v2, Lcom/htc/home/personalize/olrespicker/UIHandler$4;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/olrespicker/UIHandler$4;-><init>(Lcom/htc/home/personalize/olrespicker/UIHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 264
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->progressDialog:Landroid/app/Dialog;

    .line 265
    return-void
.end method

.method private alertNetworkProblem()V
    .locals 3

    .prologue
    .line 288
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 289
    .local v0, tmp:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f090038

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 290
    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 291
    const v1, 0x7f09000a

    new-instance v2, Lcom/htc/home/personalize/olrespicker/UIHandler$7;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/olrespicker/UIHandler$7;-><init>(Lcom/htc/home/personalize/olrespicker/UIHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 301
    const/high16 v1, 0x104

    new-instance v2, Lcom/htc/home/personalize/olrespicker/UIHandler$8;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/olrespicker/UIHandler$8;-><init>(Lcom/htc/home/personalize/olrespicker/UIHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 309
    new-instance v1, Lcom/htc/home/personalize/olrespicker/UIHandler$9;

    invoke-direct {v1, p0}, Lcom/htc/home/personalize/olrespicker/UIHandler$9;-><init>(Lcom/htc/home/personalize/olrespicker/UIHandler;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 316
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->progressDialog:Landroid/app/Dialog;

    .line 317
    return-void
.end method

.method private alertNoEnoughStorage()V
    .locals 3

    .prologue
    .line 217
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 218
    .local v0, tmp:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 219
    const v1, 0x7f090035

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 220
    const v1, 0x7f09000a

    new-instance v2, Lcom/htc/home/personalize/olrespicker/UIHandler$1;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/olrespicker/UIHandler$1;-><init>(Lcom/htc/home/personalize/olrespicker/UIHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 229
    const/high16 v1, 0x104

    new-instance v2, Lcom/htc/home/personalize/olrespicker/UIHandler$2;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/olrespicker/UIHandler$2;-><init>(Lcom/htc/home/personalize/olrespicker/UIHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 236
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->progressDialog:Landroid/app/Dialog;

    .line 237
    return-void
.end method

.method private alertSdNotReady()V
    .locals 3

    .prologue
    .line 240
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 241
    .local v0, tmp:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 242
    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 243
    const v1, 0x104000a

    new-instance v2, Lcom/htc/home/personalize/olrespicker/UIHandler$3;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/olrespicker/UIHandler$3;-><init>(Lcom/htc/home/personalize/olrespicker/UIHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 250
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->progressDialog:Landroid/app/Dialog;

    .line 251
    return-void
.end method

.method private alertServerUnavailable()V
    .locals 3

    .prologue
    .line 268
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 269
    .local v0, tmp:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f090036

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 270
    const v1, 0x7f090037

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 271
    const v1, 0x104000a

    new-instance v2, Lcom/htc/home/personalize/olrespicker/UIHandler$5;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/olrespicker/UIHandler$5;-><init>(Lcom/htc/home/personalize/olrespicker/UIHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 278
    new-instance v1, Lcom/htc/home/personalize/olrespicker/UIHandler$6;

    invoke-direct {v1, p0}, Lcom/htc/home/personalize/olrespicker/UIHandler$6;-><init>(Lcom/htc/home/personalize/olrespicker/UIHandler;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 284
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->progressDialog:Landroid/app/Dialog;

    .line 285
    return-void
.end method

.method private alertUnknownError()V
    .locals 3

    .prologue
    .line 320
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 321
    .local v0, tmp:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 322
    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 323
    const v1, 0x104000a

    new-instance v2, Lcom/htc/home/personalize/olrespicker/UIHandler$10;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/olrespicker/UIHandler$10;-><init>(Lcom/htc/home/personalize/olrespicker/UIHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 330
    new-instance v1, Lcom/htc/home/personalize/olrespicker/UIHandler$11;

    invoke-direct {v1, p0}, Lcom/htc/home/personalize/olrespicker/UIHandler$11;-><init>(Lcom/htc/home/personalize/olrespicker/UIHandler;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 336
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->progressDialog:Landroid/app/Dialog;

    .line 337
    return-void
.end method

.method private animateLoadingView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 185
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->activity:Landroid/app/Activity;

    const v3, 0x7f0b002b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 187
    .local v1, tv:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, text:Ljava/lang/String;
    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    const/16 v2, 0x3d

    const-wide/16 v3, 0x3e8

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/home/personalize/olrespicker/UIHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 203
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    return-void

    .line 191
    .restart local v0       #text:Ljava/lang/String;
    :cond_1
    const-string v2, ".. "

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_2
    const-string v2, ".  "

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 195
    :cond_3
    const-string v2, "   "

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 198
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private dismiss_alert()V
    .locals 3

    .prologue
    .line 206
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->progressDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->progressDialog:Landroid/app/Dialog;

    .line 214
    :cond_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/htc/home/personalize/olrespicker/UIHandler;->TAG:Ljava/lang/String;

    const-string v2, "dismiss_alert: IllegalArgumentException"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private hideLoadingCursor()V
    .locals 3

    .prologue
    .line 365
    iget v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->loadingCursorCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->loadingCursorCount:I

    .line 367
    iget v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->loadingCursorCount:I

    if-nez v1, :cond_1

    .line 368
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->activity:Landroid/app/Activity;

    const v2, 0x7f0b0028

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBar;

    .line 369
    .local v0, headerBar:Lcom/htc/widget/HeaderBar;
    if-eqz v0, :cond_0

    .line 370
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    .line 373
    :cond_0
    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/olrespicker/UIHandler;->removeMessages(I)V

    .line 376
    .end local v0           #headerBar:Lcom/htc/widget/HeaderBar;
    :cond_1
    iget v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->loadingCursorCount:I

    if-gez v1, :cond_2

    .line 378
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->loadingCursorCount:I

    .line 380
    :cond_2
    return-void
.end method

.method private showLoadingCursor()V
    .locals 3

    .prologue
    .line 342
    iget v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->loadingCursorCount:I

    if-nez v1, :cond_1

    .line 343
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->activity:Landroid/app/Activity;

    const v2, 0x7f0b0028

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBar;

    .line 344
    .local v0, headerBar:Lcom/htc/widget/HeaderBar;
    if-eqz v0, :cond_0

    .line 345
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    .line 348
    :cond_0
    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/olrespicker/UIHandler;->sendEmptyMessage(I)Z

    .line 351
    .end local v0           #headerBar:Lcom/htc/widget/HeaderBar;
    :cond_1
    iget v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->loadingCursorCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->loadingCursorCount:I

    .line 362
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, -0x1

    .line 91
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 172
    :goto_0
    return-void

    .line 97
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/UIHandler;->hideLoadingCursor()V

    goto :goto_0

    .line 101
    :sswitch_1
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/UIHandler;->showLoadingCursor()V

    goto :goto_0

    .line 105
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/UIHandler;->dismiss_alert()V

    goto :goto_0

    .line 109
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/UIHandler;->dismiss_alert()V

    .line 110
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/UIHandler;->alertUnknownError()V

    goto :goto_0

    .line 114
    :sswitch_4
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/UIHandler;->dismiss_alert()V

    .line 115
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/UIHandler;->alertNetworkProblem()V

    goto :goto_0

    .line 119
    :sswitch_5
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/UIHandler;->dismiss_alert()V

    .line 120
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/UIHandler;->alertServerUnavailable()V

    goto :goto_0

    .line 124
    :sswitch_6
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/UIHandler;->dismiss_alert()V

    .line 125
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/UIHandler;->alertSdNotReady()V

    goto :goto_0

    .line 129
    :sswitch_7
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/UIHandler;->dismiss_alert()V

    .line 130
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/UIHandler;->alertNoEnoughStorage()V

    goto :goto_0

    .line 135
    :sswitch_8
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/UIHandler;->dismiss_alert()V

    .line 136
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/UIHandler;->alertLimitReached()V

    goto :goto_0

    .line 140
    :sswitch_9
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->onlineList:Lcom/htc/home/personalize/olrespicker/UIHandler$OnlineResourcePicker;

    invoke-interface {v1}, Lcom/htc/home/personalize/olrespicker/UIHandler$OnlineResourcePicker;->change2NoDataView()V

    goto :goto_0

    .line 144
    :sswitch_a
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->adapter:Landroid/widget/BaseAdapter;

    instance-of v1, v1, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;

    if-eqz v1, :cond_1

    .line 145
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->adapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;

    .line 146
    .local v0, olresAdapter:Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;
    invoke-virtual {v0}, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->getAspect()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v1

    sget-object v2, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-ne v1, v2, :cond_0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v1, v3, :cond_0

    .line 147
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->notifyUpdateItem(I)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 152
    .end local v0           #olresAdapter:Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;
    :cond_1
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 157
    :sswitch_b
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->onlineList:Lcom/htc/home/personalize/olrespicker/UIHandler$OnlineResourcePicker;

    invoke-interface {v1}, Lcom/htc/home/personalize/olrespicker/UIHandler$OnlineResourcePicker;->updateStatus()V

    .line 158
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->adapter:Landroid/widget/BaseAdapter;

    instance-of v1, v1, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;

    if-eqz v1, :cond_3

    .line 159
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->adapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;

    .line 160
    .restart local v0       #olresAdapter:Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;
    invoke-virtual {v0}, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->getAspect()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v1

    sget-object v2, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-ne v1, v2, :cond_2

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v1, v3, :cond_2

    .line 161
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->notifyUpdateItem(I)V

    goto/16 :goto_0

    .line 163
    :cond_2
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 166
    .end local v0           #olresAdapter:Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;
    :cond_3
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 170
    :sswitch_c
    invoke-direct {p0}, Lcom/htc/home/personalize/olrespicker/UIHandler;->animateLoadingView()V

    goto/16 :goto_0

    .line 91
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x17 -> :sswitch_5
        0x18 -> :sswitch_6
        0x19 -> :sswitch_7
        0x1a -> :sswitch_8
        0x1f -> :sswitch_a
        0x29 -> :sswitch_b
        0x33 -> :sswitch_9
        0x3d -> :sswitch_c
    .end sparse-switch
.end method

.method public handleNotifyDataSetChanged(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 175
    const/16 v0, 0x1f

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/htc/home/personalize/olrespicker/UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/olrespicker/UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    return-void
.end method

.method public handleUpdateStatus(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 179
    const/16 v0, 0x29

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/htc/home/personalize/olrespicker/UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/olrespicker/UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 180
    return-void
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler;->adapter:Landroid/widget/BaseAdapter;

    .line 81
    return-void
.end method
