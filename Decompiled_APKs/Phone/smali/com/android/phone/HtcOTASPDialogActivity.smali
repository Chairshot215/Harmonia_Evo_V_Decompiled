.class public Lcom/android/phone/HtcOTASPDialogActivity;
.super Landroid/app/Activity;
.source "HtcOTASPDialogActivity.java"


# static fields
.field private static final FAILED:I = 0x1a

.field private static final OTA_UPDATE:I = 0x33

.field private static final PHONE_CALL_CONNECTED:I = 0x32

.field private static final PHONE_STATE_CHANGED:I = 0x1

.field private static REQUEST_RESULT:I = 0x0

.field private static final SUCCESS:I = 0x9

.field private static final TRY_AGAIN:I = 0xa

.field public static mPhone:Lcom/android/internal/telephony/Phone;


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

.field btnEmgcall:Landroid/widget/Button;

.field private flagConnected:Z

.field private flagFailed:Z

.field private hdPhoneState:Landroid/os/Handler;

.field intentResult:Landroid/content/Intent;

.field public mDialog:Landroid/app/ProgressDialog;

.field private otaResult:I

.field tvOTANoti:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/HtcOTASPDialogActivity;->REQUEST_RESULT:I

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/HtcOTASPDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const-string v0, "OTASP"

    iput-object v0, p0, Lcom/android/phone/HtcOTASPDialogActivity;->TAG:Ljava/lang/String;

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/HtcOTASPDialogActivity;->DBG:Z

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/HtcOTASPDialogActivity;->otaResult:I

    .line 59
    iput-boolean v1, p0, Lcom/android/phone/HtcOTASPDialogActivity;->flagConnected:Z

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/HtcOTASPDialogActivity;->mDialog:Landroid/app/ProgressDialog;

    .line 69
    iput-boolean v1, p0, Lcom/android/phone/HtcOTASPDialogActivity;->flagFailed:Z

    .line 76
    return-void
.end method

.method static synthetic access$002(Lcom/android/phone/HtcOTASPDialogActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/phone/HtcOTASPDialogActivity;->flagConnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/HtcOTASPDialogActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/phone/HtcOTASPDialogActivity;->flagFailed:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/HtcOTASPDialogActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/phone/HtcOTASPDialogActivity;->flagFailed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/HtcOTASPDialogActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/phone/HtcOTASPDialogActivity;->otaResult:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/HtcOTASPDialogActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/phone/HtcOTASPDialogActivity;->otaResult:I

    return p1
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 190
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    .line 167
    iget-boolean v0, p0, Lcom/android/phone/HtcOTASPDialogActivity;->flagConnected:Z

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/phone/HtcOTASPDialogActivity;->intentResult:Landroid/content/Intent;

    const-string v1, "OTAResult"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    iget-object v0, p0, Lcom/android/phone/HtcOTASPDialogActivity;->intentResult:Landroid/content/Intent;

    invoke-virtual {p0, v4, v0}, Lcom/android/phone/HtcOTASPDialogActivity;->setResult(ILandroid/content/Intent;)V

    .line 170
    const-string v0, "OTASP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intentResult.getIntExtra(\"OTAResult\", -1):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/HtcOTASPDialogActivity;->intentResult:Landroid/content/Intent;

    const-string v3, "OTAResult"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p0}, Lcom/android/phone/HtcOTASPDialogActivity;->finish()V

    .line 173
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    const-string v3, "tel:*228"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 86
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.phone.ShowDialpad"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    sget v2, Lcom/android/phone/HtcOTASPDialogActivity;->REQUEST_RESULT:I

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/HtcOTASPDialogActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 89
    invoke-virtual {p0}, Lcom/android/phone/HtcOTASPDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/HtcOTASPDialogActivity;->intentResult:Landroid/content/Intent;

    .line 91
    new-instance v2, Lcom/android/phone/HtcOTASPDialogActivity$1;

    invoke-direct {v2, p0}, Lcom/android/phone/HtcOTASPDialogActivity$1;-><init>(Lcom/android/phone/HtcOTASPDialogActivity;)V

    iput-object v2, p0, Lcom/android/phone/HtcOTASPDialogActivity;->hdPhoneState:Landroid/os/Handler;

    .line 151
    :try_start_0
    sget-object v2, Lcom/android/phone/HtcOTASPDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v2, :cond_0

    .line 152
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    sput-object v2, Lcom/android/phone/HtcOTASPDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/phone/HtcOTASPDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_1

    .line 160
    sget-object v2, Lcom/android/phone/HtcOTASPDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/HtcOTASPDialogActivity;->hdPhoneState:Landroid/os/Handler;

    const/16 v4, 0x33

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 161
    sget-object v2, Lcom/android/phone/HtcOTASPDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/HtcOTASPDialogActivity;->hdPhoneState:Landroid/os/Handler;

    invoke-interface {v2, v3, v6, v5}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 163
    :cond_1
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "OTASP"

    const-string v3, "PhoneFactory.getDefaultPhone fail."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    sput-object v5, Lcom/android/phone/HtcOTASPDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 178
    sget-object v0, Lcom/android/phone/HtcOTASPDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lcom/android/phone/HtcOTASPDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/HtcOTASPDialogActivity;->hdPhoneState:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 181
    sget-object v0, Lcom/android/phone/HtcOTASPDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/HtcOTASPDialogActivity;->hdPhoneState:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 183
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/HtcOTASPDialogActivity;->flagConnected:Z

    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 185
    return-void
.end method
