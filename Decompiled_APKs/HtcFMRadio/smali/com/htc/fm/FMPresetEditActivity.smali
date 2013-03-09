.class public Lcom/htc/fm/FMPresetEditActivity;
.super Landroid/app/Activity;
.source "FMPresetEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fm/FMPresetEditActivity$AppBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DIALOG_NO_HEADSET:I = 0x0

.field private static FM_MIME_TYPE:Ljava/lang/String; = null

.field public static final MODE_LIST_EDIT:I = 0x2

.field public static final MODE_LIST_NEW:I = 0x1

.field public static final MODE_NEW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FMPresetEditActivity"

.field private static final mScreenIMEHeight:I = 0x42

.field private static final mScreenNonIMEHeight:I = 0xda


# instance fields
.field private mBtnCancel:Lcom/htc/widget/HtcFooterButton;

.field private mBtnSave:Lcom/htc/widget/HtcFooterButton;

.field private mContext:Landroid/content/Context;

.field private mEditPresetName:Landroid/widget/EditText;

.field private mEditTitle:Landroid/widget/TextView;

.field private mFreq:I

.field private mIMERecever:Landroid/content/BroadcastReceiver;

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mMediaProvider:Landroid/content/IContentProvider;

.field private mMode:I

.field private mRds:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRowId:I

.field private mSenseLandscape:Z

.field private mSipIntentFilter:Landroid/content/IntentFilter;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "application/fm"

    sput-object v0, Lcom/htc/fm/FMPresetEditActivity;->FM_MIME_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mSenseLandscape:Z

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mSipIntentFilter:Landroid/content/IntentFilter;

    .line 241
    iput v1, p0, Lcom/htc/fm/FMPresetEditActivity;->mMode:I

    .line 243
    iput v1, p0, Lcom/htc/fm/FMPresetEditActivity;->mRowId:I

    .line 245
    iput v1, p0, Lcom/htc/fm/FMPresetEditActivity;->mFreq:I

    .line 247
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mTitle:Ljava/lang/String;

    .line 249
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mRds:Ljava/lang/String;

    .line 352
    new-instance v0, Lcom/htc/fm/FMPresetEditActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMPresetEditActivity$4;-><init>(Lcom/htc/fm/FMPresetEditActivity;)V

    iput-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mIMERecever:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/fm/FMPresetEditActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mEditPresetName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/fm/FMPresetEditActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mRowId:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/fm/FMPresetEditActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mFreq:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/fm/FMPresetEditActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mRds:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/fm/FMPresetEditActivity;Lcom/htc/fm/Preset;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/htc/fm/FMPresetEditActivity;->submitPresetToDB(Lcom/htc/fm/Preset;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/fm/FMPresetEditActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mMode:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/fm/FMPresetEditActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/fm/FMPresetEditActivity;->hideIME()V

    return-void
.end method

.method private getFreq(J)Ljava/lang/String;
    .locals 10
    .parameter "freq"

    .prologue
    const-wide/16 v4, 0x3e8

    const-wide/16 v8, 0x64

    .line 339
    div-long v0, p1, v4

    .line 340
    .local v0, p1:J
    rem-long v2, p1, v4

    .line 341
    .local v2, r:J
    rem-long v4, v2, v8

    const-wide/16 v6, 0x32

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 342
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-long v5, v2, v8

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 344
    :goto_0
    return-object v4

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-long v5, v2, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private hideIME()V
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mEditPresetName:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/fm/FMPresetEditActivity;->mEditPresetName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 230
    :cond_1
    return-void
.end method

.method private initParam()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 252
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fm_mode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/fm/FMPresetEditActivity;->mMode:I

    .line 253
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fm_freq"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/fm/FMPresetEditActivity;->mFreq:I

    .line 254
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fm_rowid"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/fm/FMPresetEditActivity;->mRowId:I

    .line 255
    iget v1, p0, Lcom/htc/fm/FMPresetEditActivity;->mRowId:I

    if-ne v1, v4, :cond_0

    .line 256
    iget v1, p0, Lcom/htc/fm/FMPresetEditActivity;->mFreq:I

    int-to-long v1, v1

    invoke-static {p0, v1, v2}, Lcom/htc/fm/FMUtils;->getPresetByFreq(Landroid/content/Context;J)Lcom/htc/fm/Preset;

    move-result-object v0

    .line 257
    .local v0, preset:Lcom/htc/fm/Preset;
    if-eqz v0, :cond_0

    .line 258
    iget v1, v0, Lcom/htc/fm/Preset;->rowId:I

    iput v1, p0, Lcom/htc/fm/FMPresetEditActivity;->mRowId:I

    .line 261
    .end local v0           #preset:Lcom/htc/fm/Preset;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fm_title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fm/FMPresetEditActivity;->mTitle:Ljava/lang/String;

    .line 262
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fm_rds"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fm/FMPresetEditActivity;->mRds:Ljava/lang/String;

    .line 263
    iget-object v1, p0, Lcom/htc/fm/FMPresetEditActivity;->mRds:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 264
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/fm/FMPresetEditActivity;->mRds:Ljava/lang/String;

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/htc/fm/FMPresetEditActivity;->mTitle:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 266
    iget-object v1, p0, Lcom/htc/fm/FMPresetEditActivity;->mRds:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/fm/FMPresetEditActivity;->mTitle:Ljava/lang/String;

    .line 267
    :cond_2
    const-string v1, "FMPresetEditActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!! mMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/FMPresetEditActivity;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRowId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/FMPresetEditActivity;->mRowId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mFreq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/FMPresetEditActivity;->mFreq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v1, "FMPresetEditActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!! mTitle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fm/FMPresetEditActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fm/FMPresetEditActivity;->mRds:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method private initUi()V
    .locals 2

    .prologue
    .line 272
    const v0, 0x7f040031

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMPresetEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mEditTitle:Landroid/widget/TextView;

    .line 273
    const v0, 0x7f040032

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMPresetEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mEditPresetName:Landroid/widget/EditText;

    .line 275
    const v0, 0x2020001

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMPresetEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mBtnSave:Lcom/htc/widget/HtcFooterButton;

    .line 277
    iget-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mBtnSave:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 278
    iget-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mBtnSave:Lcom/htc/widget/HtcFooterButton;

    new-instance v1, Lcom/htc/fm/FMPresetEditActivity$2;

    invoke-direct {v1, p0}, Lcom/htc/fm/FMPresetEditActivity$2;-><init>(Lcom/htc/fm/FMPresetEditActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    const v0, 0x2020003

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMPresetEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mBtnCancel:Lcom/htc/widget/HtcFooterButton;

    .line 302
    iget-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mBtnCancel:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x20c0151

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 303
    iget-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mBtnCancel:Lcom/htc/widget/HtcFooterButton;

    new-instance v1, Lcom/htc/fm/FMPresetEditActivity$3;

    invoke-direct {v1, p0}, Lcom/htc/fm/FMPresetEditActivity$3;-><init>(Lcom/htc/fm/FMPresetEditActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-boolean v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mSenseLandscape:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mBtnSave:Lcom/htc/widget/HtcFooterButton;

    invoke-static {v0}, Lcom/htc/fm/CommonControlWrapper;->setSaveButtonIcon(Landroid/widget/Button;)V

    .line 318
    iget-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mBtnCancel:Lcom/htc/widget/HtcFooterButton;

    invoke-static {v0}, Lcom/htc/fm/CommonControlWrapper;->setCancelButtonIcon(Landroid/widget/Button;)V

    .line 320
    :cond_0
    return-void
.end method

.method private setIntentReceiver()V
    .locals 3

    .prologue
    .line 121
    iget-object v1, p0, Lcom/htc/fm/FMPresetEditActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    new-instance v1, Lcom/htc/fm/FMPresetEditActivity$AppBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/fm/FMPresetEditActivity$AppBroadcastReceiver;-><init>(Lcom/htc/fm/FMPresetEditActivity;Lcom/htc/fm/FMPresetEditActivity$1;)V

    iput-object v1, p0, Lcom/htc/fm/FMPresetEditActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.htc.fm.statechanged"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/htc/fm/FMPresetEditActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/fm/FMPresetEditActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private submitPresetToDB(Lcom/htc/fm/Preset;)V
    .locals 11
    .parameter "preset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 58
    if-nez p1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v0, "FMPresetEditActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMPresetBrowserActivity]submitPresetToDB:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/htc/fm/Preset;->rowId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mMediaProvider:Landroid/content/IContentProvider;

    if-nez v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mMediaProvider:Landroid/content/IContentProvider;

    .line 66
    :cond_1
    const-string v0, "internal"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 67
    .local v8, tableUri:Landroid/net/Uri;
    const/4 v1, 0x0

    iget v0, p1, Lcom/htc/fm/Preset;->freq:I

    int-to-long v2, v0

    iget-object v4, p1, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    iget-object v5, p1, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/fm/FMPresetEditActivity;->toValues(ZJLjava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v9

    .line 69
    .local v9, values:Landroid/content/ContentValues;
    iget v0, p1, Lcom/htc/fm/Preset;->rowId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 70
    const-string v0, "FMPresetEditActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMPresetBrowserActivity]Save to db:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-interface {v0, v8, v9}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 72
    .local v7, result:Landroid/net/Uri;
    if-eqz v7, :cond_2

    .line 74
    :try_start_0
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/htc/fm/Preset;->rowId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_2
    :goto_1
    const-string v0, "FMPresetEditActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMPresetBrowserActivity]Save to db rowId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/htc/fm/Preset;->rowId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 75
    :catch_0
    move-exception v6

    .line 76
    .local v6, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 81
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .end local v7           #result:Landroid/net/Uri;
    :cond_3
    const-string v0, "FMPresetEditActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMPresetBrowserActivity]Update to db:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget v0, p1, Lcom/htc/fm/Preset;->rowId:I

    int-to-long v0, v0

    invoke-static {v8, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 83
    .restart local v7       #result:Landroid/net/Uri;
    iget-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-interface {v0, v7, v9, v10, v10}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private toValues(ZJLjava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 4
    .parameter "isNowPlaying"
    .parameter "freq"
    .parameter "title"
    .parameter "rds"

    .prologue
    .line 91
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 92
    .local v0, map:Landroid/content/ContentValues;
    const-string v1, "_data"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "htcfm://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "mime_type"

    sget-object v2, Lcom/htc/fm/FMPresetEditActivity;->FM_MIME_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "title"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 96
    const-string v1, "_size"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 97
    const-string v1, "composer"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "is_music"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    return-object v0
.end method

.method private updateUi()V
    .locals 5

    .prologue
    .line 323
    iget-object v1, p0, Lcom/htc/fm/FMPresetEditActivity;->mEditTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/fm/FMPresetEditActivity;->mEditTitle:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/FMPresetEditActivity;->mFreq:I

    int-to-long v3, v3

    invoke-direct {p0, v3, v4}, Lcom/htc/fm/FMPresetEditActivity;->getFreq(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    .end local v0           #str:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/htc/fm/FMPresetEditActivity;->mEditPresetName:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 329
    iget-object v1, p0, Lcom/htc/fm/FMPresetEditActivity;->mEditPresetName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/htc/fm/FMPresetEditActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v1, p0, Lcom/htc/fm/FMPresetEditActivity;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/fm/FMPresetEditActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 331
    iget-object v1, p0, Lcom/htc/fm/FMPresetEditActivity;->mEditPresetName:Landroid/widget/EditText;

    const v2, 0x7f090027

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 336
    :cond_1
    :goto_0
    return-void

    .line 333
    :cond_2
    iget-object v1, p0, Lcom/htc/fm/FMPresetEditActivity;->mEditPresetName:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public collapseScreen()V
    .locals 2

    .prologue
    .line 377
    const v1, 0x7f040030

    invoke-virtual {p0, v1}, Lcom/htc/fm/FMPresetEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 378
    .local v0, screen:Landroid/widget/LinearLayout;
    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 379
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 380
    return-void
.end method

.method public expandScreen()V
    .locals 2

    .prologue
    .line 371
    const v1, 0x7f040030

    invoke-virtual {p0, v1}, Lcom/htc/fm/FMPresetEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 372
    .local v0, screen:Landroid/widget/LinearLayout;
    const/16 v1, 0xda

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 373
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 374
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 106
    const-string v0, "FMPresetEditActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    iput-object p0, p0, Lcom/htc/fm/FMPresetEditActivity;->mContext:Landroid/content/Context;

    .line 109
    invoke-direct {p0}, Lcom/htc/fm/FMPresetEditActivity;->initParam()V

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "HTC_IME_CURRENT_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mSipIntentFilter:Landroid/content/IntentFilter;

    .line 111
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMPresetEditActivity;->setContentView(I)V

    .line 113
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fm/FMUtils;->useSenseLandscape(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mSenseLandscape:Z

    .line 114
    invoke-direct {p0}, Lcom/htc/fm/FMPresetEditActivity;->setIntentReceiver()V

    .line 115
    invoke-direct {p0}, Lcom/htc/fm/FMPresetEditActivity;->initUi()V

    .line 116
    invoke-direct {p0}, Lcom/htc/fm/FMPresetEditActivity;->updateUi()V

    .line 117
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, d:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 201
    .end local v0           #d:Landroid/app/Dialog;
    :goto_0
    return-object v0

    .line 191
    .restart local v0       #d:Landroid/app/Dialog;
    :pswitch_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090020

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/htc/fm/FMPresetEditActivity$1;

    invoke-direct {v3, p0}, Lcom/htc/fm/FMPresetEditActivity$1;-><init>(Lcom/htc/fm/FMPresetEditActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 206
    const-string v0, "FMPresetEditActivity"

    const-string v1, "[FMPresetEditActivity] onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMPresetEditActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mMediaProvider:Landroid/content/IContentProvider;

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fm/FMPresetEditActivity;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mMediaProvider:Landroid/content/IContentProvider;

    .line 213
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 214
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/htc/fm/FMPresetEditActivity;->hideIME()V

    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 236
    iget-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mIMERecever:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mIMERecever:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMPresetEditActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 239
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 219
    iget-object v0, p0, Lcom/htc/fm/FMPresetEditActivity;->mIMERecever:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/htc/fm/FMPresetEditActivity;->mSipIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/htc/fm/FMPresetEditActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    return-void
.end method
